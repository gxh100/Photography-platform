package com.cl.dao;

import com.cl.entity.FuwuxiadanEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.FuwuxiadanView;


/**
 * 服务下单
 * 
 * @author 
 * @email 
 * @date 2025-04-03 22:48:06
 */
public interface FuwuxiadanDao extends BaseMapper<FuwuxiadanEntity> {
	
	List<FuwuxiadanView> selectListView(@Param("ew") Wrapper<FuwuxiadanEntity> wrapper);

	List<FuwuxiadanView> selectListView(Pagination page,@Param("ew") Wrapper<FuwuxiadanEntity> wrapper);
	
	FuwuxiadanView selectView(@Param("ew") Wrapper<FuwuxiadanEntity> wrapper);


}
