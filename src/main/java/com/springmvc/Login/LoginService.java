package com.springmvc.login;

import org.springframework.stereotype.Service;

@Service
public class LoginService {
  public boolean isUserValid(String name,String password) {
    if(name.equals("May") && password.equals("123"))
      return true;
    return false;
  }
}
