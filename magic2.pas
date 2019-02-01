program magic;

uses crt;

label nombre;

const
	taille = 5;
	
	var t:array[1..taille,1..taille]of integer ;
	var z,a,n,x,y :integer;
	
	
begin
clrscr;

n:=0;
y:=2;
x:=3;
z:=1;
a:=1;
//init

for z:=1 to taille do
 begin
	 for a:=1 to taille do t[z,a]:=0;

end;


{ t[x,y]:=n; }

//tableau
for z:=1 to taille do
begin
	for a:=1 to taille do
	begin
	//nombre 
	

	{n:=n+1;
	
	y:=y-1;
	
	x:=x+1;}
	
	
	
	
	
	
	
	
	
	n:=n+1;
	//droite	
	y:=y+1;
	if y>taille then y:=1;
	
	//haut
	x:=x-1;
		
	if x<1 then x:=taille;
		
		
	if t[x,y]<>0 then 
	begin
	x:=x-1;
		if x=0 then x:=taille;
		if x=-1 then x:=taille-1;
		{if x=taille then x:=1;
		if x=taille+2 then x:=2; }
		y:=y-1;
		{ if y=0 then :=taille; }
		if y=0 then y:=taille;
		t[x,y]:=n;
		
	end;
	
	
	if t[x,y]=0 then t[x,y]:=n;
		
		
		
	
	
	
	
		{ gotoxy (1,n);  }
		{ writeln (x,'x ',y,'y ',n,'n '); }
{ readln;  }
	
	end;
end;







//ecriture du tableau
	for z:=1 to taille do
 begin
 writeln ('');
	 for a:=1 to taille do
	 begin
	write ('|');
	write (t[z,a]:2);
	end;
end;


writeln();
Writeln ('fin du programme.');
readln; 
 Halt (1);

end.

//algo
{
algotithme magic
//but fair un carrer magic
//entree x
//sortit le carrer

CONST taille:=5
VAR t:tableau[1..taille,1..taille] DE ENTIER
VAR z,a,n,x,y : ENTIER
 


DEBUT
n:=0
y:=2
x:=3
z:=1
a:=1

POUR z DE 1 A taille FAIRE
	POUR A DE 1 A taille FAIRE
	t[z,a]:=0
	FINPOUR
FINPOUR




POUR z DE 1 A taille FAIRE
	POUR A DE 1 A taille FAIRE
		
	n:=n+1
	
	SI y<1 ALORS y:=taille FINSI
	SI x>taille ALORS x:=1 FINSI
	
	SI t[x,y]<>0 ALORS
	y:=-2
		SI y=0 ALORS y:=taille FINSI
		SI y=-1 ALORS y:=taille-1 FINSI
		t[x,y]:=n
	FINPOUR



	SI t[x,y]=0 ALORS t[x,y]:=n FINSI

	y:=y-1
	x:=x+1

FINPOUR




POUR z DE 1 A taille FAIRE
	POUR A DE 1 A taille FAIRE
	EN t[z,a] ECRIRE t[z,a]
	FINPOUR
FINPOUR












FIN
}
