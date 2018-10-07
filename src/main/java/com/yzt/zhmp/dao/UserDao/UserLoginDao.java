package com.yzt.zhmp.dao.UserDao;


import com.yzt.zhmp.beans.DeptUser;
import com.yzt.zhmp.beans.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component("UserLoginDao")
public interface UserLoginDao {


    /**
     * 查询用户
     * @param
     * @return
     */
    @Select("SELECT * FROM d_user WHERE name=#{name} and password=#{password}")
    public User login(User user);
    /**
     * 根据用户id查询所属部门
     */
    @Select("SELECT deptID FROM d_deptUser WHERE usrID=#{userid}")
    public int selectDeptUserbyUserid(int userid);




    //登入查询  根据登入用户id查询登入角色
    @Select("SELECT fieldName FROM b_fileid b1, b_fileUser b2 WHERE b2.fldID = b1.fldID AND b2.usrID = #{userid}")
    public List<String> rolelogin(int userid);


    //查询登入用户角色
    @Select("SELECT fldID FROM b_fileUser WHERE usrID=#{userid}")
     public String selectFileIdByUserid(int userid);
}
