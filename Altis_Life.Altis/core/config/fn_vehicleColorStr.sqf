/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Rot";};
			case 1: {_color = "Gelb";};
			case 2: {_color = "Weiß";};
			case 3: {_color = "Blau";};
			case 4: {_color = "Dunkel Rot";};
			case 5: {_color = "Blau / Weiß"};
			case 6: {_color = "Schwarz"};
			//case 7: {_color = "Schwarz"};
			case 7: {_color = "Polizei"};
			case 8: {_color = "Taxi"};
			case 9: {_color = "Medic"};
			case 10: {_color = "Rockstar Gelb"};
			case 11: {_color = "Rockstar Lila"};
			case 12: {_color = "Hunter"}; 
			case 13: {_color = "Dodge"};
			case 14: {_color = "Weedfarmer"};	
			case 15: {_color = "Monster"};
		};
	};
	
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige";};
			case 1: {_color = "Grün";};
			case 2: {_color = "Blau";};
			case 3: {_color = "Dunkel Blau";};
			case 4: {_color = "Gelb";};
			case 5: {_color = "Weiß"};
			case 6: {_color = "Grau"};
			case 7: {_color = "Schwarz"};
			case 8: {_color = "Polizei"};
		};
	};
	
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Rot"};
			case 1: {_color = "Dunkel Blau"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Schwarz / Weiß"};
			case 4: {_color = "Tan"};
			case 5: {_color = "Grün"};
			case 6: {_color = "Polizei"};
			case 7: {_color = "Metallic"};
			case 8: {_color = "Monster"};
			
		};
	};
	
	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei";};
			//case 1: {_color = "Schwarz";};
			case 1: {_color = "Silver";};
			case 2: {_color = "Orange";};
			case 3: {_color = "Medic";};
			case 4: {_color = "Polygon";};
			case 5: {_color = "Taxi";};
			case 6: {_color = "Camo";};
			case 7: {_color = "MonsterEnergy";};
			case 8: {_color = "Batman";};
			case 9: {_color = "Ferrari";};
			case 10: {_color = "Totenkopf";};
			case 11: {_color = "Hello Kitty";};
		};
	};
	
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Weiß"};
			case 1: {_color = "Rot"};
			case 2: {_color = "Medic"};
		};
	};
	
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Weiß"};
			case 1: {_color = "Rot"};
		};
	};
	
	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Weiß"};
			case 1: {_color = "Rot"};
		};
	};
	
	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Braun"};
			case 1: {_color = "Digi Wüste"};
			case 2: {_color = "Schwarz"};
			case 3: {_color = "Blau"};
			case 4: {_color = "Rot"};
			case 5: {_color = "Weiß"};
			case 6: {_color = "Digi Grün"};
			case 7: {_color = "Hunter Camo"};
			case 8: {_color = "Rebel Camo"};
		};
	};
	
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
			case 1: {_color = "Schwarz"};
			case 2: {_color = "Civ Blau"};
			case 3: {_color = "Civ Rot"};
			case 4: {_color = "Digi Grün"};
			case 5: {_color = "Blueline"};
			case 6: {_color = "Elliptical"};
			case 7: {_color = "Furious"};
			case 8: {_color = "Jeans Blau"};
			case 9: {_color = "Speedy Redline"};
			case 10: {_color = "Sunset"};
			case 11: {_color = "Vrana"};
			case 12: {_color = "Wellen Blau"};
			case 13: {_color = "Rebel Digital"};
			case 14: {_color = "Medic"};
			case 15: {_color = "Redbull"};
			case 16: {_color = "Hello Kitty"};
		};
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Schwarz"};
			case 1: {_color = "Weiß / Blau"};
			case 2: {_color = "Digi Grün"};
			case 3: {_color = "Desert Wüste"};
			case 4: {_color = "ADAC"};
			case 5: {_color = "Medic"};
		};
	};
	
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "SEK"};
			case 1: {_color = "Donator"};
			case 2: {_color = "Polizei"};
		};
	};

	case "B_MRAP_01_hmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "SEK"};
		};
	};
	
	case "B_SDV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
		};
	};
	
	case "O_MRAP_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "FleckTarn (Rot)"};
			case 1: {_color = "Rebellen Tarnung"};
		};
	};
	
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Schwarz"};
			case 2: {_color = "RedBull"};
			case 3: {_color = "Barbie"};
		};
	};
	
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Schwarz"};
		};
	};

	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Eisen"};
			case 1: {_color = "Dahoman"};
			case 2: {_color = "Medic"};
		};
	};

	case "I_Heli_light_03_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
			case 1: {_color = "ADAC"};
			case 2: {_color = "SEK"};
		};
	};
	
	case "B_Heli_Transport_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
		};
	};
	
	case "C_Offroad_01_repair_F":
	{
		switch (_index) do
		{
			case 0: {_color = "ADAC"};
		};
	};

	case "I_MRAP_03_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Camo"};
		};
	};
	case "B_Truck_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Devil"};
			case 1: {_color = "Hello Kitty"};
		};
	};	
	case "B_Truck_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Devil"};
			case 1: {_color = "Hello Kitty"};
		};
	};
	case "B_Truck_01_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Devil"};
			case 1: {_color = "Hello Kitty"};
		};
	};
		case "B_Truck_01_ammo_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Devil"};
			case 1: {_color = "Hello Kitty"};
		};
	};
};


_color;