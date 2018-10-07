package com.yzt.zhmp.web.UserWeb;

import com.yzt.zhmp.beans.Cbuilding;
import com.yzt.zhmp.beans.User;
import com.yzt.zhmp.service.CollectionSystemService;
import com.yzt.zhmp.service.SystemService;
import com.yzt.zhmp.service.UserService.UserLoginService;
import com.yzt.zhmp.utils.MD5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author wang
 */
@Controller
public class UserLoginController {

    @Autowired
    UserLoginService userLoginService;

    @Autowired
    private SystemService systemService;
    @Autowired
    private CollectionSystemService collectionSystemService;


    //登入后台管理功能
    @RequestMapping("/userLogin")
    public ModelAndView userLogin(String name, String password, HttpSession session){
        ModelAndView modelAndView=new ModelAndView();
        User user=new User();
        user.setPassword(MD5Utils.md5(password));
        user.setName(name);
        //MD5密码处理
        //String password = user.getPassword();
        //String = MD5Utils.md5(password);
        //user.setPassword(s)

        User existUser=userLoginService.login(user);
        System.out.println(existUser);
        //民政

      //  System.out.println(existUser.getUsrid());
        if (existUser==null){
            modelAndView.addObject("error","账号或密码错误");
            //model.addAttribute("error","账号或密码错误");
            modelAndView.setViewName("login/login");
            return modelAndView;
        }
        //查找用户对应的部门id
        int deptid=userLoginService.selectByUserid(existUser.getUsrid());
        System.out.println(deptid);
        if (deptid==111){
            List systemList=systemService.selectSystem();

            modelAndView.addObject("systemList",systemList);

        }else {
            System.err.println(deptid);
            //公安
            List policeSystem=systemService.selectPliceSystem();

            modelAndView.addObject("policeSystem",policeSystem);

            }
            System.out.println(deptid);
        modelAndView.addObject("deptid",deptid);
        //把部门id存到session中以便在其他页面判断
        session.setAttribute("deptid",deptid);
        modelAndView.setViewName("WEB-INF/navigation/newnavigation");
        return modelAndView;
    }



    //登入查询用户角色返回首页

    @RequestMapping("/usersLogin")
    public ModelAndView usersLogin(String name, String password, HttpSession session){
        ModelAndView modelAndView=new ModelAndView();
        User user=new User();
        user.setPassword(MD5Utils.md5(password));
        user.setName(name);


        User existUser=userLoginService.login(user);
        System.out.println(existUser);


        if (existUser==null){
            modelAndView.addObject("error","账号或密码错误");
            //model.addAttribute("error","账号或密码错误");
            modelAndView.setViewName("WEB-INF/login/login");
            return modelAndView;
        }

        System.out.println(existUser.getUsrid());



        //查看角色权限字段
        List<String> fileName=userLoginService.rolelogin(existUser.getUsrid());
        System.out.println(fileName);
        //查看用户角色id
        String fildId=userLoginService.selectFileIdByUserid(existUser.getUsrid());
        System.out.println(fildId);
        session.setAttribute("fildId",fildId);

        //暂定为330727
        List allList=systemService.selectAll("330727");
      //  java.lang.System.out.println(allList);
        modelAndView.addObject("allList",allList);
        //显示农户信息
        Cbuilding cbuilding=collectionSystemService.selectBuildingByid(17);
        System.out.println(cbuilding.getIfOpen());
        modelAndView.addObject("building",cbuilding);

        session.setAttribute("existUser",existUser);
        modelAndView.addObject("existUser",existUser);

        modelAndView.setViewName("WEB-INF/a/newsystem");
        return modelAndView;
    }


}
