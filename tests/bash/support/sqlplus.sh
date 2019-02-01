#!/usr/bin/env bash

export ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe

SQLPLUS=/u01/app/oracle/product/11.2.0/xe/bin/sqlplus
$SQLPLUS sys/oracle@localhost as SYSDBA < $1