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

import com.cl.entity.FuwuxiadanEntity;
import com.cl.entity.view.FuwuxiadanView;

import com.cl.service.FuwuxiadanService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.EncryptUtil;
import com.cl.utils.MPUtil;
import com.cl.utils.MapUtils;
import com.cl.utils.CommonUtil;

/**
 * 服务下单
 * 后端接口
 *
 * @author
 * @email
 * @date 2025-04-03 22:48:06
 */
@RestController
@RequestMapping("/fuwuxiadan")
public class FuwuxiadanController {
    @Autowired
    private FuwuxiadanService fuwuxiadanService;


    /**
     * 后台列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params, FuwuxiadanEntity fuwuxiadan,
                  HttpServletRequest request) {
        String tableName = request.getSession().getAttribute("tableName").toString();
        if (tableName.equals("yonghu")) {
            fuwuxiadan.setYonghuzhanghao((String) request.getSession().getAttribute("username"));
        }
        if (tableName.equals("shangjia")) {
            fuwuxiadan.setSheyingshizhanghao((String) request.getSession().getAttribute("username"));
        }
        EntityWrapper<FuwuxiadanEntity> ew = new EntityWrapper<FuwuxiadanEntity>();


        PageUtils page = fuwuxiadanService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, fuwuxiadan), params), params));
        return R.ok().put("data", page);
    }


    /**
     * 前端列表
     */
    @IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params, FuwuxiadanEntity fuwuxiadan,
                  HttpServletRequest request) {
        EntityWrapper<FuwuxiadanEntity> ew = new EntityWrapper<FuwuxiadanEntity>();

        PageUtils page = fuwuxiadanService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, fuwuxiadan), params), params));
        return R.ok().put("data", page);
    }

    /**
     * 列表
     */
    @RequestMapping("/lists")
    public R list(FuwuxiadanEntity fuwuxiadan) {
        EntityWrapper<FuwuxiadanEntity> ew = new EntityWrapper<FuwuxiadanEntity>();
        ew.allEq(MPUtil.allEQMapPre(fuwuxiadan, "fuwuxiadan"));
        return R.ok().put("data", fuwuxiadanService.selectListView(ew));
    }

    /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(FuwuxiadanEntity fuwuxiadan) {
        EntityWrapper<FuwuxiadanEntity> ew = new EntityWrapper<FuwuxiadanEntity>();
        ew.allEq(MPUtil.allEQMapPre(fuwuxiadan, "fuwuxiadan"));
        FuwuxiadanView fuwuxiadanView = fuwuxiadanService.selectView(ew);
        return R.ok("查询服务下单成功").put("data", fuwuxiadanView);
    }

    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id) {
        FuwuxiadanEntity fuwuxiadan = fuwuxiadanService.selectById(id);
        fuwuxiadan = fuwuxiadanService.selectView(new EntityWrapper<FuwuxiadanEntity>().eq("id", id));
        return R.ok().put("data", fuwuxiadan);
    }

    /**
     * 前端详情
     */
    @IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id) {
        FuwuxiadanEntity fuwuxiadan = fuwuxiadanService.selectById(id);
        fuwuxiadan = fuwuxiadanService.selectView(new EntityWrapper<FuwuxiadanEntity>().eq("id", id));
        return R.ok().put("data", fuwuxiadan);
    }


    /**
     * 后端保存
     */
    @RequestMapping("/save")
    @SysLog("新增服务下单")
    public R save(@RequestBody FuwuxiadanEntity fuwuxiadan, HttpServletRequest request) {
        //ValidatorUtils.validateEntity(fuwuxiadan);
        fuwuxiadanService.insert(fuwuxiadan);
        return R.ok();
    }

    /**
     * 前端保存
     */
    @SysLog("新增服务下单")
    @RequestMapping("/add")
    public R add(@RequestBody FuwuxiadanEntity fuwuxiadan, HttpServletRequest request) {
        //ValidatorUtils.validateEntity(fuwuxiadan);
        fuwuxiadanService.insert(fuwuxiadan);
        return R.ok();
    }


    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    @SysLog("修改服务下单")
    public R update(@RequestBody FuwuxiadanEntity fuwuxiadan, HttpServletRequest request) {
        //ValidatorUtils.validateEntity(fuwuxiadan);
        fuwuxiadanService.updateById(fuwuxiadan);//全部更新
        return R.ok();
    }


    /**
     * 删除
     */
    @RequestMapping("/delete")
    @SysLog("删除服务下单")
    public R delete(@RequestBody Long[] ids) {
        fuwuxiadanService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }


}
