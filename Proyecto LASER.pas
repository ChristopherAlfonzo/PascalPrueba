program untitled;

uses crt;
var
opcion,tipocedula,tipoboleto,opcion2:char;
boletos,respuesta,edad,claseboleto,servicioadicional,costo,n, s, opcion3, edad2,x:integer;
Tempboletos, TempClaseB, ClaseB, TempClaseM, ClaseM, TempClaseA, ClaseA, TempServicios:longint;
servicios, TempN, TipoN, TempI, TipoI, CostN, CostI:longint;
PC, CP, PoC, CPo, MC, CM, VC, CV, BC, CB, FC, CF, BoC, CBo, CuC, CCu, SdC, CSd, RC, CR:longint;
TempPC, TempCP, TempPoC, TempCPo, TempMC, TempCM, TempVC, TempCV, TempBC, TempCB, TempFC, TempCF, TempBoC, TempCBo, TempCuC, TempCCu, TempSdC, TempCSd, TempRC, TempCR:longint;
nombre, ruta:string;
cedula:longint;
CostDescN,DescN,CostDescI,DescI,TempCostN,TempCostI,TempCostT,CostT, vuelto, Deposito:real;

BEGIN
	s:=0;
	TempClaseM:=0;
	TempClaseA:=0;
	TempClaseB:=0;
	Tempservicios:=0;
	Tempboletos:=0;
	TempN:=0;
	TempI:=0;
	TempCostI:=0;
	TempCostN:=0;
	TempCostT:=0;
	TempPC:=0;
	TempCP:=0;
	TempPoC:=0;
	TempCPo:=0;
	TempCM:=0;
	TempMC:=0;
	TempVC:=0;
	TempCV:=0;
	TempBC:=0;
	TempCB:=0;
	TempFC:=0;
	TempCF:=0;
	TempBoC:=0;
	TempCBo:=0;
	TempCuC:=0;
	TempCCu:=0;
	TempSdC:=0;
	TempCSd:=0;
	TempRC:=0;
	TempCR:=0;

	repeat
	//Interfaz inicial
	writeln('Bienvenidos a la aerolinea LASER');
	writeln('Que se le puede ofrecer?');
	writeln('1. Comprar un boleto de avion');
	writeln('2. Verificar el sistema');
	writeln('3. Salir');
	readln(opcion);
	clrscr;
	
	case opcion of
		'1':begin
			ClaseB:=0;
			ClaseM:= 0;			
			ClaseA:=0;			
			TipoN:=0;
			TipoI:=0;
			CostI:=0;
			CostN:=0;
			servicios:=0;
			PC:=0;
			CP:=0;
			PoC:=0;
			CPo:=0;
			CM:=0;
			MC:=0;
			CV:=0;
			VC:=0;
			BC:=0;
			CB:=0;
			FC:=0;
			CF:=0;
			BoC:=0;
			CBo:=0;
			CuC:=0;
			CCu:=0;
			SdC:=0;
			CSd:=0;
			RC:=0;
			CR:=0;
			CostDescN:=0;
			CostDescI:=0;
			DescI:=0;
			DescN:=0;
			CostT:=0;
			repeat
				//Interfaz para la compra de boletos
				writeln('Ingrese la cantidad de boletos que quiere comprar');
				readln(boletos);
				//Limitando el numero de boletos
				if 	boletos>4 then
					begin
					writeln('El numero maximo de boletos es 4');
					writeln('Presione cualquier tecla para continuar');
					end
				else
					//Verificacion de la cantidad de boletos
					begin
					writeln('Esta seguro que quiere comprar ', boletos,' boletos');
					writeln('1. Si');
					writeln('2. No');
					end;
				readln(respuesta);
				clrscr;
			until (respuesta=1) and (boletos<=4);
			Repeat
			begin
			x:=0;
			x:=x+1;
				//El ingreso del nombre
				Writeln('Ingrese nombre de el/la pasajero/a');
				readln(nombre);
				clrscr;
				//El ingreso de la edad
				writeln('Mucho gusto ',nombre,' Ingrese su edad');
				readln(edad2);
				clrscr;
				//Si la edad es menor a 18 no se deja comprar boletos
				if (edad2 < 18) then
					begin
						Writeln('Lo lamentamos ',nombre,' nuestra aerolinea solo permite vender a mayores de 18');
						readkey;
						clrscr;
					End
				else
					begin
						Writeln('Bienvenido ', nombre,' a la Aerolinea LASER');
						//Verificacion sobre si la cedula es V/E
						repeat
							writeln('Tiene cedula venezolana o extranjera');
							writeln('V o E');
							readln(tipocedula);
						until (tipocedula='V') or (tipocedula='E') or (tipocedula='v') or (tipocedula='e');
						clrscr;
						writeln('Ok, Cual es su cedula?');
						write(tipocedula,':');
						readln(cedula);
						clrscr;
						repeat
						Begin
							//Escogiendo la clase del vuelo
							writeln('Escoja en que sitio del avion quiere ir');
							writeln('1. Primera clase');
							writeln('2. Segunda clase');
							writeln('3. Tercera clase');
							write('Escogiste el numero: ');
							readln(claseboleto);
							if claseboleto=1 then
								begin
									writeln('Escogiste el boleto de primera clase');
									readkey;
									clrscr;
									ClaseA:=ClaseA+1;
								end
							else if claseboleto=2 then
								begin
									writeln('Escogiste el boleto de segunda clase');
									readkey;
									clrscr;
									ClaseM:=ClaseM+1;
								end
							else if claseboleto=3 then
								begin
									writeln('Escogiste el boleto de tercera clase');
									readkey;
									clrscr;
									ClaseB:=ClaseB+1;
								end
							//mensaje sobre si el pasajero tiene mas de 60 años no deje comprar 3ra clase	
							else if (edad2>60) and (claseboleto<>3) then
								Begin								
									writeln('Los mayores de 60 años no pueden ir en tercera clase');
									readkey;
									clrscr;
								End
							else
								clrscr;	
						End;
						until (claseboleto>0) and (claseboleto<4) or (edad2>60) and (claseboleto<>3);
						
						repeat
							//Escogiendo el tipo de vuelo, N o I
							Writeln('Escoja su tipo de vuelo, nacional o internacional');
							writeln('"N" para nacional mientras que "I" para internacional');
							readln(tipoboleto);
							clrscr;
						until (tipoboleto='N') or (tipoboleto='I') or (tipoboleto='n') or (tipoboleto='i');
						if (tipoboleto='N') or (tipoboleto='n') Then
							Begin
								//Seleccion de ruta nacional
								writeln('Escoga su ruta de vuelo');
								writeln('1.Porlamar-Caracas');
								writeln('2.Puerto Ordaz-Caracas');
								writeln('3.Maracaibo-Caracas');
								writeln('4.El vigia-Caracas');
								writeln('5.Barcelona-Caracas');
								writeln('6.La fria-Caracas');
								readln(opcion2);
								writeln('Desea comprarar un boleto de ida o de vuelta');
								readln(ruta);
								TipoN:=TipoN+1;
								clrscr;
							case opcion2 of
								'1':begin
										If (ruta='ida') then
											Begin
												//Vuelo ida Porlamar-Caracas
												writeln('Escogiste el vuelo Porlamar-Caracas');
												costo:=50;
												PC:=PC+1;
												if (60<edad2) then
													begin
														CostDescN:=costo*0.1;
														DescN:=costo-CostDescN;
														writeln('Se ha aplicado un descuento por edades');
														writeln('Tiene un costo total de: ',DescN:2:2,'$');
														clrscr;
													end
												else
													begin
														writeln('Tiene un costo total de: ',costo,'$');
														readkey;
														CostN:=CostN+costo;
														clrscr;
													end;
											End
										else
											Begin
												//vuelo venida Caracas-Porlamar
												writeln('Escogiste el vuelo Caracas-porlamar');
												costo:=50;
												CP:=CP+1;
												if(60<edad2) then
													begin
														CostDescN:=costo*0.1;
														DescN:=costo-CostDescN;
														writeln('Se ha aplicado un descuento por edades');
														writeln('Tiene un costo total de: ',DescN:2:2,'$');
														clrscr;
													end
												else
													begin
														writeln('Tiene un costo total de: ',costo,'$');
														readkey;
														CostN:=CostN+costo;
														clrscr;
													end;
											End;
									end;
								'2':begin
										//Vuelo ida Puerto Ordaz-Caracas
										If (ruta='ida') then
											Begin
												writeln('Escogiste el vuelo Puerto Ordaz-Caracas');
												costo:=45;
												PoC:=PoC+1;
												//descuento a mayores de edad
												if (60<edad2) then
													begin
														CostDescN:=costo*0.1;
														DescN:=costo-CostDescN;
														writeln('Se ha aplicado un descuento por edades');
														writeln('Tiene un costo total de: ',DescN:2:2,'$');
														clrscr;
													end
												else
													begin
														writeln('Tiene un costo total de: ',costo,'$');
														readkey;
														CostN:=CostN+costo;
														clrscr;
													end;
											End
										else
											Begin
												//Vuelo venida Caracas-Puerto Ordaz
												writeln('Escogiste el vuelo Caracas-Puerto Ordaz');
												costo:=45;
												CPo:=CPo+1;
												//descuento a mayores de edad
												if (60<edad2) then
													begin
														CostDescN:=costo*0.1;
														DescN:=costo-CostDescN;
														writeln('Se ha aplicado un descuento por edades');
														writeln('Tiene un costo total de: ',DescN:2:2,'$');
													end
												else
													begin
														writeln('Tiene un costo total de: ',costo,'$');
														readkey;
														CostN:=CostN+costo;
														clrscr;
													end;
											End;
									end;
								'3':begin
										If (ruta='ida') then
											Begin
												//Vuelo ida a Maracaibo-Caracas
												writeln('Escogiste el vuelo Maracaibo-Caracas');
												costo:=80;
												MC:=MC+1;
												//Descuento a mayores de edad
												if (60<edad2) then
													begin
														CostDescN:=costo*0.1;
														DescN:=costo-CostDescN;
														writeln('Se ha aplicado un descuento por edades');
														writeln('Tiene un costo total de: ',DescN:2:2,'$');
													end
												else
													begin
														writeln('Tiene un costo total de: ',costo,'$');
														readkey;
														CostN:=CostN+costo;
														clrscr;
													end;
											End
										else
											Begin
												//Vuelo venida Caracas-Maracaibo
												writeln('Escogiste el vuelo Caracas-Maracaibo');
												costo:=80;
												CM:=CM+1;
												//Descuento a mayores de edad
												if (60<edad2) then
													begin
														CostDescN:=costo*0.1;
														DescN:=costo-CostDescN;
														writeln('Se ha aplicado un descuento por edades');
														writeln('Tiene un costo total de: ',DescN:2:2,'$');
													end
												else
													begin
														writeln('Tiene un costo total de: ',costo,'$');
														readkey;
														CostN:=CostN+costo;
														clrscr;
													end;
											End;
									end;
								'4':begin
										If (ruta='ida') then
											Begin
												//Vuelo ida El vigia-Caracas
												writeln('Escogiste el vuelo El Vigia-Caracas');
												costo:=75;
												VC:= VC +1;
												//Descuento mayores de edad
												if (60<edad2) then
													begin
														CostDescN:=costo*0.1;
														DescN:=costo-CostDescN;
														writeln('Se ha aplicado un descuento por edades');
														writeln('Tiene un costo total de: ',DescN:2:2,'$');
													end
												else
													begin
														writeln('Tiene un costo total de: ',costo,'$');
														readkey;
														CostN:=CostN+costo;
														clrscr;
													end;
											end
										else
											Begin
												//Vuelo venida Caracas-El vigia
												writeln('Escogiste el vuelo Caracas-El Vigia');
												costo:=75;
												CV:= CV +1;
												//Descuento mayores de edad
												if (60<edad2) then
													begin
														CostDescN:=costo*0.1;
														DescN:=costo-CostDescN;
														writeln('Se ha aplicado un descuento por edades');
														writeln('Tiene un costo total de: ',DescN:2:2,'$');
													end
												else
													begin
														writeln('Tiene un costo total de: ',costo,'$');
														readkey;
														CostN:=CostN+costo;
														clrscr;
													end;
											end;
									end;
								'5':begin
										If (ruta='ida') then
											Begin
												writeln('Escogiste el vuelo Barcelona-Caracas');
												costo:=30;
												BC:= BC+1;
												if (60<edad2) then
													begin
														CostDescN:=costo*0.1;
														DescN:=costo-CostDescN;
														writeln('Se ha aplicado un descuento por edades');
														writeln('Tiene un costo total de: ',DescN:2:2,'$');
													end
												else
													begin
														writeln('Tiene un costo total de: ',costo,'$');
														readkey;
														CostN:=CostN+costo;
														clrscr;
													end;
											End
										else
											Begin
												writeln('Escogiste el vuelo Caracas-Barcelona');
												costo:=30;
												CB:= CB+1;
												if (60<edad2) then
													begin
														CostDescN:=costo*0.1;
														DescN:=costo-CostDescN;
														writeln('Se ha aplicado un descuento por edades');
														writeln('Tiene un costo total de: ',DescN:2:2,'$');
													end
												else
													begin
														writeln('Tiene un costo total de: ',costo,'$');
														readkey;
														CostN:=CostN+costo;
														clrscr;
													end;
											End;
									end;
								'6':begin
										If (ruta='ida') then
											Begin
												writeln('Escogiste el vuelo La fria-Caracas');
												costo:=60;
												FC:= FC+1;
												if (60<edad2) then
													begin
														CostDescN:=costo*0.1;
														DescN:=costo-CostDescN;
														writeln('Se ha aplicado un descuento por edades');
														writeln('Tiene un costo total de: ',DescN:2:2,'$');
													end
												else
													begin
														writeln('Tiene un costo total de: ',costo,'$');
														readkey;
														CostN:=CostN+costo;
														clrscr;
													end;
											End
										else
											Begin
												writeln('Escogiste el vuelo Caracas-La fria');
												costo:=60;
												CF:= CF+1;
												if (60<edad2) then
													begin
														CostDescN:=costo*0.1;
														DescN:=costo-CostDescN;
														writeln('Se ha aplicado un descuento por edades');
														writeln('Tiene un costo total de: ',DescN:2:2,'$');
													end
												else
													begin
														writeln('Tiene un costo total de: ',costo,'$');
														readkey;
														CostN:=CostN+costo;
														clrscr;
													end;
											End;
									end;
							End;
						End
					else if (tipoboleto='I') or (tipoboleto='i') then
						Begin
							writeln('Escoga su ruta de vuelo');
							writeln('1.Bogota-Caracas');
							writeln('2.Curazao Ordaz-Caracas');
							writeln('3.Santo Domingo-Caracas');
							writeln('4.La Romana-Caracas');
							readln(opcion2);
							writeln('Desea comprar un boleto de ida o de vuelta');
							readln(ruta);
							TipoI:=TipoI+1;
							clrscr;
							case opcion2 of
								'1':begin
										if (ruta='ida') then
											begin
												//vuelo ida bogota-caracas
												writeln('Escogiste el vuelo Bogota-Caracas');
												costo:=499;
												BoC:=BoC+1;
												//descuento mayor de edad
												if (60<edad2) then
													begin
														CostDescI:=costo*0.1;
														DescI:=costo-CostDescI;
														writeln('Se ha aplicado un descuento por edades');
														writeln('Tiene un costo total de: ',DescI:2:2,'$');
													end
												else
													begin
														writeln('Tiene un costo total de: ',costo,'$');
														readkey;
														CostI:=CostI+costo;
														readkey;
														clrscr;
													end;
										end
									else
										begin
											//Vuelo venida caracas-bogota
											writeln('Escogiste el bueno Caracas-Bogota');
											costo:=499;
											CBo:=CBo+1;
											if(60<edad2) then
												begin
													CostDescI:=costo*0.1;
													DescI:=costo-CostDescI;
													writeln('Se ha aplicado un descuento por edades');
													writeln('Tiene un costo todal de: ',DescI:2:2,'$');
													clrscr;
												end
											else
												begin
													writeln('Tiene un costo total de: ',costo,'$');
													readkey;
													CostI:=CostI+costo;
													clrscr;
												end;
										end;
									end;
								'2':begin
										if (ruta='ida') then
											begin
												//vuelo ida curazao-caracas
												writeln('Escogiste el vuelo Curaza-Caracas');
												costo:=400;
												CuC:=CuC+1;
												//descuento mayor de edad
												if (60<edad2) then
													begin
														CostDescI:=costo*0.1;
														DescI:=costo-CostDescI;
														writeln('Se ha aplicado un descuento por edades');
														writeln('Tiene un costo total de: ',DescI:2:2,'$');
													end
												else
													begin
														writeln('Tiene un costo total de: ',costo,'$');
														readkey;
														CostI:=CostI+costo;
														readkey;
														clrscr;
													end;
										end
									else
										begin
											//Vuelo venida caracas-curazao
											writeln('Escogiste el bueno Caracas-Curazao');
											costo:=400;
											CCu:=CCu+1;
											if(60<edad2) then
												begin
													CostDescI:=costo*0.1;
													DescI:=costo-CostDescI;
													writeln('Se ha aplicado un descuento por edades');
													writeln('Tiene un costo todal de: ',DescI:2:2,'$');
													clrscr;
												end
											else
												begin
													writeln('Tiene un costo total de: ',costo,'$');
													readkey;
													CostI:=CostI+costo;
													clrscr;
												end;
										end;
									end;
								'3':begin
										if (ruta='ida') then
											begin
												//vuelo ida Santo domingo-caracas
												writeln('Escogiste el vuelo Santo domingo-Caracas');
												costo:=700;
												SdC:=SdC+1;
												//descuento mayor de edad
												if (60<edad2) then
													begin
														CostDescI:=costo*0.1;
														DescI:=costo-CostDescI;
														writeln('Se ha aplicado un descuento por edades');
														writeln('Tiene un costo total de: ',DescI:2:2,'$');
													end
												else
													begin
														writeln('Tiene un costo total de: ',costo,'$');
														readkey;
														CostI:=CostI+costo;
														readkey;
														clrscr;
													end;
										end
									else
										begin
											//Vuelo venida caracas-bogota
											writeln('Escogiste el bueno Caracas-Bogota');
											costo:=700;
											CSd:=CSd+1;
											if(60<edad2) then
												begin
													CostDescI:=costo*0.1;
													DescI:=costo-CostDescI;
													writeln('Se ha aplicado un descuento por edades');
													writeln('Tiene un costo todal de: ',DescI:2:2,'$');
													clrscr;
												end
											else
												begin
													writeln('Tiene un costo total de: ',costo,'$');
													readkey;
													CostI:=CostI+costo;
													clrscr;
												end;
										end;
									end;
								'4':begin
										if (ruta='ida') then
											begin
												//vuelo ida la romana-caracas
												writeln('Escogiste el vuelo La romana-Caracas');
												costo:=650;
												RC:=RC+1;
												//descuento mayor de edad
												if (60<edad2) then
													begin
														CostDescI:=costo*0.1;
														DescI:=costo-CostDescI;
														writeln('Se ha aplicado un descuento por edades');
														writeln('Tiene un costo total de: ',DescI:2:2,'$');
													end
												else
													begin
														writeln('Tiene un costo total de: ',costo,'$');
														readkey;
														CostI:=CostI+costo;
														readkey;
														clrscr;
													end;
										end
									else
										begin
											//Vuelo venida Caracas-La romana
											writeln('Escogiste el bueno Caracas-La romana');
											costo:=650;
											CR:=CR+1;
											if(60<edad2) then
												begin
													CostDescI:=costo*0.1;
													DescI:=costo-CostDescI;
													writeln('Se ha aplicado un descuento por edades');
													writeln('Tiene un costo todal de: ',DescI:2:2,'$');
													clrscr;
												end
											else
												begin
													writeln('Tiene un costo total de: ',costo,'$');
													readkey;
													CostI:=CostI+costo;
													clrscr;
												end;
										end;
									end;
							End;
						end;
				writeln('Necesita un servicio adicional?');
				writeln('1. Si');
				writeln('2. No');
				readln(servicioadicional);
				clrscr;
					if servicioadicional=1 then
						begin
							repeat
							begin
								writeln('Los servicios disponibles son;');
								writeln('1.Comida especial');
								writeln('2.Asistencia especial');
								writeln('3.Aparatos medicos particular');
								writeln('4.Kit de relajacion, presione');
								writeln('5.Si no quiere mas servicios');
								readln(opcion3);
								if(opcion3 > 0) and (opcion3 < 5) then
									begin
										servicios:=servicios+1;
									End
								else
									Begin
										Servicios:=servicios+0;
									End;
								readkey();
								clrscr;
								s:=s+1;
							End;
							until(s=2) or (opcion3=5);
						end;
					End; 
			End;
			until (edad2>18) or (x=1);
		for n:=2 to boletos do
			Begin				
				writeln('Ingrese nombre de el/la siguiente pasajero/a');
				readln(nombre);
				clrscr;
				writeln('Mucho gusto ',nombre,' Ingrese su edad');
				readln(edad);
				clrscr;
				
					repeat
						writeln('Tiene cedula venezolana o extranjera');
						writeln('V o E');
						readln(tipocedula);
					until (tipocedula='V') or (tipocedula='E') or (tipocedula='v') or (tipocedula='e');
				clrscr;
				writeln('Ok, Cual es su cedula?');
				write(tipocedula,':');
				readln(cedula);
				clrscr;
					repeat
						writeln('Escoja en que sitio del avion quiere ir');
						writeln('1. Primera clase');
						writeln('2. Segunda clase');
						writeln('3. Tercera clase');
						write('Escogiste el numero: ');
						readln(claseboleto);
						if claseboleto=1 then
							begin
								writeln('Escogiste el boleto de primera clase');
								ClaseA:=ClaseA+1;
							end
						else if claseboleto=2 then
							begin
								writeln('Escogiste el boleto de segunda clase');
								ClaseM:=ClaseM+1;
							end
						else if claseboleto=3 then
							begin
								writeln('Escogiste el boleto de tercera clase');
								ClaseB:=ClaseB+1;
							end
						else
							clrscr;
						if (edad>59) and (claseboleto=3) then
							begin
								writeln('Los mayores de 60 años no pueden ir en tercera clase');
								readkey;
								clrscr;
							end;
						until (claseboleto>0) and (claseboleto<4) or (edad<60) and (claseboleto=3);
			
					repeat
						Writeln('Escoja su tipo de vuelo, nacional o internacional');
						writeln('"N" para nacional mientras que "I" para internacional');
						readln(tipoboleto);
						clrscr;
					until (tipoboleto='N') or (tipoboleto='n') or (tipoboleto='I') or (tipoboleto='i');
					if (tipoboleto='N)') or (tipoboleto='n') Then
						Begin
							writeln('Escoga su ruta de vuelo');
							writeln('1.Porlamar-Caracas');
							writeln('2.Puerto Ordaz-Caracas');
							writeln('3.Maracaibo-Caracas');
							writeln('4.El vigia-Caracas');
							writeln('5.Barcelona-Caracas');
							writeln('6.La fria-Caracas');
							readln(opcion2);
							writeln('Desea comprarar un boleto de ida o de vuelta');
							readln(ruta);
							TipoN:=TipoN+1;
							clrscr;
							case opcion2 of
								'1':begin
										If (ruta='ida') then
											Begin
												writeln('Escogiste el vuelo Porlamar-Caracas');
												costo:=50;
												PC:=PC+1;
												if (edad<12) or (60<edad) then
													begin
														CostDescN:=costo*0.1;
														DescN:=costo-CostDescN;
														writeln('Se ha aplicado un descuento por edades');
														writeln('Tiene un costo total de: ',DescN:2:2,'$');
													end
												else
													begin
														writeln('Tiene un costo total de: ',costo,'$');
														readkey;
														CostN:=CostN+costo;
														clrscr;
													end;
											End
										else
											Begin
												writeln('Escogiste el vuelo Caracass-porlamar');
												costo:=50;
												CP:=CP+1;
												if (edad<12) or (60<edad) then
													begin
														CostDescN:=costo*0.1;
														DescN:=costo-CostDescN;
														writeln('Se ha aplicado un descuento por edades');
														writeln('Tiene un costo total de: ',DescN:2:2,'$');
													end
												else
													begin
														writeln('Tiene un costo total de: ',costo,'$');
														readkey;
														CostN:=CostN+costo;
														clrscr;
													end;
											End;
									end;
								'2':begin
										If (ruta='ida') then
											Begin
												writeln('Escogiste el vuelo Puerto Ordaz-Caracas');
												costo:=45;
												PoC:=PoC+1;
												if (edad<12) or (60<edad) then
													begin
														CostDescN:=costo*0.1;
														DescN:=costo-CostDescN;
														writeln('Se ha aplicado un descuento por edades');
														writeln('Tiene un costo total de: ',DescN:2:2,'$');
													end
												else
													begin
														writeln('Tiene un costo total de: ',costo,'$');
														readkey;
														CostN:=CostN+costo;
														clrscr;
													end;
											End
										else
											Begin
												writeln('Escogiste el vuelo Caracas-Puerto Ordaz');
												costo:=45;
												CPo:=CPo+1;
												if (edad<12) or (60<edad) then
													begin
														CostDescN:=costo*0.1;
														DescN:=costo-CostDescN;
														writeln('Se ha aplicado un descuento por edades');
														writeln('Tiene un costo total de: ',DescN:2:2,'$');
													end
												else
													begin
														writeln('Tiene un costo total de: ',costo,'$');
														readkey;
														CostN:=CostN+costo;
														clrscr;
													end;
											End;
									end;
								'3':begin
										If (ruta='ida') then
											Begin
												writeln('Escogiste el vuelo Maracaibo-Caracas');
												costo:=80;
												MC:=MC+1;
												if (edad<12) or (60<edad) then
													begin
														CostDescN:=costo*0.1;
														DescN:=costo-CostDescN;
														writeln('Se ha aplicado un descuento por edades');
														writeln('Tiene un costo total de: ',DescN:2:2,'$');
													end
												else
													begin
														writeln('Tiene un costo total de: ',costo,'$');
														readkey;
														CostN:=CostN+costo;
														clrscr;
													end;
											End
										else
											Begin
												writeln('Escogiste el vuelo Caracas-Maracaibo');
												costo:=80;
												CM:=CM+1;
												if (edad<12) or (60<edad) then
													begin
														CostDescN:=costo*0.1;
														DescN:=costo-CostDescN;
														writeln('Se ha aplicado un descuento por edades');
														writeln('Tiene un costo total de: ',DescN:2:2,'$');
													end
												else
													begin
														writeln('Tiene un costo total de: ',costo,'$');
														readkey;
														CostN:=CostN+costo;
														clrscr;
													end;
											End;
									end;
								'4':begin
										If (ruta='ida') then
											Begin
												writeln('Escogiste el vuelo El Vigia-Caracas');
												costo:=75;
												VC:= VC +1;
												if (edad<12) or (60<edad) then
													begin
														CostDescN:=costo*0.1;
														DescN:=costo-CostDescN;
														writeln('Se ha aplicado un descuento por edades');
														writeln('Tiene un costo total de: ',DescN:2:2,'$');
													end
												else
													begin
														writeln('Tiene un costo total de: ',costo,'$');
														readkey;
														CostN:=CostN+costo;
														clrscr;
													end;
											end
										else
											Begin
												writeln('Escogiste el vuelo Caracas-El Vigia');
												costo:=75;
												CV:= CV +1;
												if (edad<12) or (60<edad) then
													begin
														CostDescN:=costo*0.1;
														DescN:=costo-CostDescN;
														writeln('Se ha aplicado un descuento por edades');
														writeln('Tiene un costo total de: ',DescN:2:2,'$');
													end
												else
													begin
														writeln('Tiene un costo total de: ',costo,'$');
														readkey;
														CostN:=CostN+costo;
														clrscr;
													end;
											end;
									end;
								'5':begin
										If (ruta='ida') then
											Begin
												writeln('Escogiste el vuelo Barcelona-Caracas');
												costo:=30;
												BC:= BC+1;
												if (edad<12) or (60<edad) then
													begin
														CostDescN:=costo*0.1;
														DescN:=costo-CostDescN;
														writeln('Se ha aplicado un descuento por edades');
														writeln('Tiene un costo total de: ',DescN:2:2,'$');
													end
												else
													begin
														writeln('Tiene un costo total de: ',costo,'$');
														readkey;
														CostN:=CostN+costo;
														clrscr;
													end;
											End
										else
											Begin
												writeln('Escogiste el vuelo Caracas-Barcelona');
												costo:=30;
												CB:= CB+1;
												if (edad<12) or (60<edad) then
													begin
														CostDescN:=costo*0.1;
														DescN:=costo-CostDescN;
														writeln('Se ha aplicado un descuento por edades');
														writeln('Tiene un costo total de: ',DescN:2:2,'$');
													end
												else
													begin
														writeln('Tiene un costo total de: ',costo,'$');
														readkey;
														CostN:=CostN+costo;
														clrscr;
													end;
											End;
									end;
								'6':begin
										If (ruta='ida') then
											Begin
												writeln('Escogiste el vuelo La fria-Caracas');
												costo:=60;
												FC:= FC+1;
												if (edad<12) or (60<edad) then
													begin
														CostDescN:=costo*0.1;
														DescN:=costo-CostDescN;
														writeln('Se ha aplicado un descuento por edades');
														writeln('Tiene un costo total de: ',DescN:2:2,'$');
													end
												else
													begin
														writeln('Tiene un costo total de: ',costo,'$');
														readkey;
														CostN:=CostN+costo;
														clrscr;
													end;
											End
										else
											Begin
												writeln('Escogiste el vuelo Caracas-La fria');
												costo:=60;
												CF:= CF+1;
												if (edad<12) or (60<edad) then
													begin
														CostDescN:=costo*0.1;
														DescN:=costo-CostDescN;
														writeln('Se ha aplicado un descuento por edades');
														writeln('Tiene un costo total de: ',DescN:2:2,'$');
													end
												else
													begin
														writeln('Tiene un costo total de: ',costo,'$');
														readkey;
														CostN:=CostN+costo;
														clrscr;
													end;
											End;
									end;
							End;
						End
					else if (tipoboleto='I') or (tipoboleto='i') then
						Begin
							
							writeln('Escoga su ruta de vuelo');
							writeln('1.Bogota-Caracas');
							writeln('2.Curazao Ordaz-Caracas');
							writeln('3.Santo Domingo-Caracas');
							writeln('4.La Romana-Caracas');
							readln(opcion2);
							writeln('Desea comprar un boleto de ida o de vuelta');
							readln(ruta);
							TipoI:=TipoI+1;
							clrscr;
							case opcion2 of
								'1':begin
										if (ruta='ida') then
											begin
												//vuelo ida bogota-caracas
												writeln('Escogiste el vuelo Bogota-Caracas');
												costo:=499;
												BoC:=BoC+1;
												//descuento mayor de edad
												if (12<edad) or (60<edad) then
													begin
														CostDescI:=costo*0.1;
														DescI:=costo-CostDescI;
														writeln('Se ha aplicado un descuento por edades');
														writeln('Tiene un costo total de: ',DescI:2:2,'$');
													end
												else
													begin
														writeln('Tiene un costo total de: ',costo,'$');
														readkey;
														CostI:=CostI+costo;
														readkey;
														clrscr;
													end;
										end
									else
										begin
											//Vuelo venida caracas-bogota
											writeln('Escogiste el bueno Caracas-Bogota');
											costo:=499;
											CBo:=CBo+1;
											if (12<edad) or (60<edad) then
												begin
													CostDescI:=costo*0.1;
													DescI:=costo-CostDescI;
													writeln('Se ha aplicado un descuento por edades');
													writeln('Tiene un costo todal de: ',DescI:2:2,'$');
													clrscr;
												end
											else
												begin
													writeln('Tiene un costo total de: ',costo,'$');
													readkey;
													CostI:=CostI+costo;
													clrscr;
												end;
										end;
									end;
								'2':begin
										if (ruta='ida') then
											begin
												//vuelo ida curazao-caracas
												writeln('Escogiste el vuelo Curaza-Caracas');
												costo:=400;
												CuC:=CuC+1;
												//descuento mayor de edad
												if (12<edad) or (60<edad) then
													begin
														CostDescI:=costo*0.1;
														DescI:=costo-CostDescI;
														writeln('Se ha aplicado un descuento por edades');
														writeln('Tiene un costo total de: ',DescI:2:2,'$');
													end
												else
													begin
														writeln('Tiene un costo total de: ',costo,'$');
														readkey;
														CostI:=CostI+costo;
														readkey;
														clrscr;
													end;
										end
									else
										begin
											//Vuelo venida caracas-curazao
											writeln('Escogiste el bueno Caracas-Curazao');
											costo:=400;
											CCu:=CCu+1;
											if (12<edad) or (60<edad) then
												begin
													CostDescI:=costo*0.1;
													DescI:=costo-CostDescI;
													writeln('Se ha aplicado un descuento por edades');
													writeln('Tiene un costo todal de: ',DescI:2:2,'$');
													clrscr;
												end
											else
												begin
													writeln('Tiene un costo total de: ',costo,'$');
													readkey;
													CostI:=CostI+costo;
													clrscr;
												end;
										end;
									end;
								'3':begin
										if (ruta='ida') then
											begin
												//vuelo ida Santo domingo-caracas
												writeln('Escogiste el vuelo Santo domingo-Caracas');
												costo:=700;
												SdC:=SdC+1;
												//descuento mayor de edad
												if (12<edad) or (60<edad) then
													begin
														CostDescI:=costo*0.1;
														DescI:=costo-CostDescI;
														writeln('Se ha aplicado un descuento por edades');
														writeln('Tiene un costo total de: ',DescI:2:2,'$');
													end
												else
													begin
														writeln('Tiene un costo total de: ',costo,'$');
														readkey;
														CostI:=CostI+costo;
														readkey;
														clrscr;
													end;
										end
									else
										begin
											//Vuelo venida caracas-bogota
											writeln('Escogiste el bueno Caracas-Bogota');
											costo:=700;
											CSd:=CSd+1;
											if (12<edad) or (60<edad) then
												begin
													CostDescI:=costo*0.1;
													DescI:=costo-CostDescI;
													writeln('Se ha aplicado un descuento por edades');
													writeln('Tiene un costo todal de: ',DescI:2:2,'$');
													clrscr;
												end
											else
												begin
													writeln('Tiene un costo total de: ',costo,'$');
													readkey;
													CostI:=CostI+costo;
													clrscr;
												end;
										end;
									end;
								'4':begin
										if (ruta='ida') then
											begin
												//vuelo ida la romana-caracas
												writeln('Escogiste el vuelo La romana-Caracas');
												costo:=650;
												RC:=RC+1;
												//descuento mayor de edad
												if (12<edad) or (60<edad) then
													begin
														CostDescI:=costo*0.1;
														DescI:=costo-CostDescI;
														writeln('Se ha aplicado un descuento por edades');
														writeln('Tiene un costo total de: ',DescI:2:2,'$');
													end
												else
													begin
														writeln('Tiene un costo total de: ',costo,'$');
														readkey;
														CostI:=CostI+costo;
														readkey;
														clrscr;
													end;
										end
									else
										begin
											//Vuelo venida Caracas-La romana
											writeln('Escogiste el bueno Caracas-La romana');
											costo:=650;
											CR:=CR+1;
											if (12<edad) or (60<edad) then
												begin
													CostDescI:=costo*0.1;
													DescI:=costo-CostDescI;
													writeln('Se ha aplicado un descuento por edades');
													writeln('Tiene un costo todal de: ',DescI:2:2,'$');
													clrscr;
												end
											else
												begin
													writeln('Tiene un costo total de: ',costo,'$');
													readkey;
													CostI:=CostI+costo;
													clrscr;
												end;
										end;
									end;
							End;
						end;
				writeln('Necesita un servicio adicional?');
				writeln('1. Si');
				writeln('2. No');
				readln(servicioadicional);
				clrscr;
					if servicioadicional=1 then
						begin
							repeat
							begin
								writeln('Los servicios disponibles son;');
								writeln('Comida especial, presione 1');
								writeln('Asistencia especial, presione 2');
								writeln('Aparatos medicos particular, presione 3');
								writeln('Kit de relajacion, presione 4');
								writeln('Si no quiere mas servicios presione 5');
								readln(opcion3);
								if(opcion3 > 0) and (opcion3 < 5) then
									begin
										servicios:=servicios+1;
									End
								else
									Begin
										Servicios:=servicios+0;
									End;
								readkey();
								clrscr;
								s:=s+1;
								
							End;
							until(s=2) or (opcion3=5);
						end; 
			End;
			CostT:=CostN+DescN+CostI+DescI;	
			Writeln('Los demas Boletos costaron ',CostT:2:2,'$');
			repeat
				Begin
					writeln('Entregue el primer monto de transaccion');
					readln(Deposito);
					if Deposito<CostT then
						Begin
							Writeln('Monto insuficiente');
							readkey;
							clrscr;
						End
					else
						Begin
							Writeln('Monto aceptado');
							readkey;
							clrscr;
						End;
				End;
			until (Deposito = CostT) or  (Deposito > CostT);
			vuelto:= Deposito-CostT;
			if vuelto=0 then
				begin
					writeln('Se ha hecho la transaccion correctamente, tiene un vuelto de ', vuelto:2:2,'$');
					readkey;
					clrscr;
				End
			else
				begin
					Writeln('Se ha hecho la transaccion correctamente');
					readkey;
					clrscr;
				End;
		Tempboletos:=tempboletos+boletos;
		TempClaseB:=TempClaseB+ClaseB;
		TempClaseM:=TempClaseM+ClaseM;
		TempClaseA:=TempClaseA+ClaseA;
		TempServicios:=TempServicios+servicios;
		TempN:=TempN+TipoN;
		TempI:= TempI+TipoI;
		TempCostN:=TempCostN+CostN+DescN;
		TempCostI:=TempCostI+CostI+DescI;
		TempCostT:= TempCostT+CostT;
		TempPC:= TempPC+ PC;
		TempCP:= TempCP+ CP;
		TempPoC:= TempPoC+PoC;
		TempCPo:= TempCPo+CPo;
		TempCM:= TempCM+CM;
		TempMC:= TempMC+MC;
		TempVC:= TempVC+VC;
		TempCV:= TempCV+CV;
		TempBC:= TempBC+BC;
		TempCB:= TempCB+CB;
		TempFC:= TempFC+FC;
		TempCF:= TempCF+CF;
		TempBoC:= TempBoC+BoC;
		TempCBo:= TempCBo+Cbo;
		TempCuC:= TempCuC+CuC;
		TempCCu:= TempCCu+CCu;
		TempSdC:= TempSdC+SdC;
		TempCSd:= TempCSd+CSd;
		TempRC:= TempRC+RC;
		TempCR:= TempCR+CR;
		clrscr;
		
		end;
		'2': begin
				writeln('Usted eligio ', opcion);
				Writeln('usted ha hecho las siguientes transacciones');
				Writeln(Tempboletos,' Boletos vendidos');
				readkey;
				clrscr;	
				Writeln(TempClaseB,' Boletos Clase Baja');	
				Writeln(TempClaseM,' Boletos Clase Media');	
				Writeln(TempClaseA,' Boletos Clase Alta');
				readkey;
				clrscr;					
				Writeln(TempServicios,' Servicios');
				readkey;
				clrscr;					
				Writeln(TempN,' Boletos Nacionales');					
				WriteLN(TempI,' Boletos internacionales');					
				Writeln(TempCostN:2:2,'$ de los Nacionales');					
				Writeln(TempCostI:2:2,'$ de los Internacionales');					
				Writeln(TempCostT:2:2,'$ del conjunto de todos los vuelos');
				readkey;
				clrscr;
				writeln('Vuelos nacionales');				
				Writeln(TempPC,' vuelos a Porlamar-Caracas');					
				Writeln(TempCP,' vuelos a Caracas-Porlamar');
				Writeln(TempPoC,' vuelos a Puerto Ordaz-Caracas');					
				Writeln(TempCPo,' vuelos a Caracas-Puerto Ordaz');					
				Writeln(TempMC,' vuelos a Maracaibo-Caracas'); 
				Writeln(TempCM,' vuelos a Caracas-Maracaibo');					
				Writeln(TempVC,' vuelos a El Vigia-Caracaas');					
				Writeln(TempCV,' vuelos a Caracas-El Vigia');
				Writeln(TempBC,' vuelos a Barcelona-Caracas');
				Writeln(TempCB,' vuelos a Caracas-Barcelona');
				Writeln(TempFC,' vuelos a La Fria-Caracas');
				Writeln(TempCF,' vuelos a Caracas-La Fria');
				readkey;
				clrscr;
				writeln('Vuelos Internacionales');
				Writeln(TempBoC,' vuelos a Bogota-Caracas');
				Writeln(TempCBo,' vuelos a Caracas-Bogota');					
				Writeln(TempCuC,' vuelos a Curazao-Caracas');
				Writeln(TempCCu,' vuelos a Caracas-Curazao');
				Writeln(TempSdC,' vuelos a Santo Domingo-Caracas');
				Writeln(TempCSd,' vuelos a Caracas-Santo Domingo');
				Writeln(TempRC,' vuelos a Romana-Caracas');
				Writeln(TempCR,' vuelos a Caracas-Romana');
				readkey;
				clrscr;
			end;
		'3': Begin
				Writeln('usted eligio ', opcion);
				writeln('Usted Realizo por el dia los siguientes ingresos');
				Writeln(Tempboletos,' Boletos vendidos');
				Writeln(TempClaseB,' Boletos de clase baja');
				Writeln(TempClaseM,' Boletos de clase media');
				Writeln(TempClaseA,' Boletos de clase alta');
				readkey;
				clrscr;
				Writeln(TempN,' Boletos Nacionales');
				Writeln('Adquiriendo ', TempCostN:2:2,'$');
				Writeln(TempI, ' Boletos Internacionales');
				Writeln('Adquiriendo ', TempCostI:2:2,'$');
				readkey;
				clrscr;
				writeln('Vuelos nacionales');
				Writeln(TempPC,' vuelos a Porlamar-Caracas');
				Writeln(TempCP,' vuelos a Caracas-Porlamar');
				Writeln(TempPoC,' vuelos a Puerto Ordaz-Caracas');
				Writeln(TempCPo,' vuelos a Caracas-Puerto Ordaz');
				Writeln(TempMC,' vuelos a Maracaibo-Caracas'); 
				Writeln(TempCM,' vuelos a Caracas-Maracaibo');
				Writeln(TempVC,' vuelos a El Vigia-Caracaas');
				Writeln(TempCV,' vuelos a Caracas-El Vigia');
				Writeln(TempBC,' vuelos a Barcelona-Caracas');
				Writeln(TempCB,' vuelos a Caracas-Barcelona');
				Writeln(TempFC,' vuelos a La Fria-Caracas');
				Writeln(TempCF,' vuelos a Caracas-La Fria');
				readkey;
				clrscr;
				writeln('Vuelos internacionales');
				Writeln(TempBoC,' vuelos a Bogota-Caracas');
				Writeln(TempCBo,' vuelos a Caracas-Bogota');
				Writeln(TempCuC,' vuelos a Curazao-Caracas');
				Writeln(TempCCu,' vuelos a Caracas-Curazao');
				Writeln(TempSdC,' vuelos a Santo Domingo-Caracas');
				Writeln(TempCSd,' vuelos a Caracas-Santo Domingo');	
				Writeln(TempRC,' vuelos a Romana-Caracas');
				Writeln(TempCR,' vuelos a Caracas-Romana');
				readkey;
				clrscr;
			End;
		end;						
	until opcion='3';
END.

