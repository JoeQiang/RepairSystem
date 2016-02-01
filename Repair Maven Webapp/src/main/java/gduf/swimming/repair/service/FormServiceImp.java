package gduf.swimming.repair.service;

import java.util.List;

import gduf.swimming.repair.dao.FormDao;
import gduf.swimming.repair.model.Area;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class FormServiceImp implements FormService {
	@Autowired
	private FormDao formDao;

	public List<Area> getAllArea() {
		return formDao.getAllArea();
	}
}
