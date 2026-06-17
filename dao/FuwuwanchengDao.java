package com.cl.dao;

import com.cl.entity.FuwuwanchengEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.FuwuwanchengView;


/**
 * 服务完成
 * 
 * @author 
 * @email 
 * @date 2025-04-03 22:48:06
 */
public interface FuwuwanchengDao extends BaseMapper<FuwuwanchengEntity> {
	
	List<FuwuwanchengView> selectListView(@Param("ew") Wrapper<FuwuwanchengEntity> wrapper);

	List<FuwuwanchengView> selectListView(Pagination page,@Param("ew") Wrapper<FuwuwanchengEntity> wrapper);
	
	FuwuwanchengView selectView(@Param("ew") Wrapper<FuwuwanchengEntity> wrapper);


    List<Map<String, Object>> selectValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<FuwuwanchengEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<FuwuwanchengEntity> wrapper);

    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<FuwuwanchengEntity> wrapper);



}
