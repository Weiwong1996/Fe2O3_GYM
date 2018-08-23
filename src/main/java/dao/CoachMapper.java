package dao;

import java.util.List;

import entity.Coach;

public interface CoachMapper {
	/**
	 * 删除用户通过cid
	 * @param cid
	 * @return int
	 */
    int deleteByPrimaryKey(Integer cid);
    /**
     * 添加用户
     * @param record
     * @return int
     */
    int insert(Coach record);
    /**
     * 添加
     * @param record
     * @return int
     */
    int insertSelective(Coach record);
    /**
     * 查询教练通过cid
     * @param cid
     * @return
     */
    Coach selectByPrimaryKey(Integer cid);
    /**
     * 更新教练
     * @param record
     * @return int
     */
    int updateByPrimaryKeySelective(Coach record);
    /**
     * 更新教练类
     * @param record
     * @return int
     */
    int updateByPrimaryKey(Coach record);
    /**
     * 查询所有教练
     * @return Coach集合
     */
    List<Coach> selectAllCoach();
    /**
     * 通过教练名获取教练类
     * @param cname
     * @return coach
     */
    Coach getPriceByName(String cname);
    /**
     * 获取cid
     * @param cname
     * @return coach
     */
    Coach getCidByName(String cname);
}