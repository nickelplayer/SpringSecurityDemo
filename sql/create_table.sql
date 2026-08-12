-- 用户表
CREATE TABLE user
(
    id           BIGINT AUTO_INCREMENT PRIMARY KEY,
    username     VARCHAR(100) NOT NULL UNIQUE,
    user_account VARCHAR(100) NOT NULL,
    password     VARCHAR(200) NOT NULL,
    enabled      TINYINT(1) DEFAULT 1,
    created_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at   TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

);

-- 角色表
CREATE TABLE role
(
    id   BIGINT AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(100) NOT NULL UNIQUE, -- e.g. ROLE_ADMIN
    name VARCHAR(100)
);

-- 权限表
CREATE TABLE permission
(
    id   BIGINT AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(200) NOT NULL UNIQUE, -- e.g. user:read
    name VARCHAR(200)
);

-- 中间表 user_role
CREATE TABLE user- role
(
    user_id
    BIGINT
    NOT
    NULL,
    role_id
    BIGINT
    NOT
    NULL,
    PRIMARY
    KEY
(
    user_id,
    role_id
)
    );

-- 中间表 role_permission
CREATE TABLE role-permission
(
    role_id
    BIGINT
    NOT
    NULL,
    permission_id
    BIGINT
    NOT
    NULL,
    PRIMARY
    KEY
(
    role_id,
    permission_id
)
    );


-- 插入数据
insert into user(username, user_account, password, enabled, created_at, updated_at)
values ('张三', 'aaaaaaaa', '$2a$10$.cw9tPmeH8b7V85Mmo5UCurhhSNpYafQEyYuX3YZObvFhQSfT4xSe', '1', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO role (id, code, name)
VALUES (1, 'ROLE_ADMIN', '管理员'),
       (2, 'ROLE_USER', '普通用户');


INSERT INTO permission (id, code, name)
VALUES (1, 'user:read', '查看个人信息'),
       (2, 'userAll:read', '查看所有人的信息');

INSERT INTO role_permission (role_id, permission_id)
VALUES (1, 1), -- 管理员可以查看用户
       (1, 2), -- 管理员可查看所有人的信息

INSERT INTO role_permission (role_id, permission_id)
VALUES
    (2, 1); -- 普通用户只能查看基本信息，没有 ID=2 的权限


INSERT INTO user_role (user_id, role_id) VALUES
    (1, 2);