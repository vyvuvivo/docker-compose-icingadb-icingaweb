# prerequisites
1. Chage configure in .env file
cp env-template .env

2. Create database: icingadb, icingaweb, director
./init-mysql.sh
3. Create api user & enable icingadb feature & grafana module config
./init-icinga2.sh


# docker-compose IcingaDB, Icingaweb2

docker-compose configuration to start-up an Icinga stack containing
Icinga Web 2 and Icinga DB.

Ensure you have the latest Docker and docker-compose versions and
then just run `docker-compose -p icinga-playground up --detach` in order to start the Icinga stack.

Icinga Web is provided on port **8080**.
The default user of Icinga Web is `icingaadmin` with password `icinga`


