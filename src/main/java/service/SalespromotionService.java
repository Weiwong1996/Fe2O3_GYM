package service;

import java.util.List;

import entity.Salespromotion;

public interface SalespromotionService {
	/**
	 * 删除活动
	 * @param sid
	 * @return int
	 */
    int deleteByPrimaryKey(Integer sid);
    /**
     * 添加活动
     * @param record
     * @return int
     */
    int insert(Salespromotion record);
    /**
     * 选择添加
     * @param record
     * @return int
     */
    int insertSelective(Salespromotion record);
    /**
     * 查询活动根据sid
     * @param sid
     * @return Salespromotion
     */
    Salespromotion selectByPrimaryKey(Integer sid);
    /**
     * 选择更新
     * @param record
     * @return int
     */
    int updateByPrimaryKeySelective(Salespromotion record);
    /**
     * 更新
     * @param record
     * @return int
     */
    int updateByPrimaryKey(Salespromotion record);
    /**
     * 查询所有
     * @return Salespromotion集合
     */
    List<Salespromotion> selectAllSale();
}