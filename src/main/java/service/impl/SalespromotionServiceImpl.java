package service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.SalespromotionMapper;
import entity.Salespromotion;
import service.SalespromotionService;
@Service("salespromotionService")
public class SalespromotionServiceImpl implements SalespromotionService {
	@Resource
	private SalespromotionMapper salespromotionDao;
	public int deleteByPrimaryKey(Integer sid) {
		return (salespromotionDao.deleteByPrimaryKey(sid));
	}

	public int insert(Salespromotion record) {
		return (salespromotionDao.insert(record));
	}

	public int insertSelective(Salespromotion record) {
		return (salespromotionDao.insertSelective(record));
	}

	public Salespromotion selectByPrimaryKey(Integer sid) {
		return (salespromotionDao.selectByPrimaryKey(sid));
	}

	public int updateByPrimaryKeySelective(Salespromotion record) {
		return (salespromotionDao.updateByPrimaryKeySelective(record));
	}

	public int updateByPrimaryKey(Salespromotion record) {
		return (salespromotionDao.updateByPrimaryKey(record));
	}

	public List<Salespromotion> selectAllSale() {
		return (salespromotionDao.selectAllSale());
	}

}
