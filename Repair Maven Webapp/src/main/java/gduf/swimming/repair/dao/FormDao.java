package gduf.swimming.repair.dao;

import gduf.swimming.repair.model.Area;
import gduf.swimming.repair.model.Form;
import gduf.swimming.repair.model.Page;

import java.util.List;
import java.util.Map;

public interface FormDao {
	/**
	 * 取得所有地区
	 * 
	 * @param area
	 * @return
	 */
	public List<Area> getAllArea(String area);

	/**
	 * 保存新表单
	 * 
	 * @param form
	 * @return
	 */
	public int saveForm(Form form);

	public Page<Form> formlist(Form form, int pageNum, int pageSize);

	public Form findFormById(int identity);

	public int updateFormStatus(int fid,int fstatus);

	public int deleteFormById(int fid);

	public List<Form> findFormByUid(int uid);

	public Map<String, Object> countForm();

}
