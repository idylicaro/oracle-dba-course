#!/bin/bash

DOCKER_IMAGE_SOURCE=oracleinanutshell/oracle-xe-11g
DOCKER_CONTAINER_NAME="oracle"
HOST_PORT=49160
DOCKER_CONTAINER_PORT="1521"
VOLUME_PATH="/home/idylicaro/Documents/oracle-docker/data"

sudo docker run -d --name $DOCKER_CONTAINER_NAME \
-p $HOST_PORT:$DOCKER_CONTAINER_PORT $DOCKER_IMAGE_SOURCE 
# -v "$VOLUME_PATH:/u01/app/oracle" $DOCKER_IMAGE_SOURCE

docker exec -it $DOCKER_CONTAINER_NAME bash

# CONNECT sys/oracle AS SYSDBA

# in sqlplus if first time create the tablespace
# CREATE TABLESPACE TSD_USERDB LOGGING DATAFILE 'TSD_USERDB.DBF' SIZE 200M AUTOEXTEND ON NEXT 200M MAXSIZE 400M;
# CREATE TABLESPACE TSI_USERDB LOGGING DATAFILE 'TSI_USERDB.DBF' SIZE 200M AUTOEXTEND ON NEXT 50M MAXSIZE 400M;
# CREATE USER IDYL IDENTIFIED BY IDYL3737 DEFAULT TABLESPACE TSI_USERDB QUOTA UNLIMITED ON TSD_USERDB QUOTA UNLIMITED ON TSI_USERDB;

# GRANT CREATE SESSION TO IDYL;
# GRANT CREATE PROCEDURE TO IDYL;
# GRANT CREATE VIEW TO IDYL;
# GRANT CREATE TABLE TO IDYL;
# GRANT CREATE SEQUENCE TO IDYL;
# GRANT CREATE TRIGGER TO IDYL;

# TO SEE PRIVILEGES
# SELECT USERNAME, SYSDBA, SYSOPER FROM V$PWFILE_USERS;