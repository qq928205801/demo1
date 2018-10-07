package com.yzt.zhmp.web.UserWeb;

import com.yzt.zhmp.beans.UserCounty;
import com.yzt.zhmp.service.UserService.UserCountyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class UserCountyController {
    @Autowired
    private UserCountyService userCountyService;



}
