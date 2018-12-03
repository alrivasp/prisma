select * from LOCALIDAD;

select ID_LOCALIDAD as ID, NOMBRE_LOCALIDAD as LOCALIDAD from LOCALIDAD order by LOCALIDAD asc;

select NOMBRE_COMPLETO from SOLICITO order by NOMBRE asc;

select USUARIO from USUARIO where ID_USUARIO > 1 order by USUARIO asc;
SELECT * FROM V_RESUMEN_PROYECTOS;

SELECT SUM(HH_USADAS) FROM V_RESUMEN_PROYECTOS;


-- selecciona las horas utilizadas de cada proyecto por usuario
SELECT
	P.NOMBRE_PROYECTO AS PROYECTO,
    U.NOMBRE_USUARIO AS USUARIO,
    SUM(A.HH_USADAS) AS HH
FROM
	PROYECTO P,
    USUARIO U,
    ACTIVIDAD A
where
	P.ID_PROYECTO = A.ID_PROYECTO AND
    A.ID_USUARIO = U.ID_USUARIO AND
    A.ID_USUARIO = 9 AND
    MONTH(A.FECHA) = 7 AND
    YEAR(A.FECHA) = 2018
GROUP BY
	P.NOMBRE_PROYECTO,
    U.NOMBRE_USUARIO
;


-- selecciona la cantidad de horas del mes
SELECT
    SUM(A.HH_USADAS) AS HH
FROM
	PROYECTO P,
    USUARIO U,
    ACTIVIDAD A
where
	P.ID_PROYECTO = A.ID_PROYECTO AND
    A.ID_USUARIO = U.ID_USUARIO AND
    MONTH(A.FECHA) = 7 AND
    YEAR(A.FECHA) = 2018 AND
    A.ID_USUARIO = 9
;