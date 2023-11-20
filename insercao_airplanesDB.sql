USE `airplanesDB`;

DELETE FROM avioes;
INSERT INTO `avioes` (`modelo`,`registro`,`ano`,`img`) VALUES ('Airbus A321neo','PR-YJA',2019,'https://drive.google.com/uc?id=1MnahrsloVRMPS_bOY8RPSaBHJ0Hubn-Y'); 
INSERT INTO `avioes` (`modelo`,`registro`,`ano`,`img`) VALUES ('Airbus A321neo','PR-YJC',2020,'https://drive.google.com/uc?id=1to4mUROixDgv79MNKgQCBoLQyad2v8gW');
INSERT INTO `avioes` (`modelo`,`registro`,`ano`,`img`) VALUES ('Airbus A320neo','PR-YSH',2021,'https://drive.google.com/uc?id=18SlJiAp5jyiCGcl2ZvFcgVwv8cJVABSH');
INSERT INTO `avioes` (`modelo`,`registro`,`ano`,`img`) VALUES ('Airbus A320neo','PR-XBC',2019,'https://drive.google.com/uc?id=1UWNkYYuc_HGhjw2cEiLrJfhPl7tfjE_F');
INSERT INTO `avioes` (`modelo`,`registro`,`ano`,`img`) VALUES ('Airbus A320','PR-TQB',2021,'https://drive.google.com/uc?id=1ecsZ4mXFtHU90ZbqgZDB9U7llSlilf_s');
INSERT INTO `avioes` (`modelo`,`registro`,`ano`,`img`) VALUES ('ATR-72-600','PR-AKA',2015,'https://drive.google.com/uc?id=1bupvqUS_lKt6u9njuYDK5X1aDhobkM7r');
INSERT INTO `avioes` (`modelo`,`registro`,`ano`,`img`) VALUES ('ATR-72-600','PR-AKO',2021,'https://drive.google.com/uc?id=18PUy_BgtwelzxsRoEvGYjB0QMJt97MZz');
INSERT INTO `avioes` (`modelo`,`registro`,`ano`,`img`) VALUES ('Airbus A330','PR-AIS',2019,'https://drive.google.com/uc?id=1_B_RwZDYcuMJgUVeNnDysnuTHXf-2d7m');
INSERT INTO `avioes` (`modelo`,`registro`,`ano`,`img`) VALUES ('Embraer E-195 E2','PR-YSG', 2020,'https://drive.google.com/uc?id=1698O5sBPKvClME2RWdM5xK4hSBctq69P');
INSERT INTO `avioes` (`modelo`,`registro`,`ano`,`img`) VALUES ('Embraer E-195 E2','PR-AXW', 2021,'https://drive.google.com/uc?id=1bgOmmfoekWJqCFrLrYlWGCzSDV_imNSk');

DELETE FROM pecas;
INSERT INTO `pecas` (`nome`,`duracao`) VALUES ('Asas',80000);
INSERT INTO `pecas` (`nome`,`duracao`) VALUES ('Motor',42000);
INSERT INTO `pecas` (`nome`,`duracao`) VALUES ('Estabilizadores horizontais',17000);
INSERT INTO `pecas` (`nome`,`duracao`) VALUES ('Estabilizadores verticais',17000);
INSERT INTO `pecas` (`nome`,`duracao`) VALUES ('Flaps',16000);
INSERT INTO `pecas` (`nome`,`duracao`) VALUES ('Spoilers',14000);
INSERT INTO `pecas` (`nome`,`duracao`) VALUES ('Winglet',9000);
INSERT INTO `pecas` (`nome`,`duracao`) VALUES ('Profundores',8000);
INSERT INTO `pecas` (`nome`,`duracao`) VALUES ('Leme',8000);
INSERT INTO `pecas` (`nome`,`duracao`) VALUES ('Rodas',210);



DELETE FROM pecas_avioes;
						/*Avião 1*/
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (1,1,63274);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (1,2,34000);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (1,3,12456);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (1,4,12456);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (1,5,11989);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (1,6,12453);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (1,7,7632);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (1,8,6987);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (1,9,5467);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (1,10,135);


						/*Avião 2*/
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (2,1,56716);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (2,2,32981);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (2,3,11209);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (2,4,12376);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (2,5,10293);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (2,6,7261);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (2,7,2716);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (2,8,5463);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (2,9,4675);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (2,10,167);



						/*Avião 3*/
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (3,1,74000);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (3,2,41000);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (3,3,14000);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (3,4,13425);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (3,5,12398);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (3,6,12983);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (3,7,7987);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (3,8,6735);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (3,9,5678);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (3,10,178);

						/*Avião 4*/
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (4,1,54389);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (4,2,28983);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (4,3,13987);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (4,4,12564);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (4,5,14356);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (4,6,6432);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (4,7,5698);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (4,8,4678);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (4,9,6734);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (4,10,171);

						/*Avião 5*/
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (5,1,71465);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (5,2,29876);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (5,3,16279);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (5,4,14322);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (5,5,11647);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (5,6,9765);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (5,7,4675);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (5,8,6754);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (5,9,7843);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (5,10,108);

						/*Avião 6*/
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (6,1,29742);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (6,2,34089);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (6,3,14665);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (6,4,12356);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (6,5,12890);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (6,6,11204);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (6,7,8601);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (6,8,2117);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (6,9,3522);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (6,10,203);

						/*Avião 7*/
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (7,1,49814);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (7,2,26779);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (7,3,14572);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (7,4,16019);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (7,5,13785);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (7,6,9423);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (7,7,6641);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (7,8,2104);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (7,9,6723);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (7,10,59);

						/*Avião 8*/
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (8,1,76419);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (8,2,36889);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (8,3,14627);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (8,4,15627);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (8,5,14223);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (8,6,11662);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (8,7,5364);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (8,8,5332);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (8,9,5874);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (8,10,119);

						/*Avião 9*/
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (9,1,66453);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (9,2,19876);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (9,3,14526);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (9,4,12501);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (9,5,14254);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (9,6,12761);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (9,7,5786);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (9,8,6223);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (9,9,6087);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (9,10,26);

						/*Avião 10*/
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (10,1,44208);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (10,2,32416);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (10,3,6725);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (10,4,13261);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (10,5,11246);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (10,6,7520);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (10,7,7001);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (10,8,4325);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (10,9,2117);
INSERT INTO `pecas_avioes` (`cod_aviao`,`cod_peca`,`horas_restantes`) VALUES (10,10,184);