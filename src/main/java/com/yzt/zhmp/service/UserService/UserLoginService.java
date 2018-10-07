package com.yzt.zhmp.service.UserService;


import com.yzt.zhmp.beans.DeptUser;
import com.yzt.zhmp.beans.User;

import java.util.List;

/**
 * @author wang
 */
public interface UserLoginService {

    /**
     * 用户登录
     * @param user
     * @return
     */
   public User login(User user);
    /**
     * 查询部门用户
     */
    public int selectByUserid(int userid);


    //登入查询  根据登入用户id查询登入角色
    public List<String> rolelogin(int userid);


    //查询登入用户角色
    public String selectFileIdByUserid(int userid);
}

