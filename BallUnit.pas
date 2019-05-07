unit BallUnit;

interface

uses GameObjetUnit,crt;

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

//function initball(x,y,textu,coul,veloce:integer):ball;
//function showball (boule:ball):STRING;

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

//initball et showball sont obsolètes.
{
function initball(x,y,textu,coul,veloce:integer):ball;
//BUT : Créer une balle.
//ENTREE : Son vecteur position avec "x" et "y", sa texture avec "textu", sa couleur avec "coul" et sa vélocité avec "veloce".
//SORTIE : Une balle.
VAR ballinit:ball;
BEGIN
	ballinit.obj:=initGameObjet(x,y,textu);
	ballinit.couleur:=coul;
	ballinit.velocite:=veloce;
	initball:=ballinit;
END;

function showball (boule:ball):STRING;
//BUT : Renvoyer les informations d'une balle à l'écran, sous la forme d'une chaine.
//ENTREE : Une balle.
//SORTIE : Une chaine contenant ses informations.
VAR ballshow:STRING;
BEGIN
	ballshow:=('La position de la balle en "x" est ',boule.obj.position.posx,',',#13#10,'sa position en "y" est ',boule.obj.position.posx,',',#13#10);
	ballshow:=(ballshow,'sa texture est ',boule.obj.texture,',',#13#10,' sa couleur est ',boule.couleur,',',#13#10,'sa vélocité est ',boule.velocite,'.');
END;
}
END.
