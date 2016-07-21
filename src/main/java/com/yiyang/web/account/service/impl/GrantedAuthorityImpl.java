package com.yiyang.web.account.service.impl;

import org.springframework.security.core.GrantedAuthority;

public class GrantedAuthorityImpl implements GrantedAuthority {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8834690780389405253L;
	
	private String role;
	
	public GrantedAuthorityImpl(String role){
		this.role = role;
	}

	@Override
	public String getAuthority() {
		return this.role;
	}

}
