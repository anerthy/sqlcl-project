-- liquibase formatted sql
-- changeset CICD:1773029014711 stripComments:false  logicalFilePath:employee-utilities\cicd\ref_constraints\employees_fk1.sql
-- sqlcl_snapshot src/database/cicd/ref_constraints/employees_fk1.sql:null:63b9a665684cb490f333d6ff93e6cbd8063aa792:create

alter table cicd.employees
    add constraint employees_fk1
        foreign key ( depto_id )
            references cicd.deparments ( id )
        enable;

