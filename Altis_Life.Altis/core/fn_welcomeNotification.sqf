/*
	File: fn_welcomeNotification.sqf
	
	Description:
	Called upon first spawn selection and welcomes our player.
*/
format["Herzlich Willkommen %1",player getVariable["realname",name player]] hintC
[
	"Willkommen auf dem Server des German Elite Unicorns Clan´s! Einige Dinge haben sich in Altis Life 3.1.3 veraendert!",
	"Du kannst bei uns dein eigenes Haus kaufen, deine eigene Firma gründen und deinen eigenen Beruf finden. Ob du deinen Job bei der Altis Polizei, dem Altis ADAC, dem Internationalen Medic Team oder einer anderen Vereinigung findest ist dabei völlig egal. Es gibt ein neues Interaktionssystem. Dieses kannst du mit der linken [WINDOWS TASTE] aufrufen. (Fahrzeuge reparieren, Geld/Gegenstaende aufnehmen usw.) Falls du diese Taste gerne auf einen andere legen moechtest rufst du mit ESC KONFIGURIEREN->STEUERUNG->INDIVIDUELLE Steuerung auf, dort suchst du dir [Aktion 10 verwenden] und weist es deinen Wunschkopf zu.", 
	"Mit der Interaktionstaste kannst du folgende Aktionen ausführen:",
	"Interaktionen mit Spielern (nur als Polizist)",
	"Interaktion mit Fahrzeugen (z.b. Reparieren)",
	"Roleplay steht an erster Stelle. Also seid freundlich und benehmt euch.",
	"Wir wünschen dir viel Spaß auf unserem Server."
];
	
    hintC_arr_EH = findDisplay 72 displayAddEventHandler ["unload", {
	0 = _this spawn {
		_this select 0 displayRemoveEventHandler ["unload", hintC_arr_EH];
		hintSilent "";
	};
}];
