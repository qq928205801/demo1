package com.yzt.zhmp.web;

import com.yzt.zhmp.beans.Cbuilding;
import com.yzt.zhmp.beans.Cdistrict;
import com.yzt.zhmp.service.CollectionSystemService;
import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
public class CollectionController {
    @Autowired
    private CollectionSystemService collectionSystemService;

    //添加农户信息
    @RequestMapping("/control/addFarmerBuildingInfo")
    public ModelAndView addFarmer(Cbuilding cbuilding, BindingResult bindingResult, HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        String discode = (String) request.getSession().getAttribute("discode");
        cbuilding.setDisCode(discode);
        java.lang.System.out.println(cbuilding);
        int i = collectionSystemService.addFarmerInfo(cbuilding);
        String msg = "添加失败";
        if (i == 1) {
            msg = "添加成功";
        }
        modelAndView.addObject("msg", msg);
        modelAndView.setViewName("control/formNonghu");

        return modelAndView;
    }

    //添加县区信息
    @RequestMapping("/control/addCounty")
    public ModelAndView addCountry(HttpServletRequest request, Cdistrict cdistrict) {
        ModelAndView modelAndView = new ModelAndView();

        String discode = (String) request.getSession().getAttribute("discode");
        cdistrict.setDisCode(discode);
        java.lang.System.out.println(discode);
        int i = collectionSystemService.addCountyInfo(cdistrict);
        if (i == 1) {
            String msg = "添加成功";
            int dis = 1;
            modelAndView.addObject("dis", dis);
            modelAndView.addObject("msg", msg);
            modelAndView.addObject("cdistrict", cdistrict);
        }
        modelAndView.setViewName("control/formUpadteXianqu");
        return modelAndView;
    }

    //删除选中农户信息
    @ResponseBody
    @RequestMapping("/control/deleteCbuilding")
    public int deleteCbuilding(int msg) {
        System.out.println(msg);
        int i = collectionSystemService.deleteCbuilidingByid(msg);
        System.out.println(i);
        return i;
    }

    //查看所有农户键值信息
    @RequestMapping("/allBuilding")
    public void allCbuilding(HttpServletResponse response, HttpServletRequest request) throws IOException {
        String discode = (String) request.getSession().getAttribute("discode");
        System.out.println(discode);
        List<Cbuilding> list = collectionSystemService.selectBuildingBycode(discode);
        System.out.println(list);
        int count = list.size();
        JSONArray jsonArray = JSONArray.fromObject(list);
        response.getWriter().write("{\"code\":0,\"msg\":\"\",\"count\":" + count
                + ",\"data\":" + jsonArray.toString() + "}");
    }

    //更新农户建筑信息
    @RequestMapping("/control/uptadeCbuilding")
    public ModelAndView uptadeCbuilding(Cbuilding cbuilding, HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        String discode = (String) request.getSession().getAttribute("discode");
        cbuilding.setDisCode(discode);
        System.out.println(discode);
        int i = collectionSystemService.updateCbuidingByfamilyType(cbuilding);
        System.out.println(cbuilding);
        System.out.println(i);
        String msg = "";
        if (i > 0) {
            msg = "更新成功";
        } else {
            msg = "更新失败";
        }
        modelAndView.addObject("msg", msg);
        modelAndView.setViewName("control/buildingList");

        return modelAndView;

    }


    //显示需要更新的行政区信息
    @RequestMapping("/control/formUpadteXianqu")
    public ModelAndView formUpadteXianqu(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        String discode = (String) request.getSession().getAttribute("discode");
        Cdistrict cdistrict = collectionSystemService.selectCdistrict(discode);
        modelAndView.addObject("cdistrict", cdistrict);
        System.out.println(cdistrict);
        modelAndView.setViewName("control/formUpadteXianqu");
        return modelAndView;
    }

    //更新行政区介绍
    @RequestMapping("/control/uptadeCdisture")
    public ModelAndView updateCdistrict(HttpServletRequest request, Cdistrict cdistrict) {
        ModelAndView modelAndView = new ModelAndView();
        String discode = (String) request.getSession().getAttribute("discode");
        cdistrict.setDisCode(discode);
        System.out.println(discode);
        int i = collectionSystemService.updateCdistrict(cdistrict);
        System.out.println(i);
        if (i == 1) {
            String msg = "更新成功";
            modelAndView.addObject("msg", msg);
        } else {
            String msg = "更新失败";
            modelAndView.addObject("msg", msg);
        }

        modelAndView.setViewName("control/formUpadteXianqu");
        return modelAndView;
    }
}
