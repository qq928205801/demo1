package com.yzt.zhmp.dao;

import com.yzt.zhmp.beans.OrgAdministrationFeatures;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

@Mapper
@Component("orgAdministrationFeaturesDao")
public interface OrgAdministrationFeaturesDao {
    @Select("SELECT * FROM org_administration_features")
    public OrgAdministrationFeatures selectFeatures();
}
