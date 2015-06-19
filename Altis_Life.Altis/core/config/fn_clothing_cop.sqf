#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Polizei Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
    case 0:
    {
        _ret set[count _ret,["U_Rangemaster","Praktikant",50]];
		if (__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret, ["U_B_SpecopsUniform_sgg", "Polizei Uniform",50]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam_vest","Uniform",50]];
		//	_ret set[count _ret,["U_B_Wetsuit","Taucher Anzug",500]];
		};
        if(__GETC__(life_coplevel) > 10) then
		{
			_ret set[count _ret,["U_B_PilotCoveralls","Bundespol. Pilot",50]];
        };
		if(__GETC__(life_coplevel) > 11) then
        {
			_ret set[count _ret,["U_B_CombatUniform_mcam","SEK-Uniform",50]];
        };
		if(__GETC__(life_coplevel) > 14) then
        {
			_ret set[count _ret,["U_B_CombatUniform_mcam_worn","GSG9-Uniform",50]];		
        };
    };
	
	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["H_Beret_blk_POLICE",nil,20]]; 
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["H_Beret_02",nil,20]];
		};
		if(__GETC__(life_coplevel) > 9) then
		{
			_ret set[count _ret,["H_Watchcap_blk",nil,20]];
		};
		if(__GETC__(life_coplevel) > 10) then
		{
			_ret set[count _ret,["H_PilotHelmetHeli_B","Bundespol. Pilot",50]];
        };
		if(__GETC__(life_coplevel) > 11) then
		{
			_ret set[count _ret,["H_HelmetB_light_black","SEK-Helm",20]];
		};
		if(__GETC__(life_coplevel) > 14) then
		{
			_ret set[count _ret,["H_CrewHelmetHeli_B","GSG9-Helm",20]];
		};
		if(__GETC__(life_coplevel) > 15) then
		{
			_ret set[count _ret,["H_Beret_Colonel",nil,20]];
		};
	};
	
	//Glasses
	case 2:
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["G_Shades_Black",nil,20]];
			_ret set[count _ret,["G_Shades_Blue",nil,20]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["G_Sport_Blackred",nil,20]];
			_ret set[count _ret,["G_Sport_Checkered",nil,20]];
			//_ret set[count _ret,["G_B_Diving",nil,100]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["G_Sport_Blackyellow",nil,20]];
			_ret set[count _ret,["G_Sport_BlackWhite",nil,20]];
			_ret set[count _ret,["G_Aviator",nil,20]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["G_Combat",nil,20]];
			_ret set[count _ret,["G_Balaclava_blk",nil,20]];
		};
	};
	
	//Vest
	case 3:
	{
		_ret set[count _ret,["V_Rangemaster_belt","Halfter",20]];
		if(__GETC__(life_coplevel) > 2) then
		{
			//_ret set[count _ret,["V_RebreatherB",nil,5000]];
			_ret set[count _ret,["V_TacVest_blk_POLICE","Polizeiweste",20]];
		};
		if(__GETC__(life_coplevel) > 9) then
		{
			_ret set[count _ret,["V_TacVestIR_blk","Einsatzweste",20]];
		};
		if(__GETC__(life_coplevel) > 11) then
		{
			_ret set[count _ret,["V_PlateCarrier1_blk","SEK/GSG9 Weste",20]];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret set[count _ret,["B_Kitbag_cbr",nil,20]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["B_Bergen_sgg",nil,20]];
		//	_ret set[count _ret,["B_FieldPack_cbr",nil,750]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			//_ret set[count _ret,["B_UAV_01_backpack_F",nil,1000]];
			_ret set[count _ret,["B_Carryall_cbr",nil,20]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["B_Bergen_blk",nil,20]];
		};
	};
};

_ret;