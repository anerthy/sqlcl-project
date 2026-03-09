-- liquibase formatted sql
-- changeset CICD:1773029013847 stripComments:false  logicalFilePath:employee-utilities\cicd\package_bodies\pkg_employees.sql
-- sqlcl_snapshot src/database/cicd/package_bodies/pkg_employees.sql:null:616a09680af4ce4e63befc4f1a94fe57fa4dafef:create

create or replace package body cicd.pkg_employees as
--=============================================================--
--* Returns the employee record for a given employee ID.
--=============================================================--
    function get_employee (
        p_employee_id in employees.id%type
    ) return employees%rowtype is
        cursor c_employee is
        select
            *
        from
            employees
        where
            id = p_employee_id;

        v_employee employees%rowtype;
    begin
        open c_employee;
        fetch c_employee into v_employee;
        close c_employee;
        return v_employee;
    end get_employee;
--=============================================================--
--* Returns the full name of an employee given their employee ID.
--=============================================================--
    function get_employee_name (
        p_employee_id in employees.id%type
    ) return varchar2 is
        v_employee employees%rowtype;
    begin
        v_employee := get_employee(p_employee_id);
        return v_employee.name;
    end get_employee_name;
--=============================================================--
--* Returns the total number of employees in a given department.
--=============================================================--
    function total_employees_by_department (
        p_department_id in employees.depto_id%type
    ) return number is
        cursor c_employees_count is
        select
            count(*)
        from
            employees
        where
            depto_id = p_department_id;

        v_count number;
    begin
        open c_employees_count;
        fetch c_employees_count into v_count;
        close c_employees_count;
        return v_count;
    end total_employees_by_department;
--=============================================================--
end pkg_employees;
/

