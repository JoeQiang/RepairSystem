package gduf.swimming.repair.controller;

import gduf.swimming.repair.model.Area;
import gduf.swimming.repair.model.Form;
import gduf.swimming.repair.model.Order;
import gduf.swimming.repair.model.Page;
import gduf.swimming.repair.service.FormService;
import gduf.swimming.repair.service.OrderService;
import gduf.swimming.repair.util.Constants;
import gduf.swimming.repair.util.MessageUtils;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("form")
public class FormController {
	@Autowired
	private FormService formService;
	@Autowired
	private OrderService orderService;

	/**
	 * 跳转新增保修单页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/addNew", method = RequestMethod.GET)
	public ModelAndView addNewFormView() {
		ModelAndView mav = new ModelAndView("newform", "form", new Form());
		return mav;
	}

	/**
	 * 添加保修单
	 * 
	 * @param form
	 * @return
	 */
	@RequestMapping(value = "/addNew", method = RequestMethod.POST)
	public ModelAndView addNewForm(@ModelAttribute("form") Form form) {
		ModelAndView mav = new ModelAndView();
		int update = formService.saveForm(form);
		mav.setViewName("show");
		mav.addObject("msg", "报修成功,请耐心等待！");
		return mav;

	}

	/**
	 * 返回所有地区
	 * 
	 * @param area
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/allArea")
	public List<Area> getAllArea(@RequestParam String area) {
		return formService.getAllArea(area);
	}

	@RequestMapping("/manager/{status}")
	public ModelAndView manager(@PathVariable String status, ModelAndView mav,
			@RequestParam int pageNum, HttpServletRequest req) {
		Form form = new Form();
		if (Constants.STATUS_UNDEAL.equals(status)) {
			form.setFstatus(Constants.FORM_TYPE_UNHANDLE);
		} else if (Constants.STATUS_DEAL.equals(status)) {
			form.setFstatus(Constants.FORM_TYPE_HANDLE);
		} else {
			String search = req.getParameter("search");
			if (search != null) {
				if (Constants.SEARCH_TYPE_ADRESS.equals(status)) {
					form.setFuadress(search);
				} else if (Constants.SEARCH_TYPE_FUNAME.equals(status)) {
					form.setFuname(search);
				} else if (Constants.SEARCH_TYPE_QUEST.equals(status)) {
					if (search.contains("电")) {
						form.setFtype(Constants.FAULT_TYPE_ELECTRIC);
					} else if (search.contains("网")) {
						form.setFtype(Constants.FAULT_TYPE_NETWORK);
					} else if (search.contains("水")) {
						form.setFtype(Constants.FAULT_TYPE_WATER);
					} else {
						form.setFtype(-1);
					}
				}
			}
		}
		Page<Form> pager = formService.formList(form, pageNum, 100);
		mav.addObject("pager", pager);
		mav.setViewName("pairmanager");
		return mav;
	}

	@RequestMapping("/deail")
	public ModelAndView formDeail(@RequestParam int identity, ModelAndView mav) {
		Form form = formService.findFormById(identity);
		mav.addObject("form", form);
		mav.setViewName("form");
		return mav;

	}

	@ResponseBody
	@RequestMapping("/review")
	public Map<String, Object> updateFormStatus(@RequestParam int fid,
			@RequestParam int fstatus) {
		int influence = formService.updateformStatus(fid, fstatus);
		Map<String, Object> msg = new HashMap<String, Object>();
		if (influence != 0) {
			msg.put("info", "success");
			msg.put("msg", "审核成功");
			msg.put("influence", influence);
		} else {
			msg.put("info", "fail");
			msg.put("msg", "审核失败");
		}
		return msg;
	}

	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView updateForm(ModelAndView mav) {
		return null;
	}

	@ResponseBody
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public Map<String, Object> deleteForm(@RequestParam int fid) {
		Map<String, Object> msg = new HashMap<String, Object>();
		int influence = formService.deleteFormById(fid);
		msg.put("info", "success");
		msg.put("msg", "删除成功");
		return msg;
	}

	@RequestMapping("/print")
	public ModelAndView print(@RequestParam int identity, ModelAndView mav) {
		Form form = formService.findFormById(identity);
		mav.addObject("form", form);
		mav.setViewName("printForm");
		return mav;
	}

	@ResponseBody
	@RequestMapping("/sms")
	public Map<String, Object> sms(@RequestParam int identity) {
		Form form = formService.findFormById(identity);
		Map<String, Object> map = new HashMap<String, Object>();
		MessageUtils messageUtils = MessageUtils.getInstance();
		messageUtils.setRecNum(String.valueOf(form.getFuphone()));
		StringBuilder product = new StringBuilder("你好，你的报单编号为" + form.getFid())
				.append("的报修单已经接受处理")
				.append(",维修人员将于" + form.getFapointment() + "到你宿舍")
				.append(form.getFuadress() + "进行处理，请耐心等候");
		String smsTemplate = "{\"code\":\"" + form.getFid()
				+ "\",\"product\":\"" + product.toString() + "\"}";
		messageUtils.setSmsParams(smsTemplate.toString());
		messageUtils.sendMsg();
		map.put("success", true);
		return map;
	}

	@RequestMapping("/dowload")
	public String exportToExcel(HttpServletRequest req, HttpServletResponse resp) {
		try {
			String[] fids = req.getParameterValues("formId");
			System.out
					.println("<><><><><><><><><><><><><><><><><><><><><><><><>");
			for (int i = 0; i < fids.length; i++) {
				System.out.println(fids[i]);
			}
			System.out.println(fids.length);
			System.out
					.println("<><><><><><><><><><><><><><><><><><><><><><><><>");

			WritableWorkbook workbook = null;
			String path = Thread.currentThread().getContextClassLoader()
					.getResource("").getPath();
			File file = new File(path + "/报修单统计表.xls");
			List<Form> list = new ArrayList<Form>();
			for (int i = 0; i < fids.length; i++) {
				Form form = formService.findFormById(Integer.parseInt(fids[i]));
				list.add(form);
			}
			if (list != null) {
				String[] title = { "序号", "报修人", "宿舍地址", "联系电话", "报修内容", "维修类型",
						"反馈信息", "状态", "报修日期", "预约日期", "处理日期" };
				file.createNewFile();
				workbook = Workbook.createWorkbook(file);
				WritableSheet sheet = workbook.createSheet("sheet0", 0);
				Label label = null;
				for (int j = 0; j < title.length; j++) {
					label = new Label(j, 0, title[j]);
					sheet.addCell(label);
				}
				for (int k = 1; k < list.size() + 1; k++) {
					Form form = list.get(k - 1);
					// 序号
					label = new Label(0, k, String.valueOf(form.getFid()));
					sheet.addCell(label);
					// 报修人
					label = new Label(1, k, form.getFuname());
					sheet.addCell(label);
					// 宿舍地址
					label = new Label(2, k, form.getFuadress());
					// 联系电话
					label = new Label(3, k, String.valueOf(form.getFuphone()));
					sheet.addCell(label);
					// 报修内容
					label = new Label(4, k, form.getFcontent());
					sheet.addCell(label);
					// 维修类型
					switch (form.getFtype()) {
					case Constants.FAULT_TYPE_ELECTRIC:
						label = new Label(5, k, "电器故障");
						sheet.addCell(label);
						break;
					case Constants.FAULT_TYPE_NETWORK:
						label = new Label(5, k, "网络故障");
						sheet.addCell(label);
						break;
					case Constants.FAULT_TYPE_WATER:
						label = new Label(5, k, "水控故障");
						sheet.addCell(label);
						break;
					}
					// 反馈信息
					label = new Label(6, k, form.getFrsp());
					sheet.addCell(label);
					// 状态
					switch (form.getFstatus()) {
					case Constants.FORM_TYPE_HANDLE:
						label = new Label(7, k, "已处理");
						sheet.addCell(label);
						break;
					case Constants.FORM_TYPE_UNHANDLE:
						label = new Label(7, k, "未处理");
						sheet.addCell(label);
						break;
					}
					DateFormat formater = new SimpleDateFormat("yyyy-MM-dd");
					// 报修日期
					Date fdate = form.getFdate();
					if (fdate != null) {
						label = new Label(8, k, formater.format(fdate));
						sheet.addCell(label);
					}

					// 预约日期
					Date fapointment = form.getFapointment();
					if (fapointment != null) {
						label = new Label(9, k, formater.format(fapointment));
						sheet.addCell(label);
					}
					// 处理日期
					Date fdealine = form.getFdealine();
					if (fdealine != null) {
						label = new Label(10, k, formater.format(fdealine));
						sheet.addCell(label);
					}
				}
			}
			workbook.write();
			workbook.close();
			resp.setContentType("application/x-download");
			String filedisplay = URLEncoder.encode("报修统计表.xls", "UTF-8");
			resp.setHeader("Content-Disposition", "attachment;filename="
					+ filedisplay);
			InputStream in = new FileInputStream(file);
			OutputStream os = resp.getOutputStream();
			byte[] b = new byte[2048];
			int length;
			while ((length = in.read(b)) > 0) {
				os.write(b, 0, length);
			}

			in.close();
			os.close();
			resp.flushBuffer();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@RequestMapping(value = "/process", method = RequestMethod.GET)
	public ModelAndView processView(@RequestParam int uid, ModelAndView mav) {
		List<Form> formList = formService.findFormByUid(uid);
		List<Order> orderList = orderService.findOrderByUid(uid);
		mav.addObject("list", formList);
		mav.addObject("orderList", orderList);
		mav.setViewName("process");
		return mav;
	}
}
