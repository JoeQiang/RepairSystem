package gduf.swimming.repair.service;

import gduf.swimming.repair.model.Area;
import gduf.swimming.repair.model.Form;
import gduf.swimming.repair.model.Page;

import java.util.List;
import java.util.Map;

public interface FormService {

	public List<Area> getAllArea(String area);

	public int saveForm(Form form);

	public Page<Form> formList(Form form, int pageNum, int pageSize);

	public Form findFormById(int identity);

	public int updateformStatus(int fid, int fstatus);

	public int deleteFormById(int fid);

	public List<Form> findFormByUid(int uid);

	public Map<String, Object> countForm();
}
