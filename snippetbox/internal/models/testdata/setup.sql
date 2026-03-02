create table snippets
(
    id      int auto_increment
        primary key,
    title   varchar(100) not null,
    content text         not null,
    created datetime     not null,
    expires datetime     not null
);

create index snippets_created_index
    on snippets (created);

create table users
(
    id              int auto_increment
        primary key,
    name            varchar(255) not null,
    email           varchar(255) not null,
    hashed_password char(60)     not null,
    created         datetime     not null,
    constraint users_email_uindex
        unique (email)
);

insert into users (name, email, hashed_password, created) values (
    'Alice Jones',
    'alice@example.com',
    '$2a$12$NuTjWXm3KKntReFwyBVHyuf/to.HEwTy.eS206TNfkGfr6HzGJSWG',
    '2022-01-01 09:18:24'
);