create or replace package cicd.pkg_employees as
--=============================================================--
--* Returns the employee record for a given employee ID.
--=============================================================--
    function get_employee (
        p_employee_id in employees.id%type
    ) return employees%rowtype;
--=============================================================--
--* Returns the full name of an employee given their employee ID.
--=============================================================--
    function get_employee_name (
        p_employee_id in employees.id%type
    ) return varchar2;
--=============================================================--
--* Returns the total number of employees in a given department.
--=============================================================--
    function total_employees_by_department (
        p_department_id in employees.depto_id%type
    ) return number;
--=============================================================--
end pkg_employees;
/


-- sqlcl_snapshot {"hash":"4ea26ff6acb017d17ba759d13bca86d59d31a260","type":"PACKAGE_SPEC","name":"PKG_EMPLOYEES","schemaName":"CICD","sxml":""}