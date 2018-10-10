package com.yzt.zhmp.web;

import com.sun.org.apache.xpath.internal.operations.Mod;
import com.yzt.zhmp.beans.Cbuilding;
import com.yzt.zhmp.beans.System;
import com.yzt.zhmp.service.CollectionSystemService;
import com.yzt.zhmp.service.SystemService;
import net.sf.json.JSONArray;
import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sound.midi.Soundbank;
import java.util.ArrayList;
import java.util.List;
import java.util.SortedMap;

@Controller
public class SystemController {
    @Autowired
    private SystemService systemService;
    @Autowired
    private CollectionSystemService collectionSystemService;
    //首页显示
    @RequestMapping("system")
    public ModelAndView system(HttpServletRequest request){
        ModelAndView modelAndView=new ModelAndView();


        request.getSession().invalidate();
        String discode="330727 ";
        //显示政府服务分类
        List<String> deptName=systemService.selectDeptNamebuDisCode(discode);

        request.getSession().setAttribute("deptName",deptName);
        //
        List allList=systemService.selectAll(discode);
        java.lang.System.out.println(allList);
        request.getSession().setAttribute("allList",allList);
        //显示农户信息
        Cbuilding cbuilding=collectionSystemService.selectBuildingByid(17);

        java.lang.System.out.println(cbuilding.getIfOpen());
        modelAndView.addObject("building",cbuilding);
        modelAndView.setViewName("WEB-INF/a/newsystem");
        return modelAndView;
    }

    //显示政府服务
    @RequestMapping("zhengfufuwu")
    public ModelAndView zhengfufuwu(HttpServletRequest request){
        ModelAndView modelAndView=new ModelAndView();


        modelAndView.setViewName("WEB-INF/a/zhengfufuwu");
        return modelAndView;
    }

    //显示想关连接
    @RequestMapping("xiangguanlianjie")
    public ModelAndView xiangguanlianjie(){
        ModelAndView modelAndView=new ModelAndView();
        List allList=systemService.selectAll("330727");
        java.lang.System.out.println(allList);
        modelAndView.addObject("allList",allList);
        modelAndView.setViewName("WEB-INF/a/xiangguanlianjie");

        return modelAndView;
    }

    //显示周边反馈
    @RequestMapping("zhoubianfankui")
    public ModelAndView zhoubianfankui(){
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("WEB-INF/a/zhoubianfankui");
        return modelAndView;
    }






    @RequestMapping("zhengwu")
    public ModelAndView zhengwu(){
        ModelAndView modelAndView=new ModelAndView();
        //
        List allList=systemService.selectAll("330727");
        java.lang.System.out.println(allList);

        modelAndView.addObject("allList",allList);
        modelAndView.setViewName("WEB-INF/a/ZhengWusystem");
        return modelAndView;
    }

    //后台显示
    @RequestMapping("systemnavigation")
    public ModelAndView systemnavigation(){
        ModelAndView modelAndView=new ModelAndView();
        //查询民政
        List systemList=systemService.selectSystem();
        //java.lang.System.out.println(systemList);
        //查询公安
        List policeList=systemService.selectPliceSystem();
        modelAndView.addObject("policeSystem",policeList);
        java.lang.System.err.println(policeList);
        modelAndView.addObject("systemList",systemList);
        modelAndView.setViewName("WEB-INF/navigation/newnavigation");
        return modelAndView;
    }

    //显示添加民政功能模块页面
    @RequestMapping("addOrgmicroserviceVie")
    public ModelAndView addOrgmicroserviceVie(HttpServletRequest request){
        ModelAndView modelAndView=new ModelAndView();
        String deptid=request.getParameter("deptid");
        java.lang.System.out.println(deptid);
        List systemList=systemService.selectSystem();
        java.lang.System.out.println(systemList);
        modelAndView.addObject("systemList",systemList);
        modelAndView.setViewName("WEB-INF/microservice/Orgaddmicroservice");
        return modelAndView;
    }
    //显示禁用民政模块功能页面
    @RequestMapping("deleteOrgmicroserviceVie")
    public ModelAndView deleteOrgmicroserviceVie(){
        ModelAndView modelAndView=new ModelAndView();
        List systemList=systemService.selectSystem();
        java.lang.System.out.println(systemList);
        modelAndView.addObject("systemList",systemList);
        modelAndView.setViewName("WEB-INF/microservice/Orgdeletemicroservice");
        return modelAndView;
    }

    //添加民政功能模块
    @RequestMapping("addOrgmicroservice")
    @ResponseBody
    public int addOrgmicroservice(String link_id){
        ArrayList arrayList=new ArrayList();
        //把json存入list
        JSONArray jsonArray=JSONArray.fromObject(link_id);
        for (int i=0;i<jsonArray.size();i++){
            arrayList.add(jsonArray.get(i));
        }
        java.lang. System.out.println(arrayList);
        int i=systemService.addOrgmicroservice(arrayList);
        java.lang. System.out.println(i);
        return i;
    }

    //禁用模块功能
    @RequestMapping("deleteOrgmicroservice")
    @ResponseBody
    public int deleteOrgmicroservice(String link_id){
        ArrayList arrayList=new ArrayList();
        //把json存入list
        JSONArray jsonArray=JSONArray.fromObject(link_id);
        for (int i=0;i<jsonArray.size();i++){
            arrayList.add(jsonArray.get(i));
        }
        int i=systemService.deleteOrgmicroservice(arrayList);
        return i;
    }

    //添加功能模块
    @RequestMapping("addneweatures")
    public ModelAndView addnewfeatures(String urlname, String headico, String ifvial, String shouName, HttpSession session){
        ModelAndView modelAndView=new ModelAndView();
        int deptid=(int)session.getAttribute("deptid");
        java.lang.System.out.println(deptid);
        System system=new System(deptid,"民政服务",urlname,headico,shouName,ifvial);
        java.lang.System.out.println(urlname);
        java.lang.System.out.println(headico);
        java.lang.System.out.println(ifvial);
        int i=systemService.addnewFeatures(system);
        //查询民政
        List systemList=systemService.selectSystem();
        //java.lang.System.out.println(systemList);
        //查询公安
        List policeList=systemService.selectPliceSystem();
        modelAndView.addObject("policeSystem",policeList);
        java.lang.System.err.println(policeList);
        modelAndView.addObject("systemList",systemList);
        modelAndView.setViewName("WEB-INF/navigation/newnavigation");
        return modelAndView;

    }

    //显示添加功能模块页面
    @RequestMapping("addPoliceVie")
    public ModelAndView addPoliceVie(){
        ModelAndView modelAndView=new ModelAndView();
        List systemList=systemService.selectPliceSystem();
        java.lang.System.out.println(systemList);
        modelAndView.addObject("systemList",systemList);
        modelAndView.setViewName("WEB-INF/microservice/Orgaddmicroservice");
        return modelAndView;
    }

    //公安
    @RequestMapping("deletePoliceVie")
    public ModelAndView deletePoliceVie(){
        ModelAndView modelAndView=new ModelAndView();
        List systemList=systemService.selectPliceSystem();
        java.lang.System.out.println(systemList);
        modelAndView.addObject("systemList",systemList);
        modelAndView.setViewName("WEB-INF/microservice/Orgdeletemicroservice");
        return modelAndView;
    }

    //添加公安功能模块
    @RequestMapping("addPoliceeatures")
    public ModelAndView addPolicefeatures(String urlname,String headico,String ifvial,String shouName){
        ModelAndView modelAndView=new ModelAndView();
        System system=new System(222,"民政服务",urlname,headico,shouName,ifvial);
        java.lang.System.out.println(urlname);
        java.lang.System.out.println(headico);
        java.lang.System.out.println(ifvial);
        int i=systemService.addnewFeatures(system);
        modelAndView.setViewName("WEB-INF/system");
        return modelAndView;
    }



}
