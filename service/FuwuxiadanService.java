package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.FuwuxiadanEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.FuwuxiadanView;


/**
 * 服务下单
 *
 * @author 
 * @email 
 * @date 2025-04-03 22:48:06
 */
public interface FuwuxiadanService extends IService<FuwuxiadanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<FuwuxiadanView> selectListView(Wrapper<FuwuxiadanEntity> wrapper);
   	
   	FuwuxiadanView selectView(@Param("ew") Wrapper<FuwuxiadanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<FuwuxiadanEntity> wrapper);
   	
   
}

