
private["_funds"];
while {true} do
{
	sleep (15 * 60);
	_funds = ((count playableUnits) * 10000) / 2;
	if(!isNil "_funds") then
	{
		if(life_federal_funds < 1) then 
		{
			life_federal_funds = 1000;
		};
		life_federal_funds = life_federal_funds + _funds;
	};
};