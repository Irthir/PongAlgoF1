unit Vect2DUnit;

interface

TYPE vect2D=RECORD
	posx:integer;
	posy:integer;
END;

procedure setposx(x:integer; var position:vect2D);
procedure setposy(y:integer; var position:vect2D);
function getposx(position:vect2D):integer;
function getposy(position:vect2D):integer;

//function initvect2D(x,y:integer):vect2D;

implementation

procedure setposx(x:integer; var position:vect2D);
//BUT : Attribuer une valeur pour la position en abscisse d'un objet.
//ENTREE : Un entier "x" et la position à modifier de type vecteur 2D.
//SORTIE : N/A
BEGIN
	position.posx:=x;
END;

function getposx(position:vect2D):integer;
//BUT : Renvoyer la valeur en "x" d'une position de type vect2D.
//ENTREE : Une position de type vect2D.
//SORTIE : Sa valeur en "x".
BEGIN
	getposx:=position.posx;
END;

procedure setposy(y:integer; var position:vect2D);
//BUT : Attribuer une valeur pour la position en abscisse d'un objet.
//ENTREE : Un entier "x" et la position à modifier de type vecteur 2D.
//SORTIE : N/A
BEGIN
	position.posy:=y;
END;

function getposy(position:vect2D):integer;
//BUT : Renvoyer la valeur en "y" d'une position de type vect2D.
//ENTREE : Une position de type vect2D.
//SORTIE : Sa valeur en "y".
BEGIN
	getposy:=position.posy;
END;

//Fonction initvect2D obsolète.
{
function initvect2D(x,y:integer):vect2D;
//BUT : Créer un vect 2D.
//ENTREE : Les valeurs "x" et "y" du vecteur.
//SORTIE : Le vecteur 2D.
VAR vect2Dinit : vect2D;
BEGIN
	vect2Dinit.posx:=x;
	vect2Dinit.posy:=y;
	initvect2D:=vect2Dinit;
END;
}

END.
