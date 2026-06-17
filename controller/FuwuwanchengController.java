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

import com.cl.entity.FuwuwanchengEntity;
import com.cl.entity.view.FuwuwanchengView;

import com.cl.service.FuwuwanchengService;
import com.cl.service.TokenService;
import com.cl.utils.PageUtils;
import com.cl.utils.R;
import com.cl.utils.EncryptUtil;
import com.cl.utils.MPUtil;
import com.cl.utils.MapUtils;
import com.cl.utils.CommonUtil;

/**
 * 服务完成
 * 后端接口
 *
 * @author
 * @email
 * @date 2025-04-03 22:48:06
 */
@RestController
@RequestMapping("/fuwuwancheng")
public class FuwuwanchengController {
    @Autowired
    private FuwuwanchengService fuwuwanchengService;


    /**
     * 后台列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params, FuwuwanchengEntity fuwuwancheng,
                  HttpServletRequest request) {
        String tableName = request.getSession().getAttribute("tableName").toString();
        if (tableName.equals("yonghu")) {
            fuwuwancheng.setYonghuzhanghao((String) request.getSession().getAttribute("username"));
        }
        if (tableName.equals("shangjia")) {
            fuwuwancheng.setSheyingshizhanghao((String) request.getSession().getAttribute("username"));
        }
        EntityWrapper<FuwuwanchengEntity> ew = new EntityWrapper<FuwuwanchengEntity>();


        PageUtils page = fuwuwanchengService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, fuwuwancheng), params), params));
        return R.ok().put("data", page);
    }


    /**
     * 前端列表
     */
    @IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params, FuwuwanchengEntity fuwuwancheng,
                  HttpServletRequest request) {
        EntityWrapper<FuwuwanchengEntity> ew = new EntityWrapper<FuwuwanchengEntity>();

        PageUtils page = fuwuwanchengService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, fuwuwancheng), params), params));
        return R.ok().put("data", page);
    }

    /**
     * 列表
     */
    @RequestMapping("/lists")
    public R list(FuwuwanchengEntity fuwuwancheng) {
        EntityWrapper<FuwuwanchengEntity> ew = new EntityWrapper<FuwuwanchengEntity>();
        ew.allEq(MPUtil.allEQMapPre(fuwuwancheng, "fuwuwancheng"));
        return R.ok().put("data", fuwuwanchengService.selectListView(ew));
    }

    /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(FuwuwanchengEntity fuwuwancheng) {
        EntityWrapper<FuwuwanchengEntity> ew = new EntityWrapper<FuwuwanchengEntity>();
        ew.allEq(MPUtil.allEQMapPre(fuwuwancheng, "fuwuwancheng"));
        FuwuwanchengView fuwuwanchengView = fuwuwanchengService.selectView(ew);
        return R.ok("查询服务完成成功").put("data", fuwuwanchengView);
    }

    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id) {
        FuwuwanchengEntity fuwuwancheng = fuwuwanchengService.selectById(id);
        fuwuwancheng = fuwuwanchengService.selectView(new EntityWrapper<FuwuwanchengEntity>().eq("id", id));
        return R.ok().put("data", fuwuwancheng);
    }

    /**
     * 前端详情
     */
    @IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id) {
        FuwuwanchengEntity fuwuwancheng = fuwuwanchengService.selectById(id);
        fuwuwancheng = fuwuwanchengService.selectView(new EntityWrapper<FuwuwanchengEntity>().eq("id", id));
        return R.ok().put("data", fuwuwancheng);
    }


    /**
     * 后端保存
     */
    @RequestMapping("/save")
    @SysLog("新增服务完成")
    public R save(@RequestBody FuwuwanchengEntity fuwuwancheng, HttpServletRequest request) {
        //ValidatorUtils.validateEntity(fuwuwancheng);
        fuwuwanchengService.insert(fuwuwancheng);
        return R.ok();
    }

    /**
     * 前端保存
     */
    @SysLog("新增服务完成")
    @RequestMapping("/add")
    public R add(@RequestBody FuwuwanchengEntity fuwuwancheng, HttpServletRequest request) {
        //ValidatorUtils.validateEntity(fuwuwancheng);
        fuwuwanchengService.insert(fuwuwancheng);
        return R.ok();
    }


    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    @SysLog("修改服务完成")
    public R update(@RequestBody FuwuwanchengEntity fuwuwancheng, HttpServletRequest request) {
        //ValidatorUtils.validateEntity(fuwuwancheng);
        fuwuwanchengService.updateById(fuwuwancheng);//全部更新
        return R.ok();
    }


    /**
     * 删除
     */
    @RequestMapping("/delete")
    @SysLog("删除服务完成")
    public R delete(@RequestBody Long[] ids) {
        fuwuwanchengService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }


    /**
     * （按值统计）
     */
    @RequestMapping("/value/{xColumnName}/{yColumnName}")
    public R value(@PathVariable("yColumnName") String yColumnName, @PathVariable("xColumnName") String xColumnName, HttpServletRequest request) {
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("xColumn", MPUtil.camelToSnake(xColumnName));
        params.put("yColumn", MPUtil.camelToSnake(yColumnName));
        EntityWrapper<FuwuwanchengEntity> ew = new EntityWrapper<FuwuwanchengEntity>();
        String tableName = request.getSession().getAttribute("tableName").toString();
        if (tableName.equals("yonghu")) {
            ew.eq("yonghuzhanghao", (String) request.getSession().getAttribute("username"));
        }
        if (tableName.equals("shangjia")) {
            ew.eq("sheyingshizhanghao", (String) request.getSession().getAttribute("username"));
        }
        List<Map<String, Object>> result = MPUtil.snakeListToCamel(fuwuwanchengService.selectValue(params, ew));
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        for (Map<String, Object> m : result) {
            for (String k : m.keySet()) {
                if (m.get(k) instanceof Date) {
                    m.put(k, sdf.format((Date) m.get(k)));
                }
            }
        }

        Collections.sort(result, (map1, map2) -> {
            // 假设 total 总是存在并且是数值类型
            Number total1 = (Number) map1.get("total");
            Number total2 = (Number) map2.get("total");
            if (total1 == null) {
                total1 = 0;
            }
            if (total2 == null) {
                total2 = 0;
            }
            String order = request.getParameter("order");
            if (StringUtils.isNotBlank(order) && order.equals("desc")) {
                return Double.compare(total2.doubleValue(), total1.doubleValue());
            }
            return Double.compare(total1.doubleValue(), total2.doubleValue());
        });

        return R.ok().put("data", result);
    }

    /**
     * （按值统计(多)）
     */
    @RequestMapping("/valueMul/{xColumnName}")
    public R valueMul(@PathVariable("xColumnName") String xColumnName, @RequestParam String yColumnNameMul, HttpServletRequest request) {
        String[] yColumnNames = MPUtil.camelToSnake(yColumnNameMul).split(",");
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("xColumn", MPUtil.camelToSnake(xColumnName));
        List<List<Map<String, Object>>> result2 = new ArrayList<List<Map<String, Object>>>();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        EntityWrapper<FuwuwanchengEntity> ew = new EntityWrapper<FuwuwanchengEntity>();
        String tableName = request.getSession().getAttribute("tableName").toString();
        if (tableName.equals("yonghu")) {
            ew.eq("yonghuzhanghao", (String) request.getSession().getAttribute("username"));
        }
        if (tableName.equals("shangjia")) {
            ew.eq("sheyingshizhanghao", (String) request.getSession().getAttribute("username"));
        }
        for (int i = 0; i < yColumnNames.length; i++) {
            params.put("yColumn", yColumnNames[i]);
            List<Map<String, Object>> result = MPUtil.snakeListToCamel(fuwuwanchengService.selectValue(params, ew));
            for (Map<String, Object> m : result) {
                for (String k : m.keySet()) {
                    if (m.get(k) instanceof Date) {
                        m.put(k, sdf.format((Date) m.get(k)));
                    }
                }
            }
            result2.add(result);
        }
        return R.ok().put("data", result2);
    }

    /**
     * （按值统计）时间统计类型
     */
    @RequestMapping("/value/{xColumnName}/{yColumnName}/{timeStatType}")
    public R valueDay(@PathVariable("yColumnName") String yColumnName, @PathVariable("xColumnName") String xColumnName, @PathVariable("timeStatType") String timeStatType, HttpServletRequest request) {
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("xColumn", MPUtil.camelToSnake(xColumnName));
        params.put("yColumn", MPUtil.camelToSnake(yColumnName));
        params.put("timeStatType", timeStatType);
        EntityWrapper<FuwuwanchengEntity> ew = new EntityWrapper<FuwuwanchengEntity>();
        String tableName = request.getSession().getAttribute("tableName").toString();
        if (tableName.equals("yonghu")) {
            ew.eq("yonghuzhanghao", (String) request.getSession().getAttribute("username"));
        }
        if (tableName.equals("shangjia")) {
            ew.eq("sheyingshizhanghao", (String) request.getSession().getAttribute("username"));
        }
        List<Map<String, Object>> result = MPUtil.snakeListToCamel(fuwuwanchengService.selectTimeStatValue(params, ew));
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        for (Map<String, Object> m : result) {
            for (String k : m.keySet()) {
                if (m.get(k) instanceof Date) {
                    m.put(k, sdf.format((Date) m.get(k)));
                }
            }
        }
        return R.ok().put("data", result);
    }

    /**
     * （按值统计）时间统计类型(多)
     */
    @RequestMapping("/valueMul/{xColumnName}/{timeStatType}")
    public R valueMulDay(@PathVariable("xColumnName") String xColumnName, @PathVariable("timeStatType") String timeStatType, @RequestParam String yColumnNameMul, HttpServletRequest request) {
        String[] yColumnNames = MPUtil.camelToSnake(yColumnNameMul).split(",");
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("xColumn", xColumnName);
        params.put("timeStatType", timeStatType);
        List<List<Map<String, Object>>> result2 = new ArrayList<List<Map<String, Object>>>();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        EntityWrapper<FuwuwanchengEntity> ew = new EntityWrapper<FuwuwanchengEntity>();
        String tableName = request.getSession().getAttribute("tableName").toString();
        if (tableName.equals("yonghu")) {
            ew.eq("yonghuzhanghao", (String) request.getSession().getAttribute("username"));
        }
        if (tableName.equals("shangjia")) {
            ew.eq("sheyingshizhanghao", (String) request.getSession().getAttribute("username"));
        }
        for (int i = 0; i < yColumnNames.length; i++) {
            params.put("yColumn", yColumnNames[i]);
            List<Map<String, Object>> result = MPUtil.snakeListToCamel(fuwuwanchengService.selectTimeStatValue(params, ew));
            for (Map<String, Object> m : result) {
                for (String k : m.keySet()) {
                    if (m.get(k) instanceof Date) {
                        m.put(k, sdf.format((Date) m.get(k)));
                    }
                }
            }
            result2.add(result);
        }
        return R.ok().put("data", result2);
    }

    /**
     * 分组统计
     */
    @RequestMapping("/group/{columnName}")
    public R group(@PathVariable("columnName") String columnName, HttpServletRequest request) {
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("column", MPUtil.camelToSnake(columnName));
        EntityWrapper<FuwuwanchengEntity> ew = new EntityWrapper<FuwuwanchengEntity>();
        String tableName = request.getSession().getAttribute("tableName").toString();
        if (tableName.equals("yonghu")) {
            ew.eq("yonghuzhanghao", (String) request.getSession().getAttribute("username"));
        }
        if (tableName.equals("shangjia")) {
            ew.eq("sheyingshizhanghao", (String) request.getSession().getAttribute("username"));
        }
        List<Map<String, Object>> result = MPUtil.snakeListToCamel(fuwuwanchengService.selectGroup(params, ew));
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        for (Map<String, Object> m : result) {
            for (String k : m.keySet()) {
                if (m.get(k) instanceof Date) {
                    m.put(k, sdf.format((Date) m.get(k)));
                }
            }
        }
        return R.ok().put("data", result);
    }


    /**
     * 总数量
     */
    @RequestMapping("/count")
    public R count(@RequestParam Map<String, Object> params, FuwuwanchengEntity fuwuwancheng, HttpServletRequest request) {
        String tableName = request.getSession().getAttribute("tableName").toString();
        if (tableName.equals("yonghu")) {
            fuwuwancheng.setYonghuzhanghao((String) request.getSession().getAttribute("username"));
        }
        if (tableName.equals("shangjia")) {
            fuwuwancheng.setSheyingshizhanghao((String) request.getSession().getAttribute("username"));
        }
        EntityWrapper<FuwuwanchengEntity> ew = new EntityWrapper<FuwuwanchengEntity>();
        int count = fuwuwanchengService.selectCount(MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, fuwuwancheng), params), params));
        return R.ok().put("data", count);
    }


}
