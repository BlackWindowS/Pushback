_panneau = (_this select 0);

//_panneau addAction ["Arsenal", {["Open",false] spawn BIS_fnc_arsenal}, [], 100];   
nul = [_panneau,[["Uniform"],["Vest"],["Headgear"]],true] call BIS_fnc_removeVirtualItemCargo;
nul = [_panneau,[["Backpack"]],true] call BIS_fnc_removeVirtualBackpackCargo;
//nul = [_panneau,[true],true] call BIS_fnc_removeVirtualMagazineCargo;
nul = [_panneau,[["AssaultRifle","MachineGun","SniperRifle","Shotgun","Rifle","SubmachineGun","Handgun"]],true] call BIS_fnc_removeVirtualWeaponCargo;

_armes = [
	"R3F_TAC50",
	"R3F_Famas_F1",
	"R3F_Famas_F1_DES",
	"R3F_Famas_F1_HG",
	"R3F_Famas_F1_HG_DES",
	"R3F_Famas_F1_M203",
	"R3F_Famas_F1_M203_DES",
	"R3F_Famas_G2",
	"R3F_Famas_G2_DES",
	"R3F_Famas_G2_HG",
	"R3F_Famas_G2_HG_DES",
	"R3F_Famas_G2_M203",
	"R3F_Famas_G2_M203_DES",
	"R3F_Famas_surb_HG",
	"R3F_Famas_surb_HG_DES",
	"R3F_Famas_surb",
	"R3F_Famas_surb_DES",
	"R3F_Famas_surb_M203",
	"R3F_Famas_surb_M203_DES",
	"R3F_Famas_felin",
	"R3F_Famas_felin_DES",
	"R3F_FRF2",
	"R3F_FRF2_DES",
	"R3F_PGM_Hecate_II",
	"R3F_PGM_Hecate_II_DES",
	"R3F_PGM_Hecate_II_POLY",
	"R3F_M107",
	"R3F_M107_DES",
	"R3F_Minimi",
	"R3F_Minimi_HG",
	"R3F_Minimi_762",
	"R3F_Minimi_762_HG",
	"R3F_HK417L",
	"R3F_HK417L_DES",
	"R3F_HK417M",
	"R3F_HK417M_DES",
	"R3F_HK417M_HG",
	"R3F_HK417M_HG_DES",
	"R3F_HK417S_HG",
	"R3F_HK417S_HG_DES",
	"R3F_HK416M",
	"R3F_HK416M_M203",
	"R3F_HK416M_M203_DES",
	"R3F_HK416M_DES",
	"R3F_HK416M_HG",
	"R3F_HK416M_HG_DES",
	"R3F_MP5SD",
	"R3F_MP5A5",
	"R3F_M4S90",
	"R3F_PAMAS",
	"R3F_AT4CS",
	"R3F_ERYX",
	"R3F_STINGER"];
	
_chargeurs = [   
	"R3F_25Rnd_556x45_FAMAS",
	"R3F_25Rnd_556x45_TRACER_FAMAS",
	"R3F_30Rnd_556x45_FAMAS",
	"R3F_30Rnd_556x45_TRACER_FAMAS",
	"R3F_10Rnd_762x51_FRF2",
	"R3F_7Rnd_127x99_PGM",
	"R3F_7Rnd_127x99_PEI_PGM",
	"R3F_10Rnd_127x99_M107",
	"R3F_10Rnd_127x99_PEI_M107",
	"R3F_200Rnd_556x45_MINIMI",
	"R3F_100Rnd_762x51_MINIMI",
	"R3F_20Rnd_762x51_HK417",
	"R3F_20Rnd_762x51_TRACER_HK417",
	"R3F_30Rnd_556x45_HK416",
	"R3F_30Rnd_556x45_TRACER_HK416",
	"R3F_30Rnd_9x19_MP5",
	"R3F_7Rnd_M4S90",
	"R3F_15Rnd_9x19_PAMAS",
	"R3F_5Rnd_127x99_TAC50",
	"R3F_AT4CS_Mag",
	"R3F_ERYX_Mag",
	"R3F_STINGER_Mag","1Rnd_HE_Grenade_shell",
	"UGL_FlareWhite_F",
	"UGL_FlareGreen_F",
	"UGL_FlareRed_F",
	"UGL_FlareYellow_F",
	"UGL_FlareCIR_F",
	"1Rnd_Smoke_Grenade_shell",
	"1Rnd_SmokeRed_Grenade_shell",
	"1Rnd_SmokeGreen_Grenade_shell",
	"1Rnd_SmokeYellow_Grenade_shell",
	"1Rnd_SmokePurple_Grenade_shell",
	"1Rnd_SmokeBlue_Grenade_shell",
	"1Rnd_SmokeOrange_Grenade_shell",
	"3Rnd_HE_Grenade_shell",
	"3Rnd_UGL_FlareWhite_F",
	"3Rnd_UGL_FlareGreen_F",
	"3Rnd_UGL_FlareRed_F",
	"3Rnd_UGL_FlareYellow_F",
	"3Rnd_UGL_FlareCIR_F",
	"3Rnd_Smoke_Grenade_shell",
	"3Rnd_SmokeRed_Grenade_shell",
	"3Rnd_SmokeGreen_Grenade_shell",
	"3Rnd_SmokeYellow_Grenade_shell",
	"3Rnd_SmokePurple_Grenade_shell",
	"3Rnd_SmokeBlue_Grenade_shell",
	"3Rnd_SmokeOrange_Grenade_shell",
	"MiniGrenade",
	"HandGrenade",
	"DemoCharge_Remote_Mag",
	"SatchelCharge_Remote_Mag",
	"ATMine_Range_Mag",
	"ClaymoreDirectionalMine_Remote_Mag",
	"APERSMine_Range_Mag",
	"APERSBoundingMine_Range_Mag",
	"SLAMDirectionalMine_Wire_Mag",
	"APERSTripMine_Wire_Mag",
	"SmokeShell",
	"SmokeShellYellow",
	"SmokeShellGreen",
	"SmokeShellRed",
	"SmokeShellPurple",
	"SmokeShellOrange",
	"SmokeShellBlue",
	"Chemlight_green",
	"Chemlight_red",
	"Chemlight_yellow",
	"Chemlight_blue",
	"B_IR_Grenade"];
	
_vests = [
	"V_RebreatherB",
	"ARC_FR_CE_Plate_Carrier",
	"ARC_FR_CE_Plate_Carrier_H",
	"ARC_FR_CE_rangemaster_belt",
	"ARC_FR_CE_BandollierB_rgr",
	"ARC_FR_CE_PlateCarrier_1",
	"ARC_FR_CE_PlateCarrier_2",
	"ARC_FR_Daguet_Plate_Carrier",
	"ARC_FR_Daguet_Plate_Carrier_H",
	"ARC_FR_Daguet_rangemaster_belt",
	"ARC_FR_Daguet_BandollierB_rgr",
	"ARC_FR_Daguet_PlateCarrier_1",
	"ARC_FR_Daguet_PlateCarrier_2"];
	
_treillis = [
	"ARC_FR_CE_Uniform",
	"ARC_FR_CE_Uniform_Light",
	"ARC_FR_CE_Uniform_tshirt",
	"ARC_FR_CE_Uniform_vest",
	"ARC_FR_Daguet_Uniform",
	"ARC_FR_Daguet_Uniform_Light",
	"ARC_FR_Daguet_Uniform_tshirt",
	"ARC_FR_Daguet_Uniform_vest",
	"U_B_Wetsuit",
	"U_B_HeliPilotCoveralls",
	"U_B_GhillieSuit",
	"U_B_PilotCoveralls"];
	
_backpacks = [
	"ARC_FR_Backpack_CE",
	"ARC_FR_Backpack_compact_CE",
	"ARC_FR_Kitbag_compact_CE",
	"ARC_FR_Backpack_CE_Med",
	"ARC_FR_Backpack_CE_Rep",
	"ARC_FR_Backpack_Carryall_CE",
	"ARC_FR_Backpack_Daguet",
	"ARC_FR_Backpack_compact_Daguet",
	"ARC_FR_Kitbag_compact_Daguet",
	"ARC_FR_Backpack_Daguet_Med",
	"ARC_FR_Backpack_Daguet_Rep",
	"ARC_FR_Backpack_Carryall_Daguet",
	"B_Parachute",
	"B_UAV_01_backpack_F"];	

_items = [    
	"ItemMap",
	"ItemGPS",
	"ItemCompass",
	"ItemWatch",
	"ItemRadio",
	"B_UavTerminal",
	"NVGoggles",
	"FirstAidKit", 
	"MediKit",
	"ToolKit",
	"MineDetector",
	"Binocular",
	"Laserbatteries",
	"G_B_Diving",
	"Item_R3F_SIT_COMDE",
	"R3F_JIM_LR",
	"R3F_JIM_LR_DES"];

_misc = [
	"R3F_AIMPOINT",
	"R3F_AIMPOINT_DES",
	"R3F_EOTECH",
	"R3F_EOTECH_DES",
	"R3F_J4",
	"R3F_J4_DES",
	"R3F_FELIN",
	"R3F_FELIN_DES",
	"R3F_FELIN_FRF2",
	"R3F_J8",
	"R3F_J8_DES",
	"R3F_J8_MILDOT",
	"R3F_J8_MILDOT_DES",
	"R3F_J10",
	"R3F_J10_DES",
	"R3F_J10_MILDOT",
	"R3F_J10_MILDOT_DES",
	"R3F_NF",
	"R3F_NF_DES",
	"R3F_NF42",
	"R3F_NF42_DES",
	"R3F_ZEISS",
	"R3F_ZEISS_DES",
	"R3F_OB50",
	"R3F_LAMPE_SURB",
	"R3F_LAMPE_SURB_DES",
	"R3F_POINTEUR_SURB",
	"R3F_POINTEUR_SURB_DES",
	"R3F_PIRAT",
	"R3F_PIRAT_DES",
	"R3F_SILENCIEUX_FAMAS",
	"R3F_SILENCIEUX_FAMAS_DES",
	"R3F_SILENCIEUX_HK416",
	"R3F_SILENCIEUX_HK416_DES",
	"R3F_SILENCIEUX_FRF2",
	"R3F_SILENCIEUX_FRF2_DES",
	"R3F_SILENCIEUX_HK417",
	"R3F_SILENCIEUX_HK417_DES",
	"R3F_SILENCIEUX_MINIMI",
	"R3F_SILENCIEUX_MINIMI_DES",
	"R3F_BIPIED_HK417",
	"R3F_BIPIED_HK417_DES",
	"muzzle_snds_L"];
	
_casques = [
	"H_Beret_02", 
	"ARC_FR_CE_Milcap",
	"ARC_FR_CE_Helmet",
	"ARC_FR_CE_Helmet_simple",
	"ARC_FR_CE_Helmet_Light",
	"ARC_FR_CE_Mich",
	"ARC_FR_CE_booniehat",
	"ARC_FR_Daguet_Milcap",
	"ARC_FR_Daguet_Helmet",
	"ARC_FR_Daguet_Helmet_simple",
	"ARC_FR_Daguet_Helmet_Light",
	"ARC_FR_Daguet_Mich",
	"ARC_FR_Daguet_booniehat"];
	
[_panneau, _armes, true, false] call BIS_fnc_addVirtualWeaponCargo;
[_panneau, _chargeurs, true, false] call BIS_fnc_addVirtualMagazineCargo;
[_panneau, _backpacks, true, false] call BIS_fnc_addVirtualBackpackCargo;
[_panneau, _misc + _items + _treillis + _vests + _casques + ["R3F_APAV40","R3F_AC58","R3F_ECL40","R3F_FUM40"], true, false] call BIS_fnc_addVirtualItemCargo;
