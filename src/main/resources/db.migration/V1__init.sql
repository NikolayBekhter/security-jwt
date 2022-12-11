CREATE TABLE users (
  id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
   username VARCHAR(255),
   password VARCHAR(255),
   email VARCHAR(255),
   CONSTRAINT pk_users PRIMARY KEY (id)
);

CREATE TABLE roles (
  id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
   name VARCHAR(255),
   CONSTRAINT pk_roles PRIMARY KEY (id)
);

CREATE TABLE users_roles (
  role_id BIGINT NOT NULL,
   user_id BIGINT NOT NULL
);

ALTER TABLE users_roles ADD CONSTRAINT fk_userol_on_role FOREIGN KEY (role_id) REFERENCES roles (id);

ALTER TABLE users_roles ADD CONSTRAINT fk_userol_on_user FOREIGN KEY (user_id) REFERENCES users (id);

insert into users (username, password, email)
values
('user', '$2a$12$8jJ2aWY1jYu2fUTib.Ovuu7uiiodaPzHHExOSP9Ykm.lafgse9gim', 'user@gmail.com');

insert into users (username, password, email)
values
('admin', '$2a$12$8jJ2aWY1jYu2fUTib.Ovuu7uiiodaPzHHExOSP9Ykm.lafgse9gim', 'admin@gmail.com');

insert into users (username, password, email)
values
('super_admin', '$2a$12$8jJ2aWY1jYu2fUTib.Ovuu7uiiodaPzHHExOSP9Ykm.lafgse9gim', 'super_admin@gmail.com');

insert into roles (name)
values
('ROLE_USER'), ('ROLE_ADMIN'), ('ROLE_SUPERADMIN');

insert into users_roles (user_id, role_id)
values
(1, 1),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(3, 3);