package service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.CoachMapper;
import entity.Coach;
import service.CoachService;
@Service("coachService")
public class CoachServiceImpl implements CoachService{
	@Resource
	private CoachMapper coachDao;
	public int deleteByPrimaryKey(Integer cid) {
		return (coachDao.deleteByPrimaryKey(cid) > 0) ? 1 : 0;
	}

	public int insert(Coach record) {
		return (coachDao.insert(record) > 0) ? 1 : 0;
	}

	public int insertSelective(Coach record) {
		return (coachDao.insertSelective(record) > 0) ? 1 : 0;
	}

	public Coach selectByPrimaryKey(Integer cid) {
		return coachDao.selectByPrimaryKey(cid);
	}

	public int updateByPrimaryKeySelective(Coach record) {
		return (coachDao.updateByPrimaryKeySelective(record) > 0) ? 1 : 0;
	}

	public int updateByPrimaryKey(Coach record) {
		return (coachDao.updateByPrimaryKeySelective(record) > 0) ? 1 : 0;
	}

	public List<Coach> selectAllCoach() {
		return (coachDao.selectAllCoach());
	}

	@Override
	public Coach getPriceByName(String cname) {
		return coachDao.getPriceByName(cname);
	}

	@Override
	public Coach getCidByName(String cname) {
		return coachDao.getCidByName(cname);
	}
	
}
