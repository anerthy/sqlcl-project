-- liquibase formatted sql
-- changeset  SqlCl:1773028750655 stripComments:false logicalFilePath:employee-utilities\_custom\populate-database.sql
-- sqlcl_snapshot dist\releases\next\changes\employee-utilities\_custom\populate-database.sql:null:null:custom

INSERT INTO "CICD"."DEPARMENTS" (NAME) VALUES ('HR');
INSERT INTO "CICD"."DEPARMENTS" (NAME) VALUES ('IT');
INSERT INTO "CICD"."DEPARMENTS" (NAME) VALUES ('SALES');
INSERT INTO "CICD"."DEPARMENTS" (NAME) VALUES ('MARKETING');
INSERT INTO "CICD"."DEPARMENTS" (NAME) VALUES ('FINANCE');
INSERT INTO "CICD"."DEPARMENTS" (NAME) VALUES ('OPERATIONS');

INSERT INTO "CICD"."EMPLOYEES" (NAME, DEPTO_ID, STATUS) VALUES ('Rosi', 2, 'ACT');
INSERT INTO "CICD"."EMPLOYEES" (NAME, DEPTO_ID, STATUS) VALUES ('Fer', 2, 'ACT');
INSERT INTO "CICD"."EMPLOYEES" (NAME, DEPTO_ID, STATUS) VALUES ('Julian', 2, 'ACT');
