if(player getVariable ["admintag",TRUE]) then {
player setVariable["donatortag",FALSE,TRUE];
player setVariable["admintag",FALSE,TRUE];
hint "Du bist nun ein ZIV!";
} else {
if(__GETC__(life_donator) > 0) then {player setVariable["donatortag",TRUE,TRUE];};
player setVariable["admintag",TRUE,TRUE];
hint "Du bist nun ein ADMIN!";
};