package com.cqa.sysm.dao.jpa;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.cqa.sysm.entity.Role;

public interface RoleDao extends PagingAndSortingRepository<Role, Long> {

}
