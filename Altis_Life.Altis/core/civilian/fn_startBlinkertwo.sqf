/*
	File: fn_rightl.sqf
	Author: Fabian ,danke !
*/
private["_vehicle"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _vehicle) exitWith {}; //Bad entry!
if(!(typeOf _vehicle in blinkerveh)) exitWith {}; //Last chance check to prevent something from defying humanity and creating a monster.

_trueorfalse = _vehicle getVariable["lights",FALSE];

if(_trueorfalse) then {
	_vehicle setVariable["lights",FALSE,TRUE];
} else {
	playsound "blinkerstart";
	_vehicle setVariable["lights",TRUE,TRUE];
	[[_vehicle,0.22],"life_fnc_rightl",true,false] call life_fnc_MP;
};
//Little hint then wait a litle before starting drugs effects
hint "";
player say3D "blinkerstart"; //Damit hört nur der Spieler den abgespielten Sound
sleep 3;