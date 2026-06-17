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

import com.cl.entity.FuwujiedanEntity;
import com.cl.entity.view.FuwujiedanView;

import com.cl.service.FuwujiedanService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.EncryptUtil;
import com.cl.utils.MPUtil;
import com.cl.utils.MapUtils;
import com.cl.utils.CommonUtil;

/**
 * 服务接单
 * 后端接口
 *
 * @author
 * @email
 * @date 2025-04-03 22:48:06
 */
@RestController
@RequestMapping("/fuwujiedan")
public class FuwujiedanController {
    @Autowired
    private FuwujiedanService fuwujiedanService;


    /**
     * 后台列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params, FuwujiedanEntity fuwujiedan,
                  HttpServletRequest request) {
        String tableName = request.getSession().getAttribute("tableName").toString();
        if (tableName.equals("yonghu")) {
            fuwujiedan.setYonghuzhanghao((String) request.getSession().getAttribute("username"));
        }
        if (tableName.equals("shangjia")) {
            fuwujiedan.setSheyingshizhanghao((String) request.getSession().getAttribute("username"));
        }
        EntityWrapper<FuwujiedanEntity> ew = new EntityWrapper<FuwujiedanEntity>();


        PageUtils page = fuwujiedanService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, fuwujiedan), params), params));
        return R.ok().put("data", page);
    }


    /**
     * 前端列表
     */
    @IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params, FuwujiedanEntity fuwujiedan,
                  HttpServletRequest request) {
        EntityWrapper<FuwujiedanEntity> ew = new EntityWrapper<FuwujiedanEntity>();

        PageUtils page = fuwujiedanService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, fuwujiedan), params), params));
        return R.ok().put("data", page);
    }

    /**
     * 列表
     */
    @RequestMapping("/lists")
    public R list(FuwujiedanEntity fuwujiedan) {
        EntityWrapper<FuwujiedanEntity> ew = new EntityWrapper<FuwujiedanEntity>();
        ew.allEq(MPUtil.allEQMapPre(fuwujiedan, "fuwujiedan"));
        return R.ok().put("data", fuwujiedanService.selectListView(ew));
    }

    /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(FuwujiedanEntity fuwujiedan) {
        EntityWrapper<FuwujiedanEntity> ew = new EntityWrapper<FuwujiedanEntity>();
        ew.allEq(MPUtil.allEQMapPre(fuwujiedan, "fuwujiedan"));
        FuwujiedanView fuwujiedanView = fuwujiedanService.selectView(ew);
        return R.ok("查询服务接单成功").put("data", fuwujiedanView);
    }

    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id) {
        FuwujiedanEntity fuwujiedan = fuwujiedanService.selectById(id);
        fuwujiedan = fuwujiedanService.selectView(new EntityWrapper<FuwujiedanEntity>().eq("id", id));
        return R.ok().put("data", fuwujiedan);
    }

    /**
     * 前端详情
     */
    @IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id) {
        FuwujiedanEntity fuwujiedan = fuwujiedanService.selectById(id);
        fuwujiedan = fuwujiedanService.selectView(new EntityWrapper<FuwujiedanEntity>().eq("id", id));
        return R.ok().put("data", fuwujiedan);
    }


    /**
     * 后端保存
     */
    @RequestMapping("/save")
    @SysLog("新增服务接单")
    public R save(@RequestBody FuwujiedanEntity fuwujiedan, HttpServletRequest request) {
        //ValidatorUtils.validateEntity(fuwujiedan);
        fuwujiedanService.insert(fuwujiedan);
        return R.ok();
    }

    /**
     * 前端保存
     */
    @SysLog("新增服务接单")
    @RequestMapping("/add")
    public R add(@RequestBody FuwujiedanEntity fuwujiedan, HttpServletRequest request) {
        //ValidatorUtils.validateEntity(fuwujiedan);
        fuwujiedanService.insert(fuwujiedan);
        return R.ok();
    }


    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    @SysLog("修改服务接单")
    public R update(@RequestBody FuwujiedanEntity fuwujiedan, HttpServletRequest request) {
        //ValidatorUtils.validateEntity(fuwujiedan);
        fuwujiedanService.updateById(fuwujiedan);//全部更新
        return R.ok();
    }


    /**
     * 删除
     */
    @RequestMapping("/delete")
    @SysLog("删除服务接单")
    public R delete(@RequestBody Long[] ids) {
        fuwujiedanService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }


}
