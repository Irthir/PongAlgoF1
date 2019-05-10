program pong;

uses crt,BallUnit,GameObjetUnit,Vect2DUnit;


procedure deplacement (vecteur:vect2D);
//BUT : Déplacer un vecteur.
//ENTREE : Un vecteur à déplacer.
//SORTIE : Le vecteur déplacé.
VAR vecteurdeplacement, vecteurresultat:vect2D;
	scalaire:integer;
BEGIN
	//Initialisation du vecteur déplacement.
	setposx(2,vecteurdeplacement);
	setposy(2,vecteurdeplacement);

	//Test des déplacements.
	Writeln('Deplacement en diagonal : le vecteur deplacement vaut (',getposx(vecteurdeplacement),' ',getposy(vecteurdeplacement),')');
	Writeln('le vecteur a deplacer vaut (',getposx(vecteur),' ',getposy(vecteur),').');
	vecteurresultat:=addVect(vecteur,vecteurdeplacement);
	Writeln('Apres deplacement, le vecteur deplace vaut (',getposx(vecteurresultat),' ',getposy(vecteurresultat),').');

	Writeln('On fait le deplacement inverse.');

	Writeln('Deplacement en diagonal : le vecteur deplacement vaut (',getposx(vecteurdeplacement),' ',getposy(vecteurdeplacement),')');
	Writeln('le vecteur a deplacer vaut (',getposx(vecteur),' ',getposy(vecteur),').');
	vecteurresultat:=sousVect(vecteur,vecteurdeplacement);
	Writeln('Apres deplacement, le vecteur deplace vaut (',getposx(vecteurresultat),' ',getposy(vecteurresultat),').');

	Writeln('Calcul du produit scalaire.');

	Writeln('Calcul du produit scalaire a partir du vecteur deplacement et du vecteur a deplacer : le vecteur deplacement vaut (',getposx(vecteurdeplacement),' ',getposy(vecteurdeplacement),')');
	Writeln('le vecteur a deplacer vaut (',getposx(vecteur),' ',getposy(vecteur),').');
	scalaire:=prodScal(vecteur,vecteurdeplacement);
	Writeln('Le produit scalaire vaut : ',scalaire,'.');

	Writeln ('Calcul du vecteur par le produit du vecteur a deplacer par le scalaire precedemment calcule.');
	vecteurresultat:=prodparScal(scalaire,vecteur);
	Writeln('Le vecteur produit vaut (',getposx(vecteurresultat),' ',getposy(vecteurresultat),').');

	Writeln('Calcul du vecteur par le produit vectoriel a partir du vecteur deplacement et du vecteur a deplacer : le vecteur deplacement vaut (',getposx(vecteurdeplacement),' ',getposy(vecteurdeplacement),')');
	Writeln('le vecteur a deplacer vaut (',getposx(vecteur),' ',getposy(vecteur),').');
	vecteurresultat:=prodVect(vecteur,vecteurdeplacement);
	Writeln('Le vecteur produit vaut (',getposx(vecteurresultat),' ',getposy(vecteurresultat),').');

	Writeln('Et si tout a fonctionne, les tests sont finis o/ !')
END;

VAR baballe:ball;
//BUT : Tester les vecteurs de la balle.
//ENTREE : Deux balles possédants chacune un vecteur.
//SORTIE : Leur déplacements.
BEGIN
	clrscr;
//Initialisation de la balle.
	setposx(5,baballe.obj.position);
	setposy(8,baballe.obj.position);
	settexture(1,baballe.obj);
	setvelocite(2,baballe);
	setcouleur(3,baballe);

//Affichage des informations pour la vérification.
	Writeln('La balle a une position (',getposx(baballe.obj.position),' ',getposy(baballe.obj.position),').');
	Writeln('La balle a une texture ',gettexture(baballe.obj),'.');
	Writeln('La balle a une velocite ',getvelocite(baballe),'.');
	Writeln('La balle a une couleur ',getcouleur(baballe),'.');

//Tests sur les déplacements.

	deplacement(baballe.obj.position);
	Readln;
END.
