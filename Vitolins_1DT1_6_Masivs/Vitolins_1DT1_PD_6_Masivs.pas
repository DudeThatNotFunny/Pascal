program Masivs;	{ Programas nosaukums }
uses crt;	{ Bibliotekas izsauksana }
var	{ Definesanas bloks }
   i,p:Integer;	{ Define mainigos }
	gr1,gr2:String;
   a:array[1..100] of Integer;	{ Izveido masivu }

label	{ Gramatzimju definesanas bloks }
	starts;	{ Gramatzime }

begin
starts:
   clrScr; { Ekrana notirisana }
   Randomize; { Gadijuma skaitla aktivizesana }
	p:=0;	{ Parmaina mainigo uz sakuma skaitli }
	for i:=1 to 100 do { cikls }
		a[i]:=random(1000);	{ Ģenere nejausi izveletus skaitlus }

	WriteLn('Ar 9 dalas sadi masiva elementi:');	{ Uzraksta virsrakstu prieks skaitliem kuri dalijas ar 9 }
	for i:=1 to 100 do { Cikls }
	  begin
			if (a[i] mod 9)=0 then	{ Parbauda vai dalijas ar 9 }
				WriteLn(i:7,'. elements =',a[i]:4);	{ Parada skaitli kurs dalijas ar 9 }
			if (a[i] mod 2)=0 then	{ Parbauda vai tas skaitlis ir parskaitlis }
				p:=p+1;	{ Skaita cik daudz parskaitli ir }
	  end;
	
	if p=1 then { Parbauda vai ir 1 paris atrast }
		begin
		  gr1:=' uzgenerets ';	{ pareizais locijums }
		  gr2:=' skatlis ';	{ pareizais locijums }
		end
	else	{ Ja ir lielaks paru skaits par 1 }
		begin
		  gr1:=' uzgenereti ';	{ pareizais locijums }
		  gr2:=' skatli ';	{ pareizais locijums }
		end;
	WriteLn;	{ Tuksa rindkopa }
	WriteLn('Tika',gr1,p,' ','para',gr2,'no 100');	{ Parada para skaitli cik atradas masiva }
	WriteLn;	{ Tuksa rindkopa }
	WriteLn('Esc - beigt, jebkuru citu taustinu - atkartot...');	{ Pasaka lietotajam kas jadara }

	if ord(readkey)<>27 then { Parbauda vai uzspieda "ESC" vai kādu citu pogu }
	  	goto starts;	{ Aizies uz "starts:" }

end.