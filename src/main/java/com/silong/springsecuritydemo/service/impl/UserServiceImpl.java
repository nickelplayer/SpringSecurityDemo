package com.silong.springsecuritydemo.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.silong.springsecuritydemo.mapper.UserMapper;
import com.silong.springsecuritydemo.model.domain.User;
import com.silong.springsecuritydemo.service.UserService;
import org.springframework.stereotype.Service;

/**
* @author 15214
* @description 针对表【user】的数据库操作Service实现
* @createDate 2026-08-12 10:32:39
*/
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User>
        implements UserService {

}




