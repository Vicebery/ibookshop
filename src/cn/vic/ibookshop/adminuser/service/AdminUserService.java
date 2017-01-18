package cn.vic.ibookshop.adminuser.service;

import org.springframework.transaction.annotation.Transactional;

import cn.vic.ibookshop.adminuser.dao.AdminUserDao;
import cn.vic.ibookshop.adminuser.vo.AdminUser;
@Transactional
public class AdminUserService {
	// 注入Dao
	private AdminUserDao adminUserDao;

	public void setAdminUserDao(AdminUserDao adminUserDao) {
		this.adminUserDao = adminUserDao;
	}

	
	public AdminUser login(AdminUser adminUser) {
		return adminUserDao.login(adminUser);
	}
	
}
