# QUESTÃO 01
DELIMITER $$
CREATE FUNCTION insere_aluno(codCurso INT, dataNasc DATE, totalCred INT, mgp DOUBLE(10,2),
                                nomeAluno VARCHAR(30), emailAluno VARCHAR(50)) RETURNS VARCHAR(30)
DETERMINISTIC
BEGIN
    INSERT INTO aluno (cod_curso, dat_nasc, tot_cred, mgp, nom_alun, email) VALUES (codCurso, dataNasc, totalCred, mgp, nomeAluno, emailAluno);
    RETURN nomeAluno;
END
$$
DELIMITER ;

SELECT insere_aluno(3, '1989-08-15', 80, 8.00, 'Adriana Lins', 'adrianapecorelli@gmail.com') AS 'Aluno(a) novo(a)';

# QUESTÃO 02
DELIMITER $$
CREATE PROCEDURE proc_while()
BEGIN
    DECLARE contador int default 1;
    DECLARE str VARCHAR(20) DEFAULT "";
    WHILE contador <= 5 DO
        SET str = CONCAT(str, contador, ", ");
        SET contador = contador + 1;
   END WHILE;    
   SELECT str;
END $$
DELIMITER ;

CALL proc_while();


# QUESTÃO 03
DELIMITER $$
CREATE PROCEDURE proc_repeat()
BEGIN
    DECLARE contador INT DEFAULT 1;
    DECLARE result VARCHAR(50) DEFAULT "";
    REPEAT
        SET result = CONCAT(result, contador, ", ");
        SET contador = contador + 1;
        until contador > 9
    END REPEAT;
    SELECT result;
END $$
DELIMITER ;

CALL proc_repeat();

