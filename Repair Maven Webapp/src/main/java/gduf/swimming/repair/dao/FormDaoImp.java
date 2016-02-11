package gduf.swimming.repair.dao;

import gduf.swimming.repair.model.Area;
import gduf.swimming.repair.model.Form;
import gduf.swimming.repair.model.Page;
import gduf.swimming.repair.util.Constants;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class FormDaoImp implements FormDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public List<Area> getAllArea(String area) {
		String sqlStr = " select * from t_adress where area = ?";
		return jdbcTemplate.query(sqlStr, new Object[] { area }, new Area());
	}

	@Override
	public int saveForm(Form form) {
		StringBuilder sqlStr = new StringBuilder("INSERT INTO t_form")
				.append(" (fcontent,fdate,fstatus,ftype,funame,fuphone,fuadress,fapointment,uid)")
				.append(" VALUE(?,?,?,?,?,?,?,?,?)");
		Object[] params = { form.getFcontent(), form.getFdate(),
				form.getFstatus(), form.getFtype(), form.getFuname(),
				form.getFuphone(), form.getFuadress(), form.getFapointment(),
				form.getUid() };
		return jdbcTemplate.update(sqlStr.toString(), params);
	}

	@Override
	public Page<Form> formlist(Form form, int pageNum, int pageSize) {
		Page<Form> result = null;
		// 存放参数
		List<Object> paramList = new ArrayList<Object>();

		String adress = form.getFuadress();
		String uname = form.getFuname();
		int status = form.getFstatus();
		int type = form.getFtype();

		StringBuilder sql = new StringBuilder("select * from t_form where 1=1");
		StringBuilder countSql = new StringBuilder(
				"select count(fid) as totalRecord from t_form where 1=1 ");

		if (adress != null && !"".equals(adress)) {
			sql.append(" and fuadress like ?");
			countSql.append(" and fuadress like ?");
			paramList.add("%" + adress + "%");
		}

		if (uname != null && !"".equals(uname)) {
			sql.append(" and funame like ? ");
			countSql.append(" and funame like ? ");
			paramList.add("%" + uname + "%");
		}
		if (status != 0) {
			sql.append(" and fstatus = ?");
			countSql.append(" and fstatus = ?");
			paramList.add(status);
		}
		if (type != 0) {
			sql.append(" and ftype = ?");
			countSql.append(" and ftype = ?");
			paramList.add(type);
		}
		sql.append(" ORDER BY fid DESC ");
		int totalRecord = jdbcTemplate.queryForObject(countSql.toString(),
				paramList.toArray(), Integer.class);

		int totalPage = totalRecord / pageSize;
		if (totalRecord % pageSize != 0) {
			totalPage++;
		}
		// 页码
		if (pageNum < 1) {
			pageNum = 1;
		} else if (pageNum > totalPage) {
			pageNum = totalPage;
		}
		// 起始索引
		int fromIndex = pageSize * (pageNum - 1);
		if (fromIndex < 0)
			fromIndex = 0;
		sql.append(" limit " + fromIndex + "," + pageSize);
		// 取得记录
		List<Form> formList = jdbcTemplate.query(sql.toString(),
				paramList.toArray(), new Form());
		// 构建分页类
		result = new Page<Form>(pageSize, pageNum, totalRecord, totalPage,
				formList);
		return result;

	}

	@Override
	public Form findFormById(int identity) {
		String sql = "SELECT * FROM t_form WHERE fid = ?";
		Form form = jdbcTemplate.queryForObject(sql, new Object[] { identity },
				new Form());
		return form;

	}

	@Override
	public int updateFormStatus(int fid, int fstatus) {
		String sql = "UPDATE t_form SET fstatus = ? WHERE fid = ? ";
		return jdbcTemplate.update(sql, new Object[] { fstatus, fid });
	}

	@Override
	public int deleteFormById(int fid) {
		String sql = " delete from t_form where fid = ?";
		return jdbcTemplate.update(sql, new Object[] { fid });
	}

	@Override
	public List<Form> findFormByUid(int uid) {
		String sql = "select * from t_form where uid = ?";
		return jdbcTemplate.query(sql, new Object[] { uid }, new Form());
	}

	@Override
	public Map<String, Object> countForm() {
		String handleSql = "select count(fid) as totalRecord from t_form where 1=1 and fstatus = "
				+ Constants.FORM_TYPE_HANDLE;
		String unhandleSql = "select count(fid) as totalRecord from t_form where 1=1 and fstatus = "
				+ Constants.FORM_TYPE_UNHANDLE;
		int handleCount = jdbcTemplate.queryForObject(handleSql, Integer.class);
		int unhandleCount = jdbcTemplate.queryForObject(unhandleSql,
				Integer.class);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("handle", handleCount);
		map.put("unhandle", unhandleCount);
		return map;
	}
}
