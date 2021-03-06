package com.info.demo.service;


import com.info.demo.model.User;
import com.info.demo.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {


    @Autowired
    private UserRepository userRepository;


    public List<User> getUserList() {

        List<User> userList = userRepository.findAll();
        return userList;
    }

    public boolean saveUser(User user) {

        try {
            User savedUser = userRepository.save(user);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }

    }

}
