package com.cl.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.cl.utils.PageUtils;
import com.cl.entity.FuwujiedanEntity;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import com.cl.entity.view.FuwujiedanView;


/**
 * 服务接单
 *
 * @author 
 * @email 
 * @date 2025-04-03 22:48:06
 */
public interface FuwujiedanService extends IService<FuwujiedanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<FuwujiedanView> selectListView(Wrapper<FuwujiedanEntity> wrapper);
   	
   	FuwujiedanView selectView(@Param("ew") Wrapper<FuwujiedanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<FuwujiedanEntity> wrapper);
   	
   
}

