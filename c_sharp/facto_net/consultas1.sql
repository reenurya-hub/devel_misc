use
facto
go


CREATE TABLE empresa (
    emp_id        INT PRIMARY KEY IDENTITY (1, 1),
    emp_tipid     VARCHAR(5) NOT NULL,
    emp_numid     VARCHAR(20) NOT NULL,
    emp_nom       VARCHAR(80) NOT NULL,
    emp_dir       VARCHAR(80),
	emp_ciu       VARCHAR(20),
	emp_depto     VARCHAR(20),
	emp_tel       VARCHAR(20),
	emp_tel2      VARCHAR(20),
	emp_tel3      VARCHAR(20),
	emp_email     VARCHAR(30),
	emp_web       VARCHAR(30),
    emp_rlegal    VARCHAR(30),
	emp_fconstit  DATE,
	emp_fregistro DATE
);


CREATE PROCEDURE proc_emp_insemp(
@p_emp_tipid     VARCHAR(5),
@p_emp_numid     VARCHAR(20),
@p_emp_nom       VARCHAR(80),
@p_emp_dir       VARCHAR(80),
@p_emp_ciu       VARCHAR(20),
@p_emp_depto     VARCHAR(20),
@p_emp_tel       VARCHAR(20),
@p_emp_tel2      VARCHAR(20),
@p_emp_tel3      VARCHAR(20),
@p_emp_email     VARCHAR(30),
@p_emp_web       VARCHAR(30),
@p_emp_rlegal    VARCHAR(30),
@p_emp_fconstit  DATE,
@p_emp_fregistro DATE
)
AS
BEGIN
INSERT INTO empresa (emp_tipid, emp_numid, emp_nom, emp_dir, emp_ciu, emp_depto,
emp_tel, emp_tel2, emp_tel3, emp_email, emp_web, emp_rlegal, emp_fconstit, emp_fregistro) 
VALUES (@p_emp_tipid, @p_emp_numid, @p_emp_nom, @p_emp_dir, @p_emp_ciu, @p_emp_depto,
@p_emp_tel, @p_emp_tel2, @p_emp_tel3, @p_emp_email, @p_emp_web, @p_emp_rlegal, @p_emp_fconstit, @p_emp_fregistro) 
END

CREATE PROCEDURE proc_emp_selempnumid
(@p_emp_numid VARCHAR(20))
AS
BEGIN
SELECT emp_tipid, emp_numid, emp_nom, emp_dir, emp_ciu, emp_depto,
emp_tel, emp_tel2, emp_tel3, emp_email, emp_web, emp_rlegal, emp_fconstit, emp_fregistro  
FROM 
empresa
WHERE 
emp_numid=@p_emp_numid
END


CREATE PROCEDURE proc_emp_delempnumid
(@p_emp_numid VARCHAR(20))
AS
BEGIN
DELETE
FROM 
empresa
WHERE 
emp_numid=@p_emp_numid
END

CREATE PROCEDURE proc_emp_updemp(
@p_emp_tipid     VARCHAR(5),
@p_emp_numid     VARCHAR(20),
@p_emp_nom       VARCHAR(80),
@p_emp_dir       VARCHAR(80),
@p_emp_ciu       VARCHAR(20),
@p_emp_depto     VARCHAR(20),
@p_emp_tel       VARCHAR(20),
@p_emp_tel2      VARCHAR(20),
@p_emp_tel3      VARCHAR(20),
@p_emp_email     VARCHAR(30),
@p_emp_web       VARCHAR(30),
@p_emp_rlegal    VARCHAR(30),
@p_emp_fconstit  DATE,
@p_emp_fregistro DATE
)
AS
BEGIN
UPDATE empresa 
SET 
emp_tipid = @p_emp_tipid,
emp_nom   = @p_emp_nom,
emp_dir   = @p_emp_dir,
emp_ciu   = @p_emp_ciu,
emp_depto = @p_emp_depto,
emp_tel   = @p_emp_tel,
emp_tel2  = @p_emp_tel2,
emp_tel3  = @p_emp_tel3,
emp_email = @p_emp_email,
emp_web   = @p_emp_web,
emp_rlegal= @p_emp_rlegal,
emp_fconstit = @p_emp_fconstit,
emp_fregistro = @p_emp_fregistro
WHERE 
emp_numid = @p_emp_numid
END


 
EXEC proc_emp_insemp 'NIT','900000000-0','Empresa de prueba','Av de prueba','Bogota D.C.','Bogota D.C.','3991112233',
null,null,'prueba@prueba.com','www.prueba.com','Pedro Perez','2000-01-01','2023-04-02'

select * from empresa;


CREATE PROCEDURE proc_emp_seltodemp
(@p_emp_numid VARCHAR(20))
AS
BEGIN
SELECT *  
FROM 
empresa
END