alter table cicd.employees
    add constraint employees_fk1
        foreign key ( depto_id )
            references cicd.deparments ( id )
        enable;


-- sqlcl_snapshot {"hash":"63b9a665684cb490f333d6ff93e6cbd8063aa792","type":"REF_CONSTRAINT","name":"EMPLOYEES_FK1","schemaName":"CICD","sxml":""}