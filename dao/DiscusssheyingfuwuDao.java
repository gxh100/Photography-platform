package com.cl.dao;

import com.cl.entity.DiscusssheyingfuwuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.DiscusssheyingfuwuView;


/**
 * 摄影服务评论表
 * 
 * @author 
 * @email 
 * @date 2025-04-03 22:48:06
 */
public interface DiscusssheyingfuwuDao extends BaseMapper<DiscusssheyingfuwuEntity> {
	
	List<DiscusssheyingfuwuView> selectListView(@Param("ew") Wrapper<DiscusssheyingfuwuEntity> wrapper);

	List<DiscusssheyingfuwuView> selectListView(Pagination page,@Param("ew") Wrapper<DiscusssheyingfuwuEntity> wrapper);
	
	DiscusssheyingfuwuView selectView(@Param("ew") Wrapper<DiscusssheyingfuwuEntity> wrapper);


}
