CREATE USER IF NOT EXISTS 'verner'@'%' identified by 'password';

grant PROCESS, REPLICATION CLIENT, SELECT on *.* to verner;

flush privileges;