package com.yzt.zhmp.web;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


//实现jsp中转
@Controller
public class Transfer {

    @RequestMapping("login")
    public String login(){
        return "WEB-INF/login/login";
    }

    @RequestMapping("pananlogin")
    public String pananlogin(){
        return "WEB-INF/login/pananHouTailogin";
    }

    @RequestMapping("ShangRaologin")
    public String ShangRaologin(){
        return "WEB-INF/login/ShangRaologin";
    }

    //注册中转
    @RequestMapping("regist")
    public String regist(){
        return "WEB-INF/login/regist";
    }
    //test
    @RequestMapping("test")
    public String tst(){return "WEB-INF/microservice/addnewfeaures";}

    @RequestMapping("newsystem")
    public String testa(){return "WEB-INF/a/newsystem";}

}
