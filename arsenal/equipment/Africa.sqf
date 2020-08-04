﻿params ["_arsenalContainer"];
_crate = missionNamespace getVariable [_arsenalContainer , objNull];
//Lists of items to include. Fill it with the stuff you want in the Arsenal!

_loadout = [
"rhs_weap_ak103",
"rhs_weap_ak103_1",
"rhs_weap_ak103_2",
"rhs_weap_ak103_gp25",
"rhs_weap_ak103_gp25_npz",
"rhs_weap_ak103_npz",
"rhs_weap_ak104",
"rhs_weap_ak104_npz",
"rhs_weap_ak105",
"rhs_weap_ak105_npz",
"rhs_weap_ak74m",
"rhs_weap_ak74m_2mag",
"rhs_weap_ak74m_2mag_camo",
"rhs_weap_ak74m_2mag_npz",
"rhs_weap_ak74m_camo",
"rhs_weap_ak74m_camo_folded",
"rhs_weap_ak74m_camo_npz",
"rhs_weap_ak74m_desert",
"rhs_weap_ak74m_desert_folded",
"rhs_weap_ak74m_desert_npz",
"rhs_weap_ak74m_folded",
"rhs_weap_ak74m_gp25",
"rhs_weap_ak74m_gp25_npz",
"rhs_weap_ak74m_npz",
"rhs_weap_ak74m_plummag",
"rhs_weap_ak74m_plummag_folded",
"rhs_weap_ak74m_plummag_npz",
"rhs_weap_akm",
"rhs_weap_akm_gp25",
"rhs_weap_akms",
"rhs_weap_akms_gp25",
"rhs_weap_asval",
"rhs_weap_asval_npz",
"rhs_30Rnd_545x39_AK",
"rhs_30Rnd_545x39_AK_no_tracers",
"rhs_30Rnd_545x39_AK_green",
"rhs_30Rnd_545x39_7N10_AK",
"rhs_30Rnd_545x39_7N22_AK",
"rhs_30Rnd_545x39_7U1_AK",
"rhs_45Rnd_545X39_7N22_AK",
"rhs_45Rnd_545X39_7N10_AK",
"rhs_45Rnd_545X39_AK_Green",
"rhs_45Rnd_545X39_AK",
"rhs_45Rnd_545X39_7U1_AK",
"rhs_30Rnd_762x39mm",
"rhs_30Rnd_762x39mm_tracer",
"rhs_30Rnd_762x39mm_89",
"rhs_30Rnd_762x39mm_U",
"rhs_20rnd_9x39mm_SP5",
"rhs_20rnd_9x39mm_SP6",
"rhs_weap_pkm",
"rhs_weap_pkp",
"rhs_100Rnd_762x54mmR",
"rhs_100Rnd_762x54mmR_green",
"rhs_weap_svdp",
"rhs_weap_svdp_npz",
"rhs_weap_svdp_wd",
"rhs_weap_svdp_wd_npz",
"rhs_weap_svds",
"rhs_weap_svds_npz",
"rhs_10Rnd_762x54mmR_7N1",
"rhs_weap_igla",
"rhs_weap_rpg26",
"rhs_weap_rpg7",
"rhs_weap_rshg2",
"rhs_rpg26_mag",
"rhs_rshg2_mag",
"rhs_rpg18_mag",
"rhs_rpg7_PG7VL_mag",
"rhs_rpg7_PG7VR_mag",
"rhs_rpg7_TBG7V_mag",
"rhs_rpg7_OG7V_mag",
"rhs_mag_9k32_rocket",
"rhs_mag_9k38_rocket",
"rhs_weap_makarov_pmm",
"rhs_weap_pya",
"rhs_mag_9x19_17",
"rhs_mag_9x18_12_57N181S",
"rhs_bipod",
"rhs_acc_tgpa",
"rhs_acc_pbs1",
"rhs_acc_dtk4short",
"rhs_acc_tgpv",
"rhs_acc_dtk4long",
"rhs_acc_dtk4screws",
"rhs_acc_muzzleFlash_dtk",
"rhs_acc_dtk3",
"rhs_acc_dtk1",
"rhs_acc_dtk",
"rhs_acc_dtk1l",
"rhs_acc_ak5",
"rhs_acc_1p29",
"rhs_acc_1p78",
"rhs_acc_pkas",
"rhs_acc_ekp1",
"rhs_acc_1p63",
"rhs_acc_ekp1b",
"rhs_acc_ekp1c",
"rhs_acc_ekp1d",
"rhs_acc_npz",
"rhs_acc_pso1m2",
"rhs_acc_pgo7v",
"rhs_acc_1pn93_1",
"rhs_acc_1pn93_2",
"CUP_U_O_SLA_Desert",
"CUP_V_O_SLA_6B3_2_DES",
"CUP_V_O_SLA_6B3_5_DES",
"CUP_V_O_SLA_6B3_3_DES",
"CUP_V_O_SLA_6B3_4_DES",
"NVGoggles_OPFOR",
"CUP_B_AlicePack_Bedroll",
"CUP_B_AlicePack_Khaki",
"CUP_B_AlicePack_OD",
"CUP_H_SLA_Beret","CUP_H_TK_Helmet","CUP_H_SLA_Helmet_BLK_worn","CUP_H_SLA_Helmet_BLK","CUP_H_SLA_Helmet_DES","CUP_H_SLA_Helmet_DES_worn",
"rhs_balaclava"
];


//Populate with predefined items and whatever is already in the crate
[_crate,( _loadout), true] spawn BIS_fnc_addVirtualBackpackCargo;
[_crate,( _loadout), true] spawn BIS_fnc_addVirtualItemCargo;
[_crate,( _loadout), true] spawn BIS_fnc_addVirtualMagazineCargo;
[_crate,( _loadout), true] spawn BIS_fnc_addVirtualWeaponCargo;

true;