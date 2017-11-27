{ALGORITHME Jeu_De_Loie
//BUT: Réaliser un jeu de l'oie
//ENTREES: La validation, et la valeure du dé
//SORTIES: Le jeu nous dit se qu'il se passe

CONST // Les constantes désignent les "cases spéciale" du jeu
	
	debut <- 0
	fin <- 66
	double <- 9
	sixtroi <- 63
	Gameover <- 58
	minD <- 2
	maxD <- 12

VAR
	de: ENTIER
	joueur: ENTIER
// "de" = le jet du dé, "joueur" = le placement du joueur 

DEBUT

	de <- 0
	joueur <- 0

	ECRIRE '           LE JEU DE LOIE               '
	ECRIRE '         Appuyer sur entrer !           '
	LIRE

	ECRIRE 'Votre Oie est a la case départ: ',joueur

	REPETER //Grande boucle  elle se répete jusqu'a se que joueur = 66(fin).

		ECRIRE 'Appuyer sur entrer pour continuer'
		LIRE
		ECRIRE 'lancez les deux dés'
		LIRE de


		ECRIRE ('Vous etes sur la case ','[',joueur,']', 'Appuyer sur entrer pour continuer');
		ECRIRE ('lancez les deux des ');
		de <- ALEATOIRE (12)
		LIRE (de);
						


		joueur <-(de + joueur)

		ECRIRE 'Bravo ! vous allez jusqu'a la case ','[',joueur,']',' Voyons se qui se passe ici...'

		SI( joueur mod double = 0 ) ET ( joueur <> sixtroi ) ALORS
			joueur <- de + joueur
			ECRIRE '[*2]'
			ECRIRE 'Incoyable ! votre jet est doublé '
		FINSI

		SI (joueur = Gameover) ALORS
			joueur <- 0
			ECRIRE '[X]'
			ECRIRE 'Oh non ! vous étes sur la case téte de mort ! '
			ECRIRE 'Vous retournez a la case depart... '
		FINSI

		SI (joueur > fin) ALORS
			joueur <- (joueur - (joueur - fin))
			ECRIRE 'Oula vous allez trop loin !'
			ECRIRE 'Retournez donc a la case: ',joueur
		FINSI

	JUSQU'A (joueur = fin)
	FINREPETER

	ECRIRE 'Félicitation ! Vous étes a la case [66] vous avez donc gagné ! Bravo !'

FIN
}

program Jeu_De_Loie;

uses crt;

CONST// Les constantes désignent les "cases spéciale" du jeu
	
	debut = 0;
	fin = 66;
	double = 9;
	sixtroi = 63;
	Gameover = 58;
	minD = 2;
	maxD = 12;

VAR
	
	de,joueur : integer;// "de" = le jet du dé, "joueur" = le placement du joueur 

BEGIN
	clrscr;
	randomize;

	de := 0;
	joueur := 0;// Initialisation des variables a 0

	TextColor ( white );
	writeln ();
	writeln ('                   LE JEU DE L OIE                    ');
	writeln ('                 Appuyer sur entrer !                 ');
	readln ();
	clrscr;
	writeln ('Bienvenue dans le jeu de l oie ! Vous commencer a la case depart: ',joueur);

	REPEAT//Grande boucle repeat, elle se répete jusqu'a se que joueur = 66(fin).

		TextColor ( white );
		begin	

			writeln ('Vous etes sur la case ',' [',joueur,'] ', 'Appuyer sur entrer pour continuer');
			readln ();
			writeln ('lancez les deux des');
			readln ();
			de:=random(10)+2;
			writeln ('Vos des = ',de);
			readln ();

			joueur := joueur + de;// ont ajoute le résultat des dés au placement du joueur (éxemple: si de = 4 et joueur = 2 alors joueur = 6)
			writeln ('Vous allez jusqu a la case ',' [ ' ,joueur, ' ] ',' Voyons se qui se passe ici...');

			if( joueur mod double = 0 ) AND ( joueur <> sixtroi ) AND (joueur < fin) then{Si joueur est un multiple de 9 qu'il n'es pas 63 
			et que ce n'es pas un nombre plus grand que 66 Le jet deviens donc double}

				begin
					TextColor ( yellow );
					joueur := de + joueur;
					writeln ('[*2]');
					writeln ('Incoyable ! votre jet est double ')
				end

			else if (joueur = Gameover) then//Si le joueur = 58 c'est game over, le joueur retourne a la case 1

				begin
					joueur := 0;
					TextColor ( LightRed );
					writeln ('[X]');
					writeln ('Oh non ! Vous etes sur la case tete de mort ! Game Over.');
					writeln ('Vous retournez a la case depart...');
				end

			else if (joueur > fin) then// SI le joueur est plus grand que 66 il "reculle"

				begin
					TextColor ( LightCyan );
					joueur := ((joueur - de) - (joueur - fin));
					writeln ('oula vous allez trop loin !');
					writeln ('Retournez donc a la case ',joueur);
				end

		end

	until (joueur = fin);// jusqu'a joueur = 66
TextColor ( green );
writeln ('Felicitation ! Vous étes a la case [66] vous avez gagné ! Bravo !');

readln();

END.

