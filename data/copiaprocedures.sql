

DELIMITER $$

CREATE  PROCEDURE `eli_actividades`(codact INT)
BEGIN
	DELETE FROM actividades WHERE codactv=codact;
    END $$
DELIMITER ;



DELIMITER $$

CREATE  PROCEDURE `lis_actividades`(ope VARCHAR(3))
BEGIN
	IF ope='LIS' THEN
		  SELECT 
		    ac.`idactv`,
		    ac.`codactv`,
		    ac.`fecactv`,
		    a.`carani`,
		    c.nomcat,
		    act.`nomact`,
		    ta.`nomtia`,
		    ac.`pesactv`,
		    m.`nomtimed`,
		    ac.`canmedi`,
		    ac.`premedi` 
		  FROM
		    actividades ac 
		    JOIN animales a 
		      ON ac.idani = a.`idani` 
		     JOIN categorias c
		     ON a.idcat=c.idcat
		    JOIN tipoactividad ta 
		      ON ac.idtia = ta.`idtia` 
		    JOIN actividad act 
		      ON ta.`idact` = act.`idact` 
		    JOIN tipomedicacion m 
		      ON ac.`idtimed` = m.`idtimed` ORDER BY ac.codactv;
      ELSEIF ope>0 THEN
      		  SELECT 
		    ac.`idactv`,
		    ac.`codactv`,
		    ac.`fecactv`,
		    act.idact,
		    ta.idtia,
		    a.idani,
		    a.`carani`,
		    ac.`pesactv`,
		    m.`nomtimed`,
		    m.`idtimed`,
		    ac.`canmedi`,
		    ac.`premedi`,
		    act.nomact,
		    ta.nomtia
		  FROM
		    actividades ac 
		    JOIN animales a 
		      ON ac.idani = a.`idani` 
		     JOIN categorias c
		     ON a.idcat=c.idcat
		    JOIN tipoactividad ta 
		      ON ac.idtia = ta.`idtia` 
		    JOIN actividad act 
		      ON ta.`idact` = act.`idact` 
		    JOIN tipomedicacion m 
		      ON ac.`idtimed` = m.`idtimed` WHERE ac.codactv=ope;
      
      
      END IF;
      
END $$
DELIMITER ;



DELIMITER $$

CREATE  PROCEDURE `man_actividades`(idact INT,codact INT,fecact DATE,pesact DECIMAL(18,2),obsact VARCHAR(250),canmed DECIMAL(18,2),premed DECIMAL(18,2),idan INT,idti INT,idtime INT,ope VARCHAR(3))
BEGIN
	DECLARE id DOUBLE;
	IF ope='GUA' THEN
		SELECT (CASE WHEN MAX(idactv) IS NULL THEN 1 ELSE MAX(idactv)+1 END) INTO id FROM actividades;
		INSERT INTO actividades (idactv,codactv,fecactv,pesactv,obsactv,canmedi,premedi,idani,idtia,idtimed) VALUES (id,codact,fecact,pesact,obsact,canmed,premed,idan,idti,idtime);
	ELSEIF ope='EDI' THEN
		UPDATE actividades SET fecatv=fecat,pesactv=pesact,obsactv=obsact,canmedi=canmed,premedi=premed,idani=idan,idtia=idti,idtimed=idtime WHERE idactv=idact;
	ELSEIF ope='ELI' THEN
		DELETE FROM actividades WHERE idactv=idact;
	END IF;
	
    END $$
DELIMITER ;

 
DELIMITER $$

CREATE  PROCEDURE `man_categoria`(idca INT, nomca VARCHAR(100),ope VARCHAR(3))
BEGIN
	DECLARE id DOUBLE;
	IF ope='GUA' THEN
		SELECT (CASE WHEN MAX(idcat) IS NULL THEN 1 ELSE MAX(idcat)+1 END) INTO id FROM categorias;
		INSERT INTO categorias (idcat,nomcat) VALUES (id,nomca);
	ELSEIF ope='EDI' THEN
		UPDATE categorias SET nomcat=nomca WHERE idcat=idca;
	ELSEIF ope='ELI' THEN
		DELETE FROM categorias WHERE idcat=idca;
	END IF;
    END $$
DELIMITER ;

 

DELIMITER $$

CREATE  PROCEDURE `man_color`(idco INT, nomco VARCHAR(100),ope VARCHAR(3))
BEGIN
	DECLARE id DOUBLE;
	IF ope='GUA' THEN
		SELECT (CASE WHEN MAX(idcol) IS NULL THEN 1 ELSE MAX(idcol)+1 END) INTO id FROM colores;
		INSERT INTO colores (idcol,nomcol) VALUES (id,nomco);
	ELSEIF ope='EDI' THEN
		UPDATE colores SET nomcol=nomco WHERE idcol=idco;
	ELSEIF ope='ELI' THEN
		DELETE FROM colores WHERE idcol=idco;
	END IF;
    END $$
DELIMITER ;

 
DELIMITER $$

CREATE  PROCEDURE `man_estancia`(ides INT,nomes VARCHAR(150), ruces VARCHAR(20), dires VARCHAR(150),celes VARCHAR(50), mailes VARCHAR(100),ope VARCHAR(3))
BEGIN
	DECLARE id DOUBLE;
	IF ope='GUA' THEN
		SELECT (CASE WHEN MAX(idest) IS NULL THEN 1 ELSE MAX(idest)+1 END) INTO id FROM estancia;
		INSERT INTO estancia (idest,nomest,rucest,direst,celest,mailest) VALUES (id,nomes,ruces,dires,celes,mailes);
	ELSEIF ope='EDI' THEN
		UPDATE estancia SET nomest=nomes, rucest=ruces, direst=dires, celest=celes,mailest=mailes WHERE idest=ides;
	ELSEIF ope='ELI' THEN
		DELETE FROM estancia WHERE idest=ides;
	END IF;
    END $$
DELIMITER ;

 

DELIMITER $$

CREATE  PROCEDURE `man_lote`(idlo INT, nomlo VARCHAR(100),ope VARCHAR(3))
BEGIN
	DECLARE id DOUBLE;
	IF ope='GUA' THEN
		SELECT (CASE WHEN MAX(idlot) IS NULL THEN 1 ELSE MAX(idlot)+1 END) INTO id FROM lotes;
		INSERT INTO lotes (idlot,nomlot) VALUES (id,nomlo);
	ELSEIF ope='EDI' THEN
		UPDATE lotes SET nomlot=nomlo WHERE idlot=idlo;
	ELSEIF ope='ELI' THEN
		DELETE FROM lotes WHERE idlot=idlo;
	END IF;
    END $$
DELIMITER ;

 

DELIMITER $$

CREATE  PROCEDURE `man_raza`(idra INT, nomra VARCHAR(100),ope VARCHAR(3))
BEGIN
	DECLARE id DOUBLE;
	IF ope='GUA' THEN
		SELECT (CASE WHEN MAX(idraz) IS NULL THEN 1 ELSE MAX(idraz)+1 END) INTO id FROM razas;
		INSERT INTO razas (idraz,nomraz) VALUES (id,nomra);
	ELSEIF ope='EDI' THEN
		UPDATE razas SET nomraz=nomra WHERE idraz=idra;
	ELSEIF ope='ELI' THEN
		DELETE FROM razas WHERE idraz=idra;
	END IF;
    END $$
DELIMITER ;

 
DELIMITER $$

CREATE  PROCEDURE `man_tipocaravana`(idti INT, nomti VARCHAR(100),ope VARCHAR(3))
BEGIN
	DECLARE id DOUBLE;
	IF ope='GUA' THEN
		SELECT (CASE WHEN MAX(idtip) IS NULL THEN 1 ELSE MAX(idtip)+1 END) INTO id FROM tipocaravana;
		INSERT INTO tipocaravana (idtip,nomtip) VALUES (id,nomti);
	ELSEIF ope='EDI' THEN
		UPDATE tipocaravana SET nomtip=nomti WHERE idtip=idti;
	ELSEIF ope='ELI' THEN
		DELETE FROM tipocaravana WHERE idtip=idti;
	END IF;
    END $$
DELIMITER ;

 
DELIMITER $$

CREATE  PROCEDURE `man_ubicacion`(idub INT, nomub VARCHAR(100),ope VARCHAR(3))
BEGIN
	DECLARE id DOUBLE;
	IF ope='GUA' THEN
		SELECT (CASE WHEN MAX(idubi) IS NULL THEN 1 ELSE MAX(idubi)+1 END) INTO id FROM ubicacion;
		INSERT INTO ubicacion (idubi,nomubi) VALUES (id,nomub);
	ELSEIF ope='EDI' THEN
		UPDATE ubicacion SET nomubi=nomub WHERE idubi=idub;
	ELSEIF ope='ELI' THEN
		DELETE FROM ubicacion WHERE idubi=idub;
	END IF;
    END $$
DELIMITER ;

 

DELIMITER $$

CREATE  PROCEDURE `man_user`(idus INT,docus VARCHAR(10),nomus VARCHAR(100),logus VARCHAR(100),claus VARCHAR(100),nivus INT,ope VARCHAR(3))
BEGIN
DECLARE id DOUBLE;
	IF ope='GUA' THEN
	SELECT (CASE WHEN MAX(idusu) IS NULL THEN 1 ELSE MAX(idusu)+1 END) INTO id FROM usuario;
	INSERT INTO usuario VALUES (id,docus,nomus,logus,claus,nivus);
	ELSEIF ope='EDI' THEN
	UPDATE usuario SET docusu=docus,nomusu=nomus,logusu=logus,clausu=claus,nivusu=nivus WHERE idusu=idus;
	ELSEIF ope='ELI' THEN
	DELETE FROM usuario WHERE idusu=idus;
	END IF;
	
	
    END $$
DELIMITER ;

