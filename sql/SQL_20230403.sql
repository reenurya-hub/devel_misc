/*
SYNONYM
is an alternative name for a table, view, sequence, operator, procedure, 
stored function, package, materialized view, Java class schema object, 
user-defined object type, or another synonym. A synonym places a dependency on 
its target object and becomes invalid if the target object is changed or dropped.
*/

select * from hr.locations;

CREATE SYNONYM offices 
   FOR hr.locations;

Synonym OFFICES creado.

select * from offices;

/* GRANT
Use the GRANT statement to give privileges to a specific user or role, or to 
all users, to perform actions on database objects. You can also use the GRANT 
statement to grant a role to a user, to PUBLIC, or to another role. 
*/

GRANT
  SELECT,
  INSERT,
  UPDATE,
  DELETE
ON
  hr.employees
TO
  CHARLIE;

Grant correcto.


-- VER PRIVILEGIOS:

SELECT
  *
FROM
  DBA_TAB_PRIVS
WHERE OWNER = 'HR'
AND GRANTEE = 'CHARLIE';

GRANTEE                        OWNER                          TABLE_NAME                     GRANTOR                        PRIVILEGE                                GRA HIE
------------------------------ ------------------------------ ------------------------------ ------------------------------ ---------------------------------------- --- ---
CHARLIE                        HR                             EMPLOYEES                      HR                             DELETE                                   NO  NO 
CHARLIE                        HR                             EMPLOYEES                      HR                             INSERT                                   NO  NO 
CHARLIE                        HR                             EMPLOYEES                      HR                             SELECT                                   NO  NO 
CHARLIE                        HR                             EMPLOYEES                      HR                             UPDATE                                   NO  NO 



/*
REVOKE
Use the REVOKE statement to remove privileges from a specific user or role, 
or from all users, to perform actions on database objects. You can also use 
the REVOKE statement to revoke a role from a user, from PUBLIC, or 
from another role.
*/

REVOKE   SELECT,
  INSERT,
  UPDATE,
  DELETE ON hr.employees FROM CHARLIE;
  
Revoke correcto.


/**************************************************************************/
/*
13. What are the types of backups in Oracle?

The main four types of backups in Oracle are:

(ⅰ) COLD Backup

(ⅱ) HOT Backup

(ⅲ) Import – Export Backup

(ⅳ) RMAN Backup
*/


/**************************************************************************/

-- INDEXES FROM A TABLE
SELECT index_name, index_type, uniqueness FROM all_indexes 
WHERE owner = UPPER('&owner') AND table_name = UPPER('&table_name');

