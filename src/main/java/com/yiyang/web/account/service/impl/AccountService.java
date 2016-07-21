package com.yiyang.web.account.service.impl;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.yiyang.web.account.bean.AccountUser;
import com.yiyang.web.account.entity.Account;
import com.yiyang.web.account.entity.AccountExample;
import com.yiyang.web.account.mapper.AccountMapper;
import com.yiyang.web.account.service.IAccountService;

@Component
public class AccountService implements IAccountService{
	@Autowired
	private AccountMapper accountMapper;
	@Autowired
	private PasswordEncoder passwordEncoder;
	@Override
	@Transactional(readOnly = true)		
	public UserDetails loadUserByUsername(String username)
			throws UsernameNotFoundException {
		return loadByUserName(username);
	}
	@Override
	public AccountUser loadByUserName(String userName) {
		Account account = new Account();
		account.setUsername(userName);
		account = loadByAccount(account);
		
		Collection<GrantedAuthorityImpl> authorities = new ArrayList<GrantedAuthorityImpl>();
		
		for (GrantedAuthorityImpl grantedAuthorityImpl : authorities) {
			
		}
		return new AccountUser(account.getUsername(),account.getPassword(),account.getStatus(),true, true, true, authorities);
	}
	
	private Account loadByAccount(Account account){
		return accountMapper.selectForAccount(account);		
	}

}
