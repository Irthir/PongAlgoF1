unit BallUnit;

interface

uses GameObjetUnit;

TYPE ball=RECORD
	obj:GameObjet;
	couleur:integer;
	velocite:integer;
END;

procedure setobj(obj:GameObjet; var boule:ball);
procedure setcouleur(couleur:integer; var boule:ball);
procedure setvelocite(velocite:integer; var boule:ball);
function getobj(boule:ball):GameObjet;
function getcouleur(boule:ball):integer;
function getvelocite(boule:ball):integer;


implementation

procedure setobj(obj:GameObjet; var boule:ball);
//BUT : Attribuer un objet pour la balle.
//ENTREE : Un objet de type GameObjet et une "boule" de type ball.
//SORTIE : N/A
BEGIN
	boule.obj:=obj;
END;

function getobj(boule:ball):GameObjet;
//BUT : Renvoyer l'objet de type GameObjet d'une "boule" de type ball.
//ENTREE : Un objet "boule" de type ball.
//SORTIE : Son objet de type GameObjet.
BEGIN
	getobj:=boule.obj;
END;

procedure setcouleur(couleur:integer; var boule:ball);
//BUT : Attribuer une couleur pour la balle.
//ENTREE : Une couleur de type Entier et une "boule" de type ball.
//SORTIE : N/A
BEGIN
	boule.couleur:=couleur;
END;

function getcouleur(boule:ball):integer;
//BUT : Renvoyer la couleur type Entier d'une "boule" de type ball.
//ENTREE : Un objet "boule" de type ball.
//SORTIE : Sa couleur de type Entier.
BEGIN
	getcouleur:=boule.couleur;
END;

procedure setvelocite(velocite:integer; var boule:ball);
//BUT : Attribuer une vélocité pour la balle.
//ENTREE : Une vélocité de type Entier et une "boule" de type ball.
//SORTIE : N/A
BEGIN
	boule.velocite:=velocite;
END;

function getvelocite(boule:ball):integer;
//BUT : Renvoyer la vélocité type Entier d'une "boule" de type ball.
//ENTREE : Un objet "boule" de type ball.
//SORTIE : Sa vélocité de type Entier.
BEGIN
	getvelocite:=boule.velocite;
END;

END.