package dao;

import java.util.List;

import entity.Customization;

public interface CustomizationMapper {
	/**
	 * 删除
	 * @param cusid
	 * @return int
	 */
    int deleteByPrimaryKey(Integer cusid);
    /**
     * 添加
     * @param record
     * @return int
     */
    int insert(Customization record);
    /**
     * 动态添加
     * @param record
     * @return int
     */
    int insertSelective(Customization record);
    /**
     * 查询通过cusid
     * @param cusid
     * @return Customization
     */
    Customization selectByPrimaryKey(Integer cusid);
    /**
     * 选择更新
     * @param record
     * @return int
     */
    int updateByPrimaryKeySelective(Customization record);
    /**
     * 更新
     * @param record
     * @return int
     */
    int updateByPrimaryKey(Customization record);
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