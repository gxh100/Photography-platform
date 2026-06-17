package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.DiscusssheyingfuwuEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.DiscusssheyingfuwuView;


/**
 * 摄影服务评论表
 *
 * @author 
 * @email 
 * @date 2025-04-03 22:48:06
 */
public interface DiscusssheyingfuwuService extends IService<DiscusssheyingfuwuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscusssheyingfuwuView> selectListView(Wrapper<DiscusssheyingfuwuEntity> wrapper);
   	
   	DiscusssheyingfuwuView selectView(@Param("ew") Wrapper<DiscusssheyingfuwuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscusssheyingfuwuEntity> wrapper);
   	
   
}

