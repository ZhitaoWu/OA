package com.wzt.layui.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @User:Tao
 * @date:2020/12/9
 * 跨域配置类
 */
@Configuration
public class CorsConfig implements WebMvcConfigurer {

    /**
     * 重写跨域映射
     * @param registry
     */
    @Override
    public void addCorsMappings(CorsRegistry registry) {
        //对那些请求路径进行跨域处理
        registry.addMapping("/**")    // 配置支持跨域的路径
                .allowedHeaders("*")            // 配置允许请求头
                .allowedOrigins("*")            // 配置允许的源
                //.allowCredentials(true)         // 配置是否允许发送Cookie, 用于 凭证请求
                .allowedMethods("GET","POST","DELETE","PUT","PUSH","PATCH") //配置支持跨域请求的方法
                .maxAge(3600);  //配置预检请求的有效时间，单位s

    }
    /*
    registry.addMapping("/**")
            // 允许的请求头，默认允许所有的请求头
            .allowedHeaders("*")
    // 允许的方法，默认允许GET、POST、HEAD
                .allowedMethods("*")
    // 探测请求有效时间，单位秒
                .maxAge(1800)
    // 支持的域
                .allowedOrigins("*");
    */

}
