package com.service;

import java.util.List;
import com.model.User;

public interface UserService {
	boolean register(User user);
	boolean login(String userName,String password);
	List<User> getAllUser();
}
