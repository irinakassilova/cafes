CREATE TABLE users (
                       id serial primary key  NOT NULL,
                       email varchar(128) NOT NULL,
                       password varchar(128) NOT NULL,
                       enabled boolean NOT NULL default true,
                       role varchar(128),
                       UNIQUE (email)
);

-- alter table if exists user_role
-- add constraint user_role_user_fk
-- foreign key (user_id) references users;
--
-- insert into users(email, password, enabled, role)
-- values ('test1@mail.com', '111', true, 'ADMIN');
--
-- insert into user_role(user_id, roles)
-- values (1, 'ADMIN');
