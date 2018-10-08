package com.yzt.zhmp.service;

import com.yzt.zhmp.beans.System;

import java.util.List;

public interface SystemService {
    //查询民政模块功能状态
    public List selectSystem();
    //开启民政功能模块状态
    public int addOrgmicroservice(List list);
    //关闭民政功能模块
    public int deleteOrgmicroservice(List list);
    //添加新的模块功能
    public int addnewFeatures(System system);
    //查询公安模块
    public List selectPliceSystem();


    //查询首页显示服务有几大类
    public List<String> selectDeptNamebuDisCode(String disCode);


    //根据传入县区码查询部门功能模块
    public List<System> selectAll(String code);
}
