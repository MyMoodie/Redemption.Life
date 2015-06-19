/*
	File: fn_copLights.sqf
	Author: mindstorm, modified by RafiQuak
	Link: http://forums.bistudio.com/showthread.php?157474-Offroad-Police-sirens-lights-and-underglow
	
	Description:
	Adds an single light effect to cop and medic vehicles.
____________________________________________________________________________________________________________________

Private ["_vehicle","_lightBlue","_light","_lightOn"];
_vehicle = _this select 0;
	
if(isNil "_vehicle" OR isNull _vehicle OR !(_vehicle getVariable "lights")) exitWith {};
_lightBlue = [0.1, 0.1, 20];

_light = "#lightpoint" createVehicle getpos _vehicle;   
sleep 0.2;
_light setLightColor _lightBlue; 
_light setLightBrightness 0.2;  
_light setLightAmbient [0.1,0.1,1];

    
		[x, y, z]
	
       ^      <--------- y -------->       _
	   |            ___________             |
	   |           /           \          /
	   z     _____/             \       x
	   |    |                    \     /
	   |    |____________________|   |_
       v
	

switch (typeOf _vehicle) do
{
	case "C_Offroad_01_F":
	{
		_light lightAttachObject [_vehicle, [0.0, 0.0, 0.56]];
	};
	
	case "C_SUV_01_F":
	{
		_light lightAttachObject [_vehicle, [0.0,-0.6,0.42]];
	};
		
	case "B_MRAP_01_F":
	{
		_light lightAttachObject [_vehicle, [0, -0.9, 0.55]];
	};
	
	case "B_MRAP_01_hmg_F":
	{
		_light lightAttachObject [_vehicle, [0, -0.9, 0.55]];
	};
	
	
	case "C_Hatchback_01_sport_F":
	{
		_light lightAttachObject [_vehicle, [0,-0.1,0.3]];
	};
	
	case "C_Hatchback_01_F":
	{
		_light lightAttachObject [_vehicle, [0,-0.1,0.3]];
	};
	
	case "I_MRAP_03_F":
	{
		_light lightAttachObject [_vehicle, [0.0, 0.0, 0.56]];
	};
	
	case "I_MRAP_03_hmg_F":
	{
		_light lightAttachObject [_vehicle, [0.0, 0.0, 0.56]];
	};
			
	case "B_Heli_Light_01_F":
	{
		_light lightAttachObject [_vehicle, [0.0, 0.0, -0.95]];
	};
	
	case "B_Heli_Transport_01_F":
	{
		_light lightAttachObject [_vehicle, [0.0, 0.6, -1.0]];
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		_light lightAttachObject [_vehicle, [0.0, 0.0,-0.95]];
	};
	
	case "I_Heli_light_03_unarmed_F":
	{
		_light lightAttachObject [_vehicle, [0.0, 0.0,-0.95]];
	};
		
};

_light setLightAttenuation [0.181, 0, 1000, 130]; 
_light setLightIntensity 10;
_light setLightFlareSize 0.38;
_light setLightFlareMaxDistance 150;
_light setLightUseFlare true;


//ARE YOU ALL HAPPY?!?!?!?!?!?!?!?!?%#?@WGD?TGD?BN?ZDHBFD?GA
_light setLightDayLight true;

_lightOn = false;  
while{ (alive _vehicle)} do  
{  
	if(!(_vehicle getVariable "lights")) exitWith {};
	if(_lightOn) then  
	{  
		_lightOn = false;
		_light setLightBrightness 0.0;
	}  
		else  
	{  
		_lightOn = true;  
		_light setLightBrightness 6;
	};  
	sleep (_this select 1);  
};  
deleteVehicle _light;
*/
/*
    File: fn_copLights.sqf
    Author: [GSN] Pager & [GSN] Paronity
    Website: GSNGaming.com
    Date Created: 2.24.2015
    Date Modified: 2.25.2015 v1.2
*/

private ["_veh","_lightRed","_lightWhite","_lightBlue","_leftRed","_brightnessHigh","_brightnessLow","_attach","_leftLights","_rightLights","_type","_attenuation"];

_veh = (_this select 0);
_type = typeOf _veh;
_sun = (sunOrMoon < 1);

if (isNil "_veh" || isNull _veh || !(_veh getVariable "lights")) exitWith {};

_lightRed = [255, 0, 0];
_lightWhite = [255, 255, 255];
_lightBlue = [0, 0, 255];

if (_sun) then
{
    _brightnessLow = 0;
    _brightnessHigh = 10;
    _attenuation = [0.001, 3000, 0, 125000];
} else {
    _brightnessLow = 0;
    _brightnessHigh = 60;
    _attenuation = [0.001, 3000, 0, 500000];
};

_flashes = 3;
_flashOn = 0.1;
_flashOff = 0.001;

_leftLights = [];
_rightLights = [];

_attach =
{
    _isLight = _this select 0;
    _color = _this select 1;
    _position = _this select 2;
    _light = "#lightpoint" createVehicleLocal getPos _veh;
    _light setLightBrightness 0;
    _light setLightAmbient [0,0,0];
    _light setLightAttenuation _attenuation;
    _light setLightIntensity 1000;
    _light setLightFlareSize 1;
    _light setLightFlareMaxDistance 150;
    _light setLightUseFlare true;
    _light setLightDayLight true;

    switch (_color) do
    {
        case "red": { _light setLightColor _lightRed; };
        case "white": { _light setLightColor _lightWhite; };
        case "blue": { _light setLightColor _lightBlue; };
    };

    if (_isLight) then
    {
        _leftLights pushBack [_light, _position];
    } else {
        _rightLights pushBack [_light, _position];
    };

    _light lightAttachObject [_veh, _position];
};

switch (_type) do
{
    case "C_Offroad_01_F":
    {
        [false, "red", [-0.44, 0, 0.525]] call _attach;
        [true, "blue", [0.345, 0, 0.525]] call _attach;
        [false, "red", [0.575, -2.95, -0.77]] call _attach;
        [true, "blue", [-0.645, -2.95, -0.77]] call _attach;
        [false, "white", [0.61, 2.2825, -0.355]] call _attach;
        [true, "white", [-0.695, 2.2825, -0.355]] call _attach;
    };

    case "C_SUV_01_F":
    {
        [false, "red", [-0.39, 2.28, -0.52]] call _attach;
        [true, "blue", [0.38, 2.28, -0.52]] call _attach;
        [false, "red", [-0.86, -2.75, -0.18]] call _attach;
        [true, "blue", [0.86, -2.75, -0.18]] call _attach;
        [false, "white", [0.8, 1.95, -0.48]] call _attach;
        [true, "white", [-0.8, 1.95, -0.48]] call _attach;

    };

    case "C_Hatchback_01_sport_F":
    {
        [false, "red", [-0.03, -0, 0.2]] call _attach;
        [true, "blue", [-0.03, -0, 0.2]] call _attach;
        [false, "red", [-0.8, -2.25, -0.3]] call _attach;
        [true, "blue", [0.78, -2.25, -0.3]] call _attach;
        [false, "white", [0.75, 1.615, -0.52]] call _attach;
        [true, "white", [-0.8, 1.615, -0.525]] call _attach;
    };
	
	case "C_Hatchback_01_F":
    {
        [false, "red", [-0.03, -0, 0.2]] call _attach;
        [true, "blue", [-0.03, -0, 0.2]] call _attach;
        [false, "red", [-0.8, -2.25, -0.3]] call _attach;
        [true, "blue", [0.78, -2.25, -0.3]] call _attach;
        [false, "white", [0.75, 1.615, -0.52]] call _attach;
        [true, "white", [-0.8, 1.615, -0.525]] call _attach;
    };

    case "I_MRAP_03_F":
    {
        [false, "red", [-0.87, 2.2, -0.75]] call _attach;
        [true, "blue", [0.87, 2.2, -0.75]] call _attach;
        [false, "red", [-0.725, -3.15, 0.025]] call _attach;
        [true, "blue", [0.725, -3.15, 0.025]] call _attach;
        [false, "white", [1.05, 2.25, -0.3]] call _attach;
        [true, "white", [-1.05, 2.25, -0.3]] call _attach;
    };
	
	case "B_MRAP_01_F":
    {
        [false, "red", [-0.87, 2.2, -0.75]] call _attach;
        [true, "blue", [0.87, 2.2, -0.75]] call _attach;
        [false, "red", [-0.725, -3.15, 0.025]] call _attach;
        [true, "blue", [0.725, -3.15, 0.025]] call _attach;
        [false, "white", [1.05, 2.25, -0.3]] call _attach;
        [true, "white", [-1.05, 2.25, -0.3]] call _attach;
    };
	
	case "B_MRAP_01_hmg_F":
    {
        [false, "red", [-0.87, 2.2, -0.75]] call _attach;
        [true, "blue", [0.87, 2.2, -0.75]] call _attach;
        [false, "red", [-0.725, -3.15, 0.025]] call _attach;
        [true, "blue", [0.725, -3.15, 0.025]] call _attach;
        [false, "white", [1.05, 2.25, -0.3]] call _attach;
        [true, "white", [-1.05, 2.25, -0.3]] call _attach;
    };
};

_lightsOn = true;
while {(alive _veh)} do
{
    if (!(_veh getVariable "lights")) exitWith {};
    if (_lightsOn) then
    {
        for [{_i=0}, {_i<_flashes}, {_i=_i+1}] do
        {
            { (_x select 0) setLightBrightness _brightnessHigh; } forEach _leftLights;
            uiSleep _flashOn;
            { (_x select 0) setLightBrightness _brightnessLow; } forEach _leftLights;
            uiSleep _flashOff;
        };
        { (_x select 0) setLightBrightness 0; } forEach _leftLights;

        for [{_i=0}, {_i<_flashes}, {_i=_i+1}] do
        {
            { (_x select 0) setLightBrightness _brightnessHigh; } forEach _rightLights;
            uiSleep _flashOn;
            { (_x select 0) setLightBrightness _brightnessLow; } forEach _rightLights;
            uiSleep _flashOff;
        };
        { (_x select 0) setLightBrightness 0; } forEach _rightLights;
    };
};

{ deleteVehicle (_x select 0) } foreach _leftLights;
{ deleteVehicle (_x select 0) } foreach _rightLights;

_leftLights = [];
_rightLights = [];
 