package com.yzt.zhmp.dao.UserDao;

import com.yzt.zhmp.beans.UserDepartment;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

@Mapper
@Component("userDepartmentDao")
public interface UserDepartmentDao {
    @Select("SELECT * FROM user_department WHERE county_name=#{countyName};")
    public UserDepartment selectFeaturesByCountyName(String countyName);
}
