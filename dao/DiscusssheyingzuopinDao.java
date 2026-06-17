package com.cl.dao;

import com.cl.entity.DiscusssheyingzuopinEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.DiscusssheyingzuopinView;


/**
 * 摄影作品评论表
 * 
 * @author 
 * @email 
 * @date 2025-04-03 22:48:06
 */
public interface DiscusssheyingzuopinDao extends BaseMapper<DiscusssheyingzuopinEntity> {
	
	List<DiscusssheyingzuopinView> selectListView(@Param("ew") Wrapper<DiscusssheyingzuopinEntity> wrapper);

	List<DiscusssheyingzuopinView> selectListView(Pagination page,@Param("ew") Wrapper<DiscusssheyingzuopinEntity> wrapper);
	
	DiscusssheyingzuopinView selectView(@Param("ew") Wrapper<DiscusssheyingzuopinEntity> wrapper);


}
