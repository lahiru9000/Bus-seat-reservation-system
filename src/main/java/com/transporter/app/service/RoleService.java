package com.transporter.app.service;

import com.transporter.app.model.Role;
import com.transporter.app.repository.RoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("roleService")
public class RoleService {

    private final RoleRepository roleRepository;

    @Autowired
    public RoleService(RoleRepository roleRepository) {
        this.roleRepository = roleRepository;
    }

    public Role saveUserRole(Role role) {
        return roleRepository.save(role);
    }

    public Role findRoleByRoleName(String role) {
        return roleRepository.findByRole(role);
    }



}
