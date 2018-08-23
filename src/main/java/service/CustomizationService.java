package service;

import java.util.List;

import entity.Customization;

public interface CustomizationService {
	/**
	 * 删除
	 * @param cusid
	 * @return boolean
	 */
    boolean deleteByPrimaryKey(Integer cusid);
    /**
     * 添加
     * @param record
     * @return boolean
     */
    boolean insert(Customization record);
    /**
     * 动态添加
     * @param record
     * @return boolean
     */
    boolean insertSelective(Customization record);
    /**
     * 查询通过cusid
     * @param cusid
     * @return Customization
     */
    Customization selectByPrimaryKey(Integer cusid);
    /**
     * 选择更新
     * @param record
     * @return boolean
     */
    boolean updateByPrimaryKeySelective(Customization record);
    /**
     * 更新
     * @param record
     * @return boolean
     */
    boolean updateByPrimaryKey(Customization record);
     /**
      * 查询所有
      * @return Customization集合
      */
    List<Customization> selectAllCus();
    /**
     * 查询根据uid
     * @param uid
     * @return Customization集合
     */
    List<Customization> selectByUid(Integer uid);
}