-- ad_user
INSERT INTO ad_user (id, created_at, created_by, status, updated_by, updated_at, account, email, mobile, "name", password, telephone) VALUES(0, NULL, NULL, 0, NULL, NULL, 'admin', NULL, NULL, NULL, '707f8e47f7fab4f5cb2f7733e2a8afe017d64897e072ad09814d9fcc6fddcb440a2e8346a16a4c5a', NULL);
-- ad_role
INSERT INTO ad_role (id, created_at, created_by, status, updated_by, updated_at, description, "name") VALUES(nextval('seq_role'), now(), 0, 0, 0, now(), NULL, '管理员');
-- ad_menu
INSERT INTO ad_menu(id, description, image, "level", "name", parent_id, "sequence", url)VALUES(nextval('seq_menu'), NULL, NULL, 1, '系统设置', NULL, 1, NULL);
INSERT INTO ad_menu(id, description, image, "level", "name", parent_id, "sequence", url)VALUES(nextval('seq_menu'), NULL, NULL, 2, '角色管理', 1, 1, 'role.list');
INSERT INTO ad_menu(id, description, image, "level", "name", parent_id, "sequence", url)VALUES(nextval('seq_menu'), NULL, NULL, 2, '用户管理', 1, 2, 'user.list');
INSERT INTO ad_menu(id, description, image, "level", "name", parent_id, "sequence", url)VALUES(nextval('seq_menu'), NULL, NULL, 2, '菜单管理', 1, 3, 'menu.list');
INSERT INTO ad_menu(id, description, image, "level", "name", parent_id, "sequence", url)VALUES(nextval('seq_menu'), NULL, NULL, 2, '组织机构', 1, 4, 'depart.list');
INSERT INTO ad_menu(id, description, image, "level", "name", parent_id, "sequence", url)VALUES(nextval('seq_menu'), NULL, NULL, 1, '新闻管理', NULL, 2, NULL);
INSERT INTO ad_menu(id, description, image, "level", "name", parent_id, "sequence", url)VALUES(nextval('seq_menu'), NULL, NULL, 2, '发布新闻', 6, 1, 'news.create');
INSERT INTO ad_menu(id, description, image, "level", "name", parent_id, "sequence", url)VALUES(nextval('seq_menu'), NULL, NULL, 2, '新闻列表', 6, 2, 'news.list');

-- ad_role_menu
INSERT INTO ad_role_menu(role_id, menu_id)VALUES(1, 4);
INSERT INTO ad_role_menu(role_id, menu_id)VALUES(1, 3);
INSERT INTO ad_role_menu(role_id, menu_id)VALUES(1, 2);
INSERT INTO ad_role_menu(role_id, menu_id)VALUES(1, 1);
INSERT INTO ad_role_menu(role_id, menu_id)VALUES(1, 5);
INSERT INTO ad_role_menu(role_id, menu_id)VALUES(1, 6);
INSERT INTO ad_role_menu(role_id, menu_id)VALUES(1, 7);
INSERT INTO ad_role_menu(role_id, menu_id)VALUES(1, 8);
-- ad_user_role
INSERT INTO ad_user_role(user_id, role_id)VALUES(0, 1);