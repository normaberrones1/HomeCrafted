package com.HomeCrafted.dao;

import com.HomeCrafted.dto.RegisterUserDto;
import com.HomeCrafted.model.User;

import java.util.List;

public interface UserDao {

    List<User> getUsers();

    User getUserById(int id);

    User getUserByUsername(String username);

    User createUser(RegisterUserDto user);
}
