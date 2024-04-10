/*
Elimina todos los empleados del departamento de ventas cuyo apellido contenga como segunda letra una
A, que tengan menos de 7 caracteres y que no terminen en O.
*/

DELETE E
FROM VENTAS.EMPLEADOS E, VENTAS.DEPARTAMENTOS D
WHERE
    E.DEP_NO = D.DEP_NO
    AND D.DNOMBRE = 'VENTAS'
    AND E.APELLIDO LIKE '_A%'
    AND LENGTH(E.APELLIDO) < 7
    AND E.APELLIDO NOT LIKE '%O';