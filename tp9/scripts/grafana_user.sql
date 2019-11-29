CREATE USER IF NOT EXISTS 'verner2'@'%' identified by 'password';

grant select on *.* to verner2;

flush privileges;