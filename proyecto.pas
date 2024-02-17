program proyecto;

uses crt;
var
{opcion, nombre, CBoleto, destino, ServExt, TBoleto:string;
tipo, tipocedula:char
}
	//ENTEROS

//Eteros relacionados a boletos
//CBoletos, TBoletos, TClasebaja, TClasemedia, TClasealta:integer;
//Destinos de vuelos
PC, CP, PoC, CPo, MC, CM, VC, CV, BC, CB, FC, CF, BoC, CBo, CuC, CCu, SdC, CSd, RC, CR:integer;
//cant.servicios, precio:integer;
//Temporales clases boleto
{TempB, TempCA, TempS, TempN, TempI, TempCM, TempCB:integer;
cedula:longint
}

BEGIN
	PC:=50;
	CP:=50;
	PoC:=45;
	CPo:=45;
	MC:=80;
	CM:=80;
	VC:=75;
	CV:=75;
	BC:=30;
	CB:=30;
	FC:=60;
	CF:=60;
	
	BoC:=499;
	CBo:=499;
	CuC:=400;
	CCu:=400;
	SdC:=700;
	CSd:=700;
	RC:=650;
	CR:=650;
	
	WRITELn(PC, CP, PoC, CPo, MC, CM, VC, CV, BC, CB, FC, CF, BoC, CBo, CuC, CCu, SdC, CSd, RC, CR);
	
	
	
END.

