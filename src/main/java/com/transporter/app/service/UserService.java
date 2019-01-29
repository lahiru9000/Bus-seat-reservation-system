package com.transporter.app.service;

import com.transporter.app.model.Role;
import com.transporter.app.model.User;
import com.transporter.app.repository.RoleRepository;
import com.transporter.app.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public class UserService {

    private final UserRepository userRepository;

    private final RoleRepository roleRepository;

    private final BCryptPasswordEncoder bCryptPasswordEncoder;

    @Autowired
    public UserService(UserRepository userRepository, RoleRepository roleRepository, BCryptPasswordEncoder bCryptPasswordEncoder) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
    }

    public User findUserByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    /**
     * saveUser
     */
    public void saveUser(User user) {

        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setActive(1);
        user.setRoleName("ROLE_USER");
        Role role = roleRepository.findByRole(user.getRoleName());
        user.setRole(role);
        userRepository.save(user);

    }

    /**
     * updateUser
     */
    public void updateUser(User user) {

        user.setActive(1);
        user.setRoleName("ROLE_USER");
        Role role = roleRepository.findByRole(user.getRoleName());
        user.setRole(role);
        userRepository.save(user);

    }


    /**
     * saveUserAdmin
     */
    public void saveUserAdmin(User user) {

        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setActive(1);
        Role role = roleRepository.findByRole(user.getRoleName());
        user.setRole(role);
        userRepository.save(user);

    }

    /**
     * updateUserAdmin
     */
    public void updateUserAdmin(User user) {

        user.setActive(1);
        Role role = roleRepository.findByRole(user.getRoleName());
        user.setRole(role);
        userRepository.save(user);

    }

    public List<User> findAllUsers() {
        return userRepository.findAll();
    }


    public void deleteUser(int id) {
        userRepository.deleteById(id);
    }

    public User findUserById(int id) {
        return userRepository.findUserById(id);
    }


}
