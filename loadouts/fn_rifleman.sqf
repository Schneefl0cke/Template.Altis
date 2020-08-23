 params ["_player"];
 _this = _player;
_loadout = 	"Loadouts"	call BIS_fnc_getParamValue;
[_this] call HEC_fnc_removeLoadout;

/*
	title="Ausrüstung";
	values[] = {
		1, 2, 3, - done
		10, 11, 12, - done 13,
		21, 22, 23,
		100, 101,
		110, 111, 112, 113,
		200, 201,
		212, 213
	};
	texts[] = {
		"NATO", "NATO - Apex", "CTRG",
		"USA - MARPAT", "USA - UCP", "USA - OCP", "USA - Vietnam",
		"Bundeswehr - Flecktarn", "Bundeswehr - Tropen", "GM - Frühe Bundeswehr",
		"AAF", "LDV",
		"Guerilla", "PMC", "African Army", "Taliban",
		"CSAT", "CSAT - Apex",
		"RU - Summer", "GM - DDR"
	};
	default = 10;
*/

//TODO: USA Vietnam, Bundeswehr alle, LDV

_magazines = 8;

switch (_loadout) do {
	//APEX
	case 2 : {
		//Uniform
		_uniform = selectRandom ["U_B_T_Soldier_AR_F","U_B_T_Soldier_SL_F","U_B_T_Soldier_F","U_B_T_Soldier_F"];
		_this forceAddUniform _uniform;
		_vest = selectRandom ["V_PlateCarrier1_tna_F","V_PlateCarrier2_tna_F"];
		_this addVest _vest;
		_headgear = selectRandom ["H_HelmetB_tna_F","H_HelmetB_Enh_tna_F","H_HelmetB_Light_tna_F"];
		_this addHeadgear _headgear;

		//Weapons
		_primaryweapon = selectRandom ["arifle_MX_Black_F","arifle_MX_F"];
		_this addWeapon _primaryweapon;
		_optic = selectRandom ["optic_ACO","optic_Holosight","optic_Holosight_smg","optic_Aco_smg"];
		_this addPrimaryWeaponItem _optic;
		_this addPrimaryWeaponItem "hgun_Pistol_heavy_01_F";
		_this addWeapon "hgun_Pistol_heavy_01_MRD_F";
		_this addHandgunItem "optic_MRD";
		_this addHandgunItem "11Rnd_45ACP_Mag";
		_this addWeapon "launch_NLAW_F";

		//Ammo
		for "_i" from 1 to _magazines do {_this addMagazine "30Rnd_65x39_caseless_mag";};
	};

	//CTRG
	case 3 : {
		//Uniform
		_uniform = selectRandom ["U_B_CTRG_1","U_B_CTRG_2","U_B_CTRG_3"];
		_this forceAddUniform _uniform;
		_vest = selectRandom ["V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG","V_PlateCarrierIAGL_oli"];
		_this addVest _vest;
		_headgear = selectRandom ["H_HelmetSpecB_paint1","H_HelmetSpecB_paint2","H_HelmetB_black","H_HelmetB","H_HelmetB_desert","H_HelmetB_grass","H_HelmetB_paint"];
		_this addHeadgear _headgear;

		//Weapons
		_primaryweapon = selectRandom ["arifle_MX_Black_F","arifle_MX_F"];
		_this addWeapon _primaryweapon;
		_optic = selectRandom ["optic_ACO","optic_Holosight","optic_Holosight_smg","optic_Aco_smg"];
		_this addPrimaryWeaponItem _optic;
		_this addPrimaryWeaponItem "hgun_Pistol_heavy_01_F";
		_this addWeapon "hgun_Pistol_heavy_01_MRD_F";
		_this addHandgunItem "optic_MRD";
		_this addHandgunItem "11Rnd_45ACP_Mag";
		_this addWeapon "launch_NLAW_F";

		//Ammo
		for "_i" from 1 to _magazines do {_this addMagazine "30Rnd_65x39_caseless_mag";};
	};
	
	//RHS MARPAT
	case 10:{
		//Uniform
		_uniform = selectRandom ["rhs_uniform_FROG01_d"];
		_this forceAddUniform _uniform;
		_vest = selectRandom ["rhsusf_iotv_ucp_Rifleman"];
		_this addVest _vest;
		_headgear = selectRandom ["rhsusf_lwh_helmet_marpatd","rhsusf_mich_helmet_marpatd","rhsusf_mich_helmet_marpatd_alt","rhsusf_mich_helmet_marpatd_norotos"];
		_this addHeadgear _headgear;

		//Weapons
		_primaryweapon = selectRandom ["rhs_weap_m4_carryhandle","rhs_weap_m4_carryhandle_mstock","rhs_weap_m4a1_carryhandle"];
		_this addWeapon _primaryweapon;
		_optic = selectRandom ["rhsusf_acc_ACOG","rhsusf_acc_ACOG3","rhsusf_acc_T1_high","rhsusf_acc_eotech_552","rhsusf_acc_compm4","rhsusf_acc_eotech_xps3"];
		_this addPrimaryWeaponItem _optic;
		_this addPrimaryWeaponItem "hgun_Pistol_heavy_01_F";
		_this addWeapon "hgun_Pistol_heavy_01_MRD_F";
		_this addHandgunItem "optic_MRD";
		_this addHandgunItem "11Rnd_45ACP_Mag";
		_this addWeapon "rhs_weap_M136";

		//Ammo
		for "_i" from 1 to _magazines do {_this addMagazine "rhs_mag_30Rnd_556x45_M855A1_Stanag";};

	};

	//RHS UCP
	case 11:{
		//Uniform
		_uniform = selectRandom ["rhs_uniform_cu_ucp"];
		_this forceAddUniform _uniform;
		_vest = selectRandom ["rhsusf_iotv_ucp_Rifleman"];
		_this addVest _vest;
		_headgear = selectRandom ["rhsusf_ach_helmet_ucp","rhsusf_ach_helmet_headset_ucp","rhsusf_ach_helmet_ESS_ucp","rhsusf_ach_helmet_headset_ess_ucp",
			"rhsusf_mich_bare_norotos_alt","rhsusf_mich_bare_headset","rhsusf_ach_bare_ess","rhsusf_ach_bare_headset_ess"];
		_this addHeadgear _headgear;

		//Weapons
		_primaryweapon = selectRandom ["rhs_weap_m4_carryhandle","rhs_weap_m4_carryhandle_mstock","rhs_weap_m4a1_carryhandle"];
		_this addWeapon _primaryweapon;
		_optic = selectRandom ["rhsusf_acc_ACOG","rhsusf_acc_ACOG3","rhsusf_acc_T1_high","rhsusf_acc_eotech_552","rhsusf_acc_compm4","rhsusf_acc_eotech_xps3"];
		_this addPrimaryWeaponItem _optic;
		_this addPrimaryWeaponItem "hgun_Pistol_heavy_01_F";
		_this addWeapon "hgun_Pistol_heavy_01_MRD_F";
		_this addHandgunItem "optic_MRD";
		_this addHandgunItem "11Rnd_45ACP_Mag";
		_this addWeapon "rhs_weap_M136";
		
		//Ammo
		for "_i" from 1 to _magazines do {_this addMagazine "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	};

	//RHS OCP
	case 12:{
		//Uniform
		_uniform = selectRandom ["rhs_uniform_cu_ocp"];
		_this forceAddUniform _uniform;
		_vest = selectRandom ["rhsusf_iotv_ocp_Rifleman"];
		_this addVest _vest;
		_headgear = selectRandom ["rhsusf_ach_helmet_ocp","rhsusf_ach_helmet_headset_ocp","rhsusf_ach_helmet_ESS_ocp","rhsusf_ach_helmet_headset_ess_ocp",
			"rhsusf_mich_bare_tan","rhsusf_mich_bare_tan_headset","rhsusf_ach_bare_tan_ess","rhsusf_ach_bare_tan_headset_ess"];
		_this addHeadgear _headgear;

		//Weapons
		_primaryweapon = selectRandom ["rhs_weap_m4_carryhandle","rhs_weap_m4_carryhandle_mstock","rhs_weap_m4a1_carryhandle"];
		_this addWeapon _primaryweapon;
		_optic = selectRandom ["rhsusf_acc_ACOG","rhsusf_acc_ACOG3","rhsusf_acc_T1_high","rhsusf_acc_eotech_552","rhsusf_acc_compm4","rhsusf_acc_eotech_xps3"];
		_this addPrimaryWeaponItem _optic;
		_this addPrimaryWeaponItem "hgun_Pistol_heavy_01_F";
		_this addWeapon "hgun_Pistol_heavy_01_MRD_F";
		_this addHandgunItem "optic_MRD";
		_this addHandgunItem "11Rnd_45ACP_Mag";
		_this addWeapon "rhs_weap_M136";

		//Ammo
		for "_i" from 1 to _magazines do {_this addMagazine "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	};

	//AAF
	case 100 : {
		//Uniform
		_uniform = selectRandom ["U_I_CombatUniform","U_I_CombatUniform_shortsleeve"];
		_this forceAddUniform _uniform;
		_vest = selectRandom ["V_PlateCarrierIA2_dgtl","V_PlateCarrierIA1_dgtl"];
		_this addVest _vest;
		_headgear = selectRandom ["H_HelmetIA"];
		_this addHeadgear _headgear;

		//Weapons
		_primaryweapon = selectRandom ["arifle_Mk20_F","arifle_Mk20_plain_F"];
		_this addWeapon _primaryweapon;
		_optic = selectRandom ["optic_ACO","optic_Holosight"];
		_this addPrimaryWeaponItem _optic;
		_this addPrimaryWeaponItem "hgun_Pistol_heavy_01_F";
		_this addWeapon "hgun_Pistol_heavy_01_MRD_F";
		_this addHandgunItem "optic_MRD";
		_this addHandgunItem "11Rnd_45ACP_Mag";
		_this addWeapon "launch_NLAW_F";

		//Ammo
		for "_i" from 1 to _magazines do {_this addMagazine "30Rnd_556x45_Stanag";};
	};

	//110 guerilla 
	case 110 : {
		//Uniform
		_uniform = selectRandom ["U_I_C_Soldier_Camo_F","U_I_C_Soldier_Para_1_F","U_I_C_Soldier_Para_2_F","U_I_C_Soldier_Para_3_F"];
		_this forceAddUniform _uniform;
		_vest = selectRandom ["V_TacChestrig_grn_F","V_TacChestrig_cbr_F","V_TacChestrig_oli_F","V_HarnessO_brn","V_HarnessO_ghex_F","V_TacVest_oli","V_I_G_resistanceLeader_F"];
		_this addVest _vest;
		_headgear = selectRandom ["H_Cap_headphones","H_Shemag_olive","H_MilCap_gry","H_MilCap_blue","H_Cap_oli","H_Cap_grn","H_Booniehat_oli","H_Bandanna_khk","","","",""];
		_this addHeadgear _headgear;
		//backpacks: ["CUP_B_AlicePack_Bedroll","CUP_B_AlicePack_Khaki","CUP_B_AlicePack_OD"];

		//Weapons
		_primaryweapon = selectRandom ["rhs_weap_ak74m","rhs_weap_ak74m_camo","rhs_weap_ak74m_desert","rhs_weap_ak74m_plummag","rhs_weap_ak74m_2mag","rhs_weap_ak74m_2mag_camo"];
		_this addWeapon _primaryweapon;
		_optic = selectRandom ["rhs_acc_pso1m2","rhs_acc_pso1m2","rhs_acc_pso1m2","rhs_acc_1p29"];
		_this addPrimaryWeaponItem _optic;
		_this addPrimaryWeaponItem "hgun_Pistol_heavy_01_F";
		_this addWeapon "hgun_Pistol_heavy_01_MRD_F";
		_this addHandgunItem "optic_MRD";
		_this addHandgunItem "11Rnd_45ACP_Mag";
		_this addWeapon "rhs_weap_rpg26";

		//Ammo
		for "_i" from 1 to 8 do {_this addMagazine "rhs_30Rnd_545x39_7N10_AK";};
	};
	
	//111 PMC
	case 111 : {
		//Uniform
		_uniform = selectRandom ["U_IG_Guerrilla_6_1","U_IG_Guerilla2_2","U_IG_Guerilla2_1","U_IG_Guerilla2_3","U_IG_Guerilla3_1","U_C_HunterBody_grn","U_Rangemaster","U_C_Poor_1","U_Competitor"];
		_this forceAddUniform _uniform;
		_vest = selectRandom ["V_PlateCarrier1_blk","V_PlateCarrier2_blk","V_TacVestIR_blk","V_Chestrig_blk","V_Chestrig_rgr","V_PlateCarrier1_rgr_noflag_F"];
		_this addVest _vest;
		_headgear = selectRandom ["H_Cap_blk","H_Cap_blu","H_Cap_blk_CMMG","H_Cap_grn","H_Cap_oli","H_Cap_oli_hs","H_Cap_red","H_Cap_tan","H_MilCap_blue","H_MilCap_gry","H_Cap_headphones"];
		_this addHeadgear _headgear;
		//backpacks: ["CUP_B_AlicePack_Bedroll","CUP_B_AlicePack_Khaki","CUP_B_AlicePack_OD"];

		//Weapons
		_primaryweapon = selectRandom ["rhs_weap_ak74m","rhs_weap_ak74m_camo","rhs_weap_ak74m_desert","rhs_weap_ak74m_plummag","rhs_weap_ak74m_2mag","rhs_weap_ak74m_2mag_camo"];
		_this addWeapon _primaryweapon;
		_optic = selectRandom ["rhs_acc_pso1m2","rhs_acc_pso1m2","rhs_acc_pso1m2","rhs_acc_1p29"];
		_this addPrimaryWeaponItem _optic;
		_this addPrimaryWeaponItem "hgun_Pistol_heavy_01_F";
		_this addWeapon "hgun_Pistol_heavy_01_MRD_F";
		_this addHandgunItem "optic_MRD";
		_this addHandgunItem "11Rnd_45ACP_Mag";
		_this addWeapon "rhs_weap_rpg26";

		//Ammo
		for "_i" from 1 to 8 do {_this addMagazine "rhs_30Rnd_545x39_7N10_AK";};
	};

	//Africa
	case 112:{
		//Uniform
		_uniform = selectRandom ["CUP_U_O_SLA_Desert"];
		_this forceAddUniform _uniform;
		_vest = selectRandom ["CUP_V_O_SLA_6B3_2_DES","CUP_V_O_SLA_6B3_5_DES","CUP_V_O_SLA_6B3_3_DES","CUP_V_O_SLA_6B3_4_DES"];
		_this addVest _vest;
		_headgear = selectRandom ["CUP_H_TK_Helmet","CUP_H_SLA_Helmet_BLK_worn","CUP_H_SLA_Helmet_BLK","CUP_H_SLA_Helmet_DES","CUP_H_SLA_Helmet_DES_worn"];
		_this addHeadgear _headgear;
		//backpacks: ["CUP_B_AlicePack_Bedroll","CUP_B_AlicePack_Khaki","CUP_B_AlicePack_OD"];

		//Weapons
		_primaryweapon = selectRandom ["rhs_weap_ak74m","rhs_weap_ak74m_camo","rhs_weap_ak74m_desert","rhs_weap_ak74m_plummag","rhs_weap_ak74m_2mag","rhs_weap_ak74m_2mag_camo"];
		_this addWeapon _primaryweapon;
		_this addPrimaryWeaponItem _optic;
		_this addPrimaryWeaponItem "hgun_Pistol_heavy_01_F";
		_this addWeapon "hgun_Pistol_heavy_01_MRD_F";
		_this addHandgunItem "optic_MRD";
		_this addHandgunItem "11Rnd_45ACP_Mag";
		_this addWeapon "rhs_weap_rpg26";

		//Ammo
		for "_i" from 1 to _magazines do {_this addMagazine "rhs_30Rnd_545x39_7N10_AK";};
	};

	//Taliban
	case 113:{
		//Uniform
		_uniform = selectRandom ["CUP_O_TKI_Khet_Partug_01","CUP_O_TKI_Khet_Partug_02","CUP_O_TKI_Khet_Partug_03","CUP_O_TKI_Khet_Partug_04"
			,"CUP_O_TKI_Khet_Partug_05","CUP_O_TKI_Khet_Partug_06","CUP_O_TKI_Khet_Partug_07","CUP_O_TKI_Khet_Partug_08"];
		_this forceAddUniform _uniform;
		_vest = selectRandom ["CUP_V_I_Guerilla_Jacket","CUP_V_OI_TKI_Jacket4_01","CUP_V_OI_TKI_Jacket4_02","CUP_V_OI_TKI_Jacket4_03","CUP_V_OI_TKI_Jacket4_04","CUP_V_OI_TKI_Jacket4_05","CUP_V_OI_TKI_Jacket4_06"
			,"CUP_V_OI_TKI_Jacket5_01","CUP_V_OI_TKI_Jacket5_02","CUP_V_OI_TKI_Jacket5_03","CUP_V_OI_TKI_Jacket5_04","CUP_V_OI_TKI_Jacket5_05","CUP_V_OI_TKI_Jacket5_06"
			,"CUP_V_OI_TKI_Jacket3_01","CUP_V_OI_TKI_Jacket3_02","CUP_V_OI_TKI_Jacket3_03","CUP_V_OI_TKI_Jacket3_04","CUP_V_OI_TKI_Jacket3_05","CUP_V_OI_TKI_Jacket3_06"
			,"CUP_V_OI_TKI_Jacket2_01","CUP_V_OI_TKI_Jacket2_02","CUP_V_OI_TKI_Jacket2_03","CUP_V_OI_TKI_Jacket2_04","CUP_V_OI_TKI_Jacket2_05","CUP_V_OI_TKI_Jacket2_06"];
		_this addVest _vest;
		_headgear = selectRandom ["CUP_H_TK_Lungee","CUP_H_TKI_Lungee_Open_02","CUP_H_TKI_Lungee_Open_05","CUP_H_TKI_Lungee_Open_06","CUP_H_TKI_Lungee_01","CUP_H_TKI_Lungee_04","CUP_H_TKI_Lungee_05","CUP_H_TKI_Lungee_06"
			,"CUP_H_TKI_Pakol_1_01","CUP_H_TKI_Pakol_1_02","CUP_H_TKI_Pakol_1_03","CUP_H_TKI_Pakol_1_04","CUP_H_TKI_Pakol_1_05","CUP_H_TKI_Pakol_1_06"
			,"CUP_H_TKI_Pakol_2_01","CUP_H_TKI_Pakol_2_02","CUP_H_TKI_Pakol_2_03","CUP_H_TKI_Pakol_2_04","CUP_H_TKI_Pakol_2_05","CUP_H_TKI_Pakol_2_06"
		];
		_this addHeadgear _headgear;
		//backpacks: ["CUP_B_AlicePack_Bedroll","CUP_B_AlicePack_Khaki","CUP_B_AlicePack_OD"];

		//Weapons
		_primaryweapon = selectRandom ["rhs_weap_ak74m","rhs_weap_ak74m_camo","rhs_weap_ak74m_desert","rhs_weap_ak74m_plummag","rhs_weap_ak74m_2mag","rhs_weap_ak74m_2mag_camo"];
		_this addWeapon _primaryweapon;
		_optic = selectRandom ["rhs_acc_pso1m2","rhs_acc_pso1m2","rhs_acc_pso1m2","rhs_acc_1p29"];
		_this addPrimaryWeaponItem _optic;
		_this addPrimaryWeaponItem "hgun_Pistol_heavy_01_F";
		_this addWeapon "hgun_Pistol_heavy_01_MRD_F";
		_this addHandgunItem "optic_MRD";
		_this addHandgunItem "11Rnd_45ACP_Mag";
		_this addWeapon "rhs_weap_rpg26";

		//Ammo
		for "_i" from 1 to _magazines do {_this addMagazine "rhs_30Rnd_545x39_7N10_AK";};

	};

	//CSAT
	case 200 : {
		//Uniform
		_uniform = selectRandom ["U_O_CombatUniform_ocamo"];
		_this forceAddUniform _uniform;
		_vest = selectRandom ["V_HarnessOSpec_brn"];
		_this addVest _vest;
		_headgear = selectRandom ["H_HelmetSpecO_ocamo","H_HelmetO_ocamo"];
		_this addHeadgear _headgear;
		//backpacks: ["CUP_B_AlicePack_Bedroll","CUP_B_AlicePack_Khaki","CUP_B_AlicePack_OD"];

		//Weapons
		_primaryweapon = selectRandom ["arifle_Katiba_F"];
		_this addWeapon _primaryweapon;
		_optic = selectRandom ["optic_ACO_grn","optic_Holosight"];
		_this addPrimaryWeaponItem _optic;
		_this addPrimaryWeaponItem "hgun_Pistol_heavy_01_F";
		_this addWeapon "hgun_Pistol_heavy_01_MRD_F";
		_this addHandgunItem "optic_MRD";
		_this addHandgunItem "11Rnd_45ACP_Mag";
		_this addWeapon "launch_RPG32_F";

		//Ammo
		for "_i" from 1 to _magazines do {_this addMagazine "30Rnd_65x39_caseless_green";};
	};

	//CSAT - Apex
	case 201 : {
		//Uniform
		_uniform = selectRandom ["U_O_T_Soldier_F"];
		_this forceAddUniform _uniform;
		_vest = selectRandom ["V_HarnessO_ghex_F","V_HarnessO_ghex_F","V_HarnessOSpec_brn","V_TacVest_oli"];
		_this addVest _vest;
		_headgear = selectRandom ["H_HelmetO_ghex_F","H_HelmetSpecO_ghex_F"];
		_this addHeadgear _headgear;
		//backpacks: ["CUP_B_AlicePack_Bedroll","CUP_B_AlicePack_Khaki","CUP_B_AlicePack_OD"];

		//Weapons
		_primaryweapon = selectRandom ["arifle_CTAR_blk_F"];
		_this addWeapon _primaryweapon;
		_optic = selectRandom ["optic_ACO_grn","optic_Holosight_blk_f"];
		_this addPrimaryWeaponItem _optic;
		_this addPrimaryWeaponItem "hgun_Pistol_heavy_01_F";
		_this addWeapon "hgun_Pistol_heavy_01_MRD_F";
		_this addHandgunItem "optic_MRD";
		_this addHandgunItem "11Rnd_45ACP_Mag";
		_this addWeapon "launch_RPG32_ghex_F";

		//Ammo
		for "_i" from 1 to _magazines do {_this addMagazine "30Rnd_580x42_Mag_F";};

	};

	//Russia
	case 212:{
		//Uniform
		_uniform = selectRandom ["rhs_uniform_emr_patchless"];
		_this forceAddUniform _uniform;
		_vest = selectRandom ["rhs_6b23_digi_6sh92","rhs_6b13_Flora_6sh92","rhs_6b13_6sh92"];
		_this addVest _vest;
		_headgear = selectRandom ["rhs_6b28","rhs_6b28_ess","rhs_6b26_green","rhs_6b26_ess_green","rhs_6b27m_green","rhs_6b27m_green_ess","rhs_6b27m","rhs_6b27m_ess","rhs_6b28_green","rhs_6b28_green_ess"];
		_this addHeadgear _headgear;
		//backpacks: ["CUP_B_AlicePack_Bedroll","CUP_B_AlicePack_Khaki","CUP_B_AlicePack_OD"];

		//Weapons
		_primaryweapon = selectRandom ["rhs_weap_ak74m","rhs_weap_ak74m_camo","rhs_weap_ak74m_desert","rhs_weap_ak74m_plummag","rhs_weap_ak74m_2mag","rhs_weap_ak74m_2mag_camo"];
		_this addWeapon _primaryweapon;
		_optic = selectRandom ["rhs_acc_pso1m2","rhs_acc_pso1m2","rhs_acc_pso1m2","rhs_acc_1p29"];
		_this addPrimaryWeaponItem _optic;
		_this addPrimaryWeaponItem "hgun_Pistol_heavy_01_F";
		_this addWeapon "hgun_Pistol_heavy_01_MRD_F";
		_this addHandgunItem "optic_MRD";
		_this addHandgunItem "11Rnd_45ACP_Mag";
		_this addWeapon "rhs_weap_rpg26";

		//Ammo
		for "_i" from 1 to 8 do {_this addMagazine "rhs_30Rnd_545x39_7N10_AK";};
	};

	//NATO
	default {
		//Uniform
		_uniform = selectRandom ["U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam_vest","U_B_CombatUniform_mcam","U_B_CombatUniform_mcam"];
		_this forceAddUniform _uniform;
		_vest = selectRandom ["V_PlateCarrier2_rgr","V_PlateCarrier1_rgr"];
		_this addVest _vest;
		_headgear = selectRandom ["H_HelmetSpecB_paint1","H_HelmetSpecB_paint2","H_HelmetB_black","H_HelmetB","H_HelmetB_desert","H_HelmetB_grass","H_HelmetB_paint"];
		_this addHeadgear _headgear;

		//Weapons
		_primaryweapon = selectRandom ["arifle_MX_Black_F","arifle_MX_F"];
		_this addWeapon _primaryweapon;
		_optic = selectRandom ["optic_ACO","optic_Holosight","optic_Holosight_smg","optic_Aco_smg"];
		_this addPrimaryWeaponItem _optic;
		_this addPrimaryWeaponItem "hgun_Pistol_heavy_01_F";
		_this addWeapon "hgun_Pistol_heavy_01_MRD_F";
		_this addHandgunItem "optic_MRD";
		_this addHandgunItem "11Rnd_45ACP_Mag";
		_this addWeapon "launch_NLAW_F";

		//Ammo
		for "_i" from 1 to 8 do {_this addMagazine "30Rnd_65x39_caseless_mag";};
	};
};

[_this] call HEC_fnc_basicLoadout;