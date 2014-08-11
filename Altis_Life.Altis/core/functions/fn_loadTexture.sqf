/*
	File: fn_loadTexture.sqf
*/


//Hier neue Texturen eintragen in zweier Blöcken;

_TexturenListe = [["",""],["",""],["",""],["",""]];

_pos1 = player modelToWorld [0,0.7,-0.2];
_pos2 = player modelToWorld [0,0.7,0];  
_s1 = "SignAd_Sponsor_ARMEX_F" createVehicle _pos1;    
_s2 = "SignAd_Sponsor_ARMEX_F" createVehicle _pos2;    
_s1 setPos _pos1;   
_s2 setPos _pos2;   
_s1 setDir getDir player;   
_s2 setDir getDir player;
{




}forEach _TexturenListe;