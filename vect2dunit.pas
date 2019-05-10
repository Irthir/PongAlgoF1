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

function addVect(vecteur1,vecteur2 : vect2D):vect2D;
function sousVect(vecteur1,vecteur2 : vect2D):vect2D;
function prodparScal(a:integer;vecteur1 :vect2D):vect2D;
function prodScal(vecteur1,vecteur2:vect2D):integer;
function prodVect(vecteur1,vecteur2:vect2D):vect2D;

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



function addVect(vecteur1,vecteur2 : vect2D):vect2D;
//BUT : Additionner deux vecteurs et donner leur somme.
//ENTREE : Deux vecteur à additionner.
//SORTIE : Un vecteur somme.
VAR vectsomme:vect2D;
BEGIN
	setposx(getposx(vecteur1)+getposx(vecteur2),vectsomme);
	setposy(getposy(vecteur1)+getposy(vecteur2),vectsomme);
	addVect:=vectsomme;
END;

function sousVect(vecteur1,vecteur2 : vect2D):vect2D;
//BUT : Soustraire un vecteur à un autre donner leur différence.
//ENTREE : Deux vecteur à soustraire.
//SORTIE : Un vecteur différence.
VAR vectdiff:vect2D;
BEGIN
	setposx(getposx(vecteur1)-getposx(vecteur2),vectdiff);
	setposy(getposy(vecteur1)-getposy(vecteur2),vectdiff);
	sousVect:=vectdiff;
END;

function prodparScal(a:integer;vecteur1 :vect2D):vect2D;
//BUT : Multiplier un vecteur par un entier "a".
//ENTREE : Le vecteur et l'entier "a".
//SORTIE : Le vecteur produit.
VAR vectprod:vect2D;
BEGIN
	setposx(getposx(vecteur1)*a,vectprod);
	setposy(getposy(vecteur1)*a,vectprod);
	prodparScal:=vectprod;
END;

function prodScal(vecteur1,vecteur2:vect2D):integer;
//BUT : Multiplier deux scalaires.
//ENTREE : Les deux vecteurs.
//SORTIE : L'entier produit.
BEGIN
	prodScal:=(getposx(vecteur1)*getposx(vecteur2))+(getposy(vecteur1)*getposy(vecteur2));
END;

function prodVect(vecteur1,vecteur2:vect2D):vect2D;
//BUT : Multiplier deux vecteurs en considérant la dimension Z comme égale à 1.
//ENTREE : Les deux vecteurs 2D.
//SORTIE : Le vecteur 2D, en ignorant Z, produit.
VAR vectprodvect:vect2D;
BEGIN
	setposx(getposy(vecteur1)-getposy(vecteur2),vectprodvect);
	setposy(getposx(vecteur2)-getposx(vecteur1),vectprodvect);
	prodVect:=vectprodvect;
END;

{
addition : (X1 Y1) + (X2 Y2) = (X1+X2 Y1+Y2)
soustraction : (X1 Y1) - (X2 Y2) = (X1-X2 Y1-Y2)
produit par un scalaire : (X1 Y1)xA = (A*X1 A*Y1)
produit scalaire : (X1 Y1) . (X2 X2) = X1*X2 + Y1*Y2
produit vectoriel (en considérant Z=1 et en ignorant le Z du vecteur produit) : (X1 Y1) * (X2 Y2) = (Y1-Y2 X2-X1)
}

END.
