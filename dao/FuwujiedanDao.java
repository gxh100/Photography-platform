package com.cl.dao;

import com.cl.entity.FuwujiedanEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.FuwujiedanView;


/**
 * 服务接单
 * 
 * @author 
 * @email 
 * @date 2025-04-03 22:48:06
 */
public interface FuwujiedanDao extends BaseMapper<FuwujiedanEntity> {
	
	List<FuwujiedanView> selectListView(@Param("ew") Wrapper<FuwujiedanEntity> wrapper);

	List<FuwujiedanView> selectListView(Pagination page,@Param("ew") Wrapper<FuwujiedanEntity> wrapper);
	
	FuwujiedanView selectView(@Param("ew") Wrapper<FuwujiedanEntity> wrapper);


}
