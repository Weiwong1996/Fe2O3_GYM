package service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.CustomizationMapper;
import entity.Customization;
import service.CustomizationService;
@Service("customizationService")
public class CustomizationServiceImpl implements CustomizationService {
	@Resource
	private CustomizationMapper customizationDao;
	public boolean deleteByPrimaryKey(Integer cusid) {
		return (customizationDao.deleteByPrimaryKey(cusid)>0?true:false);
	}

	public boolean insert(Customization record) {
		return (customizationDao.insert(record)>0?true:false);
	}

	public boolean insertSelective(Customization record) {
		return (customizationDao.insertSelective(record)>0?true:false);
	}

	public Customization selectByPrimaryKey(Integer cusid) {
		return (customizationDao.selectByPrimaryKey(cusid));
	}

	public boolean updateByPrimaryKeySelective(Customization record) {
		return (customizationDao.updateByPrimaryKeySelective(record)>0?true:false);
	}

	public boolean updateByPrimaryKey(Customization record) {
		return (customizationDao.updateByPrimaryKey(record)>0?true:false);
	}

	@Override
	public List<Customization> selectAllCus() {
		return (customizationDao.selectAllCus());
	}

	@Override
	public List<Customization> selectByUid(Integer uid) {
		return (customizationDao.selectByUid(uid));
	}

}
