program Cements;	{ Programmas nosaukums }
uses crt;	{ Izsauc biblioteku, moduli }
var	{ Mainigo definesanas bloks }
	m,k:Real;
	r:Integer;
	{ m=atlikums
	k=dienas nepieciesama cementa masa
	r=dienu skaits}

begin
	while True do	{ Sak bezgaligu ciklu }
	begin
		clrscr;   { Notira ekranu }
		Write('Cik noliktava tonas cementa atrodas? ');   { Pasaka kadi dati mums ir nepieciesami }
		readln(m);   { Iegust skaitli kas apzime noliktavas cementa daudzumu }
		k:=2.3;	{ Izteretias cements }
		r:=0; { Notīra dienas }
		m:=m*10;   { Parveido tonu uz centneru }


		while True do	{ Sak bezgaligu ciklu }
		begin
			if m<k then	{ Ja atlikuaais cements ir mazaks neka dienai nepieciesamais tad }
				Break	{ Iziet no cikla }
			else	{ Ja if apgalvojums ir false tad }
				m:=m-k;	{ Izreikina cementa atlikumu, ja tads bus }
				r:=r+1;	{ Skaita dienas cik pietiks cements pilnam dienam }
				k:=k+(k/100*(random(4)+1)); { Izreikina dienai nepieciesamo cementu }
		end;
		m:=m/10;	{ Parveido atpakal uz tonam }
		WriteLn('Cementa krajumi pietika: ',r,' dienam');	{ Uzraksta cik dienam pietiks cements }
		WriteLn('Cementa atlikums: ',m:0:2,'t');	{ Uzraksta cementa atlikums }
		WriteLn;	{ Tuksaja rindkopa }
		writeln('Ja gribi beigt tas uzspied <ESC>, vai jeb kuru citu pogu lai turpinatu'); { Pajauta vai grib beigt }
		if ord(ReadKey)=27 then	{ Ja uzspiez <ESC> tad iziet no programmas }
			break;	{ Iziet no cikla }
	end;
end.
