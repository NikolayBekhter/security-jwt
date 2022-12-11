package ru.geekbrains.securityjwt.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import ru.geekbrains.securityjwt.entities.Role;

@Repository
public interface RoleRepository extends CrudRepository<Role, Long> {
}
