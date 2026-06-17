package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.FuwuwanchengEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.FuwuwanchengView;


/**
 * 服务完成
 *
 * @author 
 * @email 
 * @date 2025-04-03 22:48:06
 */
public interface FuwuwanchengService extends IService<FuwuwanchengEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<FuwuwanchengView> selectListView(Wrapper<FuwuwanchengEntity> wrapper);
   	
   	FuwuwanchengView selectView(@Param("ew") Wrapper<FuwuwanchengEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<FuwuwanchengEntity> wrapper);
   	
   
    List<Map<String, Object>> selectValue(Map<String, Object> params,Wrapper<FuwuwanchengEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params,Wrapper<FuwuwanchengEntity> wrapper);

    List<Map<String, Object>> selectGroup(Map<String, Object> params,Wrapper<FuwuwanchengEntity> wrapper);



}

