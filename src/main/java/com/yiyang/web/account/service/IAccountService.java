package com.yiyang.web.account.service;
import org.springframework.security.core.userdetails.UserDetailsService;
import com.yiyang.web.account.bean.AccountUser;
import com.yiyang.web.account.entity.Account;

public interface IAccountService extends UserDetailsService {
	AccountUser loadByUserName(String userName);
}
