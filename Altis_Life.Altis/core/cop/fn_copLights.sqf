/*
	File: fn_copLights.sqf
	Author: TobsA13
	Link: http://forums.bistudio.com/showthread.php?157474-Offroad-Police-sirens-lights-and-underglow
	
	Description:
	Adds the light effect to cop vehicles, specifically the offroad.
*/
Private ["_vehicle","_lightRed","_lightBlue","_lightleft","_lightright","_leftRed"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_lightc = [_this,2] call BIS_fnc_param;
if(!(_vehicle isKindOf "Car")) exitWith {};
if(isNil "_vehicle" OR isNull _vehicle OR !(_vehicle getVariable "lightson")) exitWith {};

_lightfleft = "#lightpoint" createVehicle getpos _vehicle; 
_lightbleft = "#lightpoint" createVehicle getpos _vehicle;  
_lightfright = "#lightpoint" createVehicle getpos _vehicle;  
_lightbright = "#lightpoint" createVehicle getpos _vehicle;


sleep 0.2;

_lightfleft setLightColor _lightc; 
_lightfleft setLightBrightness 0.2;  
_lightfleft setLightAmbient _lightc;
_lightfleft setLightAttenuation [0.04, 0, 1000, 130]; 
_lightfleft setLightIntensity 10;
_lightfleft setLightFlareSize 0.38;
_lightfleft setLightFlareMaxDistance 40;
_lightfleft setLightUseFlare true;
_lightfleft setLightDayLight true;

_lightbleft setLightColor _lightc; 
_lightbleft setLightBrightness 0.2;  
_lightbleft setLightAmbient _lightc;
_lightbleft setLightAttenuation [0.04, 0, 1000, 130]; 
_lightbleft setLightIntensity 10;
_lightbleft setLightFlareSize 0.38;
_lightbleft setLightFlareMaxDistance 40;
_lightbleft setLightUseFlare true;
_lightbleft setLightDayLight true;

_lightfright setLightColor _lightc; 
_lightfright setLightBrightness 0.2;  
_lightfright setLightAmbient _lightc;
_lightfright setLightAttenuation [0.04, 0, 1000, 130]; 
_lightfright setLightIntensity 10;
_lightfright setLightFlareSize 0.38;
_lightfright setLightFlareMaxDistance 40;
_lightfright setLightUseFlare true;
_lightfright setLightDayLight true;

_lightbright setLightColor _lightc; 
_lightbright setLightBrightness 0.2;  
_lightbright setLightAmbient _lightc;
_lightbright setLightAttenuation [0.04, 0, 1000, 130]; 
_lightbright setLightIntensity 10;
_lightbright setLightFlareSize 0.38;
_lightbright setLightFlareMaxDistance 40;
_lightbright setLightUseFlare true;
_lightbright setLightDayLight true;










switch (typeOf _vehicle) do
{
	case "C_Offroad_01_F":
	{
		_lightfleft lightAttachObject [_vehicle, [-0.37, 0.0, 0.56]];
        _lightbright lightAttachObject [_vehicle, [-0.37, 0.0, 0.56]];
        _lightfright lightAttachObject [_vehicle, [0.37, 0.0, 0.56]];
        _lightbleft lightAttachObject [_vehicle, [0.37, 0.0, 0.56]];
	};
	
	case "B_MRAP_01_F":
	{
        _lightfleft lightAttachObject [_vehicle, [-0.37, -1.9, 0.7]];
        _lightbright lightAttachObject [_vehicle, [-0.37, -1.9, 0.7]];
        _lightfright lightAttachObject [_vehicle, [0.37, -1.9, 0.7]];
        _lightbleft lightAttachObject [_vehicle, [0.37, -1.9, 0.7]];
	};
	
	case "C_SUV_01_F":
	{
		_lightfleft lightAttachObject [_vehicle, [-0.40, 2.25, -0.53]];
        _lightbleft lightAttachObject [_vehicle, [-0.55, -2.90, -0.23]];
        _lightfright lightAttachObject [_vehicle, [0.40, 2.25, -0.53]];
        _lightbright lightAttachObject [_vehicle, [0.55, -2.90, -0.23]];
	};
    case "O_MRAP_02_F":
	{
        _lightfleft lightAttachObject [_vehicle, [-0.80, 1.44, -1.08]];
        _lightbleft lightAttachObject [_vehicle, [-0.48, -4.46, -1.285]];
        _lightfright lightAttachObject [_vehicle, [0.80, 1.44, -1.08]];
        _lightbright lightAttachObject [_vehicle, [0.48, -4.46, -1.285]];
    };
    case "C_Van_01_box_F":
    {
        _lightfright lightAttachObject [_vehicle, [0.75, 1.80, -0.42]];
        _lightfleft lightAttachObject [_vehicle, [-0.75, 1.8, -0.42]];
        _lightbleft lightAttachObject [_vehicle, [-0.69, -3.1, -0.885]];
        _lightbright lightAttachObject [_vehicle, [0.69, -3.1, -0.885]];
    };
    case "I_Truck_02_box_F":
    {
        _lightfright lightAttachObject [_vehicle, [0.78, 2.505, -0.83]];
        _lightfleft lightAttachObject [_vehicle, [-0.83, 2.505, -0.83]];
        _lightbleft lightAttachObject [_vehicle, [-0.80, -4.7, -1.205]];
        _lightbright lightAttachObject [_vehicle, [0.78, -4.7, -1.205]];
    };
};

_leftRed = true; 
while{ (alive _vehicle)} do  
{  
	if(!(_vehicle getVariable "lightson")) exitWith {};
	if(_leftRed) then  
	{  
		_leftRed = false;  
		_lightfright setLightBrightness 0.0;  
        _lightbleft setLightBrightness 0.0;
		sleep 0.05;
        _lightfleft setLightBrightness 6.0;  
        _lightbright setLightBrightness 6.0;
	}  
		else  
	{  
		_leftRed = true;  
 		_lightfleft setLightBrightness 0.0;  
        _lightbright setLightBrightness 0.0;
		sleep 0.05;
		_lightfright setLightBrightness 6.0;  
        _lightbleft setLightBrightness 6.0;  
	};  
	sleep (_this select 1);  
};  
deleteVehicle _lightbleft;
deleteVehicle _lightbright;
deleteVehicle _lightfleft;
deleteVehicle _lightfright;