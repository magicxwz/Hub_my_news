package com.pc.beans;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 用户实体类
 * 登陆&密码
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Users {
    private int uid;
    private String uname;
    private String upwd;
}
