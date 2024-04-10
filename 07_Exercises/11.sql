/*
Obtén el total a cobrar anualmente por cada empleado, sabiendo que el salario almacenado es el salario
mensual y que a dicho salario hay que sumarle la comisión, si la tuviera. La columna se llamará ingresos
anuales.
*/

SELECT APELLIDO, (
        (SALARIO + IFNULL(COMISION, 0)) * 12
    ) AS SALARIO_ANUAL
FROM VENTAS.EMPLEADOS;