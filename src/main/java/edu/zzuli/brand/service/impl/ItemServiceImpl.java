package edu.zzuli.brand.service.impl;

import java.util.List;

import javax.annotation.Resource;

import edu.zzuli.brand.exception.CustomException;
import edu.zzuli.brand.mapper.ItemsMapper;
import edu.zzuli.brand.mapper.ItemsMapperCustom;
import edu.zzuli.brand.pojo.po.Brand;
import edu.zzuli.brand.pojo.po.Items;
import edu.zzuli.brand.pojo.vo.ItemsVo;
import edu.zzuli.brand.service.ItemsService;

public class ItemServiceImpl implements ItemsService {
	@Resource
	private ItemsMapper itemsmapper;
	@Resource
	private ItemsMapperCustom itemsmapperCustom;
	
	/**
	 * 添加订单
	 */
	@Override
	public boolean insert(Items item) throws Exception{
		if(itemsmapper.insert(item)>0){
		
            return true;
		}else{
			
			return false;
			
		}
	}
	/**
	 * 查询订单表
	 */
	@Override
	public List<Items> selectItems()throws Exception {
		// TODO Auto-generated method stub
		return itemsmapper.selectByExample(null);
	}
	/**
	 * 修改status状态字段
	 */
	@Override
	public int updateStatus(Items record)throws Exception {
		// TODO Auto-generated method stub
		return itemsmapperCustom.udpateStatus(record);
	}
	/**
	 * 按iid删除item字段
	 */
	@Override
	public int deleteByIid(String iid) throws Exception{
		// TODO Auto-generated method stub
		return itemsmapper.deleteByPrimaryKey(iid);
	}
	@Override
	public int findItemsCount(ItemsVo itemsVo) {
		
		return itemsmapperCustom.findItemsCount(itemsVo);
	}
	@Override
	public List<Items> findByPage(ItemsVo itemsVo) {
		return itemsmapperCustom.findByPage(itemsVo);
	}


}
