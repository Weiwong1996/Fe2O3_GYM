package service;

import java.util.List;

import entity.Coach;

public interface CoachService {
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
     * 选择性添加
     * @param record
     * @return int
     */
	int insertSelective(Coach record);
    /**
     * 查询
     * @param cid
     * @return coach
     */
	Coach selectByPrimaryKey(Integer cid);
    /**
     * 选择性更新
     * @param record
     * @return int
     */
	int updateByPrimaryKeySelective(Coach record);
    /**
     * 更新
     * @param record
     * @return int
     */
	int updateByPrimaryKey(Coach record);
	/**
	 * 查询所有
	 * @return coach集合
	 */
	List<Coach> selectAllCoach();
	/**
     * 获取Price
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
