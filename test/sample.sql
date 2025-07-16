use role accountadmin;
show database roles in database db_rl_consumer_db;
show schemas in database db_rl_consumer_db;

create or replace role consumer_rl_1;
create or replace role consumer_rl_2;

grant role consumer_rl_1 to user admin;
grant role consumer_rl_2 to user admin;

grant database role db_rl_consumer_db.DB_RL_1 to role consumer_rl_1;
grant database role db_rl_consumer_db.DB_RL_2 to role consumer_rl_2;

show grants to role consumer_rl_1;
show grants to role consumer_rl_2;

grant database role db_rl_consumer_db.DB_RL_1 to database role db_rl_consumer_db.DB_RL_2;
--SQL compilation error: Database role 'DB_RL_CONSUMER_DB.DB_RL_1' does not exist or not authorized.

use role consumer_rl_1;
show schemas in database db_rl_consumer_db;

use role consumer_rl_2;
show schemas in database db_rl_consumer_db;

show procedures in database db_rl_consumer_db;

