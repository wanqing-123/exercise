package com.manage.kernel.spring.config.security;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class AuthUser implements UserDetails {

    private Long id;
    private String username;
    private String password;
    private boolean enabled;
    private List<GrantedAuthority> grantedAuthorityList = new ArrayList<GrantedAuthority>();
    private List<Long> roleIds = new ArrayList<Long>();

    public AuthUser(){

    }

    public AuthUser(Long id, String username, String password, boolean enabled, Authority... authorities) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.enabled = enabled;
        for (Authority authority : authorities) {
            grantedAuthorityList.add(authority);
        }
    }

    public Long getId() {
        return id;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return grantedAuthorityList;
    }

    @Override
    public String getPassword() {
        return this.password;
    }

    @Override
    public String getUsername() {
        return this.username;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return this.enabled;
    }

    public List<Long> getRoleIds() {
        return roleIds;
    }

    public void setRoleIds(List<Long> roleIds) {
        this.roleIds = roleIds;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null || getClass() != obj.getClass())
            return false;
        AuthUser authUser = (AuthUser) obj;
        if (authUser.username == null)
            return false;
        if (username.equals(authUser.username))
            return true;
        return false;
    }

    @Override
    public int hashCode() {
        return username != null ? username.hashCode() : 0;
    }
}
