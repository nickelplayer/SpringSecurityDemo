package com.silong.springsecuritydemo.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.silong.springsecuritydemo.mapper.PermissionMapper;
import com.silong.springsecuritydemo.model.domain.Permission;
import com.silong.springsecuritydemo.service.PermissionService;
import org.springframework.stereotype.Service;

/**
* @author 15214
* @description 针对表【permission】的数据库操作Service实现
* @createDate 2026-08-12 10:10:33
*/
@Service
public class PermissionServiceImpl extends ServiceImpl<PermissionMapper, Permission>
    implements PermissionService {

}




