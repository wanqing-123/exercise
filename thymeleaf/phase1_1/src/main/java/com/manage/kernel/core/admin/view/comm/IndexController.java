package com.manage.kernel.core.admin.view.comm;


import com.manage.base.supplier.page.ResponseInfo;
import com.manage.base.enums.ResponseStatus;
import com.manage.kernel.core.admin.apply.dto.MenuNav;
import com.manage.kernel.core.admin.service.system.IMenuService;
import com.manage.kernel.spring.config.security.AuthUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = "/admin/index")
public class IndexController {

    @Autowired
    private IMenuService IMenuService;

    @GetMapping("/menuList")
    public ResponseInfo getMenuList(AuthUser authUser) {
        ResponseInfo responseInfo = new ResponseInfo();
        authUser = (AuthUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        List<MenuNav> menuNavs = IMenuService.menuListByRoleIds(authUser.getRoleIds());
        responseInfo.status = ResponseStatus.SUCCESS;
        responseInfo.content = menuNavs;
        return responseInfo;
    }
}
