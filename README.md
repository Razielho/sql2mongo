#This is a demo project for transforming mssql table to mongodb using python

#First time create an internal docker network called internal
docker netwotk create internal

#to connecto to target mongodb:
mongo Target -u admin -p --authenticationDatabase admin
