package com.yzt.zhmp.service;

import java.util.List;

public interface OrgFeaturesService {
    //显示民政功能模块状态
    public List selectOrgFeatures();
    //关闭选中的民政功能模块
    public int offOrgFeatures(List list);
    //打开选中的民政功能模块
    public int onOrgFeatures(List list);
}
