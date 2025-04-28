CREATE DATABASE SchoolBD;
USE SchoolBD;

CREATE TABLE Cursos (
    id_curso INT IDENTITY(1,1) PRIMARY KEY,
    nombre_curso VARCHAR(100) NOT NULL
);


CREATE TABLE TiposDetencion (
    id_tipo INT IDENTITY(1,1) PRIMARY KEY,
    nombre_tipo VARCHAR(50) NOT NULL
);


CREATE TABLE Estudiantes (
    id_estudiante INT IDENTITY(1,1) PRIMARY KEY, 
    nombre VARCHAR(100) NOT NULL,
    matricula VARCHAR(30) UNIQUE NOT NULL,
    edad INT,
    telefono VARCHAR(15),
    id_curso INT,
    FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso)
);

CREATE TABLE Detenciones (
    id_detencion INT IDENTITY(1,1) PRIMARY KEY,
    id_estudiante INT NOT NULL,
    fecha_detencion DATE NOT NULL,
    motivo VARCHAR(100) NOT NULL,
    id_tipo INT,
    estado VARCHAR(10) NOT NULL,
    FOREIGN KEY (id_estudiante) REFERENCES Estudiantes(id_estudiante),
    FOREIGN KEY (id_tipo) REFERENCES TiposDetencion(id_tipo)
);

Select * From Cursos
Select * From Estudiantes
Select * From TiposDetencion
Select * From Detenciones

INSERT INTO Cursos (nombre_curso) VALUES ('1ro de Primaria');
INSERT INTO Cursos (nombre_curso) VALUES ('2do de Primaria');
INSERT INTO Cursos (nombre_curso) VALUES ('3ro de Primaria');
INSERT INTO Cursos (nombre_curso) VALUES ('4to de Primaria');
INSERT INTO Cursos (nombre_curso) VALUES ('5to de Primaria');
INSERT INTO Cursos (nombre_curso) VALUES ('6to de Primaria');
INSERT INTO Cursos (nombre_curso) VALUES ('1ro de Secundaria');
INSERT INTO Cursos (nombre_curso) VALUES ('2do de Secundaria');
INSERT INTO Cursos (nombre_curso) VALUES ('3ro de Secundaria');
INSERT INTO Cursos (nombre_curso) VALUES ('4to Informática');
INSERT INTO Cursos (nombre_curso) VALUES ('5to Informática');
INSERT INTO Cursos (nombre_curso) VALUES ('6to Informática');
INSERT INTO Cursos (nombre_curso) VALUES ('4to Electrónica');
INSERT INTO Cursos (nombre_curso) VALUES ('5to Electrónica');
INSERT INTO Cursos (nombre_curso) VALUES ('6to Electrónica');
INSERT INTO Cursos (nombre_curso) VALUES ('4to Gestión');
INSERT INTO Cursos (nombre_curso) VALUES ('5to Gestión');
INSERT INTO Cursos (nombre_curso) VALUES ('6to Gestión');
INSERT INTO Cursos (nombre_curso) VALUES ('4to Música');
INSERT INTO Cursos (nombre_curso) VALUES ('5to Música');
INSERT INTO Cursos (nombre_curso) VALUES ('6to Música');
INSERT INTO Cursos (nombre_curso) VALUES ('4to Gastronomía');
INSERT INTO Cursos (nombre_curso) VALUES ('5to Gastronomía');
INSERT INTO Cursos (nombre_curso) VALUES ('6to Gastronomía');
INSERT INTO Cursos (nombre_curso) VALUES ('4to Académico');
INSERT INTO Cursos (nombre_curso) VALUES ('5to Académico');
INSERT INTO Cursos (nombre_curso) VALUES ('6to Académico');

INSERT INTO TiposDetencion (nombre_tipo) VALUES ('Leve');
INSERT INTO TiposDetencion (nombre_tipo) VALUES ('Moderada');
INSERT INTO TiposDetencion (nombre_tipo) VALUES ('Grave');

INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('María Elena', '20255703387@cafam.edu.do', 9, '809-477-6351', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Paola Carlos', '20255703388@cafam.edu.do', 15, '809-315-5535', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('María Luis', '20255703389@cafam.edu.do', 19, '809-742-4053', 7);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Sofía Miguel', '20255703390@cafam.edu.do', 8, '809-751-7136', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Elena Pedro', '20255703391@cafam.edu.do', 15, '809-930-7671', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('José Marco', '20255703392@cafam.edu.do', 7, '809-613-5406', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Lucía Javier', '20255703393@cafam.edu.do', 18, '809-402-3565', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Carlos Fernanda', '20255703394@cafam.edu.do', 8, '809-621-1256', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Javier Javier', '20255703395@cafam.edu.do', 19, '809-530-6254', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Lucía María', '20255703396@cafam.edu.do', 17, '809-813-3598', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Elena Diego', '20255703397@cafam.edu.do', 13, '809-958-7078', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Luis Sofía', '20255703398@cafam.edu.do', 7, '809-941-5517', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('María Luis', '20255703399@cafam.edu.do', 16, '809-465-7801', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('María Fernanda', '20255703400@cafam.edu.do', 18, '809-417-5717', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Paola Valentina', '20255703401@cafam.edu.do', 16, '809-318-2234', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Elena María', '20255703402@cafam.edu.do', 7, '809-473-3571', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('José Diego', '20255703403@cafam.edu.do', 11, '809-857-7292', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('María Miguel', '20255703404@cafam.edu.do', 18, '809-351-9272', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Camila Daniela', '20255703405@cafam.edu.do', 17, '809-329-5021', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Diego Pedro', '20255703406@cafam.edu.do', 18, '809-282-4115', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Diego Carlos', '20255703407@cafam.edu.do', 12, '809-453-5300', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Carlos Juan', '20255703408@cafam.edu.do', 15, '809-511-4685', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Javier Lucía', '20255703409@cafam.edu.do', 13, '809-599-3794', 7);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Juan Valentina', '20255703410@cafam.edu.do', 10, '809-876-1913', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Lucía Ana', '20255703411@cafam.edu.do', 7, '809-899-2221', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Fernanda Javier', '20255703412@cafam.edu.do', 17, '809-544-9917', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Diego Marco', '20255703413@cafam.edu.do', 11, '809-541-4747', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Valentina Sofía', '20255703414@cafam.edu.do', 14, '809-519-2191', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Javier Ana', '20255703415@cafam.edu.do', 18, '809-220-5130', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Luis Sofía', '20255703416@cafam.edu.do', 13, '809-781-4741', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Javier Camila', '20255703417@cafam.edu.do', 11, '809-720-4524', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Miguel Camila', '20255703418@cafam.edu.do', 19, '809-576-9435', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('José Lucía', '20255703419@cafam.edu.do', 17, '809-474-1051', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Javier Daniela', '20255703420@cafam.edu.do', 15, '809-483-5801', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Daniela Javier', '20255703421@cafam.edu.do', 10, '809-322-8820', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Juan Elena', '20255703422@cafam.edu.do', 12, '809-979-7557', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Pedro Daniela', '20255703423@cafam.edu.do', 6, '809-542-3945', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Ana Elena', '20255703424@cafam.edu.do', 13, '809-975-1935', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Luis María', '20255703425@cafam.edu.do', 16, '809-404-1056', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Fernanda Javier', '20255703426@cafam.edu.do', 12, '809-254-5169', 8);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Miguel Carlos', '20255703427@cafam.edu.do', 9, '809-814-6394', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Juan Luis', '20255703428@cafam.edu.do', 7, '809-838-4696', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Andrés Paola', '20255703429@cafam.edu.do', 14, '809-303-7917', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Sofía Pedro', '20255703430@cafam.edu.do', 13, '809-687-8513', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Elena Miguel', '20255703431@cafam.edu.do', 19, '809-885-8643', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Carlos Fernanda', '20255703432@cafam.edu.do', 10, '809-406-8224', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Ana Pedro', '20255703433@cafam.edu.do', 9, '809-276-1463', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Diego Sofía', '20255703434@cafam.edu.do', 12, '809-899-7785', 8);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Fernanda Pedro', '20255703435@cafam.edu.do', 18, '809-575-5920', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Paola Valentina', '20255703436@cafam.edu.do', 16, '809-975-9657', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Lucía Luis', '20255703437@cafam.edu.do', 17, '809-489-8424', 8);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Lucía Paola', '20255703438@cafam.edu.do', 9, '809-308-8886', 8);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Pedro Lucía', '20255703439@cafam.edu.do', 19, '809-917-4263', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Elena Valentina', '20255703440@cafam.edu.do', 18, '809-302-6665', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('María Camila', '20255703441@cafam.edu.do', 19, '809-630-4987', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Juan María', '20255703442@cafam.edu.do', 6, '809-440-9596', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('María Miguel', '20255703443@cafam.edu.do', 12, '809-565-7686', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Andrés Juan', '20255703444@cafam.edu.do', 17, '809-316-5003', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Fernanda Miguel', '20255703445@cafam.edu.do', 13, '809-794-7673', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Fernanda Sofía', '20255703446@cafam.edu.do', 10, '809-927-1996', 7);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Diego Miguel', '20255703447@cafam.edu.do', 16, '809-415-4767', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Pedro María', '20255703448@cafam.edu.do', 19, '809-361-6201', 8);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Javier Luis', '20255703449@cafam.edu.do', 12, '809-792-1314', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Paola Javier', '20255703450@cafam.edu.do', 18, '809-473-6183', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Javier Lucía', '20255703451@cafam.edu.do', 14, '809-456-3884', 7);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Pedro Camila', '20255703452@cafam.edu.do', 8, '809-283-4556', 8);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Juan Sofía', '20255703453@cafam.edu.do', 14, '809-638-7933', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Miguel Carlos', '20255703454@cafam.edu.do', 7, '809-320-4129', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Marco Marco', '20255703455@cafam.edu.do', 17, '809-947-7503', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Sofía María', '20255703456@cafam.edu.do', 17, '809-952-5665', 8);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('José Juan', '20255703457@cafam.edu.do', 14, '809-421-9161', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Valentina Carlos', '20255703458@cafam.edu.do', 14, '809-819-1856', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Camila Pedro', '20255703459@cafam.edu.do', 9, '809-758-4240', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Carlos Ana', '20255703460@cafam.edu.do', 8, '809-257-2621', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Juan Javier', '20255703461@cafam.edu.do', 8, '809-829-3306', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Carlos Lucía', '20255703462@cafam.edu.do', 16, '809-230-5766', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Miguel Camila', '20255703463@cafam.edu.do', 14, '809-407-6585', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Luis Lucía', '20255703464@cafam.edu.do', 12, '809-882-2235', 8);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Juan Daniela', '20255703465@cafam.edu.do', 12, '809-719-9147', 7);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Sofía Juan', '20255703466@cafam.edu.do', 10, '809-967-2964', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Diego Ana', '20255703467@cafam.edu.do', 15, '809-682-1262', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Marco Pedro', '20255703468@cafam.edu.do', 14, '809-657-4854', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Fernanda Sofía', '20255703469@cafam.edu.do', 18, '809-448-3986', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Carlos Paola', '20255703470@cafam.edu.do', 6, '809-868-1476', 7);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Marco José', '20255703471@cafam.edu.do', 10, '809-543-4840', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Paola Pedro', '20255703472@cafam.edu.do', 10, '809-976-1745', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Javier Camila', '20255703473@cafam.edu.do', 11, '809-787-3839', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Lucía Camila', '20255703474@cafam.edu.do', 7, '809-395-6721', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Pedro María', '20255703475@cafam.edu.do', 10, '809-504-8959', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Lucía Carlos', '20255703476@cafam.edu.do', 19, '809-715-2886', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Valentina Ana', '20255703477@cafam.edu.do', 17, '809-328-9690', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Elena Camila', '20255703478@cafam.edu.do', 11, '809-623-9190', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Miguel María', '20255703479@cafam.edu.do', 15, '809-382-3888', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('José Ana', '20255703480@cafam.edu.do', 17, '809-801-3043', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Lucía Luis', '20255703481@cafam.edu.do', 10, '809-979-2925', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Camila Lucía', '20255703482@cafam.edu.do', 13, '809-711-8077', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Ana Javier', '20255703483@cafam.edu.do', 9, '809-710-4742', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Diego Carlos', '20255703484@cafam.edu.do', 14, '809-616-9993', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Javier Sofía', '20255703485@cafam.edu.do', 17, '809-616-5742', 8);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Daniela Lucía', '20255703486@cafam.edu.do', 7, '809-651-1587', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Fernanda Luis', '20255703487@cafam.edu.do', 7, '809-522-3710', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Camila Diego', '20255703488@cafam.edu.do', 6, '809-521-4775', 8);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Carlos Paola', '20255703489@cafam.edu.do', 13, '809-556-3434', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Ana Miguel', '20255703490@cafam.edu.do', 16, '809-537-8486', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Fernanda María', '20255703491@cafam.edu.do', 14, '809-498-6902', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Carlos José', '20255703492@cafam.edu.do', 13, '809-298-3674', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Sofía Sofía', '20255703493@cafam.edu.do', 13, '809-896-8552', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Diego Valentina', '20255703494@cafam.edu.do', 19, '809-928-2759', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Carlos Carlos', '20255703495@cafam.edu.do', 6, '809-330-1142', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Ana José', '20255703496@cafam.edu.do', 11, '809-541-6327', 8);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Daniela Valentina', '20255703497@cafam.edu.do', 17, '809-783-8183', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Carlos Paola', '20255703498@cafam.edu.do', 6, '809-573-7513', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Fernanda Juan', '20255703499@cafam.edu.do', 19, '809-969-7500', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Camila Lucía', '20255703500@cafam.edu.do', 14, '809-776-7717', 7);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Paola Paola', '20255703501@cafam.edu.do', 13, '809-785-5944', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Juan Daniela', '20255703502@cafam.edu.do', 19, '809-814-2945', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Lucía María', '20255703503@cafam.edu.do', 9, '809-367-3983', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Valentina Ana', '20255703504@cafam.edu.do', 15, '809-235-8934', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Elena Valentina', '20255703505@cafam.edu.do', 18, '809-885-1984', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Ana Javier', '20255703506@cafam.edu.do', 8, '809-746-3916', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Javier Paola', '20255703507@cafam.edu.do', 15, '809-863-2123', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Luis Elena', '20255703508@cafam.edu.do', 12, '809-579-2188', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Marco María', '20255703509@cafam.edu.do', 12, '809-614-7819', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Camila Marco', '20255703510@cafam.edu.do', 16, '809-774-1385', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Juan Luis', '20255703511@cafam.edu.do', 13, '809-511-5326', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Diego Sofía', '20255703512@cafam.edu.do', 17, '809-291-3254', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Sofía Marco', '20255703513@cafam.edu.do', 8, '809-217-1148', 8);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Sofía Ana', '20255703514@cafam.edu.do', 17, '809-227-6977', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('María José', '20255703515@cafam.edu.do', 11, '809-676-7389', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Camila Miguel', '20255703516@cafam.edu.do', 11, '809-292-6547', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Andrés Ana', '20255703517@cafam.edu.do', 14, '809-236-6682', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Andrés Andrés', '20255703518@cafam.edu.do', 14, '809-242-1763', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('María Sofía', '20255703519@cafam.edu.do', 13, '809-280-5287', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Carlos Marco', '20255703520@cafam.edu.do', 13, '809-217-7991', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Diego José', '20255703521@cafam.edu.do', 19, '809-586-8142', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Luis Lucía', '20255703522@cafam.edu.do', 9, '809-914-7568', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Lucía Ana', '20255703523@cafam.edu.do', 10, '809-243-8821', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Paola Pedro', '20255703524@cafam.edu.do', 19, '809-605-1482', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Camila Pedro', '20255703525@cafam.edu.do', 16, '809-552-9738', 7);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Valentina Miguel', '20255703526@cafam.edu.do', 7, '809-684-5010', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Carlos Valentina', '20255703527@cafam.edu.do', 16, '809-425-4978', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Marco Marco', '20255703528@cafam.edu.do', 15, '809-680-1218', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Diego Sofía', '20255703529@cafam.edu.do', 8, '809-925-6936', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Carlos Javier', '20255703530@cafam.edu.do', 10, '809-653-6670', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Valentina Marco', '20255703531@cafam.edu.do', 9, '809-305-4059', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Elena Diego', '20255703532@cafam.edu.do', 15, '809-430-3108', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Andrés Lucía', '20255703533@cafam.edu.do', 16, '809-370-4669', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Camila Daniela', '20255703534@cafam.edu.do', 14, '809-368-2068', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Elena Pedro', '20255703535@cafam.edu.do', 11, '809-312-2117', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Diego Elena', '20255703536@cafam.edu.do', 12, '809-385-4050', 8);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Paola Elena', '20255703537@cafam.edu.do', 17, '809-926-6942', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Sofía Fernanda', '20255703538@cafam.edu.do', 11, '809-335-5887', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Sofía Paola', '20255703539@cafam.edu.do', 10, '809-552-7081', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Elena Javier', '20255703540@cafam.edu.do', 6, '809-852-6006', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Javier Luis', '20255703541@cafam.edu.do', 11, '809-681-3236', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Javier Juan', '20255703542@cafam.edu.do', 8, '809-270-6121', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Carlos Paola', '20255703543@cafam.edu.do', 12, '809-981-1895', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('María Luis', '20255703544@cafam.edu.do', 7, '809-923-6899', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('José Marco', '20255703545@cafam.edu.do', 7, '809-309-4467', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Pedro Diego', '20255703546@cafam.edu.do', 7, '809-399-9402', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Luis Daniela', '20255703547@cafam.edu.do', 10, '809-289-6938', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Ana María', '20255703548@cafam.edu.do', 6, '809-311-1222', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Juan Luis', '20255703549@cafam.edu.do', 7, '809-302-2507', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('María Elena', '20255703550@cafam.edu.do', 6, '809-987-3509', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Miguel Miguel', '20255703551@cafam.edu.do', 14, '809-554-4889', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('José Carlos', '20255703552@cafam.edu.do', 16, '809-515-5656', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Daniela Diego', '20255703553@cafam.edu.do', 6, '809-820-3663', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Ana Miguel', '20255703554@cafam.edu.do', 11, '809-370-3742', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Camila Javier', '20255703555@cafam.edu.do', 7, '809-904-3043', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Carlos Lucía', '20255703556@cafam.edu.do', 17, '809-396-9905', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('María Javier', '20255703557@cafam.edu.do', 19, '809-833-5075', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('María Pedro', '20255703558@cafam.edu.do', 18, '809-800-1097', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('María Lucía', '20255703559@cafam.edu.do', 6, '809-568-4266', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Marco Carlos', '20255703560@cafam.edu.do', 19, '809-311-6929', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Javier Andrés', '20255703561@cafam.edu.do', 11, '809-698-3875', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Daniela José', '20255703562@cafam.edu.do', 6, '809-796-6329', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Camila Diego', '20255703563@cafam.edu.do', 13, '809-589-7926', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Carlos Sofía', '20255703564@cafam.edu.do', 17, '809-668-1115', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Fernanda Marco', '20255703565@cafam.edu.do', 7, '809-949-3356', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('María Daniela', '20255703566@cafam.edu.do', 11, '809-729-5407', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Miguel José', '20255703567@cafam.edu.do', 9, '809-573-8280', 7);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Valentina José', '20255703568@cafam.edu.do', 17, '809-624-6135', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Lucía María', '20255703569@cafam.edu.do', 16, '809-533-7931', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Miguel Camila', '20255703570@cafam.edu.do', 13, '809-885-2677', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Lucía Ana', '20255703571@cafam.edu.do', 6, '809-749-4092', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('María Sofía', '20255703572@cafam.edu.do', 9, '809-229-2307', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Pedro Andrés', '20255703573@cafam.edu.do', 7, '809-764-7237', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Valentina Andrés', '20255703574@cafam.edu.do', 14, '809-792-9445', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Pedro Diego', '20255703575@cafam.edu.do', 7, '809-542-9628', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Fernanda Fernanda', '20255703576@cafam.edu.do', 10, '809-505-6372', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Marco María', '20255703577@cafam.edu.do', 19, '809-601-6539', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Carlos Juan', '20255703578@cafam.edu.do', 8, '809-228-2304', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Paola Fernanda', '20255703579@cafam.edu.do', 11, '809-992-2348', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('María Javier', '20255703580@cafam.edu.do', 11, '809-924-1939', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Marco Sofía', '20255703581@cafam.edu.do', 7, '809-491-4207', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Lucía Juan', '20255703582@cafam.edu.do', 7, '809-683-6750', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Miguel Andrés', '20255703583@cafam.edu.do', 7, '809-898-2933', 8);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Pedro Fernanda', '20255703584@cafam.edu.do', 19, '809-637-6325', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Pedro María', '20255703585@cafam.edu.do', 15, '809-595-9362', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Elena Andrés', '20255703586@cafam.edu.do', 13, '809-656-9238', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Marco Sofía', '20255703587@cafam.edu.do', 13, '809-451-3581', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('José Lucía', '20255703588@cafam.edu.do', 15, '809-870-5651', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Javier Diego', '20255703589@cafam.edu.do', 12, '809-319-1124', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Andrés Ana', '20255703590@cafam.edu.do', 7, '809-849-5805', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Daniela Paola', '20255703591@cafam.edu.do', 10, '809-935-7235', 8);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Marco Andrés', '20255703592@cafam.edu.do', 17, '809-275-9727', 7);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Juan Juan', '20255703593@cafam.edu.do', 14, '809-263-1187', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Javier José', '20255703594@cafam.edu.do', 13, '809-859-5544', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('María José', '20255703595@cafam.edu.do', 13, '809-966-2894', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Luis María', '20255703596@cafam.edu.do', 7, '809-485-9981', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Sofía Andrés', '20255703597@cafam.edu.do', 11, '809-402-7320', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Luis María', '20255703598@cafam.edu.do', 9, '809-300-1582', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Juan Valentina', '20255703599@cafam.edu.do', 9, '809-826-5843', 7);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Marco Carlos', '20255703600@cafam.edu.do', 8, '809-571-5133', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Marco Camila', '20255703601@cafam.edu.do', 9, '809-295-9838', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Diego Ana', '20255703602@cafam.edu.do', 13, '809-577-7624', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Daniela Lucía', '20255703603@cafam.edu.do', 9, '809-751-4403', 8);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Paola Andrés', '20255703604@cafam.edu.do', 14, '809-621-3484', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Diego Elena', '20255703605@cafam.edu.do', 8, '809-529-7726', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Miguel Carlos', '20255703606@cafam.edu.do', 11, '809-273-9099', 7);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Diego Daniela', '20255703607@cafam.edu.do', 19, '809-943-1897', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Ana Ana', '20255703608@cafam.edu.do', 17, '809-498-7699', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Paola Luis', '20255703609@cafam.edu.do', 16, '809-504-5119', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Daniela Lucía', '20255703610@cafam.edu.do', 10, '809-308-7625', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Valentina María', '20255703611@cafam.edu.do', 7, '809-797-9446', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Marco María', '20255703612@cafam.edu.do', 10, '809-977-7826', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('María Camila', '20255703613@cafam.edu.do', 7, '809-883-7642', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Lucía Juan', '20255703614@cafam.edu.do', 11, '809-638-1181', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Marco Miguel', '20255703615@cafam.edu.do', 12, '809-203-1025', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('José Daniela', '20255703616@cafam.edu.do', 19, '809-447-2652', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Miguel Paola', '20255703617@cafam.edu.do', 8, '809-223-6303', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Carlos Elena', '20255703618@cafam.edu.do', 10, '809-725-8721', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('María Fernanda', '20255703619@cafam.edu.do', 8, '809-753-5157', 7);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Marco Javier', '20255703620@cafam.edu.do', 11, '809-822-5091', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Carlos Sofía', '20255703621@cafam.edu.do', 9, '809-514-4988', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Luis José', '20255703622@cafam.edu.do', 8, '809-636-9985', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Luis Lucía', '20255703623@cafam.edu.do', 11, '809-390-6712', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Marco Javier', '20255703624@cafam.edu.do', 8, '809-803-1897', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Lucía Juan', '20255703625@cafam.edu.do', 13, '809-967-4253', 8);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('María María', '20255703626@cafam.edu.do', 6, '809-787-9273', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('María Valentina', '20255703627@cafam.edu.do', 8, '809-535-7836', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Camila Luis', '20255703628@cafam.edu.do', 7, '809-678-4967', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Diego Daniela', '20255703629@cafam.edu.do', 13, '809-323-2752', 7);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Valentina Paola', '20255703630@cafam.edu.do', 9, '809-314-8427', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Javier Valentina', '20255703631@cafam.edu.do', 11, '809-789-7370', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Javier Valentina', '20255703632@cafam.edu.do', 13, '809-882-3300', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Andrés Sofía', '20255703633@cafam.edu.do', 11, '809-203-8593', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Diego Lucía', '20255703634@cafam.edu.do', 8, '809-661-8327', 7);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Sofía Paola', '20255703635@cafam.edu.do', 11, '809-522-8312', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Marco María', '20255703636@cafam.edu.do', 13, '809-731-1805', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('José Valentina', '20255703637@cafam.edu.do', 6, '809-230-2331', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Andrés Diego', '20255703638@cafam.edu.do', 7, '809-219-8917', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Juan Juan', '20255703639@cafam.edu.do', 10, '809-460-5242', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('José Luis', '20255703640@cafam.edu.do', 13, '809-223-6598', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Carlos Juan', '20255703641@cafam.edu.do', 18, '809-490-4817', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Juan Juan', '20255703642@cafam.edu.do', 8, '809-215-4790', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Valentina Andrés', '20255703643@cafam.edu.do', 13, '809-250-2853', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Daniela Valentina', '20255703644@cafam.edu.do', 16, '809-877-2090', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Juan Elena', '20255703645@cafam.edu.do', 18, '809-892-2565', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Valentina Lucía', '20255703646@cafam.edu.do', 13, '809-489-7638', 8);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Ana José', '20255703647@cafam.edu.do', 16, '809-384-2510', 7);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Andrés Javier', '20255703648@cafam.edu.do', 11, '809-342-6623', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Andrés Diego', '20255703649@cafam.edu.do', 15, '809-669-9630', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Marco Fernanda', '20255703650@cafam.edu.do', 19, '809-631-4844', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Daniela Carlos', '20255703651@cafam.edu.do', 11, '809-895-8049', 8);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Juan Sofía', '20255703652@cafam.edu.do', 6, '809-580-3896', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('José María', '20255703653@cafam.edu.do', 13, '809-528-2947', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Pedro Daniela', '20255703654@cafam.edu.do', 12, '809-647-4399', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Luis Diego', '20255703655@cafam.edu.do', 17, '809-888-7871', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Juan Juan', '20255703656@cafam.edu.do', 19, '809-914-3837', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Miguel Valentina', '20255703657@cafam.edu.do', 7, '809-942-9502', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Juan Fernanda', '20255703658@cafam.edu.do', 11, '809-446-4732', 7);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Miguel Andrés', '20255703659@cafam.edu.do', 16, '809-428-5684', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Miguel Ana', '20255703660@cafam.edu.do', 14, '809-636-1037', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Javier Paola', '20255703661@cafam.edu.do', 11, '809-353-1509', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Lucía Lucía', '20255703662@cafam.edu.do', 13, '809-783-9340', 8);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Sofía Lucía', '20255703663@cafam.edu.do', 13, '809-700-8283', 8);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Andrés Javier', '20255703664@cafam.edu.do', 8, '809-735-1546', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Daniela Juan', '20255703665@cafam.edu.do', 6, '809-345-4642', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Miguel Andrés', '20255703666@cafam.edu.do', 10, '809-427-3558', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Lucía Camila', '20255703667@cafam.edu.do', 10, '809-944-7675', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Paola Miguel', '20255703668@cafam.edu.do', 12, '809-237-2703', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Miguel Lucía', '20255703669@cafam.edu.do', 14, '809-637-5371', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Andrés Carlos', '20255703670@cafam.edu.do', 13, '809-585-2744', 7);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Andrés Luis', '20255703671@cafam.edu.do', 10, '809-486-3483', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Fernanda María', '20255703672@cafam.edu.do', 9, '809-475-7148', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Carlos Sofía', '20255703673@cafam.edu.do', 19, '809-275-9266', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Daniela Javier', '20255703674@cafam.edu.do', 17, '809-410-3171', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Elena Andrés', '20255703675@cafam.edu.do', 12, '809-798-9066', 8);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Valentina Camila', '20255703676@cafam.edu.do', 12, '809-809-4438', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Carlos Carlos', '20255703677@cafam.edu.do', 8, '809-586-7418', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Camila Fernanda', '20255703678@cafam.edu.do', 8, '809-853-7367', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Marco Elena', '20255703679@cafam.edu.do', 13, '809-438-2020', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Camila Valentina', '20255703680@cafam.edu.do', 7, '809-911-3088', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('José Miguel', '20255703681@cafam.edu.do', 7, '809-437-5840', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('María Ana', '20255703682@cafam.edu.do', 11, '809-425-7676', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Lucía María', '20255703683@cafam.edu.do', 18, '809-595-3602', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Javier Diego', '20255703684@cafam.edu.do', 6, '809-544-5333', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Camila Carlos', '20255703685@cafam.edu.do', 10, '809-835-3375', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Luis Pedro', '20255703686@cafam.edu.do', 14, '809-517-6949', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Lucía Andrés', '20255703687@cafam.edu.do', 15, '809-628-5942', 7);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Pedro María', '20255703688@cafam.edu.do', 14, '809-266-1823', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Luis Luis', '20255703689@cafam.edu.do', 17, '809-813-8954', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Camila Juan', '20255703690@cafam.edu.do', 15, '809-629-2015', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Elena Miguel', '20255703691@cafam.edu.do', 13, '809-229-6577', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('María Elena', '20255703692@cafam.edu.do', 17, '809-395-5110', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Fernanda Daniela', '20255703693@cafam.edu.do', 6, '809-441-3263', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Pedro Camila', '20255703694@cafam.edu.do', 7, '809-816-9539', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Camila Camila', '20255703695@cafam.edu.do', 6, '809-668-3236', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Daniela Elena', '20255703696@cafam.edu.do', 6, '809-616-4538', 8);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Juan Elena', '20255703697@cafam.edu.do', 15, '809-272-2075', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Camila Diego', '20255703698@cafam.edu.do', 6, '809-472-2502', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Fernanda Camila', '20255703699@cafam.edu.do', 15, '809-699-8758', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Andrés Daniela', '20255703700@cafam.edu.do', 17, '809-497-7437', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('José Ana', '20255703701@cafam.edu.do', 17, '809-516-9830', 8);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Javier Fernanda', '20255703702@cafam.edu.do', 18, '809-568-1725', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Elena Fernanda', '20255703703@cafam.edu.do', 10, '809-274-5379', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Luis Luis', '20255703704@cafam.edu.do', 7, '809-702-9500', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Paola Paola', '20255703705@cafam.edu.do', 8, '809-982-6569', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Diego Valentina', '20255703706@cafam.edu.do', 18, '809-685-6679', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Andrés Paola', '20255703707@cafam.edu.do', 8, '809-809-7962', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Pedro Juan', '20255703708@cafam.edu.do', 9, '809-334-9383', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Pedro Marco', '20255703709@cafam.edu.do', 18, '809-955-3428', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Andrés Ana', '20255703710@cafam.edu.do', 11, '809-731-1889', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Carlos Marco', '20255703711@cafam.edu.do', 15, '809-242-2894', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Diego Luis', '20255703712@cafam.edu.do', 7, '809-246-2768', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('José Andrés', '20255703713@cafam.edu.do', 8, '809-324-7825', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Paola Luis', '20255703714@cafam.edu.do', 7, '809-449-7624', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Marco Paola', '20255703715@cafam.edu.do', 10, '809-918-4505', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Juan Juan', '20255703716@cafam.edu.do', 16, '809-724-5061', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Diego Elena', '20255703717@cafam.edu.do', 9, '809-875-4693', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Marco Sofía', '20255703718@cafam.edu.do', 6, '809-636-8668', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Andrés María', '20255703719@cafam.edu.do', 10, '809-535-1778', 7);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Marco Camila', '20255703720@cafam.edu.do', 15, '809-583-1388', 7);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Marco Elena', '20255703721@cafam.edu.do', 10, '809-947-7120', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Sofía Miguel', '20255703722@cafam.edu.do', 8, '809-722-3981', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Marco Marco', '20255703723@cafam.edu.do', 9, '809-252-1262', 7);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Miguel Marco', '20255703724@cafam.edu.do', 15, '809-808-5237', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Javier José', '20255703725@cafam.edu.do', 15, '809-879-6518', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Diego Lucía', '20255703726@cafam.edu.do', 17, '809-842-6927', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Juan Fernanda', '20255703727@cafam.edu.do', 8, '809-983-5950', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Fernanda Andrés', '20255703728@cafam.edu.do', 13, '809-445-1050', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Carlos Miguel', '20255703729@cafam.edu.do', 16, '809-537-6631', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Diego Luis', '20255703730@cafam.edu.do', 12, '809-478-6818', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Carlos Carlos', '20255703731@cafam.edu.do', 17, '809-504-1778', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Daniela Miguel', '20255703732@cafam.edu.do', 14, '809-484-9496', 7);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Daniela Marco', '20255703733@cafam.edu.do', 14, '809-420-4791', 7);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Elena Pedro', '20255703734@cafam.edu.do', 14, '809-812-6276', 8);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Marco Marco', '20255703735@cafam.edu.do', 17, '809-772-5367', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('María Lucía', '20255703736@cafam.edu.do', 8, '809-405-9310', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Elena Ana', '20255703737@cafam.edu.do', 13, '809-897-1382', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Paola Paola', '20255703738@cafam.edu.do', 11, '809-716-8320', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Juan Elena', '20255703739@cafam.edu.do', 12, '809-590-7980', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Ana Miguel', '20255703740@cafam.edu.do', 18, '809-585-7060', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('José Carlos', '20255703741@cafam.edu.do', 8, '809-804-2413', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Andrés Sofía', '20255703742@cafam.edu.do', 10, '809-261-5957', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Fernanda Carlos', '20255703743@cafam.edu.do', 7, '809-613-6414', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Camila Valentina', '20255703744@cafam.edu.do', 9, '809-314-6496', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Carlos Pedro', '20255703745@cafam.edu.do', 9, '809-626-7785', 7);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Lucía Ana', '20255703746@cafam.edu.do', 15, '809-536-4803', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Marco Sofía', '20255703747@cafam.edu.do', 9, '809-682-5542', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Luis Sofía', '20255703748@cafam.edu.do', 15, '809-624-2477', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('María Javier', '20255703749@cafam.edu.do', 14, '809-897-2132', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('María Sofía', '20255703750@cafam.edu.do', 10, '809-662-9307', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Miguel Lucía', '20255703751@cafam.edu.do', 17, '809-697-3860', 8);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Diego Valentina', '20255703752@cafam.edu.do', 16, '809-876-2591', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Sofía Juan', '20255703753@cafam.edu.do', 19, '809-591-6370', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Elena Daniela', '20255703754@cafam.edu.do', 8, '809-766-6694', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Marco Pedro', '20255703755@cafam.edu.do', 14, '809-664-4078', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Javier Lucía', '20255703756@cafam.edu.do', 18, '809-799-2291', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Camila Daniela', '20255703757@cafam.edu.do', 7, '809-238-5584', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Elena Andrés', '20255703758@cafam.edu.do', 15, '809-243-9696', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Carlos Carlos', '20255703759@cafam.edu.do', 18, '809-547-8616', 7);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Fernanda Elena', '20255703760@cafam.edu.do', 10, '809-435-4886', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Andrés Fernanda', '20255703761@cafam.edu.do', 10, '809-665-7905', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('José Diego', '20255703762@cafam.edu.do', 18, '809-358-8845', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Paola Luis', '20255703763@cafam.edu.do', 12, '809-994-6716', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Javier Juan', '20255703764@cafam.edu.do', 10, '809-295-1821', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Andrés Ana', '20255703765@cafam.edu.do', 18, '809-314-9699', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Javier Elena', '20255703766@cafam.edu.do', 8, '809-459-2210', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Luis Andrés', '20255703767@cafam.edu.do', 7, '809-305-2037', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Ana Lucía', '20255703768@cafam.edu.do', 10, '809-681-9953', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Daniela Luis', '20255703769@cafam.edu.do', 9, '809-719-3260', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Javier Miguel', '20255703770@cafam.edu.do', 7, '809-346-1157', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('José Camila', '20255703771@cafam.edu.do', 15, '809-893-3209', 8);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Diego Sofía', '20255703772@cafam.edu.do', 15, '809-800-4095', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Miguel Javier', '20255703773@cafam.edu.do', 12, '809-760-8695', 8);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Ana Sofía', '20255703774@cafam.edu.do', 16, '809-581-2067', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Juan Daniela', '20255703775@cafam.edu.do', 16, '809-765-7911', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Paola María', '20255703776@cafam.edu.do', 15, '809-203-5157', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Camila Andrés', '20255703777@cafam.edu.do', 10, '809-281-6660', 7);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Fernanda Pedro', '20255703778@cafam.edu.do', 18, '809-255-8462', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Miguel Ana', '20255703779@cafam.edu.do', 8, '809-847-9840', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Miguel Carlos', '20255703780@cafam.edu.do', 9, '809-765-1293', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Camila Camila', '20255703781@cafam.edu.do', 18, '809-319-4001', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Paola José', '20255703782@cafam.edu.do', 8, '809-510-8035', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Andrés Lucía', '20255703783@cafam.edu.do', 16, '809-490-3580', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Camila Sofía', '20255703784@cafam.edu.do', 12, '809-504-5729', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('María José', '20255703785@cafam.edu.do', 8, '809-360-7463', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Miguel Pedro', '20255703786@cafam.edu.do', 8, '809-371-6782', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Miguel Juan', '20255703787@cafam.edu.do', 7, '809-522-8907', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Juan Javier', '20255703788@cafam.edu.do', 16, '809-210-9836', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('José Lucía', '20255703789@cafam.edu.do', 13, '809-845-2339', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Daniela Marco', '20255703790@cafam.edu.do', 14, '809-226-4955', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Paola Marco', '20255703791@cafam.edu.do', 8, '809-285-3299', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Javier Miguel', '20255703792@cafam.edu.do', 16, '809-586-2763', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Miguel María', '20255703793@cafam.edu.do', 16, '809-470-5657', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('José Lucía', '20255703794@cafam.edu.do', 8, '809-683-4421', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Diego Daniela', '20255703795@cafam.edu.do', 16, '809-943-8338', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('María Marco', '20255703796@cafam.edu.do', 14, '809-535-8352', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Juan Sofía', '20255703797@cafam.edu.do', 14, '809-683-4880', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Carlos Javier', '20255703798@cafam.edu.do', 12, '809-268-9188', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Lucía Ana', '20255703799@cafam.edu.do', 19, '809-761-9325', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Carlos Carlos', '20255703800@cafam.edu.do', 18, '809-910-4830', 8);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Daniela Ana', '20255703801@cafam.edu.do', 14, '809-467-6233', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Carlos Andrés', '20255703802@cafam.edu.do', 7, '809-474-5474', 7);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Marco Javier', '20255703803@cafam.edu.do', 13, '809-325-2252', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Andrés Fernanda', '20255703804@cafam.edu.do', 11, '809-340-2662', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Juan Fernanda', '20255703805@cafam.edu.do', 11, '809-225-4763', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('José Camila', '20255703806@cafam.edu.do', 18, '809-753-6464', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Carlos Camila', '20255703807@cafam.edu.do', 12, '809-248-2607', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Diego María', '20255703808@cafam.edu.do', 7, '809-870-5335', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Lucía Andrés', '20255703809@cafam.edu.do', 15, '809-595-8764', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Paola Valentina', '20255703810@cafam.edu.do', 18, '809-713-7087', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Diego Lucía', '20255703811@cafam.edu.do', 15, '809-354-7805', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Sofía Andrés', '20255703812@cafam.edu.do', 10, '809-722-9529', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Sofía Juan', '20255703813@cafam.edu.do', 18, '809-739-3148', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Sofía Andrés', '20255703814@cafam.edu.do', 12, '809-264-9325', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Carlos Sofía', '20255703815@cafam.edu.do', 12, '809-439-8521', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Carlos Valentina', '20255703816@cafam.edu.do', 8, '809-789-5906', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Andrés Elena', '20255703817@cafam.edu.do', 11, '809-904-3332', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Carlos Paola', '20255703818@cafam.edu.do', 8, '809-982-4398', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Javier Lucía', '20255703819@cafam.edu.do', 16, '809-890-7303', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Sofía Lucía', '20255703820@cafam.edu.do', 15, '809-496-7924', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Miguel Marco', '20255703821@cafam.edu.do', 6, '809-701-9755', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Lucía Juan', '20255703822@cafam.edu.do', 10, '809-280-1467', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Andrés Sofía', '20255703823@cafam.edu.do', 18, '809-830-3704', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Javier Sofía', '20255703824@cafam.edu.do', 16, '809-638-9488', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Miguel Camila', '20255703825@cafam.edu.do', 17, '809-353-9192', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Miguel Daniela', '20255703826@cafam.edu.do', 13, '809-966-7624', 7);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Daniela Miguel', '20255703827@cafam.edu.do', 19, '809-711-4155', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Valentina Pedro', '20255703828@cafam.edu.do', 8, '809-397-3865', 7);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Miguel Carlos', '20255703829@cafam.edu.do', 19, '809-468-2307', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Fernanda Valentina', '20255703830@cafam.edu.do', 7, '809-440-5107', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Paola Diego', '20255703831@cafam.edu.do', 8, '809-636-1209', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Luis Camila', '20255703832@cafam.edu.do', 19, '809-621-3671', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Elena Daniela', '20255703833@cafam.edu.do', 16, '809-725-7906', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Luis Carlos', '20255703834@cafam.edu.do', 13, '809-221-4285', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Luis María', '20255703835@cafam.edu.do', 17, '809-655-3324', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Javier Daniela', '20255703836@cafam.edu.do', 7, '809-427-4482', 8);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('María Luis', '20255703837@cafam.edu.do', 15, '809-365-4797', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Luis Diego', '20255703838@cafam.edu.do', 19, '809-872-7424', 8);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Marco Paola', '20255703839@cafam.edu.do', 18, '809-678-5319', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Andrés Diego', '20255703840@cafam.edu.do', 13, '809-204-4835', 8);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Valentina Pedro', '20255703841@cafam.edu.do', 17, '809-563-3492', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Valentina Elena', '20255703842@cafam.edu.do', 9, '809-838-1564', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Marco Luis', '20255703843@cafam.edu.do', 19, '809-739-4644', 8);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Pedro Pedro', '20255703844@cafam.edu.do', 14, '809-379-3610', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Juan Marco', '20255703845@cafam.edu.do', 11, '809-428-8941', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Paola Lucía', '20255703846@cafam.edu.do', 6, '809-635-3413', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Pedro Camila', '20255703847@cafam.edu.do', 17, '809-813-3615', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Paola Lucía', '20255703848@cafam.edu.do', 13, '809-844-9898', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Javier Carlos', '20255703849@cafam.edu.do', 9, '809-442-3061', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Paola Ana', '20255703850@cafam.edu.do', 10, '809-680-9990', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Valentina Juan', '20255703851@cafam.edu.do', 17, '809-921-7946', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Marco Andrés', '20255703852@cafam.edu.do', 8, '809-615-5934', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Andrés Miguel', '20255703853@cafam.edu.do', 14, '809-505-9119', 7);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Diego José', '20255703854@cafam.edu.do', 16, '809-290-7547', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Fernanda Pedro', '20255703855@cafam.edu.do', 16, '809-784-7956', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('María Sofía', '20255703856@cafam.edu.do', 19, '809-425-3031', 5);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Paola Daniela', '20255703857@cafam.edu.do', 19, '809-470-1828', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Juan Daniela', '20255703858@cafam.edu.do', 6, '809-827-8166', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Sofía Valentina', '20255703859@cafam.edu.do', 8, '809-622-4582', 10);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('María Pedro', '20255703860@cafam.edu.do', 16, '809-219-5202', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Marco Lucía', '20255703861@cafam.edu.do', 14, '809-449-4944', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('José Lucía', '20255703862@cafam.edu.do', 13, '809-428-8377', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('María Sofía', '20255703863@cafam.edu.do', 18, '809-708-6625', 6);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Paola Sofía', '20255703864@cafam.edu.do', 8, '809-425-5625', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Paola Paola', '20255703865@cafam.edu.do', 7, '809-494-7072', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Paola Juan', '20255703866@cafam.edu.do', 19, '809-320-1964', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Ana Sofía', '20255703867@cafam.edu.do', 12, '809-292-7671', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('José Valentina', '20255703868@cafam.edu.do', 16, '809-683-5822', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Paola Miguel', '20255703869@cafam.edu.do', 15, '809-807-6797', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Diego Paola', '20255703870@cafam.edu.do', 9, '809-824-4958', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Valentina Diego', '20255703871@cafam.edu.do', 6, '809-489-3988', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('José Diego', '20255703872@cafam.edu.do', 17, '809-224-2426', 4);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Ana Daniela', '20255703873@cafam.edu.do', 13, '809-510-8127', 3);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Miguel Valentina', '20255703874@cafam.edu.do', 8, '809-504-6696', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('José Javier', '20255703875@cafam.edu.do', 16, '809-587-6614', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Miguel Elena', '20255703876@cafam.edu.do', 19, '809-967-4184', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Valentina Andrés', '20255703877@cafam.edu.do', 8, '809-492-7535', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Diego Miguel', '20255703878@cafam.edu.do', 8, '809-469-2471', 2);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Daniela Daniela', '20255703879@cafam.edu.do', 18, '809-315-8259', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Ana José', '20255703880@cafam.edu.do', 8, '809-668-2479', 7);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Daniela María', '20255703881@cafam.edu.do', 7, '809-306-9275', 1);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Juan Andrés', '20255703882@cafam.edu.do', 16, '809-244-4386', 12);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Javier Miguel', '20255703883@cafam.edu.do', 18, '809-310-6970', 7);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Marco Lucía', '20255703884@cafam.edu.do', 12, '809-661-4750', 9);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('Daniela Luis', '20255703885@cafam.edu.do', 12, '809-884-3913', 11);
INSERT INTO Estudiantes (nombre, matricula, edad, telefono, id_curso) VALUES ('María Carlos', '20255703886@cafam.edu.do', 6, '809-617-6907', 10);

INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (1, '2024-10-22', 'Indisciplina', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (2, '2024-06-24', 'Pelea', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (3, '2024-03-25', 'Lenguaje inapropiado', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (4, '2024-03-02', 'Pelea', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (5, '2024-02-15', 'Lenguaje inapropiado', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (6, '2024-12-02', 'Lenguaje inapropiado', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (7, '2024-07-25', 'Uso indebido del celular', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (8, '2024-01-06', 'Llegada tarde', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (9, '2024-01-24', 'Lenguaje inapropiado', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (10, '2024-08-16', 'Uso indebido del celular', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (11, '2024-12-27', 'Llegada tarde', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (12, '2024-09-05', 'Falta de tarea', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (13, '2024-09-25', 'Falta de tarea', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (14, '2024-06-07', 'Llegada tarde', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (15, '2024-08-17', 'Pelea', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (16, '2024-08-01', 'Lenguaje inapropiado', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (17, '2024-11-18', 'Uso indebido del celular', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (18, '2024-12-26', 'Llegada tarde', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (19, '2024-05-16', 'Falta de tarea', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (20, '2024-08-07', 'Falta de tarea', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (21, '2024-01-18', 'Indisciplina', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (22, '2024-02-18', 'Uso indebido del celular', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (23, '2024-04-13', 'Lenguaje inapropiado', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (24, '2024-05-04', 'Llegada tarde', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (25, '2024-02-22', 'Pelea', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (26, '2024-05-19', 'Falta de tarea', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (27, '2024-06-28', 'Falta de tarea', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (28, '2024-11-10', 'Uso indebido del celular', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (29, '2024-04-06', 'Lenguaje inapropiado', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (30, '2024-08-02', 'Falta de tarea', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (31, '2024-04-10', 'Falta de tarea', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (32, '2024-02-14', 'Lenguaje inapropiado', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (33, '2024-09-15', 'Lenguaje inapropiado', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (34, '2024-05-19', 'Pelea', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (35, '2024-03-17', 'Lenguaje inapropiado', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (36, '2024-03-23', 'Pelea', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (37, '2024-11-02', 'Lenguaje inapropiado', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (38, '2024-03-25', 'Indisciplina', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (39, '2024-03-05', 'Falta de tarea', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (40, '2024-03-05', 'Llegada tarde', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (41, '2024-06-16', 'Pelea', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (42, '2024-12-25', 'Lenguaje inapropiado', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (43, '2024-12-14', 'Indisciplina', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (44, '2024-09-09', 'Uso indebido del celular', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (45, '2024-05-25', 'Falta de tarea', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (46, '2024-05-17', 'Falta de tarea', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (47, '2024-12-07', 'Llegada tarde', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (48, '2024-09-15', 'Lenguaje inapropiado', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (49, '2024-03-02', 'Pelea', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (50, '2024-08-02', 'Llegada tarde', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (51, '2024-12-22', 'Indisciplina', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (52, '2024-01-27', 'Llegada tarde', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (53, '2024-11-24', 'Uso indebido del celular', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (54, '2024-03-14', 'Falta de tarea', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (55, '2024-02-03', 'Llegada tarde', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (56, '2024-09-28', 'Llegada tarde', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (57, '2024-08-05', 'Lenguaje inapropiado', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (58, '2024-12-16', 'Llegada tarde', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (59, '2024-11-24', 'Uso indebido del celular', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (60, '2024-05-03', 'Lenguaje inapropiado', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (61, '2024-07-16', 'Falta de tarea', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (62, '2024-07-16', 'Lenguaje inapropiado', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (63, '2024-08-04', 'Falta de tarea', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (64, '2024-09-23', 'Falta de tarea', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (65, '2024-12-21', 'Lenguaje inapropiado', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (66, '2024-10-17', 'Falta de tarea', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (67, '2024-11-06', 'Uso indebido del celular', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (68, '2024-04-07', 'Falta de tarea', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (69, '2024-08-18', 'Indisciplina', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (70, '2024-11-26', 'Lenguaje inapropiado', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (71, '2024-12-02', 'Lenguaje inapropiado', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (72, '2024-12-09', 'Pelea', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (73, '2024-07-17', 'Uso indebido del celular', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (74, '2024-03-16', 'Falta de tarea', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (75, '2024-03-27', 'Lenguaje inapropiado', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (76, '2024-12-08', 'Indisciplina', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (77, '2024-10-09', 'Uso indebido del celular', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (78, '2024-03-10', 'Falta de tarea', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (79, '2024-07-04', 'Lenguaje inapropiado', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (80, '2024-12-19', 'Uso indebido del celular', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (81, '2024-06-24', 'Llegada tarde', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (82, '2024-11-11', 'Lenguaje inapropiado', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (83, '2024-11-27', 'Uso indebido del celular', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (84, '2024-06-01', 'Lenguaje inapropiado', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (85, '2024-05-03', 'Lenguaje inapropiado', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (86, '2024-10-20', 'Lenguaje inapropiado', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (87, '2024-02-07', 'Falta de tarea', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (88, '2024-08-20', 'Indisciplina', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (89, '2024-08-04', 'Indisciplina', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (90, '2024-04-25', 'Indisciplina', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (91, '2024-08-11', 'Indisciplina', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (92, '2024-08-13', 'Llegada tarde', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (93, '2024-04-22', 'Pelea', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (94, '2024-09-14', 'Llegada tarde', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (95, '2024-04-10', 'Lenguaje inapropiado', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (96, '2024-05-21', 'Lenguaje inapropiado', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (97, '2024-10-24', 'Pelea', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (98, '2024-04-14', 'Uso indebido del celular', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (99, '2024-01-27', 'Llegada tarde', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (100, '2024-06-14', 'Uso indebido del celular', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (101, '2024-10-08', 'Llegada tarde', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (102, '2024-01-16', 'Falta de tarea', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (103, '2024-01-28', 'Indisciplina', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (104, '2024-04-22', 'Uso indebido del celular', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (105, '2024-08-09', 'Lenguaje inapropiado', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (106, '2024-05-19', 'Uso indebido del celular', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (107, '2024-06-13', 'Indisciplina', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (108, '2024-10-08', 'Indisciplina', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (109, '2024-06-23', 'Falta de tarea', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (110, '2024-04-03', 'Llegada tarde', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (111, '2024-12-02', 'Pelea', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (112, '2024-08-28', 'Lenguaje inapropiado', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (113, '2024-03-22', 'Llegada tarde', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (114, '2024-08-16', 'Pelea', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (115, '2024-12-08', 'Pelea', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (116, '2024-07-12', 'Uso indebido del celular', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (117, '2024-11-24', 'Llegada tarde', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (118, '2024-09-22', 'Llegada tarde', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (119, '2024-11-22', 'Falta de tarea', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (120, '2024-11-18', 'Falta de tarea', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (121, '2024-01-16', 'Uso indebido del celular', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (122, '2024-01-17', 'Indisciplina', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (123, '2024-05-24', 'Llegada tarde', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (124, '2024-06-13', 'Uso indebido del celular', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (125, '2024-05-09', 'Lenguaje inapropiado', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (126, '2024-02-11', 'Indisciplina', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (127, '2024-11-22', 'Pelea', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (128, '2024-10-01', 'Pelea', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (129, '2024-10-06', 'Indisciplina', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (130, '2024-03-26', 'Llegada tarde', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (131, '2024-01-12', 'Falta de tarea', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (132, '2024-04-23', 'Lenguaje inapropiado', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (133, '2024-11-15', 'Falta de tarea', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (134, '2024-06-09', 'Pelea', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (135, '2024-05-23', 'Falta de tarea', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (136, '2024-09-21', 'Falta de tarea', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (137, '2024-07-23', 'Lenguaje inapropiado', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (138, '2024-11-17', 'Llegada tarde', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (139, '2024-03-25', 'Pelea', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (140, '2024-01-09', 'Uso indebido del celular', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (141, '2024-02-03', 'Falta de tarea', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (142, '2024-09-05', 'Indisciplina', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (143, '2024-08-26', 'Uso indebido del celular', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (144, '2024-08-03', 'Pelea', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (145, '2024-12-06', 'Uso indebido del celular', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (146, '2024-09-22', 'Pelea', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (147, '2024-12-19', 'Pelea', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (148, '2024-06-19', 'Falta de tarea', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (149, '2024-02-24', 'Falta de tarea', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (150, '2024-08-05', 'Llegada tarde', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (151, '2024-06-28', 'Pelea', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (152, '2024-08-21', 'Llegada tarde', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (153, '2024-01-27', 'Lenguaje inapropiado', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (154, '2024-10-22', 'Falta de tarea', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (155, '2024-05-21', 'Lenguaje inapropiado', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (156, '2024-09-16', 'Indisciplina', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (157, '2024-05-07', 'Lenguaje inapropiado', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (158, '2024-01-12', 'Indisciplina', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (159, '2024-06-20', 'Indisciplina', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (160, '2024-02-03', 'Uso indebido del celular', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (161, '2024-01-11', 'Uso indebido del celular', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (162, '2024-11-16', 'Indisciplina', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (163, '2024-02-13', 'Falta de tarea', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (164, '2024-05-05', 'Pelea', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (165, '2024-01-03', 'Lenguaje inapropiado', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (166, '2024-06-04', 'Pelea', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (167, '2024-10-11', 'Indisciplina', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (168, '2024-09-19', 'Uso indebido del celular', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (169, '2024-12-13', 'Llegada tarde', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (170, '2024-11-21', 'Falta de tarea', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (171, '2024-04-21', 'Indisciplina', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (172, '2024-04-03', 'Llegada tarde', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (173, '2024-02-09', 'Uso indebido del celular', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (174, '2024-04-02', 'Pelea', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (175, '2024-06-21', 'Lenguaje inapropiado', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (176, '2024-01-08', 'Falta de tarea', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (177, '2024-02-23', 'Falta de tarea', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (178, '2024-05-15', 'Falta de tarea', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (179, '2024-08-07', 'Indisciplina', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (180, '2024-03-14', 'Lenguaje inapropiado', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (181, '2024-03-11', 'Uso indebido del celular', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (182, '2024-02-17', 'Llegada tarde', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (183, '2024-07-20', 'Pelea', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (184, '2024-07-16', 'Uso indebido del celular', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (185, '2024-08-04', 'Lenguaje inapropiado', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (186, '2024-11-23', 'Llegada tarde', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (187, '2024-11-26', 'Uso indebido del celular', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (188, '2024-01-16', 'Lenguaje inapropiado', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (189, '2024-09-13', 'Llegada tarde', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (190, '2024-10-03', 'Pelea', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (191, '2024-06-28', 'Indisciplina', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (192, '2024-02-14', 'Pelea', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (193, '2024-08-04', 'Pelea', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (194, '2024-01-25', 'Uso indebido del celular', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (195, '2024-05-16', 'Uso indebido del celular', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (196, '2024-05-02', 'Uso indebido del celular', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (197, '2024-04-26', 'Falta de tarea', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (198, '2024-10-17', 'Uso indebido del celular', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (199, '2024-08-17', 'Llegada tarde', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (200, '2024-04-21', 'Lenguaje inapropiado', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (201, '2024-06-19', 'Llegada tarde', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (202, '2024-03-06', 'Lenguaje inapropiado', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (203, '2024-09-03', 'Falta de tarea', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (204, '2024-07-04', 'Uso indebido del celular', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (205, '2024-09-17', 'Pelea', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (206, '2024-01-22', 'Pelea', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (207, '2024-07-18', 'Pelea', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (208, '2024-04-27', 'Uso indebido del celular', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (209, '2024-01-13', 'Falta de tarea', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (210, '2024-03-07', 'Llegada tarde', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (211, '2024-12-04', 'Lenguaje inapropiado', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (212, '2024-01-18', 'Falta de tarea', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (213, '2024-12-12', 'Pelea', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (214, '2024-11-08', 'Llegada tarde', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (215, '2024-10-02', 'Pelea', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (216, '2024-10-19', 'Falta de tarea', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (217, '2024-04-17', 'Indisciplina', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (218, '2024-06-10', 'Falta de tarea', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (219, '2024-04-04', 'Pelea', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (220, '2024-02-26', 'Pelea', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (221, '2024-04-21', 'Llegada tarde', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (222, '2024-09-04', 'Falta de tarea', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (223, '2024-12-26', 'Indisciplina', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (224, '2024-05-13', 'Falta de tarea', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (225, '2024-06-06', 'Indisciplina', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (226, '2024-01-16', 'Falta de tarea', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (227, '2024-05-26', 'Llegada tarde', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (228, '2024-06-19', 'Lenguaje inapropiado', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (229, '2024-03-25', 'Llegada tarde', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (230, '2024-09-17', 'Uso indebido del celular', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (231, '2024-02-15', 'Indisciplina', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (232, '2024-09-21', 'Lenguaje inapropiado', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (233, '2024-12-15', 'Pelea', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (234, '2024-07-21', 'Falta de tarea', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (235, '2024-11-22', 'Llegada tarde', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (236, '2024-08-02', 'Uso indebido del celular', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (237, '2024-06-23', 'Indisciplina', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (238, '2024-06-20', 'Indisciplina', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (239, '2024-09-22', 'Uso indebido del celular', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (240, '2024-05-10', 'Pelea', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (241, '2024-03-27', 'Lenguaje inapropiado', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (242, '2024-06-20', 'Llegada tarde', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (243, '2024-09-22', 'Llegada tarde', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (244, '2024-08-24', 'Uso indebido del celular', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (245, '2024-03-25', 'Indisciplina', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (246, '2024-02-04', 'Indisciplina', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (247, '2024-10-05', 'Pelea', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (248, '2024-10-12', 'Lenguaje inapropiado', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (249, '2024-10-05', 'Indisciplina', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (250, '2024-05-13', 'Falta de tarea', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (251, '2024-08-11', 'Falta de tarea', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (252, '2024-06-05', 'Pelea', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (253, '2024-01-07', 'Indisciplina', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (254, '2024-11-14', 'Lenguaje inapropiado', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (255, '2024-03-03', 'Pelea', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (256, '2024-12-05', 'Uso indebido del celular', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (257, '2024-11-08', 'Lenguaje inapropiado', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (258, '2024-06-16', 'Llegada tarde', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (259, '2024-04-13', 'Pelea', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (260, '2024-06-17', 'Pelea', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (261, '2024-09-28', 'Llegada tarde', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (262, '2024-12-21', 'Llegada tarde', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (263, '2024-08-22', 'Uso indebido del celular', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (264, '2024-05-04', 'Pelea', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (265, '2024-05-06', 'Lenguaje inapropiado', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (266, '2024-05-07', 'Lenguaje inapropiado', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (267, '2024-07-01', 'Uso indebido del celular', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (268, '2024-02-28', 'Indisciplina', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (269, '2024-04-22', 'Falta de tarea', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (270, '2024-10-27', 'Falta de tarea', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (271, '2024-11-20', 'Indisciplina', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (272, '2024-03-24', 'Pelea', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (273, '2024-10-11', 'Uso indebido del celular', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (274, '2024-03-01', 'Lenguaje inapropiado', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (275, '2024-10-24', 'Pelea', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (276, '2024-01-07', 'Uso indebido del celular', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (277, '2024-04-12', 'Uso indebido del celular', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (278, '2024-12-22', 'Lenguaje inapropiado', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (279, '2024-05-16', 'Indisciplina', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (280, '2024-07-03', 'Falta de tarea', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (281, '2024-03-23', 'Pelea', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (282, '2024-04-02', 'Falta de tarea', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (283, '2024-09-28', 'Falta de tarea', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (284, '2024-10-26', 'Uso indebido del celular', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (285, '2024-12-25', 'Llegada tarde', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (286, '2024-03-12', 'Indisciplina', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (287, '2024-03-06', 'Falta de tarea', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (288, '2024-02-25', 'Falta de tarea', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (289, '2024-05-17', 'Uso indebido del celular', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (290, '2024-08-26', 'Falta de tarea', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (291, '2024-05-06', 'Uso indebido del celular', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (292, '2024-01-22', 'Llegada tarde', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (293, '2024-02-26', 'Pelea', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (294, '2024-02-14', 'Lenguaje inapropiado', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (295, '2024-09-02', 'Pelea', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (296, '2024-06-03', 'Lenguaje inapropiado', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (297, '2024-05-27', 'Uso indebido del celular', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (298, '2024-04-21', 'Lenguaje inapropiado', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (299, '2024-03-11', 'Uso indebido del celular', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (300, '2024-05-02', 'Lenguaje inapropiado', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (301, '2024-05-06', 'Lenguaje inapropiado', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (302, '2024-07-27', 'Llegada tarde', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (303, '2024-09-19', 'Indisciplina', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (304, '2024-01-07', 'Llegada tarde', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (305, '2024-12-07', 'Falta de tarea', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (306, '2024-09-11', 'Llegada tarde', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (307, '2024-10-01', 'Indisciplina', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (308, '2024-06-06', 'Falta de tarea', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (309, '2024-02-24', 'Falta de tarea', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (310, '2024-01-12', 'Lenguaje inapropiado', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (311, '2024-04-16', 'Lenguaje inapropiado', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (312, '2024-11-02', 'Falta de tarea', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (313, '2024-03-26', 'Uso indebido del celular', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (314, '2024-04-11', 'Lenguaje inapropiado', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (315, '2024-08-17', 'Indisciplina', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (316, '2024-11-10', 'Pelea', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (317, '2024-10-03', 'Pelea', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (318, '2024-03-27', 'Uso indebido del celular', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (319, '2024-04-01', 'Falta de tarea', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (320, '2024-04-06', 'Lenguaje inapropiado', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (321, '2024-02-25', 'Llegada tarde', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (322, '2024-03-26', 'Lenguaje inapropiado', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (323, '2024-12-23', 'Lenguaje inapropiado', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (324, '2024-08-05', 'Pelea', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (325, '2024-07-05', 'Falta de tarea', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (326, '2024-07-02', 'Indisciplina', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (327, '2024-10-18', 'Lenguaje inapropiado', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (328, '2024-12-24', 'Lenguaje inapropiado', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (329, '2024-08-26', 'Falta de tarea', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (330, '2024-02-04', 'Llegada tarde', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (331, '2024-08-05', 'Lenguaje inapropiado', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (332, '2024-09-02', 'Indisciplina', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (333, '2024-06-15', 'Llegada tarde', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (334, '2024-01-23', 'Indisciplina', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (335, '2024-02-12', 'Lenguaje inapropiado', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (336, '2024-01-04', 'Uso indebido del celular', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (337, '2024-02-15', 'Lenguaje inapropiado', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (338, '2024-12-20', 'Pelea', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (339, '2024-10-27', 'Llegada tarde', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (340, '2024-07-21', 'Llegada tarde', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (341, '2024-03-04', 'Indisciplina', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (342, '2024-08-16', 'Uso indebido del celular', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (343, '2024-02-01', 'Lenguaje inapropiado', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (344, '2024-07-11', 'Pelea', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (345, '2024-02-16', 'Falta de tarea', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (346, '2024-01-15', 'Falta de tarea', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (347, '2024-11-27', 'Lenguaje inapropiado', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (348, '2024-04-08', 'Uso indebido del celular', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (349, '2024-03-08', 'Falta de tarea', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (350, '2024-10-09', 'Llegada tarde', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (351, '2024-10-02', 'Pelea', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (352, '2024-08-15', 'Uso indebido del celular', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (353, '2024-12-04', 'Llegada tarde', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (354, '2024-01-13', 'Uso indebido del celular', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (355, '2024-10-17', 'Indisciplina', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (356, '2024-03-20', 'Llegada tarde', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (357, '2024-08-02', 'Pelea', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (358, '2024-06-21', 'Pelea', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (359, '2024-10-19', 'Lenguaje inapropiado', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (360, '2024-02-12', 'Uso indebido del celular', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (361, '2024-02-27', 'Falta de tarea', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (362, '2024-11-24', 'Uso indebido del celular', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (363, '2024-09-23', 'Llegada tarde', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (364, '2024-06-05', 'Uso indebido del celular', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (365, '2024-05-02', 'Llegada tarde', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (366, '2024-08-08', 'Falta de tarea', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (367, '2024-07-12', 'Indisciplina', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (368, '2024-08-06', 'Falta de tarea', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (369, '2024-02-27', 'Pelea', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (370, '2024-07-13', 'Falta de tarea', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (371, '2024-06-13', 'Llegada tarde', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (372, '2024-12-02', 'Pelea', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (373, '2024-02-26', 'Indisciplina', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (374, '2024-05-27', 'Llegada tarde', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (375, '2024-10-15', 'Lenguaje inapropiado', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (376, '2024-07-12', 'Llegada tarde', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (377, '2024-12-24', 'Llegada tarde', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (378, '2024-03-27', 'Lenguaje inapropiado', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (379, '2024-03-21', 'Uso indebido del celular', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (380, '2024-03-09', 'Lenguaje inapropiado', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (381, '2024-06-13', 'Pelea', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (382, '2024-12-23', 'Pelea', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (383, '2024-11-06', 'Lenguaje inapropiado', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (384, '2024-09-24', 'Lenguaje inapropiado', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (385, '2024-04-28', 'Uso indebido del celular', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (386, '2024-02-26', 'Llegada tarde', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (387, '2024-05-02', 'Indisciplina', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (388, '2024-04-23', 'Llegada tarde', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (389, '2024-03-05', 'Pelea', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (390, '2024-10-16', 'Indisciplina', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (391, '2024-04-19', 'Lenguaje inapropiado', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (392, '2024-09-06', 'Pelea', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (393, '2024-12-15', 'Uso indebido del celular', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (394, '2024-11-24', 'Uso indebido del celular', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (395, '2024-02-05', 'Uso indebido del celular', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (396, '2024-01-27', 'Falta de tarea', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (397, '2024-01-03', 'Indisciplina', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (398, '2024-10-04', 'Lenguaje inapropiado', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (399, '2024-11-17', 'Uso indebido del celular', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (400, '2024-03-22', 'Indisciplina', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (401, '2024-02-04', 'Llegada tarde', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (402, '2024-05-28', 'Llegada tarde', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (403, '2024-05-16', 'Lenguaje inapropiado', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (404, '2024-07-14', 'Uso indebido del celular', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (405, '2024-01-19', 'Falta de tarea', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (406, '2024-11-20', 'Pelea', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (407, '2024-10-15', 'Pelea', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (408, '2024-10-10', 'Lenguaje inapropiado', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (409, '2024-11-08', 'Falta de tarea', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (410, '2024-03-01', 'Uso indebido del celular', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (411, '2024-04-08', 'Uso indebido del celular', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (412, '2024-01-09', 'Indisciplina', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (413, '2024-07-10', 'Lenguaje inapropiado', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (414, '2024-10-10', 'Lenguaje inapropiado', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (415, '2024-03-19', 'Lenguaje inapropiado', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (416, '2024-12-13', 'Uso indebido del celular', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (417, '2024-06-26', 'Llegada tarde', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (418, '2024-09-21', 'Llegada tarde', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (419, '2024-06-03', 'Pelea', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (420, '2024-07-16', 'Indisciplina', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (421, '2024-01-11', 'Pelea', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (422, '2024-06-23', 'Pelea', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (423, '2024-06-14', 'Falta de tarea', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (424, '2024-02-16', 'Lenguaje inapropiado', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (425, '2024-01-26', 'Lenguaje inapropiado', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (426, '2024-11-07', 'Falta de tarea', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (427, '2024-10-27', 'Lenguaje inapropiado', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (428, '2024-01-08', 'Llegada tarde', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (429, '2024-10-11', 'Pelea', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (430, '2024-12-21', 'Llegada tarde', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (431, '2024-12-04', 'Lenguaje inapropiado', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (432, '2024-01-10', 'Llegada tarde', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (433, '2024-04-04', 'Uso indebido del celular', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (434, '2024-07-27', 'Llegada tarde', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (435, '2024-02-22', 'Falta de tarea', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (436, '2024-12-22', 'Indisciplina', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (437, '2024-02-01', 'Indisciplina', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (438, '2024-02-20', 'Indisciplina', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (439, '2024-03-16', 'Indisciplina', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (440, '2024-10-13', 'Indisciplina', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (441, '2024-11-10', 'Lenguaje inapropiado', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (442, '2024-12-17', 'Uso indebido del celular', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (443, '2024-03-09', 'Uso indebido del celular', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (444, '2024-10-12', 'Lenguaje inapropiado', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (445, '2024-11-18', 'Uso indebido del celular', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (446, '2024-08-17', 'Indisciplina', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (447, '2024-03-13', 'Llegada tarde', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (448, '2024-05-26', 'Falta de tarea', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (449, '2024-05-07', 'Uso indebido del celular', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (450, '2024-01-17', 'Lenguaje inapropiado', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (451, '2024-04-18', 'Llegada tarde', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (452, '2024-05-02', 'Uso indebido del celular', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (453, '2024-04-23', 'Indisciplina', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (454, '2024-10-12', 'Falta de tarea', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (455, '2024-05-06', 'Pelea', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (456, '2024-04-10', 'Lenguaje inapropiado', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (457, '2024-08-02', 'Indisciplina', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (458, '2024-02-18', 'Lenguaje inapropiado', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (459, '2024-12-08', 'Pelea', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (460, '2024-12-16', 'Uso indebido del celular', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (461, '2024-10-10', 'Lenguaje inapropiado', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (462, '2024-12-11', 'Pelea', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (463, '2024-08-22', 'Indisciplina', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (464, '2024-02-13', 'Pelea', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (465, '2024-03-24', 'Falta de tarea', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (466, '2024-09-20', 'Lenguaje inapropiado', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (467, '2024-07-22', 'Llegada tarde', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (468, '2024-03-19', 'Uso indebido del celular', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (469, '2024-01-07', 'Pelea', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (470, '2024-01-02', 'Pelea', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (471, '2024-06-26', 'Falta de tarea', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (472, '2024-11-19', 'Pelea', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (473, '2024-08-28', 'Lenguaje inapropiado', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (474, '2024-02-03', 'Indisciplina', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (475, '2024-02-19', 'Indisciplina', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (476, '2024-07-18', 'Indisciplina', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (477, '2024-05-13', 'Pelea', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (478, '2024-06-11', 'Pelea', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (479, '2024-04-18', 'Lenguaje inapropiado', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (480, '2024-11-12', 'Indisciplina', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (481, '2024-10-28', 'Uso indebido del celular', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (482, '2024-12-07', 'Uso indebido del celular', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (483, '2024-05-14', 'Pelea', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (484, '2024-02-20', 'Uso indebido del celular', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (485, '2024-02-17', 'Indisciplina', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (486, '2024-05-22', 'Pelea', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (487, '2024-09-08', 'Lenguaje inapropiado', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (488, '2024-06-15', 'Llegada tarde', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (489, '2024-12-27', 'Lenguaje inapropiado', 3, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (490, '2024-12-02', 'Pelea', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (491, '2024-06-18', 'Llegada tarde', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (492, '2024-01-10', 'Falta de tarea', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (493, '2024-10-06', 'Falta de tarea', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (494, '2024-04-03', 'Llegada tarde', 1, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (495, '2024-11-07', 'Pelea', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (496, '2024-01-02', 'Llegada tarde', 3, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (497, '2024-05-12', 'Uso indebido del celular', 2, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (498, '2024-07-10', 'Uso indebido del celular', 1, 'cerrado');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (499, '2024-09-16', 'Uso indebido del celular', 2, 'abierto');
INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado) VALUES (500, '2024-08-26', 'Lenguaje inapropiado', 2, 'abierto');

--


CREATE PROCEDURE InsertCurso
    @nombre_curso VARCHAR(100)
AS
BEGIN
    BEGIN TRY
        INSERT INTO Cursos (nombre_curso)
        VALUES (@nombre_curso);
    END TRY
    BEGIN CATCH
        PRINT 'Error al insertar curso: ' + ERROR_MESSAGE();
    END CATCH
END

CREATE PROCEDURE UpdateCurso
    @id_curso INT,
    @nombre_curso VARCHAR(100)
AS
BEGIN
    BEGIN TRY
        UPDATE Cursos
        SET nombre_curso = @nombre_curso
        WHERE id_curso = @id_curso;
    END TRY
    BEGIN CATCH
        PRINT 'Error al actualizar curso: ' + ERROR_MESSAGE();
    END CATCH
END


CREATE PROCEDURE GetCursos
    @id_curso INT
AS
BEGIN
    BEGIN TRY
        IF EXISTS (SELECT 1 FROM Cursos)
            SELECT * FROM Cursos
			WHERE id_curso = @id_curso;
        ELSE
            PRINT 'No hay cursos registrados.';
    END TRY
    BEGIN CATCH
        PRINT 'Error al consultar cursos: ' + ERROR_MESSAGE();
    END CATCH
END

--

CREATE PROCEDURE InsertEstudiante
    @id_estudiante VARCHAR(50),
    @nombre VARCHAR(100),
    @matricula VARCHAR(20),
    @edad INT,
    @telefono VARCHAR(15),
    @id_curso INT
AS
BEGIN
    BEGIN TRY
        INSERT INTO Estudiantes (id_estudiante, nombre, matricula, edad, telefono, id_curso)
        VALUES (@id_estudiante, @nombre, @matricula, @edad, @telefono, @id_curso);
    END TRY
    BEGIN CATCH
        PRINT 'Error al insertar estudiante: ' + ERROR_MESSAGE();
    END CATCH
END

CREATE PROCEDURE UpdateEstudiante
    @id_estudiante VARCHAR(50),
    @nombre VARCHAR(100),
    @matricula VARCHAR(20),
    @edad INT,
    @telefono VARCHAR(15),
    @id_curso INT
AS
BEGIN
    BEGIN TRY
        UPDATE Estudiantes
        SET nombre = @nombre,
            matricula = @matricula,
            edad = @edad,
            telefono = @telefono,
            id_curso = @id_curso
        WHERE id_estudiante = @id_estudiante;
    END TRY
    BEGIN CATCH
        PRINT 'Error al actualizar estudiante: ' + ERROR_MESSAGE();
    END CATCH
END

CREATE PROCEDURE GetEstudiantes
    @id_estudiante VARCHAR(50)
AS
BEGIN
    BEGIN TRY
        IF EXISTS (SELECT 1 FROM Estudiantes)
            SELECT * FROM Estudiantes
			WHERE id_estudiante = @id_estudiante;
        ELSE
            PRINT 'No hay estudiantes registrados.';
    END TRY
    BEGIN CATCH
        PRINT 'Error al consultar estudiantes: ' + ERROR_MESSAGE();
    END CATCH
END


--


CREATE PROCEDURE InsertTipoDetencion
    @nombre_tipo VARCHAR(50)
AS
BEGIN
    BEGIN TRY
        INSERT INTO TiposDetencion (nombre_tipo)
        VALUES (@nombre_tipo);
    END TRY
    BEGIN CATCH
        PRINT 'Error al insertar tipo de detención: ' + ERROR_MESSAGE();
    END CATCH
END


CREATE PROCEDURE UpdateTipoDetencion
    @id_tipo INT,
    @nombre_tipo VARCHAR(50)
AS
BEGIN
    BEGIN TRY
        UPDATE TiposDetencion
        SET nombre_tipo = @nombre_tipo
        WHERE id_tipo = @id_tipo;
    END TRY
    BEGIN CATCH
        PRINT 'Error al actualizar tipo de detención: ' + ERROR_MESSAGE();
    END CATCH
END


CREATE PROCEDURE GetTiposDetencion
    @id_tipo INT
AS
BEGIN
    BEGIN TRY
        IF EXISTS (SELECT 1 FROM TiposDetencion)
            SELECT * FROM TiposDetencion
			WHERE id_tipo = @id_tipo;
        ELSE
            PRINT 'No hay tipos de detención registrados.';
    END TRY
    BEGIN CATCH
        PRINT 'Error al consultar tipos de detención: ' + ERROR_MESSAGE();
    END CATCH
END


-- 


CREATE PROCEDURE InsertDetencion
    @id_estudiante VARCHAR(50),
    @fecha_detencion DATE,
    @motivo TEXT,
    @id_tipo INT,
    @estado VARCHAR(10)
AS
BEGIN
    BEGIN TRY
        INSERT INTO Detenciones (id_estudiante, fecha_detencion, motivo, id_tipo, estado)
        VALUES (@id_estudiante, @fecha_detencion, @motivo, @id_tipo, @estado);
    END TRY
    BEGIN CATCH
        PRINT 'Error al insertar detención: ' + ERROR_MESSAGE();
    END CATCH
END

CREATE PROCEDURE UpdateDetencion
    @id_detencion INT,
    @id_estudiante VARCHAR(50),
    @fecha_detencion DATE,
    @motivo TEXT,
    @id_tipo INT,
    @estado VARCHAR(10)
AS
BEGIN
    BEGIN TRY
        UPDATE Detenciones
        SET id_estudiante = @id_estudiante,
            fecha_detencion = @fecha_detencion,
            motivo = @motivo,
            id_tipo = @id_tipo,
            estado = @estado
        WHERE id_detencion = @id_detencion;
    END TRY
    BEGIN CATCH
        PRINT 'Error al actualizar detención: ' + ERROR_MESSAGE();
    END CATCH
END

CREATE PROCEDURE GetDetenciones
    @id_detencion INT
AS
BEGIN
    BEGIN TRY
        IF EXISTS (SELECT 1 FROM Detenciones)
            SELECT * FROM Detenciones
			WHERE id_detencion = @id_detencion;
        ELSE
            PRINT 'No hay detenciones registradas.';
    END TRY
    BEGIN CATCH
        PRINT 'Error al consultar detenciones: ' + ERROR_MESSAGE();
    END CATCH
END


--
select * from Cursos

EXEC InsertCurso @nombre_curso = '5to Informática';

EXEC GetCursos @id_curso = 1002;

EXEC UpdateCurso @id_curso = 1002, @nombre_curso = '6to Gastronomia';


--


EXEC InsertEstudiante 
    @nombre = 'Carlos Gómez',
    @matricula = '',
    @edad = 16,
    @telefono = '809-555-1234',
    @id_curso = 13;

EXEC GetEstudiantes @id_estudiante = '';

EXEC UpdateEstudiante 
    @id_estudiante = ,
    @nombre = 'Carlos Gómez Peña',
    @matricula = '',
    @edad = 17,
    @telefono = '809-555-6789',
    @id_curso = 13;


--


EXEC InsertTipoDetencion @nombre_tipo = 'Grave';

EXEC GetTiposDetencion @id_tipo = 4;

EXEC UpdateTipoDetencion @id_tipo = 4, @nombre_tipo = 'Moderada';


--


EXEC InsertDetencion 
    @id_estudiante = ,
    @fecha_detencion = '2025-04-23',
    @motivo = 'Falta de disciplina en clase',
    @id_tipo = 4,
    @estado = 'abierto';

EXEC GetDetenciones @id_detencion = 500;

EXEC UpdateDetencion 
    @id_detencion = 1001,
    @id_estudiante = 'UID00501',
    @fecha_detencion = '2025-05-24',
    @motivo = 'Interrupciones constantes durante el examen',
    @id_tipo = 2,
    @estado = 'cerrado';


SELECT TOP 5 
    E.nombre AS NombreEstudiante,
    COUNT(D.id_detencion) AS CantidadReportes,
    MIN(D.fecha_detencion) AS PrimerReporte
FROM 
    Detenciones D
JOIN 
    Estudiantes E ON D.id_estudiante = E.id_estudiante
GROUP BY 
    E.nombre
ORDER BY 
    MAX(D.fecha_detencion) DESC


SELECT 
    E.nombre AS NombreEstudiante,
    COUNT(D.id_detencion) AS CantidadDetenciones,
    C.nombre_curso AS Curso
FROM 
    Estudiantes E
JOIN 
    Detenciones D ON E.id_estudiante = D.id_estudiante
JOIN 
    Cursos C ON E.id_curso = C.id_curso
GROUP BY 
    E.nombre, C.nombre_curso
ORDER BY 
    CantidadDetenciones DESC;


UPDATE Estudiantes
SET nombre = REPLACE(nombre, 'ú', 'u')
WHERE nombre LIKE '%ú%';

UPDATE Cursos
SET nombre_curso = REPLACE(nombre_curso, 'á', 'a')
WHERE nombre_curso LIKE '%a%';

select * from Cursos