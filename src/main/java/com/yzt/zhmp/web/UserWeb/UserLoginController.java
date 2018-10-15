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


    /**
     * 登入后台管理功能,从session中获取登录的用户
     *
     * @param name
     * @param password
     * @param session
     * @return
     */
    @RequestMapping("/pananHouTai")
    public ModelAndView userLogin(String name, String password, HttpSession session) {
        ModelAndView modelAndView = new ModelAndView();

        User existUser = (User) session.getAttribute("existUser");
        System.err.println(existUser);
        //查找用户对应的部门id
        int deptId = userLoginService.selectByUserid(existUser.getUsrid());
        System.out.println(deptId);
        if (deptId == 111) {
            List systemList = systemService.selectSystem();
            modelAndView.addObject("systemList", systemList);
        } else {
            List policeSystem = systemService.selectPliceSystem();
            modelAndView.addObject("policeSystem", policeSystem);
        }
        System.out.println(deptId);
        modelAndView.addObject("deptid", deptId);
        //把部门id存到session中以便在其他页面判断
        session.setAttribute("deptid", deptId);
        modelAndView.setViewName("WEB-INF/navigation/newnavigation");
        return modelAndView;
    }


    /**
     * 磐安县登入查询用户角色返回首页
     *
     * @param name
     * @param password
     * @param session
     * @return
     */
    @RequestMapping("/usersLogin")
    public ModelAndView usersLogin(String name, String password, HttpSession session) {
        ModelAndView modelAndView = new ModelAndView();
        User user = new User();
        user.setPassword(MD5Utils.md5(password));
        user.setName(name);

        User existUser = userLoginService.login(user);
        session.setAttribute("existUser", existUser);
        System.out.println(existUser);

        if (existUser == null) {
            modelAndView.addObject("error", "账号或密码错误");
            //model.addAttribute("error","账号或密码错误");
            modelAndView.setViewName("WEB-INF/login/login");
            return modelAndView;
        }


        //查看角色权限字段
        List<String> fileName = userLoginService.rolelogin(existUser.getUsrid());
        System.out.println(fileName);

        //查看此用户是否有从此建筑权限
        List<String> buid = userLoginService.selectBuidbyUserId(existUser.getUsrid());
        System.out.println(buid);
        //声明字段  为1时用户和建筑有关联
        int bfid = 0;
        for (String s : buid) {
            if ("17".equals(s)) {
                bfid = 1;
            }
        }
        session.setAttribute("bfid", bfid);


        //暂未用到
        //查看用户角色id
        List<String> fildId = userLoginService.selectFileIdByUserid(existUser.getUsrid());
        System.out.println(fildId);

        session.setAttribute("fildId", fildId);

        System.err.println(fildId);

        try {
            //查找用户对应的部门id
            int deptid = userLoginService.selectByUserid(existUser.getUsrid());
            session.setAttribute("deptid", deptid);
        } catch (Exception e) {

        }


        //暂定为330727
        List allList = systemService.selectAll("330727");
        //  java.lang.System.out.println(allList);
        modelAndView.addObject("allList", allList);
        //显示农户信息
        Cbuilding cbuilding = collectionSystemService.selectBuildingByid(17);
        System.out.println(cbuilding.getIfOpen());
        modelAndView.addObject("building", cbuilding);

        session.setAttribute("existUser", existUser);
        modelAndView.addObject("existUser", existUser);

        modelAndView.setViewName("WEB-INF/a/newsystem");
        return modelAndView;
    }


    /**
     * 上饶市 公安登入查询用户角色返回首页
     *
     * @param name
     * @param password
     * @param session
     * @return
     */
    @RequestMapping("/shangraousersLogin")
    public ModelAndView shangRaoUsersLogin(String name, String password, HttpSession session) {
        ModelAndView modelAndView = new ModelAndView();
        User user = new User();
        user.setPassword(MD5Utils.md5(password));
        user.setName(name);
        User existUser = userLoginService.login(user);
        System.out.println(existUser);


        if (existUser == null) {
            modelAndView.addObject("error", "账号或密码错误");
            //model.addAttribute("error","账号或密码错误");
            modelAndView.setViewName("WEB-INF/login/login");
            return modelAndView;
        }

        System.out.println(existUser.getUsrid());


        //查看角色权限字段
        List<String> fileName = userLoginService.rolelogin(existUser.getUsrid());
        System.out.println(fileName);

        //查看此用户是否有从此建筑权限
        List<String> buid = userLoginService.selectBuidbyUserId(existUser.getUsrid());
        System.out.println(buid);

        //声明字段  为1时用户和建筑有关联
        int bfid = 0;
        for (String s : buid) {
            if ("17".equals(s)) {
                bfid = 1;
            }
        }
        session.setAttribute("bfid", bfid);
        //声明字段 是否为民警0为否 2为是
        int police = 0;
        //查看用户角色id
        List<String> fildId = userLoginService.selectFileIdByUserid(existUser.getUsrid());
        for (String s : fildId) {
            if ("2".equals(s)) police = 2;
        }
        System.out.println(fildId);
        session.setAttribute("police", police);
        session.setAttribute("fildId", fildId);

        //暂定为330727  根据地区码显示政府服务功能模块
        List allList = systemService.selectAll("361100");
        //  java.lang.System.out.println(allList);
        modelAndView.addObject("allList", allList);
        System.out.println(allList);
        //显示农户建筑信息根据建筑id
        Cbuilding cbuilding = collectionSystemService.selectBuildingByid(17);
        System.out.println(cbuilding.getIfOpen());
        modelAndView.addObject("building", cbuilding);

        session.setAttribute("existUser", existUser);
        modelAndView.addObject("existUser", existUser);

        modelAndView.setViewName("WEB-INF/a/system02");
        return modelAndView;
    }
}
