package gduf.swimming.repair.service;

import gduf.swimming.repair.dao.FormDao;
import gduf.swimming.repair.model.Area;
import gduf.swimming.repair.model.Form;
import gduf.swimming.repair.model.Page;
import gduf.swimming.repair.util.Constants;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class FormServiceImp implements FormService {
	@Autowired
	private FormDao formDao;

	public List<Area> getAllArea(String area) {
		return formDao.getAllArea(area);
	}

	@Override
	public int saveForm(Form form) {
		form.setFstatus(Constants.FORM_TYPE_UNHANDLE);
		form.setFdate(new Date());
		return formDao.saveForm(form);

	}

	@Override
	public Page<Form> formList(Form form, int pageNum, int pageSize) {
		return formDao.formlist(form, pageNum, pageSize);
	}

	@Override
	public Form findFormById(int identity) {
		return formDao.findFormById(identity);
	}

	@Override
	public int updateformStatus(int fid, int fstatus) {
		return formDao.updateFormStatus(fid, fstatus);
	}

	@Override
	public int deleteFormById(int fid) {
		return formDao.deleteFormById(fid);
	}
}
