CREATE TABLE MODEL(
    ID_MODEL Number(6) Primary key,
    AN Number(6),
    CLASA Varchar(30),
    CULOARE Varchar(30),
    CAI_PUTERE Number(6)
    );

INSERT INTO MODEL 
VALUES(1,2012,'Sedan','Alb',200);
INSERT INTO MODEL  
VALUES(2,2013,'Sedan','Alb',210);
INSERT INTO MODEL  
VALUES(3,2014,'Sedan','Negru',180);
INSERT INTO MODEL  
VALUES(4,2020,'Sedan','Alb',160);
INSERT INTO MODEL 
VALUES(5,2019,'Sedan','Albastru',170);
INSERT INTO MODEL 
VALUES(6,2017,'Suv','Alb',210);
INSERT INTO MODEL  
VALUES(7,2011,'Suv','Negru',190);
INSERT INTO MODEL  
VALUES(8,2017,'Suv','Negru',200);
INSERT INTO MODEL  
VALUES(9,2017,'Coupe','Alb',230);
INSERT INTO MODEL  
VALUES(10,2020,'Coupe','Albastru',230);


-------------------

CREATE TABLE FURNIZORI(
    ID_FURNIZOR Number(6) Primary key,
    NUME_FURNIZOR Varchar(30),
    ORAS Varchar(30),
    TARA Varchar(30),
    TELEFON VARCHAR(30),
    EMAIL Varchar(30),
    TIP_CONTRACT Varchar(30)
);


INSERT INTO FURNIZORI 
VALUES(1,'BMW','Alexandria','Romania','587-99-6666','sdgsdg@car.com','Anual');
INSERT INTO FURNIZORI 
VALUES(2,'Audi','Munchen','Germania','418-542-9988','sergfe@car.com','Anual');
INSERT INTO FURNIZORI 
VALUES(3,'Mercedes','Roma','Italia','418-542-9988','sergfe@car.com','Anual');
INSERT INTO FURNIZORI 
VALUES(4,'Auto','Ontario','Canada','418-542-4654','auto@car.com','Anual');
INSERT INTO FURNIZORI 
VALUES(5,'Plus','Londra','Anglia','418-542-5675','plus@car.com','3 ani');
INSERT INTO FURNIZORI 
VALUES(6,'abc','Mexico City','Mexico,','4645-542-5675','plus@car.com','2 ani');
INSERT INTO FURNIZORI 
VALUES(7,'Reanault','Bern','Distrito Federal','4645-542-567','frh@car.com','2 ani');
INSERT INTO FURNIZORI 
VALUES(8,'Opel','Munich','Germania','7655-5454-5657','gdg@car.com','3 ani');
INSERT INTO FURNIZORI 
VALUES(9,'Cars','Bucuresti','Romania','071233834','cars@car.com','2 ani');
INSERT INTO FURNIZORI 
VALUES(10,'Dacia','Bucuresti','Romania','0712548343','Dacia@car.com','Anual');

-----------------


CREATE TABLE MASINA(
    ID_MASINA Number(25) Primary key,
    NUME_MASINA Varchar(30),
    ID_MODEL Number(6) REFERENCES MODEL(ID_MODEL),
    ID_FURNIZOR NUMBER(6) REFERENCES FURNIZORI(ID_FURNIZOR)
);

INSERT INTO MASINA
VALUES(1,'BMW SERIA 3',1,1);
INSERT INTO MASINA
VALUES(2,'BMW SERIA 5',2,1);
INSERT INTO MASINA
VALUES(3,'BMW X5',6,1);
INSERT INTO MASINA
VALUES(4,'BMW X4',9,1);
INSERT INTO MASINA
VALUES(5,'BMW X5',6,1);
INSERT INTO MASINA
VALUES(6,'Audi A4',5,2);
INSERT INTO MASINA
VALUES(7,'Audi Q7',6,2);
INSERT INTO MASINA
VALUES(8,'Opel Astra',5,8);
INSERT INTO MASINA
VALUES(9,'Dacia Duster',6,10);
INSERT INTO MASINA
VALUES(10,'BMW X5',6,1);

---------------------




CREATE TABLE ANGAJATI( 
    ID_ANGAJAT Number(6) Primary key, 
    PRENUME Varchar(50), 
    NUME Varchar(50), 
    TELEFON Varchar(30), 
    EMAIL Varchar(50), 
    SEX Varchar(30), 
    STARE_CIVILA Varchar(30), 
    FUNCTIE Varchar(30), 
    SALARIU Number(25) 
);

INSERT INTO ANGAJATI 
VALUES(1,'Mihai','Andrei','0723211239','mihai45@ss.com','M','Casatorit','Manager',2000);
INSERT INTO ANGAJATI 
VALUES(2,'Christopher','Olsen','0115464564','Olsen@ss.com','M','Casatorit','Relatii Clienti',3000);
INSERT INTO ANGAJATI 
VALUES(3,'Elizabeth','Bates','0879979877','Bates@ss.com','F','Casatorita','Relatii Clienti',3500);
INSERT INTO ANGAJATI 
VALUES(4,'Ellen','Abel','0879989237','Abel@ss.com','F','Casatorita','Manager',3500);
INSERT INTO ANGAJATI 
VALUES(5,'Jack','Livingston','0879675657','Livingston@ss.com','M','Casatorit','Sales Manager',20000);
INSERT INTO ANGAJATI 
VALUES(6,'Charles','Johnson','0836346647','Johnson@ss.com','M','Casatorit','Relatii Clienti',15000);
INSERT INTO ANGAJATI 
VALUES(7,'Winston','Taylor','084564567','Taylor@ss.com','M','Casatorit','Call operator',9000);
INSERT INTO ANGAJATI 
VALUES(8,'Julia','Dellinger','065756567','Dellinger@ss.com','F','Casatorita','Manager',8000);
INSERT INTO ANGAJATI 
VALUES(9,'Jennifer','Dilly','068936567','Dilly@ss.com','F','Casatorita','Manager',7000);
INSERT INTO ANGAJATI 
VALUES(10,'Timothy','Higgins','068936567','Higgins@ss.com','M','Casatorita','Marketing Coordinator',15000);
INSERT INTO ANGAJATI 
VALUES(11,'Hermann','Susan','546464554','Susan@ss.com','M','Casatorita','Web Designer',15000);

-----------

CREATE TABLE  CLIENTI ( 
    ID_CLIENT NUMBER(6) Primary key, 
    PRENUME_CLIENT VARCHAR(30), 
    NUME_CLIENT VARCHAR(30), 
    TELEFON VARCHAR(30), 
    EMAIL_CLIENT VARCHAR(30), 
    DATA_NASTERE DATE, 
    SEX VARCHAR(30), 
    ANI_DE_CONDUS NUMBER(6) 
   );

INSERT INTO CLIENTI 
VALUES(1,'Mihai','Daniel','0723218479','mihai@ss.com',TO_DATE('17/12/1997', 'DD/MM/YYYY'),'M',2);
INSERT INTO CLIENTI 
VALUES(2,'Vlascenco','Daniel','0723256779','Daniel@ss.com',TO_DATE('18/11/1996', 'DD/MM/YYYY'),'M',4);
INSERT INTO CLIENTI 
VALUES(3,'Lex','De Haan','5151234569','De Haan@ss.com',TO_DATE('17/05/1991', 'DD/MM/YYYY'),'M',2);
INSERT INTO CLIENTI 
VALUES(4,'Valli','Pataballa','5158899069','Pataballa@ss.com',TO_DATE('02/05/1989', 'DD/MM/YYYY'),'M',8);
INSERT INTO CLIENTI 
VALUES(5,'Laura','Bissot','0722334478','Laura@ss.com',TO_DATE('22/04/1988', 'DD/MM/YYYY'),'F',5);
INSERT INTO CLIENTI 
VALUES(6,'Mozhe','Atkinson','0777334478','Atkinson@ss.com',TO_DATE('24/09/1981', 'DD/MM/YYYY'),'M',5);
INSERT INTO CLIENTI 
VALUES(7,'John','Seo','0875436785','Seo@ss.com',TO_DATE('24/08/2000', 'DD/MM/YYYY'),'M',2);
INSERT INTO CLIENTI 
VALUES(8,'John','Russell','7765325678','Russell@ss.com',TO_DATE('01/01/1999', 'DD/MM/YYYY'),'M',2);
INSERT INTO CLIENTI 
VALUES(9,'Alberto','Errazuriz','5567879667','Errazuriz@ss.com',TO_DATE('01/06/1999', 'DD/MM/YYYY'),'M',2);
INSERT INTO CLIENTI 
VALUES(10,'Peter','Tucker','1876354678','Tucker@ss.com',TO_DATE('01/05/1988', 'DD/MM/YYYY'),'M',7);

-----------------------



CREATE TABLE CONTRACT(
    ID_CONTRACT Number(6) Primary key,
    DATA_INCEPUT DATE,
    DATA_FINAL DATE,
    ID_CLIENT Number(6) REFERENCES CLIENTI(ID_CLIENT),
    ID_ANGAJAT Number(6) REFERENCES ANGAJATI(ID_ANGAJAT),
    ORAS_INCHIRIERE Varchar(30)
);

INSERT INTO CONTRACT 
VALUES(1,TO_DATE('17/11/2020', 'DD/MM/YYYY'),TO_DATE('20/11/2020', 'DD/MM/YYYY'),1,1,'Brasov');
INSERT INTO CONTRACT 
VALUES(2,TO_DATE('10/11/2019', 'DD/MM/YYYY'),TO_DATE('22/11/2019', 'DD/MM/YYYY'),2,1,'Brasov');
INSERT INTO CONTRACT 
VALUES(3,TO_DATE('07/05/2020', 'DD/MM/YYYY'),TO_DATE('07/06/2020', 'DD/MM/YYYY'),7,2,'Bucuresti');
INSERT INTO CONTRACT 
VALUES(4,TO_DATE('21/12/2020', 'DD/MM/YYYY'),TO_DATE('27/12/2020', 'DD/MM/YYYY'),3,3,'Bucuresti');
INSERT INTO CONTRACT
VALUES(5,TO_DATE('12/10/2020', 'DD/MM/YYYY'),TO_DATE('20/10/2020', 'DD/MM/YYYY'),5,4,'Bucuresti');
INSERT INTO CONTRACT
VALUES(6,TO_DATE('07/05/2020', 'DD/MM/YYYY'),TO_DATE('07/06/2020', 'DD/MM/YYYY'),6,5,'Bucuresti');

------------------------------


CREATE TABLE MASINI_CONTRACT(
ID_MASINA Number(6),
ID_CONTRACT Number(6),
PRET Number(10),
CONSTRAINT MASINI_CONTRACT_ID PRIMARY KEY (ID_MASINA, ID_CONTRACT)
);
ALTER TABLE MASINI_CONTRACT
ADD FOREIGN KEY (ID_MASINA) REFERENCES MASINA(ID_MASINA);
ALTER TABLE MASINI_CONTRACT
ADD FOREIGN KEY (ID_CONTRACT) REFERENCES CONTRACT(ID_CONTRACT);
INSERT INTO MASINI_CONTRACT  
VALUES(1,1,100);
INSERT INTO MASINI_CONTRACT 
VALUES(2,2,200);
INSERT INTO MASINI_CONTRACT  
VALUES(3,3,400);
INSERT INTO MASINI_CONTRACT  
VALUES(1,4,250);
INSERT INTO MASINI_CONTRACT  
VALUES(5,5,350);
INSERT INTO MASINI_CONTRACT 
VALUES(1,6,400);
INSERT INTO MASINI_CONTRACT 
VALUES(5,2,200);
INSERT INTO MASINI_CONTRACT  
VALUES(7,5,350);
INSERT INTO MASINI_CONTRACT 
VALUES(4,3,300);
INSERT INTO MASINI_CONTRACT  
VALUES(9,6,200);
INSERT INTO MASINI_CONTRACT 
VALUES(9,5,300);
INSERT INTO MASINI_CONTRACT  
VALUES(4,4,250);

-----6) Afisati numarul de masini primite de la fiecare furnizor. 
CREATE OR REPLACE PROCEDURE P6_AM 
IS   
   TYPE tablou_imbricat is TABLE OF FURNIZORI.nume_furnizor%TYPE;
   V_FURNIZORI tablou_imbricat := tablou_imbricat();
   nr_masini Number(4);
BEGIN 
    SELECT nume_furnizor
    BULK COLLECT INTO V_FURNIZORI
    FROM FURNIZORI;

   FOR i IN V_FURNIZORI.FIRST..V_FURNIZORI.LAST LOOP 
    SELECT COUNT(*) INTO nr_masini
    FROM MASINA
    WHERE id_furnizor = (SELECT id_furnizor
                         FROM FURNIZORI
                         WHERE NUME_FURNIZOR = V_FURNIZORI(i));
      DBMS_OUTPUT.PUT_LINE ( 'furnizorul: '||V_FURNIZORI(i)||' a dat companiei '||nr_masini||' masini');
   END LOOP; 
END P6_AM;
/
---Apelare
BEGIN
P6_AM();
END;
/

-----7) Afisati salariile celor mai prost pl?ti?i 5 angaja?i.
CREATE OR REPLACE PROCEDURE Salary_A
IS
BEGIN
DECLARE 
   CURSOR e_employees is 
       SELECT id_angajat,salariu
       FROM(SELECT id_angajat,salariu
            FROM angajati
            ORDER BY salariu)SUB
            WHERE ROWNUM <= 5;
             
BEGIN 
   FOR i IN e_employees LOOP  
      DBMS_OUTPUT.PUT_LINE ( 'Salariul angajatului cu codul '||i.id_angajat||' este '||i.salariu);
   END LOOP; 
   
END;

END Salary_A;
/
---Apelare
BEGIN
Salary_A();
END;
/

----8) Functie care sa obtina numarul total de masini inchiriate de un client al carui cod (id) este specificat.

    CREATE OR REPLACE FUNCTION f8_AM
    (id_c CLIENTI.id_client%TYPE DEFAULT '1')
    RETURN NUMBER IS nr Number(6);
    exceptie EXCEPTION;
    NR_CLIENTI NUMBER(6);
BEGIN
    SELECT COUNT (*) INTO NR_CLIENTI 
    FROM CLIENTI
    WHERE ID_CLIENT = ID_C;
IF NR_CLIENTI = 0 THEN RAISE exceptie;
END IF;    

    SELECT count(*) INTO nr
    FROM CLIENTI a JOIN CONTRACT c 
    ON a.id_client = c.id_client
    JOIN MASINI_CONTRACT M 
    ON c.id_contract = m.id_contract
    WHERE a.id_client=id_c;
RETURN nr;
EXCEPTION
WHEN exceptie THEN
RAISE_APPLICATION_ERROR(-20000,
'Nu exista clienti cu codul dat');
WHEN OTHERS THEN
RAISE_APPLICATION_ERROR(-20002,'Alta eroare!');
END f8_AM;
/

BEGIN
DBMS_OUTPUT.PUT_LINE(f8_AM(2));
END;

----9) Afisati numarul clientilor care au inchiriat masini cu numarul de cai putere mai mare decat un numar specificat.
CREATE OR REPLACE PROCEDURE f9_AM
(nr_cai MODEL.cai_putere%TYPE DEFAULT 100)
IS nr_clienti Number(6);
BEGIN
    SELECT COUNT (*) INTO nr_clienti
    FROM clienti
    WHERE ID_CLIENT IN (SELECT ID_CLIENT
                        FROM CONTRACT c 
                        JOIN MASINI_CONTRACT m 
                        ON c.id_contract = m.id_contract
                        JOIN MASINA n
                        ON n.id_masina=m.id_masina
                        JOIN MODEL p
                        ON n.id_model = p.id_model
                        WHERE cai_putere > nr_cai);
    
DBMS_OUTPUT.PUT_LINE('Numarul este '|| nr_clienti);

END f9_AM;
/
BEGIN
f9_AM(200);
END;

----10)  Definiti un declansator care sa introduca in tabelul TRIG_MESAJ un mesaj dupa ce in tabelul angajati a fost facuta o operatiune de tip LMD.

CREATE TABLE TRIG_MESAJ
(utilizator VARCHAR(30),
data DATE,
MESAJ VARCHAR(40));
DROP TABLE TRIG_MESAJ;

CREATE OR REPLACE TRIGGER trig10_AM
AFTER INSERT OR UPDATE OR DELETE ON ANGAJATI
BEGIN
    IF INSERTING THEN 
        INSERT INTO TRIG_MESAJ
            VALUES (SYS.LOGIN_USER, SYSDATE,'INSERT FACUT IN TABELUL ANGAJATI');
    ELSIF UPDATING THEN
        INSERT INTO TRIG_MESAJ
            VALUES (SYS.LOGIN_USER, SYSDATE,'UPDATE FACUT IN TABELUL ANGAJATI');                  
    ELSIF DELETING THEN 
        INSERT INTO TRIG_MESAJ
            VALUES (SYS.LOGIN_USER, SYSDATE,'DELETE FACUT IN TABELUL ANGAJATI');
END IF;
END;
/
INSERT INTO ANGAJATI 
VALUES(16,'AA','FF','0879F979877','SD@ss.com','F','Casatorita','Relatii Clienti',3500);

DROP TRIGGER trig10_AM;


---11)  Defini?i un declan?ator prin care s? nu se permita modificarea cailor putere ai unui model de masina. 
CREATE OR REPLACE TRIGGER trig11_AM
BEFORE UPDATE OF cai_putere ON model
FOR EACH ROW
BEGIN
IF (:NEW.cai_putere > :OLD.cai_putere) THEN
RAISE_APPLICATION_ERROR(-20002,'Puterea masinii nu poate fi modificata');
ELSIF (:NEW.cai_putere < :OLD.cai_putere) THEN
RAISE_APPLICATION_ERROR(-20002,'Puterea masinii nu poate fi modificata');
END IF;
END;
/
UPDATE model
SET cai_putere = cai_putere + 100
WHERE ID_MODEL=100;
DROP TRIGGER trig11_AM; 


---12)  Defini?i un declan?ator care sa interzica o actiune de tip Drop sau Alter asupra schemei.
CREATE OR REPLACE TRIGGER trig12_AM
BEFORE DROP OR ALTER ON SCHEMA
BEGIN
    RAISE_APPLICATION_ERROR (-20000, 'Cannot drop or alter object on schema');
END;
/
CREATE INDEX ind_AM ON ANGAJATI(nume);
DROP INDEX ind_AM;
DROP TRIGGER trig12_AM;



