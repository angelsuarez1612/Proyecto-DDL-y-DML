INSERT INTO Empleado VALUES ('29530596E','REV-1','Ángel','Suárez Pérez','Fuengirola, 4',TO_DATE('16-12-2003','DD-MM-YYYY'),'688437812','Director editorial','ALEMÁN');
INSERT INTO Empleado VALUES ('31001887A','REV-1','Ramón','Ortega Fernández','Praza Portillo, 62, Bajos',TO_DATE('16-12-2003','DD-MM-YYYY'),'733562134','Editor ejecutivo','ITALIANO');
INSERT INTO Empleado VALUES ('89231059Y','REV-3','Jose','Silva Bendito','Travessera Anna, 176, Bajo 4º',TO_DATE('14-1-2000','DD-MM-YYYY'),'656374524','Corrector','ESPAÑOL');
INSERT INTO Empleado VALUES ('54405050E','REV-5','Andrés','Jiménez Palomar','Passeig Izan, 250, 8º A',TO_DATE('8-8-1997','DD-MM-YYYY'),'689767555','Director creativo','AUSTRALIANO');
INSERT INTO Empleado VALUES ('82456851B','REV-2','Raúl','González García','Rúa Alejandra, 9, 5º',TO_DATE('5-5-1990','DD-MM-YYYY'),'634253422','Corrector','AUSTRALIANO');

INSERT INTO Revista VALUES ('REV-1','Vistac','Semanal','Deportiva','1');
INSERT INTO Revista VALUES ('REV-2','Alumnet','Anual','Online','5');
INSERT INTO Revista VALUES ('REV-3','Bajo La Lupa','Mensual','Científica','4');
INSERT INTO Revista VALUES ('REV-4','Punto De Vista','Mensual','Informativa','2');
INSERT INTO Revista VALUES ('REV-5','Enigmas','Semanal','Desconocido','3');

INSERT INTO Sucursal VALUES ('1','TodDep','Plaza Del Río, 143, 79º A','956735622');
INSERT INTO Sucursal VALUES ('2','InfoMund','Plaça Gastélum, 3, 55º 0º','872634563');
INSERT INTO Sucursal VALUES ('3','SucPar','Avinguda Jurado, 71, 21º A','673253453');
INSERT INTO Sucursal VALUES ('4','TodCien','Plaza Silvia, 896, 6º A','783546352');
INSERT INTO Sucursal VALUES ('5','EstudiosOnline','Plaza César, 23, 0º F','927243563');
INSERT INTO Sucursal VALUES ('6','Capital','Plaza España, 6','935647837');

INSERT INTO NumRevista VALUES ('444-232','REV-1','120',TO_DATE('3-3-2022','DD-MM-YYYY'),'921');
INSERT INTO NumRevista VALUES ('765-234','REV-3','69',TO_DATE('1-2-2021','DD-MM-YYYY'),'253');
INSERT INTO NumRevista VALUES ('222-222','REV-3','73',TO_DATE('12-12-2022','DD-MM-YYYY'),'999');
INSERT INTO NumRevista VALUES ('736-999','REV-2','118',TO_DATE('7-7-2020','DD-MM-YYYY'),'738');
INSERT INTO NumRevista VALUES ('927-837','REV-1','100',TO_DATE('8-2-2022','DD-MM-YYYY'),'1022');
INSERT INTO NumRevista VALUES ('234-222','REV-3','101',TO_DATE('17-9-2020','DD-MM-YYYY'),'2000');
INSERT INTO NumRevista VALUES ('212-121','REV-1','93',TO_DATE('10-10-2021','DD-MM-YYYY'),'1024');
INSERT INTO NumRevista VALUES ('777-928','REV-4','58',TO_DATE('11-12-2022','DD-MM-YYYY'),'923');
INSERT INTO NumRevista VALUES ('711-293','REV-3','90',TO_DATE('15-4-2021','DD-MM-YYYY'),'800');
INSERT INTO NumRevista VALUES ('627-888','REV-5','82',TO_DATE('4-4-2021','DD-MM-YYYY'),'1200');

INSERT INTO Escribe VALUES ('627-888','22299963D','Curiosidades del mundo');
INSERT INTO Escribe VALUES ('927-837','86534253R','Tácticas deportivas');
INSERT INTO Escribe VALUES ('711-293','99972654T','Curioso Mundo');
INSERT INTO Escribe VALUES ('736-999','63646532I','EducArte');
INSERT INTO Escribe VALUES ('777-928','28763572P','El Búho');
INSERT INTO Escribe VALUES ('222-222','99972654T','El Explorador');
INSERT INTO Escribe VALUES ('212-121','86534253R','La Élite del deporte');
INSERT INTO Escribe VALUES ('765-234','99972654T','Oleada Científica');
INSERT INTO Escribe VALUES ('234-222','99972654T','Universo Experto');
INSERT INTO Escribe VALUES ('444-232','86534253R','Enfoques deportivos');


INSERT INTO Periodista VALUES ('86534253R','Teresa','Quesada Padilla','Travesía Narváez, 6, 4º E',TO_DATE('7-7-1991','DD-MM-YYYY'),'609087543','Deportivo');
INSERT INTO Periodista VALUES ('99972654T','Fabiola','Galindo Real','Camino Jesús, 738, 4º C',TO_DATE('10-10-1995','DD-MM-YYYY'),'635728934','Cultural y sociocultural');
INSERT INTO Periodista VALUES ('28763572P','Fidel','Rubio Pereira','Plaza Sandra, 07, 13º F',TO_DATE('13-11-1992','DD-MM-YYYY'),'253456789','Investigación');
INSERT INTO Periodista VALUES ('22299963D','Abel','Vivas Huerta','Calle Madrigal, 67, Bajos',TO_DATE('6-1-1999','DD-MM-YYYY'),'626738546','Cultural y sociocultural');
INSERT INTO Periodista VALUES ('63646532I','Jose Jesus','Lillo Gil','Avinguda Mares, 1, 95º B',TO_DATE('16-2-2002','DD-MM-YYYY'),'672523489','Virtual');