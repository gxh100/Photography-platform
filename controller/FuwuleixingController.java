package com.cl.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

import com.cl.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.cl.annotation.IgnoreAuth;
import com.cl.annotation.SysLog;

import com.cl.entity.FuwuleixingEntity;
import com.cl.entity.view.FuwuleixingView;

import com.cl.service.FuwuleixingService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.EncryptUtil;
import com.cl.utils.MPUtil;
import com.cl.utils.MapUtils;
import com.cl.utils.CommonUtil;

/**
 * 服务类型
 * 后端接口
 *
 * @author
 * @email
 * @date 2025-04-03 22:48:06
 */
@RestController
@RequestMapping("/fuwuleixing")
public class FuwuleixingController {
    @Autowired
    private FuwuleixingService fuwuleixingService;


    /**
     * 后台列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params, FuwuleixingEntity fuwuleixing,
                  HttpServletRequest request) {
        EntityWrapper<FuwuleixingEntity> ew = new EntityWrapper<FuwuleixingEntity>();


        PageUtils page = fuwuleixingService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, fuwuleixing), params), params));
        return R.ok().put("data", page);
    }


    /**
     * 前端列表
     */
    @IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params, FuwuleixingEntity fuwuleixing,
                  HttpServletRequest request) {
        EntityWrapper<FuwuleixingEntity> ew = new EntityWrapper<FuwuleixingEntity>();

        PageUtils page = fuwuleixingService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, fuwuleixing), params), params));
        return R.ok().put("data", page);
    }

    /**
     * 列表
     */
    @RequestMapping("/lists")
    public R list(FuwuleixingEntity fuwuleixing) {
        EntityWrapper<FuwuleixingEntity> ew = new EntityWrapper<FuwuleixingEntity>();
        ew.allEq(MPUtil.allEQMapPre(fuwuleixing, "fuwuleixing"));
        return R.ok().put("data", fuwuleixingService.selectListView(ew));
    }

    /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(FuwuleixingEntity fuwuleixing) {
        EntityWrapper<FuwuleixingEntity> ew = new EntityWrapper<FuwuleixingEntity>();
        ew.allEq(MPUtil.allEQMapPre(fuwuleixing, "fuwuleixing"));
        FuwuleixingView fuwuleixingView = fuwuleixingService.selectView(ew);
        return R.ok("查询服务类型成功").put("data", fuwuleixingView);
    }

    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id) {
        FuwuleixingEntity fuwuleixing = fuwuleixingService.selectById(id);
        fuwuleixing = fuwuleixingService.selectView(new EntityWrapper<FuwuleixingEntity>().eq("id", id));
        return R.ok().put("data", fuwuleixing);
    }

    /**
     * 前端详情
     */
    @IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id) {
        FuwuleixingEntity fuwuleixing = fuwuleixingService.selectById(id);
        fuwuleixing = fuwuleixingService.selectView(new EntityWrapper<FuwuleixingEntity>().eq("id", id));
        return R.ok().put("data", fuwuleixing);
    }


    /**
     * 后端保存
     */
    @RequestMapping("/save")
    @SysLog("新增服务类型")
    public R save(@RequestBody FuwuleixingEntity fuwuleixing, HttpServletRequest request) {
        //ValidatorUtils.validateEntity(fuwuleixing);
        fuwuleixingService.insert(fuwuleixing);
        return R.ok();
    }

    /**
     * 前端保存
     */
    @SysLog("新增服务类型")
    @RequestMapping("/add")
    public R add(@RequestBody FuwuleixingEntity fuwuleixing, HttpServletRequest request) {
        //ValidatorUtils.validateEntity(fuwuleixing);
        fuwuleixingService.insert(fuwuleixing);
        return R.ok();
    }


    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    @SysLog("修改服务类型")
    public R update(@RequestBody FuwuleixingEntity fuwuleixing, HttpServletRequest request) {
        //ValidatorUtils.validateEntity(fuwuleixing);
        fuwuleixingService.updateById(fuwuleixing);//全部更新
        return R.ok();
    }


    /**
     * 删除
     */
    @RequestMapping("/delete")
    @SysLog("删除服务类型")
    public R delete(@RequestBody Long[] ids) {
        fuwuleixingService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }


}
