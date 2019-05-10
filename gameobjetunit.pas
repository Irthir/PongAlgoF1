unit GameObjetUnit;

interface

uses Vect2DUnit;

TYPE gameObjet=RECORD
	texture : integer; //SDL;
	position : vect2D;
END;

procedure settexture(texture:integer; var obj:gameObjet);
procedure setpos(position : vect2D; var obj:gameObjet);
function gettexture(obj:gameObjet):integer;
function getpos(obj:gameObjet):vect2D;

implementation

procedure settexture(texture:integer; var obj:gameObjet);
//BUT : Attribuer une valeur pour la texture d'un objet.
//ENTREE : Un entier pour la texture et l'objet à modifier de type gameObjet.
//SORTIE : N/A
BEGIN
	obj.texture:=texture;
END;

function gettexture(obj:gameObjet):integer;
//BUT : Renvoyer la valeur de la texture d'un objet de type gameObjet.
//ENTREE : Un objet de type gameObjet.
//SORTIE : La valeur de sa texture.
BEGIN
	gettexture:=obj.texture;
END;

procedure setpos(position : vect2D; var obj:gameObjet);
//BUT : Attribuer une valeur pour la position d'un objet.
//ENTREE : Un vecteur 2D pour la position et l'objet à modifier de type gameObjet.
//SORTIE : N/A
BEGIN
	obj.position:=position;
END;

function getpos(obj:gameObjet):vect2D;
//BUT : Renvoyer la valeur de la position d'un objet de type gameObjet.
//ENTREE : Un objet de type gameObjet.
//SORTIE : La valeur de sa position en tant que vecteur 2D.
BEGIN
	getpos:=obj.position;
END;

END.
