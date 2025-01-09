USE contabilidad;
SELECT *FROM contabilidad;
-- 1. Obtener el importe total de ventas de cada departamento.
SELECT departamento, sum(importe) AS 'Importe Total' FROM contabilidad GROUP BY departamento;
-- 2. Obtener el importe total de gastos de cada departamento.
SELECT departamento, sum(importe) AS 'Importe total' FROM contabilidad WHERE departamento LIKE 'Gastos%' GROUP BY departamento;
-- 3. Obtener el número de registros de cada tipo de cuenta contable.
SELECT cuenta_contable, COUNT(*) AS 'Cuenta de registros' FROM contabilidad GROUP BY cuenta_contable;
-- 4. Obtener el importe total de ventas de cada mes.
SELECT MONTH(fecha), sum(importe) AS 'Suma del mes' FROM contabilidad WHERE departamento LIKE 'Ventas%' GROUP BY MONTH(fecha);
-- 5. Obtener el importe total de ventas de cada departamento y mes.
SELECT MONTH(fecha),departamento , sum(importe) AS 'Suma del mes' FROM contabilidad GROUP BY MONTH(fecha), departamento;
-- 6. Obtener el número de registros de cada tipo de cuenta contable y mes.
SELECT MONTH(fecha), cuenta_contable, COUNT(*) AS 'Cuenta de registros' FROM contabilidad GROUP BY MONTH(fecha), cuenta_contable;
-- 7. Obtener el importe total de ventas de cada departamento y mes, ordenado por importe de mayor a menor.
SELECT MONTH(fecha), departamento, sum(importe) AS 'Suma del mes' FROM contabilidad GROUP BY MONTH(fecha), departamento ORDER BY sum(importe) DESC;
-- 8. Obtener el número de registros de cada tipo de cuenta contable y mes, ordenados por mes de mayor a menor
SELECT MONTH(fecha), cuenta_contable, COUNT(*) AS 'Cuenta de registros' FROM contabilidad GROUP BY MONTH(fecha), cuenta_contable ORDER BY MONTH(fecha) DESC;
