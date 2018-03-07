PROGRAM  morpion;
uses crt;

 //BUT:Jouer au morpion	
 //ENTREE:La case choisi
 //SORTIE:Gagne ou non et indique quel joueur gagne une manche

TYPE
	grid = array [1..3,1..3] of char;


CONST
	NB_MANCHE : INTEGER = 3;
VAR
	Start : INTEGER;
	grille : grid;


procedure The_Grid (var grille : grid);

VAR
	x,y : INTEGER;
	cpt : INTEGER;
BEGIN
	cpt :=1;
	writeln ('Manche',cpt);
     for x:=1 to 3 do
     	for y:=1 to 3 do
     		grille[x,y]:= '-';
     		writeln (grille[x,y])
END;

procedure party(var player1,player2:STRING);

VAR
	x,y : INTEGER;

BEGIN
	
	If start = 1 then
		While grille[x,y] <> '-' do
			begin
				writeln(player1,'choisiez une ligne (de 1 a 3)');
				readln (x);
				writeln(player1,'choisiez une colonne (de 1 a 3)');
				readln (y);
				grille[x,y] :='O';
				start := 2;
			END;
	If start = 2 then
	While grille[x,y] <> '-' do
		begin
			writeln(player1,'choisiez une ligne (de 1 a 3)');
			readln (x);
			writeln(player1,'choisiez une colonne (de 1 a 3)');
			readln (y);
			grille[x,y]:='X';
			start := 1;
		END;

END;

procedure win (var grille : grid);
VAR 
	Win_player1 : INTEGER;
	Win_player2 : INTEGER;
	player1 : string;
	player2 : string;

BEGIN

	//case grille of
	//begin
   		if (grille[1,1]='O') and (grille[2,1]='O') and (grille[3,1]='O') then
   			begin 	
   				writeln(player1,' Remporte la manche ! bravo a lui !');
   				Win_Player1 := Win_Player1 +1
   			end
   		else if (grille[1,2]='O') and (grille[2,2]='O') and (grille[3,2]='O') then
   			begin 	
   				writeln(player1,' Remporte la manche ! bravo a lui !');
   				Win_Player1 := Win_Player1 +1
   			end
   		else if (grille[1,3]='O') and (grille[2,3]='O') and (grille[3,3]='O') then
   			begin 	
   				writeln(player1,' Remporte la manche ! bravo a lui !');
   				Win_Player1 := Win_Player1 +1
   			end
   		else if (grille[1,1]='O') and (grille[2,2]='O') and (grille[3,3]='O') then
   			begin 	
   				writeln(player1,' Remporte la manche ! bravo a lui !');
   				Win_Player1 := Win_Player1 +1
   			end
   		else if (grille[3,1]='O') and (grille[2,2]='O') and (grille[1,3]='O') then
   			begin 	
   				writeln(player1,' Remporte la manche ! bravo a lui !');
   				Win_Player1 := Win_Player1 +1;
   			end;



   	 	if (grille[1,1]='X') and (grille[2,1]='X') and (grille[3,1]='X') then
   			begin 	
   				writeln(player2,' Remporte la manche ! bravo a lui !');
   				Win_Player2 := Win_Player2 +1
   			end
   		else if (grille[1,2]='X') and (grille[2,2]='X') and (grille[3,2]='X')then
   			begin 	
   				writeln(player2,' Remporte la manche ! bravo a lui !');
   				Win_Player2 := Win_Player2 +1
   			end
   		else if (grille[1,3]='X') and (grille[2,3]='X') and (grille[3,3]='X') then
   			begin 	
   				writeln(player2,' Remporte la manche ! bravo a lui !');
   				Win_Player2 := Win_Player2 +1
   			end
   		else if (grille[1,1]='X') and (grille[2,2]='X') and (grille[3,3]='X') then
   			begin 	
   				writeln(player2,' Remporte la manche ! bravo a lui !');
   				Win_Player2 := Win_Player2 +1
   			end
   		else if (grille[3,1]='X') and (grille[2,2]='X') and (grille[1,3]='X') then
   			begin 	
   				writeln(player2,' Remporte la manche ! bravo a lui !');
   				Win_Player2 := Win_Player2 +1;
   			end;
 

	

	IF (Win_Player1 = NB_MANCHE) THEN
		BEGIN
			writeln ('Incroyable ',player1,'A gagngez une partie de morpion ! Il est trop fort !')
		end

		ELSE IF (Win_Player2 = NB_MANCHE) THEN
		begin
			writeln ('Incroyable ',player2,'A gagngez une partie de morpion ! Il est trop fort !')
		end

		else IF (Win_Player2 = Win_Player1) then
		begin
			writeln ('Egalité ! ');
		end;
END;

	

 //Programme pricipal
 VAR

 	Player1,Player2 : string;
 	tabgrid : array [1..3,1..3] of char;


BEGIN
	clrscr;
	randomize;
	Start :=random(2);

	writeln ('Joueur 1 rentrez votre nom SVP');
	readln (player1);
	writeln ('Joueur 2 rentrez votre nom SVP');
	readln (player2);

	writeln (Player1,' VS ',player2);
		clrscr;

		if start = 1 then
			begin
				writeln('le joueur qui commence : ',player1);
				writeln('Vous controlez les O')
			end

			else if start = 2 then
			begin
				writeln('le joueur qui commence  : ',player2);
				writeln('Vous controlez les X');
			end;
	
	The_Grid(tabGrid);
	party(Player1,Player2);
	win(grille);
	readln()
END.
