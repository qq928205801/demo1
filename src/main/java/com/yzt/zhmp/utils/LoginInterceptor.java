package com.yzt.zhmp.utils;

import com.yzt.zhmp.beans.User;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author wang
 * 登录拦截功能
 */
@Component
public class LoginInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        StringBuffer requestURL = request.getRequestURL();
        System.out.println(requestURL);
        User user = (User) request.getSession().getAttribute("existUser");
        if (user == null) {
            response.sendRedirect(request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() +
                    request.getContextPath() + "/control/index");
            return false;
        }
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
                           ModelAndView modelAndView) {
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) {
    }

}
