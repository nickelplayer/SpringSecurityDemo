package com.silong.springsecuritydemo.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import generator.domain.Role;
import generator.mapper.RoleMapper;
import generator.service.RoleService;
import org.springframework.stereotype.Service;

/**
* @author 15214
* @description 针对表【role】的数据库操作Service实现
* @createDate 2026-08-12 10:28:34
*/
@Service
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role>
    implements RoleService{

}




