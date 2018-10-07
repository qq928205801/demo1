package com.yzt.zhmp.service;

import com.yzt.zhmp.beans.OrgAdministrationFeatures;

public interface MinZhengMicroserviceService {
    //打开选择的功能
    public int midfyMicroservice(OrgAdministrationFeatures orgAdministrationFeatures);
    //删除民政子功能
    public  int deleteMicroservice(OrgAdministrationFeatures orgAdministrationFeatures);
}
