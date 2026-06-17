package com.cl.config;
 
import org.apache.ibatis.logging.Log;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
 
/**
 * mybatis日志级别改为info
 *
 * @author ybw
 * @version V1.0
 * @className InfoLevelLog
 * @date 2024/12/2
 **/
public class InfoLevelLogger implements Log {
 
    private final Logger logger;
 
    public InfoLevelLogger(String clazz) {
        this.logger = LoggerFactory.getLogger(clazz);
    }
 
    @Override
    public boolean isDebugEnabled() {
        return logger.isInfoEnabled();
    }
 
    @Override
    public void error(String s, Throwable e) {
        logger.error(s, e);
    }
 
    @Override
    public void error(String s) {
        logger.error(s);
    }
 
    @Override
    public void debug(String s) {
        // 修改这里
        logger.info(s);
    }
 
    @Override
    public void warn(String s) {
        logger.warn(s);
    }
 
    @Override
    public boolean isTraceEnabled() {
        // 如果需要，也可以将TRACE级别的日志改为INFO
        return logger.isInfoEnabled();
    }
 
    @Override
    public void trace(String s) {
        // 修改这里
        logger.trace(s);
    }
}