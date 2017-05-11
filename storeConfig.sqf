// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
/*********************************************************#
# @@ScriptName: storeConfig.sqf
# @@Author: His_Shadow, AgentRev
# @@Create Date: 2013-09-16 20:40:58
#*********************************************************/

// This tracks which store owner the client is interacting with
currentOwnerName = "";

// Gunstore Weapon List - Gun Store Base List
// Text name, classname, buy cost

// empty name = name is extracted from class config

pistolArray = compileFinal str
[
	// RHS HandGuns
	/*["Glock 17", "rhsusf_weap_glock17g4", 550],
    ["M1911A1", "rhsusf_weap_m1911a1", 575],
    ["M320 GLM", "rhs_weap_M320", 1250],
    ["M9 Beretta", "rhsusf_weap_m9", 450],
    ["MP-443", "rhs_weap_pya", 575],
	["PP-2000 (Folded)", "rhs_weap_pp2000_folded", 2000],
    ["RSP-30 (Green)", "rhs_weap_rsp30_green", 625],
    ["RSP-30 (Red)", "rhs_weap_rsp30_red", 625],
    ["RSP-30 (White)", "rhs_weap_rsp30_white", 625],
	["TR-8 Periscope", "rhs_weap_tr8", 610],*/
	
	// CUP Handguns
	["===========CUP HANDGUNS===========", "CUP_weapon_hgun_PB6P9", 0],
	["PB 6P9", "CUP_hgun_PB6P9", 420],
	["PB 6P9 Silenced", "CUP_hgun_PB6P9_snds", 430],
	["Makarov", "CUP_hgun_Makarov", 520],
	["M1911", "CUP_hgun_Colt1911", 350],
	["M1911 Silenced", "CUP_hgun_Colt1911_snds", 460],
	["CZ 75 P-07 Compact", "CUP_hgun_Compact", 340],
	["CZ 75 P-07 Duty", "CUP_hgun_Duty", 340],
	["CZ 75 P-07 Duty Flashlight", "CUP_hgun_Duty_M3X", 450],
	["Glock 17", "CUP_hgun_Glock17", 540],
	["Glock 17 Flashlight", "CUP_hgun_glock17_flashlight", 550],
	["Glock 17 Silenced", "CUP_hgun_glock17_snds", 650],
	["Glock 17 Flashlight Silenced", "CUP_hgun_glock17_flashlight_snds", 760],
	["Taurus Tracker Model 455", "CUP_hgun_TaurusTracker455", 500],
	["Jesus Christ (Pure Gold)", "CUP_hgun_TaurusTracker455_gold", 1000],
	["M9", "CUP_hgun_M9", 560],
	["M9 Silenced", "CUP_hgun_M9_snds", 570],
	["CZ 75 SP-01 Phantom", "CUP_hgun_Phantom", 540],
	["CZ 75 SP-01 Phantom Flashlight", "CUP_hgun_Phantom_Flashlight", 650],
	["CZ 75 SP-01 Phantom Flashlight Silenced", "CUP_hgun_Phantom_Flashlight_snds", 660],
	["Micro UZI PDW", "CUP_hgun_MicroUzi", 460],
	["Micro UZI PDW Silenced", "CUP_hgun_MicroUzi_snds", 470],
	["SA-61", "CUP_hgun_SA61", 460],
	
	// ARMA 3 Handguns
	["===========ARMA 3 HANDGUNS===========", "CUP_weapon_hgun_PB6P9", 0],
	["PM Pistol", "hgun_Pistol_01_F", 125],
	["P07 Pistol", "hgun_P07_F", 250],
	["P07 Pistol (Khaki)", "hgun_P07_khk_F", 250],
	["Rook-40 Pistol", "hgun_Rook40_F", 250],
	["ACP-C2 Pistol", "hgun_ACPC2_F", 375],
	["Zubr Revolver", "hgun_Pistol_heavy_02_F", 425],
	["4-Five Pistol", "hgun_Pistol_heavy_01_F", 500]
];

smgArray = compileFinal str
[
	// RHS SMG's
	/*["MP7A1 (AOR1)", "rhsusf_weap_MP7A1_aor1", 700],
    ["MP7A1 (Desert)", "rhsusf_weap_MP7A1_desert", 700],
    ["MP7A1 (RHSUSAF)", "rhsusf_weap_MP7A1_base_f", 700],
    ["MP7A1 (Winter)", "rhsusf_weap_MP7A1_winter", 700],
    ["PP-2000", "rhs_weap_pp2000", 600],
    ["Sa vz. 61", "rhs_weap_savz61", 700],*/
	
	// CUP SMG's
	["=============CUP SMG's=============", "CUP_weapon_hgun_PB6P9", 0],
	["PP-19 Bizon", "CUP_smg_bizon", 740],
	["PP-19 Bizon Silenced", "CUP_smg_bizon_snds", 750],
	["Scorpion EVO", "CUP_smg_EVO", 800],
	["Scorpion EVO Flashlight", "CUP_smg_EVO_MRad_Flashlight", 810],
	["Scorpion EVO Flashlight Silenced", "CUP_smg_EVO_MRad_Flashlight_Snds", 820],
	["MP5A5", "CUP_smg_MP5A5", 820],
	["MP5 SD6 (james bond)", "CUP_smg_MP5SD6", 800],
	// CUP Shotguns
	["===========CUP Shotguns===========", "CUP_weapon_hgun_PB6P9", 0],
	["AA-12", "CUP_sgun_AA12", 1500],
	["M1014", "CUP_sgun_M1014", 1100],
	["Saiga12K", "CUP_sgun_Saiga12K", 1200],
	
	// ARMA 3 SMG's
	["===========ARMA 3 SMG's===========", "CUP_weapon_hgun_PB6P9", 0],
	["PDW2000 SMG", "hgun_PDW2000_F", 500],
	["Protector SMG", "SMG_05_F", 450],
	["Sting SMG", "SMG_02_F", 550],
	["Vermin SMG", "SMG_01_F", 675]
];

rifleArray = compileFinal str
[
	// Underwater Gun
	["SDAR Underwater Rifle", "arifle_SDAR_F", 1000],
	
	// RHS Rifles
	/*["AK-103-1 (Steel Mag.)", "rhs_weap_ak103_1", 1450],
	["AK-103-1 (Steel Mag./NPZ)", "rhs_weap_ak103_1_npz", 1475],
	["AK-103-2 (Steel Mag.)", "rhs_weap_ak103_2", 1450],
	["AK-103-2 (Steel Mag./NPZ)", "rhs_weap_ak103_2_npz", 1475],
	
	["AK-103 (GP-25/NPZ/Steel Mag.)", "rhs_weap_ak103_gp25_npz", 1575],
	["AK-103 (GP-25/Steel Mag.)", "rhs_weap_ak103_gp25", 1500],
	["AK-103 (Steel Mag.)", "rhs_weap_ak103", 1450],
	["AK-103 (Steel Mag./NPZ)", "rhs_weap_ak103_npz", 1475],
	["AK-103 (Steel Mag./Zenitco)", "rhs_weap_ak103_zenitco01", 1450],
	["AK-103 (Steel Mag./Zenitco/B-33)", "rhs_weap_ak103_zenitco01_b33", 1475],
	
	["AK-104", "rhs_weap_ak104", 1450],
	["AK-104 (NPZ)", "rhs_weap_ak104_npz", 1475],
	["AK-104 (Zenitco)", "rhs_weap_ak104_zenitco01", 1450],
	["AK-104 (Zentico/B-33)", "rhs_weap_ak104_zenitco01_b33", 1475],
	
	["AK-105", "rhs_weap_ak105", 1450],
	["AK-105 (NPZ)", "rhs_weap_ak105_npz", 1475],
	["AK-105 (Zenitco)", "rhs_weap_ak105_zenitco01", 1450],
	["AK-105 (Zenitco/B-33)", "rhs_weap_ak105_zenitco01_b33", 1475],
	
	["AK-74", "rhs_weap_ak74", 1400],
	["AK-74 (GP-25)", "rhs_weap_ak74_gp25", 1400],
	["AK-74 (Green)", "rhs_weap_ak74_3", 1400],
	["AK-74 (Plum)", "rhs_weap_ak74_2", 1400],
	
	["AK-74M", "rhs_weap_ak74m", 1400],
	["AK-74M (2 Mag.)", "rhs_weap_ak74m_2mag", 1400],
	["AK-74M (2 Mag./Camo)", "rhs_weap_ak74m_2mag_camo", 1400],
	["AK-74M (2 Mag./NPZ)", "rhs_weap_ak74m_2mag_npz", 1425],
	["AK-74M (Camo)", "rhs_weap_ak74m_camo", 1400],
	["AK-74M (Desert)", "rhs_weap_ak74m_desert", 1400],
	["AK-74M (Desert/NPZ)", "rhs_weap_ak74m_desert_npz", 1425],
	["AK-74M (GP-25)", "rhs_weap_ak74m_gp25", 1450],
	["AK-74M (GP-25/NPZ)", "rhs_weap_ak74m_gp25_npz", 1475],
	["AK-74M (GP-25/Plum)", "rhs_weap_ak74m_fullplum_gp25", 1450],
	["AK-74M (GP-25/Plum/NPZ)", "rhs_weap_ak74m_fullplum_gp25_npz", 1450],
	["AK-74M (NPZ)", "rhs_weap_ak74m_npz", 1425],
	["AK-74M (Plum Mag.)", "rhs_weap_ak74m_plummag", 1400],
	["AK-74M (Plum Mag./NPZ)", "rhs_weap_ak74m_plummag_npz", 1425],
	["AK-74M (Plum)", "rhs_weap_ak74m_fullplum", 1400],
	["AK-74M (Plum/NPZ)", "rhs_weap_ak74m_fullplum_npz", 1425],
	["AK-74M (Zenitco)", "rhs_weap_ak74m_zenitco01", 1400],
	["AK-74M (Zenitco/B-33)", "rhs_weap_ak74m_zenitco01_b33", 1425],
	
	["AK-74MR (UUK)", "rhs_weap_ak74mr", 1500],
	["AK-74MR (UUK/GP-25)", "rhs_weap_ak74mr_gp25", 1550],
	["AK-74N", "rhs_weap_ak74n", 1350],
	["AK-74N (GP-25)", "rhs_weap_ak74n_gp25", 1400],
	["AK-74N (GP-25/NPZ)", "rhs_weap_ak74n_gp25_npz", 1450],
	["AK-74N (NPZ)", "rhs_weap_ak74n_npz", 1425],
	
	["AKM", "rhs_weap_akm", 1300],
	["AKM (GP-25)", "rhs_weap_akm_gp25", 1350],
	
	["AKMS", "rhs_weap_akms", 1300],
	["AKMS (GP-25)", "rhs_weap_akms_gp25", 1350],
	
	["AKS-74", "rhs_weap_aks74", 1350],
	["AKS-74 (GP-25)", "rhs_weap_aks74_gp25", 1400],
	["AKS-74N", "rhs_weap_aks74n", 1350],
	["AKS-74N (GP-25)", "rhs_weap_aks74n_gp25", 1400],
	["AKS-74N (GP-25/NPZ)", "rhs_weap_aks74n_gp25_npz", 1425],
	["AKS-74N (NPZ)", "rhs_weap_aks74n_npz", 1400],
	["AKS-74U", "rhs_weap_aks74u", 1275],
	["AKS-74U 5.45 mm", "arifle_AKS_F", 1275],
	["AKS-74UN", "rhs_weap_aks74un", 1300],
	
	["AS Val", "rhs_weap_asval", 1325],
	["AS Val (Grip)", "rhs_weap_asval_grip", 1325],
	["AS Val (GRIP/NPZ)", "rhs_weap_asval_grip_npz", 1350],
	["AS Val (NPZ)", "rhs_weap_asval_npz", 1350],
	
	["HK G36C", "rhs_weap_g36c", 1350],
	["HK G36KV", "rhs_weap_g36kv", 1350],
	["HK G36KV (AG36)", "rhs_weap_g36kv_ag36", 1350],
	
	["HK416 D10", "rhs_weap_hk416d10", 1375],
	["HK416 D10 (M320)", "rhs_weap_hk416d10_m320", 1375],
	["HK416 D10 (SOPMOD Stock)", "rhs_weap_hk416d10_LMT", 1375],
	["HK416 D14.5", "rhs_weap_hk416d145", 1375],
	["HK416 D14.5 (M320)", "rhs_weap_hk416d145_m320", 1375],
	
	["Karabiner 98 Kurz", "rhs_weap_kar98k", 1100],
	
	["M107", "rhs_weap_M107", 3075],
	["M107 (Desert)", "rhs_weap_M107_d", 3075],
	["M107 (Woodland)", "rhs_weap_M107_w", 3075],
	
	["M14 EBR-RI", "rhs_weap_m14ebrri", 2600],
	
	["M16A4", "rhs_weap_m16a4", 2400],
	["M16A4 (Carryhandle)", "rhs_weap_m16a4_carryhandle", 2400],
	["M16A4 (Carryhandle/M203)", "rhs_weap_m16a4_carryhandle_M203", 2450],
	["M16A4 (Carryhandle/PMAG)", "rhs_weap_m16a4_carryhandle_pmag", 2400],
	["M16A4 (PMAG)", "rhs_weap_m16a4_pmag", 2400],
	
	["M2010 ESR", "rhs_weap_XM2010", 2900],
	["M2010 ESR (Camo)", "rhs_weap_XM2010_wd", 2900],
	["M2010 ESR (Desert)", "rhs_weap_XM2010_d", 2900],
	["M2010 ESR (Semi-arid)", "rhs_weap_XM2010_sa", 2900],
	
	["M21A", "rhs_weap_m21a", 2375],
	["M21A (PBG)", "rhs_weap_m21a_pbg40", 2400],
	["M21A (Rail)", "rhs_weap_m21a_pr", 2400],
	["M21A (Rail/PBG)", "rhs_weap_m21a_pr_pbg40", 2450],
	["M21S", "rhs_weap_m21s", 2350],
	["M21S (Rail)", "rhs_weap_m21s_pr", 2375],
	
	["M24 SWS", "rhs_weap_m24sws", 2900],
	["M24 SWS (Black)", "rhs_weap_m24sws_blk", 2900],
	["M24 SWS (Ghillie)", "rhs_weap_m24sws_ghillie", 2900],
	
	["M27 IAR", "rhs_weap_m27iar", 2400],
	["M27 IAR (TD Grip)", "rhs_weap_m27iar_grip", 2400],
	
	["M32 MGL", "rhs_weap_m32", 2700],
	
	["M4", "rhs_weap_m4", 1375],
	["M4 (Carryhandle)", "rhs_weap_m4_carryhandle", 1375],
	["M4 (Carryhandle/PMAG)", "rhs_weap_m4_carryhandle_pmag", 1375],
	["M4 (Carryhandle/PMAG/M-Stock)", "rhs_weap_m4_carryhandle_mstock", 1375],
	["M4 (M203)", "rhs_weap_m4_m203", 1400],
	["M4 (M203S)", "rhs_weap_m4_m203S", 1400],
	["M4 (M320)", "rhs_weap_m4_m320", 1400],
	["M4 (PMAG)", "rhs_weap_m4_pmag", 1375],
	["M4 (PMAG/Magpull Stock)", "rhs_weap_m4_mstock", 1375],
	
	["M40A5", "rhs_weap_m40a5", 1900],
	["M40A5 (Desert)", "rhs_weap_m40a5_d", 1900],
	["M40A5 (Woodland)", "rhs_weap_m40a5_wd", 1900],
	
	["M4A1", "rhs_weap_m4a1_carryhandle", 2375],
	["M4A1 (M203)", "rhs_weap_m4a1_carryhandle_m203", 2400],
	["M4A1 (M203S)", "rhs_weap_m4a1_carryhandle_m203S", 2400],
	["M4A1 (PMAG)", "rhs_weap_m4a1_carryhandle_pmag", 2375],
	["M4A1 (PMAG/Magpull Stock)", "rhs_weap_m4a1_carryhandle_mstock", 2400],
	
	["M4A1 Block II", "rhs_weap_m4a1_blockII", 2400],
	["M4A1 Block II (Black Rail)", "rhs_weap_m4a1_blockII_bk", 2400],
	["M4A1 Block II (Black Rail/M203)", "rhs_weap_m4a1_blockII_M203_bk", 2450],
	["M4A1 Block II (Black Rail/SOPMOD Stock)", "rhs_weap_m4a1_blockII_KAC_bk", 2400],
	["M4A1 Block II (Desert)", "rhs_weap_m4a1_blockII_d", 2400],
	["M4A1 Block II (Desert/M203)", "rhs_weap_m4a1_blockII_M203_d", 2450],
	["M4A1 Block II (Desert/SOPMOD Stock)", "rhs_weap_m4a1_blockII_KAC_d", 2400],
	["M4A1 Block II (M203)", "rhs_weap_m4a1_blockII_M203", 2450],
	["M4A1 Block II (SOPMOD Stock)", "rhs_weap_m4a1_blockII_KAC", 2400],
	["M4A1 Block II (Woodland)", "rhs_weap_m4a1_blockII_wd", 2400],
	["M4A1 Block II (Woodland/M203)", "rhs_weap_m4a1_blockII_M203_wd", 2450],
	["M4A1 Block II (Woodland/SOPMOD Stock)", "rhs_weap_m4a1_blockII_KAC_wd", 2400],
	
	["M4A1 PIP", "rhs_weap_m4a1", 2375],
	["M4A1 PIP (Desert)", "rhs_weap_m4a1_d", 2375],
	["M4A1 PIP (Desert/M203S)", "rhs_weap_m4a1_m203s_d", 2400],
	["M4A1 PIP (Desert/PMAG/Magpull Stock)", "rhs_weap_m4a1_d_mstock", 2375],
	["M4A1 PIP (M203)", "rhs_weap_m4a1_m203", 2400],
	["M4A1 PIP (M203S)", "rhs_weap_m4a1_m203s", 2400],
	["M4A1 PIP (M320)", "rhs_weap_m4a1_m320", 2400],
	["M4A1 PIP (PMAG)", "rhs_weap_m4a1_pmag", 2375],
	["M4A1 PIP (PMAG/Magpull Stock)", "rhs_weap_m4a1_mstock", 2375],
	
	["M590A1 (Long)", "rhs_weap_M590_8RD", 2250],
	["M590A1 (Short)", "rhs_weap_M590_5RD", 2250],
	
	["M70AB2", "rhs_weap_m70ab2", 2300],
	["M70B1", "rhs_weap_m70b1", 2300],
	["M70B1N", "rhs_weap_m70b1n", 2375],
	["M70B3N", "rhs_weap_m70b3n", 2375],
	["M70B3N (PBG)", "rhs_weap_m70b3n_pbg40", 2400],
	
	["M76", "rhs_weap_m76", 2700],
	["M82A1", "rhs_weap_m82a1", 3075],
	["M92", "rhs_weap_m92", 3275],
	
	["Mk 11 Mod 0", "rhs_weap_sr25", 3800],
	["Mk 11 Mod 0 (Desert)", "rhs_weap_sr25_d", 3800],
	["MK 11 Mod 0 (EC)", "rhs_weap_sr25_ec", 3800],
	["Mk 11 Mod 0 (EC/Desert)", "rhs_weap_sr25_ec_d", 3800],
	["MK 11 Mod 0 (EC/Woodland)", "rhs_weap_sr25_ec_wd", 3800],
	["Mk 11 Mod 0 (Woodland)", "rhs_weap_sr25_wd", 3800],
	
	["Mk 18 Mod 1", "rhs_weap_mk18", 4500],
	["Mk 18 Mod 1 (Black Rail)", "rhs_weap_mk18_bk", 5000],
	["Mk 18 Mod 1 (Black Rail/SOPMOD Stock)", "rhs_weap_mk18_KAC_bk", 4500],
	["Mk 18 Mod 1 (Desert)", "rhs_weap_mk18_d", 4500],
	["Mk 18 Mod 1 (Desert/SOPMOD Stock)", "rhs_weap_mk18_KAC_d", 4500],
	["Mk 18 Mod 1 (M320)", "rhs_weap_mk18_m320", 4550],
	["Mk 18 Mod 1 (SOPMOD Stock)", "rhs_weap_mk18_KAC", 4500],
	["Mk 18 Mod 1 (Woodland)", "rhs_weap_mk18_wd", 4500],
	["Mk 18 Mod 1 (Woodland/SOPMOD Strock)", "rhs_weap_mk18_KAC_wd", 5000],
	
	["Mosin Nagant M38", "rhs_weap_m38", 4100],
	["Mosin Nagant M38 (Railed)", "rhs_weap_m38_rail", 4700],
	
	["SVDM", "rhs_weap_svdp", 4825],
	["SVDM (Camo)", "rhs_weap_svdp_wd", 4825],
	["SVDM (Camo/NPZ)", "rhs_weap_svdp_wd_npz", 4825],
	["SVDM (NPZ)", "rhs_weap_svdp_npz", 4825],
	["SVDS", "rhs_weap_svds", 4825],
	["SVDS (NPZ)", "rhs_weap_svds_npz", 4825],
	["T-5000", "rhs_weap_t5000", 4850],
	
	["VSS Vintorez", "rhs_weap_vss", 325],
	["VSS Vintorez (GRIP)", "rhs_weap_vss_grip", 325],
	["VSS Vintorez (GRIP/NPZ)", "rhs_weap_vss_grip_npz", 325],
	["VSS Vintorez (NPZ)", "rhs_weap_vss_npz", 325],*/
	
	// CUP Assault Rifles
	["=========CUP ASSAULT RIFLES===========", "CUP_weapon_hgun_PB6P9", 0],
	["AKS-74", "CUP_arifle_AKS74", 1250],
	["AKS-74 Kobra", "CUP_arifle_AKS74_kobra", 1270],
	["AKS-74 PSO", "CUP_arifle_AKS74_pso", 1280],
	["AKS-74 NSPU (Night Vision)", "CUP_arifle_AKS74_NSPU", 1300],
	["AKS-74 Goshawk (Thermal)", "CUP_arifle_AKS74_Goshawk", 2200],
	["AKS-74U", "CUP_arifle_AKS74U", 1150],
	["AKS-74U Kobra Silenced", "CUP_arifle_AKS74UN_kobra_snds", 1200],
	["AKS", "CUP_arifle_AKS", 1200],
	["AKS (Gold)", "CUP_arifle_AKS_Gold", 2000],
	["AKM", "CUP_arifle_AKM", 1200],
	["AK-74", "CUP_arifle_AK74", 1250],
	["AK-74 GP-25", "CUP_arifle_AK74_GL", 1300],
	["AK-74 GP-25 Kobra", "CUP_arifle_AK74_GL_kobra", 1320],
	["RPK-74", "CUP_arifle_RPK74", 1350], 
	["AK-107", "CUP_arifle_AK107", 1250],
	["AK-107 Kobra", "CUP_arifle_AK107_kobra", 1270],
	["AK-107 PSO", "CUP_arifle_AK107_pso", 1280],
	["AK-107 GL", "CUP_arifle_AK107_GL", 1300],
	["AK-107 GL Kobra", "CUP_arifle_AK107_GL_kobra", 1320],
	["AK-107 GL PSO", "CUP_arifle_AK107_GL_pso", 1330],
	
	["CZ 805 A1", "CUP_arifle_CZ805_A1", 1250],
	["CZ 805 A1 ACO", "CUP_arifle_CZ805_A1_Aco_Laser", 1260],
	["CZ 805 A1 Holosight", "CUP_arifle_CZ805_A1_Holo_Laser", 1280],
	["CZ 805 A1 MRCO", "CUP_arifle_CZ805_A1_MRCO_Laser", 1290],
	["CZ 805 A1 ZD-Dot", "CUP_arifle_CZ805_A1_ZDDot_Laser", 1270],
	["CZ 805 A1 GL", "CUP_arifle_CZ805_GL", 1300],
	["CZ 805 A1 GL ZD-Dot", "CUP_arifle_CZ805_GL_ZDDot_Laser", 1320],
	["CZ 805 A1 GL Hamr", "CUP_arifle_CZ805_GL_Hamr_Laser", 1340],
	["CZ 805 A2", "CUP_arifle_CZ805_A2", 1270],
	["CZ 805 A2 ACO", "CUP_arifle_CZ805_A2_Aco_Laser", 1280],
	["CZ 805 A2 Holosight", "CUP_arifle_CZ805_A2_Holo_Laser", 1300],
	["CZ 805 A2 MRCO", "CUP_arifle_CZ805_A2_MRCO_Laser", 1310],
	["CZ 805 A2 ZD-Dot Silenced", "CUP_arifle_CZ805_A2_ZDDot_Flashlight_Snds", 1320],
	["CZ 805 B", "CUP_arifle_CZ805_B", 1300],
	["CZ 805 B GL", "CUP_arifle_CZ805_B_GL", 1350],
	["CZ 805 B GL Acog", "CUP_arifle_CZ805B_GL_ACOG_Laser", 1380],
	
	["FN FAL", "CUP_arifle_FNFAL", 2400],
	["FN FAL (Railed)", "CUP_arifle_FNFAL_railed", 2420],
	["FN FAL ANPVS4 (Railed)", "CUP_arifle_FNFAL_ANPVS4", 2450],
	
	["G36A", "CUP_arifle_G36A", 2150],
	["G36A (desert)", "CUP_arifle_G36A_camo", 2160],
	["G36K", "CUP_arifle_G36K", 170],
	["G36K (desert)", "CUP_arifle_G36K_camo", 180],
	["G36C", "CUP_arifle_G36C", 160],
	["G36C (desert)", "CUP_arifle_G36C_camo", 180],
	["G36C Holosight Silenced", "CUP_arifle_G36C_holo_snds", 190],
	["G36C Holosight Silenced (desert)", "CUP_arifle_G36C_camo_holo_snds", 200],
	["MG36", "CUP_arifle_MG36", 210],
	["MG36 (desert)", "CUP_arifle_MG36_camo", 220],
	
	["L85A2", "CUP_arifle_L85A2", 250],
	["L85A2 Holosight", "CUP_arifle_L85A2_Holo_laser", 270],
	["L85A2 SUSAT", "CUP_arifle_L85A2_SUSAT_Laser", 280],
	["L85A2 CWS", "CUP_arifle_L85A2_CWS_Laser", 300],
	["L85A2 Acog", "CUP_arifle_L85A2_ACOG_Laser", 280],
	["L85A2 UGL", "CUP_arifle_L85A2_GL", 320],
	["L85A2 UGL Holosight", "CUP_arifle_L85A2_GL_Holo_laser", 340],
	["L85A2 UGL SUSAT", "CUP_arifle_L85A2_GL_SUSAT_Laser", 350],
	["L85A2 UGL Acog", "CUP_arifle_L85A2_GL_ACOG_Laser", 350],
	["L86A2 LSW", "CUP_arifle_L86A2", 320],
	["L86A2 LSW Acog", "CUP_arifle_L86A2_ACOG", 350],
	
	["M16A2", "CUP_arifle_M16A2", 250],
	["M16A2 GL", "CUP_arifle_M16A2_GL", 300],
	["M16A4", "CUP_arifle_M16A4_Base", 250],
	["M16A4 M68-CCO", "CUP_arifle_M16A4_Aim_Laser", 280],
	["M16A4 Acog", "CUP_arifle_M16A4_ACOG_Laser", 280],
	["M16A4 GL", "CUP_arifle_M16A4GL", 300],
	["M16A4 GL M68-CCO", "CUP_arifle_M16A4_GL", 350 ],
	["M16A4 GL Acog", "CUP_arifle_M16A4_GL_ACOG_Laser", 375 ],
	
	["M4A1 (black)", "CUP_arifle_M4A1_black", 250],
	["M4A1 (desert)", "CUP_arifle_M4A1_desert", 250],
	["M4A1 (camo)", "CUP_arifle_M4A1_camo", 250],
	["M4A1 M68-CCO (black)", "CUP_arifle_M4A1_Aim", 270],
	["M4A1 M68-CCO (camo)", "CUP_arifle_M4A1_camo_Aim", 270],
	["M4A1 Acog", "CUP_arifle_M4A1", 270],
	["M4A1 M68-CCO Silenced (camo)", "CUP_arifle_M4A1_camo_AIM_snds", 300],
	["M4A1 GL (black)", "CUP_arifle_M4A1_BUIS_GL", 300],
	["M4A1 GL (woodland)", "CUP_arifle_M4A1_BUIS_camo_GL", 300],
	["M4A1 GL (desert)", "CUP_arifle_M4A1_BUIS_desert_GL", 300],
	["M4A1 GL Holosight (black)", "CUP_arifle_M4A1_GL_Holo_Flashlight", 320],
	["M4A1 GL Acog (black)", "CUP_arifle_M4A1_GL_ACOG_Flashlight", 320],
	["M4A1 GL Holosight (woodland)", "CUP_arifle_M4A1_camo_GL_Holo_Flashlight", 320],
	["M4A1 GL Holosight Silenced (woodland)", "CUP_arifle_M4A1_camo_GL_Holo_Flashlight_Snds", 330],
	["M4A3 M68-CCO (desert)", "CUP_arifle_M4A3_desert_Aim_Flashlight", 300],
	["M4A3 GL Acog (desert)", "CUP_arifle_M4A3_desert_GL_ACOG_Laser", 320],
	["M4A1 GL Acog (desert)", "CUP_arifle_M4A3_desert_GL_ACOG_Laser", 320],
	
	["vz. 58 P", "CUP_arifle_Sa58P", 350],
	["vz. 58 P (desert)", "CUP_arifle_Sa58P_des", 350],
	["vz. 58 V", "CUP_arifle_Sa58V", 350],
	["vz. 58 V (desert)", "CUP_arifle_Sa58V_camo", 350],
	["vz. 58 V Acog", "CUP_arifle_Sa58V_ACOG_Laser", 380],
	["vz. 58 V M68-CCO", "CUP_arifle_Sa58V_Aim_Laser", 380],
	["vz. 58 RIS", "CUP_arifle_Sa58RIS1", 400],
	["vz. 58 RIS (desert)", "CUP_arifle_Sa58RIS1_des", 400],
	["vz. 58 RIS ACO", "CUP_arifle_Sa58RIS1_Aco_Laser", 420],
	["vz. 58 RIS ACO (desert)", "CUP_arifle_Sa58RIS1_camo_Aco_Laser", 420],
	["vz. 58 RIS2", "CUP_arifle_Sa58RIS2", 420],
	["vz. 58 RIS2 (desert)", "CUP_arifle_Sa58RIS2_camo", 420],
	["vz. 58 RIS2 ARCO", "CUP_arifle_Sa58RIS2_Arco_Laser", 450],
	["vz. 58 RIS2 ARCO (desert)", "CUP_arifle_Sa58RIS2_camo_Arco_Laser", 450],
	
	["Mk16 Mod 0 CQC", "CUP_arifle_Mk16_CQC", 300],
	["Mk16 Mod 0 CQC Foregrip", "CUP_arifle_Mk16_CQC_FG", 310],
	["Mk16 Mod 0 CQC Surefire", "CUP_arifle_Mk16_CQC_SFG", 320],
	["Mk16 Mod 0 CQC EGLM", "CUP_arifle_Mk16_CQC_EGLM", 350],
	["Mk16 Mod 0 CQC EGLM Holosight Flash-Hider", "CUP_arifle_Mk16_CQC_EGLM_Holo_Laser_mfsup", 380],
	["Mk16 Mod 0 CQC Foregrip CompM4 Silenced", "CUP_arifle_Mk16_CQC_FG_Aim_Laser_snds", 340],
	["Mk16 Mod 0 CQC Surefire Holosight", "CUP_arifle_Mk16_CQC_SFG_Holo", 340],
	["Mk16 Mod 0 Standard", "CUP_arifle_Mk16_STD", 300],
	["Mk16 Mod 0 Standard Fore Grip", "CUP_arifle_Mk16_STD_FG", 310],
	["Mk16 Mod 0 Standard SureFire", "CUP_arifle_Mk16_STD_SFG", 320],
	["Mk16 Mod 0 Standard EGLM", "CUP_arifle_Mk16_STD_EGLM", 350],
	["Mk16 Mod 0 Standard Fore Grip Holosight", "CUP_arifle_Mk16_STD_FG_Holo_Laser", 330],
	["Mk16 Mod 0 Standard Fore Grip Leupold Mk4", "CUP_arifle_Mk16_STD_FG_LeupoldMk4CQT_Laser", 350],
	["Mk16 Mod 0 Standard EGLM", "CUP_arifle_Mk16_STD_EGLM_ACOG_Laser", 370],
	["Mk16 Mod 0 Standard EGLM AN/PAS (Thermal)", "CUP_arifle_Mk16_STD_EGLM_ANPAS13c1_Laser_mfsup", 1000],
	["Mk16 Mod 0 SV Bipod (Long Barrel)", "CUP_arifle_Mk16_SV", 320],
	["Mk17 Mod 0 CQC", "CUP_arifle_Mk17_CQC", 400],
	["Mk17 Mod 0 CQC Fore grip", "CUP_arifle_Mk17_CQC_FG", 410],
	["Mk17 Mod 0 CQC SureFire", "CUP_arifle_Mk17_CQC_SFG", 420],
	["Mk17 Mod 0 CQC EGLM", "CUP_arifle_Mk17_CQC_EGLM", 450],
	["Mk17 Mod 0 Std", "CUP_arifle_Mk17_STD", 400],
	["Mk17 Mod 0 Std Fore grip", "CUP_arifle_Mk17_STD_FG", 410],
	["Mk17 Mod 0 Std SureFire", "CUP_arifle_Mk17_STD_SFG", 420],
	["Mk17 Mod 0 Std EGLM", "CUP_arifle_Mk17_STD_EGLM", 450],
	["Mk17 Mod 0 CQC SureFire CompM4 Flash-Hider", "CUP_arifle_Mk17_CQC_SFG_Aim_mfsup", 440],
	["Mk17 Mod 0 CQC Fore grip CompM4 Silenced", "CUP_arifle_Mk17_STD_FG_Aim_Laser_snds", 440],
	["Mk17 Mod 0 CQC EGLM Eclan", "CUP_arifle_Mk17_STD_EGL_ElcanSpecter_Laser", 420],
	["Mk17 Mod 0 Std Fore grip AN/PAS Silenced (Thermal)", "CUP_arifle_Mk17_STD_FG_ANPAS13c1_Laser_Snds", 1000],
	["Mk20 Mod 0", "CUP_arifle_Mk20", 450],
	["Mk20 Mod 0 Leupold Mk4", "CUP_arifle_Mk20_LeupoldMk4MRT", 500],
	["Mk20 Mod 0 Schmidt & Bender Silenced", "CUP_arifle_Mk20_SB11420_snds", 520],
	
	["XM8 Carbine", "CUP_arifle_XM8_Carbine", 200],
	["XM8 CQC", "CUP_arifle_XM8_Carbine_FG", 200],
	["XM8 M320", "CUP_arifle_XM8_Carbine_GL", 250],
	["XM8 Compact", "CUP_arifle_XM8_Compact", 200],
	["XM8 SAW", "CUP_arifle_xm8_SAW", 200],
	["XM8 Sharpshooter", "CUP_arifle_xm8_sharpshooter", 200],
	["XM8 Compact (railed)", "CUP_arifle_XM8_Compact_Rail", 200],
	["XM8 (railed)", "CUP_arifle_XM8_Railed", 200],
	["XM8 Compact Holosight (railed)", "CUP_arifle_XM8_Compact_Holo_Flashlight", 220],
	["XM8 Holosight Silenced (railed)", "CUP_arifle_XM8_Railed_Holo_Laser_snds", 230],
	["XM8 AN/PAS (Thermal) (railed)", "CUP_arifle_XM8_Railed_ANPAS13c1_Laser", 800],
	["XM8 AN/PAS (Thermal) Silenced (railed)", "CUP_arifle_XM8_Railed_ANPAS13c1_Laser_snds", 820],
	
	// CUP Sniper Rifles
	["=========CUP SNIPER RIFLES===========", "CUP_weapon_hgun_PB6P9", 0],
	["Meme Enfield", "CUP_srifle_LeeEnfield", 1100],
	["CZ 550", "CUP_srifle_CZ550", 500],
	["M14", "CUP_srifle_M14", 700],
	["M14 M68-CCO", "CUP_srifle_M15_Aim", 750],
	["AS50", "CUP_srifle_AS50", 1400],
	["AS50 Schmidt & Bender", "CUP_srifle_AS50_SBPMII", 1500],
	["AS50 AN/PAS (Thermal)", "CUP_srifle_AS50_AMPAS13c2", 2000],
	["L115A1 (Desert)", "CUP_srifle_AWM_des", 1200],
	["L115A1 (Woodland)", "CUP_srifle_AWM_wdl", 1200],
	["L115A1 Schmidt & Bender (Desert)", "CUP_srifle_AWM_des_SBPMII", 1300],
	["L115A1 Schmidt & Bender (Woodland)", "CUP_srifle_AWM_wdl_SBPMII", 1300],
	["CZ 750 S1 M1", "CUP_srifle_CZ750", 1000],
	["CZ 750 S1 M1 SOS Bipod", "CUP_srifle_CZ750_SOS_bipod", 1100],
	["M14 DMR", "CUP_srifle_DMR", 900],
	["M14 DMR Leupold Mk4", "CUP_srifle_DMR_LeupoldMk4", 1000],
	["KSVK", "CUP_srifle_ksvk", 2000],
	["KSVK PSO-3", "CUP_arifle_ksvk_PSO3", 2050],
	["Mk 12 SPR Acog", "CUP_srifle_Mk12SPR", 600],
	["Mk 12 SPR Leupold Mk4", "CUP_srifle_Mk12SPR_LeupoldM3LR", 650],
	["M24 (desert)", "CUP_srifle_M24_des", 700],
	["M24 (woodland)", "CUP_srifle_M24_wdl", 700],
	["M24 (ghillie)", "CUP_srifle_M24_ghillie", 800],
	["M24 Leupold Mk4 (desert)", "CUP_srifle_M24_des_LeupoldMk4LRT", 800],
	["M24 Leupold Mk4 (woodland)", "CUP_srifle_M24_wdl_LeupoldMk4LRT", 800],
	["M40A3 (ghillie)", "CUP_srifle_M40A3", 900],
	["M107", "CUP_srifle_M107_Base", 1500],
	["M107 Leupold VX", "CUP_srifle_M107_LeupoldVX3", 1600],
	["M107 AN/PAS (Thermal)", "CUP_srifle_M107_ANPAS13c2", 2200],
	["M110", "CUP_srifle_M110", 1000],
	["M110 AN/PVS (Night Vision)", "CUP_srifle_M110_ANPVS10", 1200],
	["M110 AN/PAS (Thermal)", "CUP_srifle_M110_ANPAS13c2", 1800],
	["Dragunov SVD", "CUP_srifle_SVD", 800],
	["Dragunov SVD PSO-1", "CUP_srifle_SVD_pso", 850],
	["Dragunov SVD NSPU (Night Vision)", "CUP_srifle_SVD_NSPU", 900],
	["Dragunov SVD Desert", "CUP_srifle_SVD_des", 800],
	["Dragunov SVD Desert PSO-1", "CUP_srifle_SVD_Des_pso", 850],
	["SVD Camo (ghillie)", "CUP_srifle_SVD_wdl_ghillie", 900],
	["SVD Desert Camo (ghillie)", "CUP_srifle_SVD_des_ghillie_pso", 900],
	["VSS Vintorez", "CUP_srifle_VSSVintorez", 400],
	["VSS Vintorez PSO-1", "CUP_srifle_VSSVintorez_pso", 420],
	
	// ARMA 3 Rifles
	["=======ARMA 3 SNIPER RIFLES===========", "CUP_weapon_hgun_PB6P9", 0],
	["Mk20 Carbine", "arifle_Mk20C_plain_F", 750],
	["Mk20 Carbine (Camo)", "arifle_Mk20C_F", 750],
	["Mk20 Rifle", "arifle_Mk20_plain_F", 1000],
	["Mk20 Rifle (Camo)", "arifle_Mk20_F", 1000],
	["Mk20 EGLM Rifle", "arifle_Mk20_GL_plain_F", 1750],
	["Mk20 EGLM Rifle (Camo)", "arifle_Mk20_GL_F", 1750],

	["TRG-20 Carbine", "arifle_TRG20_F", 800],
	["TRG-21 Rifle ", "arifle_TRG21_F", 825],
	["TRG-21 EGLM Rifle", "arifle_TRG21_GL_F", 925],

	["Katiba Carbine", "arifle_Katiba_C_F", 1500],
	["Katiba Rifle", "arifle_Katiba_F", 2000],
	["Katiba GL Rifle", "arifle_Katiba_GL_F", 2500],

	["MX Carbine", "arifle_MXC_F", 1500],
	["MX Carbine (Black)", "arifle_MXC_Black_F", 1500],
	["MX Carbine (Khaki)", "arifle_MXC_khk_F", 1500, "noDLC"],
	["MX Rifle", "arifle_MX_F", 2000],
	["MX Rifle (Black)", "arifle_MX_Black_F", 2000],
	["MX Rifle (Khaki)", "arifle_MX_khk_F", 2000, "noDLC"],
	["MX 3GL Rifle", "arifle_MX_GL_F", 2500],
	["MX 3GL Rifle (Black)", "arifle_MX_GL_Black_F", 2500],
	["MX 3GL Rifle (Khaki)", "arifle_MX_GL_khk_F", 2500, "noDLC"],

	["SPAR-16 Rifle", "arifle_SPAR_01_blk_F", 2000],
	["SPAR-16 Rifle (Khaki)", "arifle_SPAR_01_khk_F", 2000],
	["SPAR-16 Rifle (Sand)", "arifle_SPAR_01_snd_F", 2000],
	["SPAR-16 GL Rifle", "arifle_SPAR_01_GL_blk_F", 2500],
	["SPAR-16 GL Rifle (Khaki)", "arifle_SPAR_01_GL_khk_F", 2500],
	["SPAR-16 GL Rifle (Sand)", "arifle_SPAR_01_GL_snd_F", 2500],

	["CAR-95 Rifle", "arifle_CTAR_blk_F", 2000],
	["CAR-95 Rifle (Hex)", "arifle_CTAR_hex_F", 2000],
	["CAR-95 Rifle (G Hex)", "arifle_CTAR_ghex_F", 2000],
	["CAR-95 GL Rifle", "arifle_CTAR_GL_blk_F", 2500],
	["CAR-95 GL Rifle (Hex)", "arifle_CTAR_GL_hex_F", 2500],
	["CAR-95 GL Rifle (G Hex)", "arifle_CTAR_GL_ghex_F", 2500],
	["Type 115 Rifle", "arifle_ARX_blk_F", 3000],
	["Type 115 Rifle (Hex)", "arifle_ARX_hex_F", 3000],
	["Type 115 Rifle (G Hex)", "arifle_ARX_ghex_F", 3000],

	["AKS-74U Carbine", "arifle_AKS_F", 1500],
	["AKM Rifle", "arifle_AKM_F", 2000],
	["AK-12 Rifle", "arifle_AK12_F", 2500],
	["AK-12 GL Rifle", "arifle_AK12_GL_F", 3000],

	// Marksman Rifles
	["MXM Rifle", "arifle_MXM_F", 3000],
	["MXM Rifle (Black)", "arifle_MXM_Black_F", 3000],
	["MXM Rifle (Khaki)", "arifle_MXM_khk_F", 3000, "noDLC"],
	["Rahim DMR Rifle", "srifle_DMR_01_F", 2500],
	["Mk18 ABR Rifle", "srifle_EBR_F", 3000],

	// DLC
	["CMR-76 Rifle", "srifle_DMR_07_blk_F", 4000],
	["CMR-76 Rifle (Hex)", "srifle_DMR_07_hex_F", 4000],
	["CMR-76 Rifle (G Hex)", "srifle_DMR_07_ghex_F", 4000],
	
	["SPAR-17 Rifle", "arifle_SPAR_03_blk_F", 4500],
	["SPAR-17 Rifle (Khaki)", "arifle_SPAR_03_khk_F", 4500],
	["SPAR-17 Rifle (Sand)", "arifle_SPAR_03_snd_F", 4500],

	["Mk14 Rifle (Olive)", "srifle_DMR_06_olive_F", 4000],
	["Mk14 Rifle (Camo)", "srifle_DMR_06_camo_F", 4000],
	["Mk-I EMR Rifle", "srifle_DMR_03_F", 4000],
	["Mk-I EMR Rifle (Camo)", "srifle_DMR_03_multicam_F", 4000],
	["Mk-I EMR Rifle (Khaki)", "srifle_DMR_03_khaki_F", 4000],
	["Mk-I EMR Rifle (Sand)", "srifle_DMR_03_tan_F", 4000],
	["Mk-I EMR Rifle (Woodland)", "srifle_DMR_03_woodland_F", 4000],
	["MAR-10 Rifle", "srifle_DMR_02_F", 7000],
	["MAR-10 Rifle (Camo)", "srifle_DMR_02_camo_F", 7000],
	["MAR-10 Rifle (Sand)", "srifle_DMR_02_sniper_F", 7000],
	["Cyrus Rifle (Tan)", "srifle_DMR_05_tan_f", 7000],
	["Cyrus Rifle", "srifle_DMR_05_blk_F", 7000],
	["Cyrus Rifle (Hex)", "srifle_DMR_05_hex_F", 7000],

	// Sniper Rifles
	["M320 LRR Sniper", "srifle_LRR_F", 12000],
	["M320 LRR Sniper (Camo)", "srifle_LRR_camo_F", 12000],
	["M320 LRR Sniper (Tropic)", "srifle_LRR_tna_F", 12000],
	["GM6 Lynx Sniper", "srifle_GM6_F", 12000],
	["GM6 Lynx Sniper (Camo)", "srifle_GM6_camo_F", 12000],
	["GM6 Lynx Sniper (G Hex)", "srifle_GM6_ghex_F", 12000],

	["ASP-1 Kir Rifle", "srifle_DMR_04_F", 7000],
	["ASP-1 Kir Rifle (Tan)", "srifle_DMR_04_tan_F", 7000]
];

lmgArray = compileFinal str
[
	/*["FN Minimi Para (RIS)", "rhs_weap_minimi_para_railed", 3600],
	["M240B", "rhs_weap_m240B", 3700],
	["M240B (CAP)", "rhs_weap_m240B_CAP", 3700],
	["M240G", "rhs_weap_m240G", 3700],
	
	["M249", "rhs_weap_m249", 4550],
	["M249 PIP (Long)", "rhs_weap_m249_pip_L", 4650],
	["M249 PIP (Long/Para)", "rhs_weap_m249_pip_L_para", 4650],
	["M249 PIP (Long/VFG)", "rhs_weap_m249_pip_L_vfg", 4650],
	["M249 PIP (Short)", "rhs_weap_m249_pip_S", 4650],
	["M249 PIP (Short/Para)", "rhs_weap_m249_pip_S_para", 4650],
	["M249 PIP (Short/VFG)", "rhs_weap_m249_pip_S_vfg", 4650],
	["M249 PIP (Solid Stock)", "rhs_weap_m249_pip", 4650],
	
	["M84", "rhs_weap_m84", 5675],*/
	
	["MX SW LMG", "arifle_MX_SW_F", 1500],	
	["MX SW LMG (Black)", "arifle_MX_SW_Black_F", 1500],
	["MX SW LMG (Khaki)", "arifle_MX_SW_khk_F", 1500, "noDLC"],
	
	["Mk200 LMG", "LMG_Mk200_F", 1650],
	
	["Zafir LMG", "LMG_Zafir_F", 1875],

	["SPAR-16S LMG", "arifle_SPAR_02_blk_F", 3000],
	["SPAR-16S LMG (Khaki)", "arifle_SPAR_02_khk_F", 3000],
	["SPAR-16S LMG (Sand)", "arifle_SPAR_02_snd_F", 3000],
	
	["LIM-85 LMG", "LMG_03_F", 3500],
	
	["CAR-95-1 LMG", "arifle_CTARS_blk_F", 3000],
	["CAR-95-1 LMG (Hex)", "arifle_CTARS_hex_F", 3000],
	["CAR-95-1 LMG (G Hex)", "arifle_CTARS_ghex_F", 3000],
	
	["Navid MMG (Tan)", "MMG_01_tan_F", 12000],
	["Navid MMG (Hex)", "MMG_01_hex_F", 12000],
	
	["SPMG MMG (Sand)", "MMG_02_sand_F", 10000],
	["SPMG MMG (MTP)", "MMG_02_camo_F", 10000],
	["SPMG MMG (Black)", "MMG_02_black_F", 10000]
];

launcherArray = compileFinal str
[
	/*["9K38 Igla", "rhs_weap_igla", 2750],
	["FGM-148 Javelin", "rhs_weap_fgm148", 2750],
	["FM-92F Stinger", "rhs_weap_fim92", 2750],
	["M136 (HEAT)", "rhs_weap_M136", 2300],
	["M136 (HEDP)", "rhs_weap_M136_hedp", 2275],
	["M136 (HP)", "rhs_weap_M136_hp", 2250],
	["M72A7", "rhs_weap_m72a7", 2100],
	["MK153 Mod 0 SMAW (Black)", "rhs_weap_smaw", 2900],
	["MK153 Mod 0 SMAW (Green)", "rhs_weap_smaw_green", 2900],
	["RPG-26", "rhs_weap_rpg26", 2300],
	["RPG-7V2", "rhs_weap_rpg7", 2900],
	["RShG-2", "rhs_weap_rs", 2300],*/
	
	["RPG-7", "launch_RPG7_F", 3000],
	["RPG-42 Alamut", "launch_RPG32_F", 3000],
	["RPG-42 Alamut (G Hex)", "launch_RPG32_ghex_F", 3000, "noDLC"],
	["PCML", "launch_NLAW_F", 5000],
	["Titan MPRL Compact (Sand)", "launch_Titan_short_F", 17500],
	["Titan MPRL Compact (Coyote)", "launch_O_Titan_short_F", 17500],
	["Titan MPRL Compact (Olive)", "launch_I_Titan_short_F", 17500],
	["Titan MPRL Compact (Tropic)", "launch_B_Titan_short_tna_F", 17500, "noDLC"],
	["Titan MPRL Compact (G Hex)", "launch_O_Titan_short_ghex_F", 17500, "noDLC"],
	["Titan MPRL AA (Sand)", "launch_Titan_F", 17500],
	["Titan MPRL AA (Hex)", "launch_O_Titan_F", 17500],
	["Titan MPRL AA (Digi)", "launch_I_Titan_F", 17500],
	["Titan MPRL AA (Tropic)", "launch_B_Titan_tna_F", 17500, "noDLC"],
	["Titan MPRL AA (G Hex)", "launch_O_Titan_ghex_F", 17500, "noDLC"]
];

allGunStoreFirearms = compileFinal str (call pistolArray + call smgArray + call rifleArray + call lmgArray + call launcherArray);

staticGunsArray = compileFinal str
[
	["Vehicle Ammo Crate", "Box_NATO_AmmoVeh_F", 25000],
	
	/*["2A18M (D-30A) AT", "rhsgref_ins_d30_at", 50000],
    ["2A18M (D-30A)", "rhsgref_ins_d30", 75000],
    
	["2B14-1 'Podnos'", "rhsgref_ins_2b14", 12500],
    
	["9K115-2 'Metis-M'", "rhs_Metis_9k115_2_msv", 10000],
    ["9K133-1 'Kornet-M'", "rhs_Kornet_9M133_2_msv", 15000],
    ["9K38 (Djigit)", "rhsgref_ins_Igla_AA_pod", 12000],
    
	["AGS-30 (6P17)", "rhsgref_ins_AGS30_TriPod", 3000],
    
	["DShKM Minitripod", "rhsgref_ins_DSHKM_Mini_TriPod", 1500],
    ["DShKM", "rhsgref_ins_DSHKM", 2000],
    
	["FIM-92F (DMS)", "RHS_Stinger_AA_pod_D", 35000],
    
	["KORD (6T7)", "rhs_KORD_MSV", 1500],
    ["KORD (6U16)", "rhs_KORD_high_MSV", 2000],
    
	["M119A2", "RHS_M119_D", 75000],
    
	["M252", "RHS_M252_USMC_D", 12500],
    
	["M2HB (M3 AA)", "RHS_M2StaticMG_D", 2000],
    ["M2HB (M3)", "RHS_M2StaticMG_MiniTripod_D", 1500],
    
	["M41A4 TOW", "RHS_TOW_TriPod_D", 3000],
    
	["Mk.19 (M3)", "RHS_MK19_TriPod_D", 3000],
	
	["SPG-9", "rhsgref_ins_SPG9", 2500],
    ["SPG-9M", "rhsgref_ins_SPG9M", 2500],
	
	["ZU-23-2", "rhsgref_ins_ZU23", 10000],*/
	
	["Static Titan AT 4Rnd", "B_static_AT_F", 40000], // Static launchers only have 4 ammo, hence the low price
	["Static Titan AT 4Rnd", "O_static_AT_F", 40000],
	["Static Titan AT 4Rnd", "I_static_AT_F", 40000],
	["Static Titan AA 4Rnd", "B_static_AA_F", 40000],
	["Static Titan AA 4Rnd", "O_static_AA_F", 40000],
	["Static Titan AA 4Rnd", "I_static_AA_F", 40000],
	
	["Mk30 HMG .50 Low tripod", "B_HMG_01_F", 20000],
	["Mk30 HMG .50 Low tripod", "O_HMG_01_F", 20000],
	["Mk30 HMG .50 Low tripod", "I_HMG_01_F", 20000],
	["Mk30A HMG .50 Sentry", "B_HMG_01_A_F", 30000], // "A" = Autonomous = Overpowered
	["Mk30A HMG .50 Sentry", "O_HMG_01_A_F", 30000],
	["Mk30A HMG .50 Sentry", "I_HMG_01_A_F", 30000],
	["Mk30 HMG .50 High tripod", "B_HMG_01_high_F", 30000],
	["Mk30 HMG .50 High tripod", "O_HMG_01_high_F", 30000],
	["Mk30 HMG .50 High tripod", "I_HMG_01_high_F", 30000],
	
	["Mk32 GMG 20mm Low tripod", "B_GMG_01_F", 50000],
	["Mk32 GMG 20mm Low tripod", "O_GMG_01_F", 50000],
	["Mk32 GMG 20mm Low tripod", "I_GMG_01_F", 50000],
	["Mk32A GMG 20mm Sentry", "B_GMG_01_A_F", 50000],
	["Mk32A GMG 20mm Sentry", "O_GMG_01_A_F", 50000],
	["Mk32A GMG 20mm Sentry", "I_GMG_01_A_F", 50000],
	["Mk32 GMG 20mm High tripod", "B_GMG_01_high_F", 50000],
	["Mk32 GMG 20mm High tripod", "O_GMG_01_high_F", 50000],
	["Mk32 GMG 20mm High tripod", "I_GMG_01_high_F", 50000],
	
	["Mk6 Mortar", "B_Mortar_01_F", 150000],
	["Mk6 Mortar", "O_Mortar_01_F", 150000],
	["Mk6 Mortar", "I_Mortar_01_F", 150000]
];

throwputArray = compileFinal str
[
	/*["M67", "rhs_mag_m67", 250],
	["M18 (Green)", "rhs_mag_m18_green", 215],
	["M18 (Red)", "rhs_mag_m18_red", 215],
	["M8HC", "rhs_mag_an_m8hc", 250],
	["M14", "rhs_mag_an_m14_th3", 250],
	["F1", "rhs_mag_f1", 220],
	["Fakel", "rhs_mag_fakel", 220],
	["Falels", "rhs_mag_fakels", 220],
	["M112", "rhsusf_m112_mag", 1400],
	["M112x4", "rhsusf_m112x4_mag", 1600],
	["Mine M14", "rhsusf_mine_m14_mag", 1400],
	["M18 (Purple)", "rhs_mag_m18_purple", 215],
	["M18 (Yello)", "rhs_mag_m18_yellow", 215],
	["Mine M19", "rhs_mine_M19_mag", 215],
	["M69", "rhs_mag_m69", 250],
	["M7A3", "rhs_mag_m7a3_cs", 250],
	["MK84", "rhs_mag_mk84", 250],
	["MK3A2", "rhs_mag_mk3a2",250],
	["NSPD", "rhs_mag_nspd", 215],
	["NSPD (Green)", "rhs_mag_nspn_green", 215],
	["NSPD (Red)", "rhs_mag_nspn_red", 215],
	["NSPD (Yellow)", "rhs_mag_nspn_yellow", 215],
	["Plamyam", "rhs_mag_plamyam", 250],
	["Mine PMA3", "rhssaf_mine_pma3_mag", 1400],
	["Mine PMN2", "rhs_mine_pmn2_mag", 1400],
	["RDG2 (Black)", "rhs_mag_rdg2_black", 215],
	["RDG2 (White)", "rhs_mag_rdg2_white", 215],
	["RGD5", "rhs_mag_rgd5", 250],
	["RGN", "rhs_mag_rgn", 250],
	["RGO", "rhs_mag_rgo", 250],
	["RKG3EM", "rhsgref_mag_rkg3em", 250],
	["Mine TM62M", "rhs_mine_tm62m_mag", 1400],
	["Mine TMA4", "rhssaf_mine_tma4_mag", 1400],
	["Zarya2", "rhs_mag_zarya2", 250],*/
	
	["RGN Mini Grenade", "MiniGrenade", 200],
	["RGO Frag Grenade", "HandGrenade", 500],
	["APERS Tripwire Mine", "APERSTripMine_Wire_Mag", 2000],
	["APERS Bounding Mine", "APERSBoundingMine_Range_Mag", 2500],
	["APERS Mine", "APERSMine_Range_Mag", 3000],
	["Claymore Charge", "ClaymoreDirectionalMine_Remote_Mag", 3500],
	["M6 SLAM Mine", "SLAMDirectionalMine_Wire_Mag", 3500],
	["AT Mine", "ATMine_Range_Mag", 4000],
	["Explosive Charge", "DemoCharge_Remote_Mag", 4500],
	["Explosive Satchel", "SatchelCharge_Remote_Mag", 5000],
	["Smoke Grenade (White)", "SmokeShell", 100],
	["Smoke Grenade (Blue)", "SmokeShellBlue", 100],
	["Smoke Grenade (Red)", "SmokeShellRed", 100],
	["Smoke Grenade (Green)", "SmokeShellGreen", 100],
	["Smoke Grenade (Purple)", "SmokeShellPurple", 100],
	["Toxic Gas Grenade", "SmokeShellYellow", 1500],
	["Smoke Grenade (Orange)", "SmokeShellOrange", 100]
];

//Gun Store Ammo List
//Text name, classname, buy cost
ammoArray = compileFinal str
[
	/*["9K38 Rocket", "rhs_mag_9k38_rocket", 300],
	["FIM92", "rhs_fim92_mag", 300],
	["FMG148 AT", "rhs_fgm148_magazine_AT", 250],
	["Smaw SR", "rhs_mag_smaw_SR", 250],
	["Smaw HEDP", "rhs_mag_smaw_HEDP", 250],
	["Smaw HEAA", "rhs_mag_smaw_HEAA", 250],
	["RPG-7 OG7V", "rhs_rpg7_OG7V_mag", 250],
	["Nlaw", "NLAW_F", 250],
	["RPG-7 PG7V", "rhs_rpg7_PG7V_mag", 250],
	["RPG-7 PG7VL", "rhs_rpg7_PG7VL_mag", 250],
	["RPG-7 F", "RPG7_F", 250],
	["RPG-7 PG7VR", "rhs_rpg7_PG7VR_mag", 250],
	["RPG-32 HE", "RPG32_HE_F", 250],
	["RPG-32 F", "RPG32_F", 250],
	["RPG-7 TBG7V", "rhs_rpg7_TBG7V_mag", 250],
	["RPG-7 AIRBURST", "rhs_rpg7_type69_airburst_mag", 250],
	["M33 50BMG 10Rnd", "rhsusf_mag_10Rnd_STD_50BMG_M33", 150],
	["MK211 50BMG STD 10Rnd", "rhsusf_mag_10Rnd_STD_50BMG_mk211", 150],
	["7.65x17mm Mag 10Rnd", "rhsgref_10rnd_765x17_vz61", 30],
	["9x19mm Mag 17Rnd", "rhs_mag_9x19_17", 15],
	["7.65x17mm Mag 20Rnd", "rhsgref_20rnd_765x17_vz61", 30],
	[".46x30mm Mag 40Rnd AP", "rhsusf_mag_40Rnd_46x30_AP", 50],
	[".46x30mm Mag 40Rnd FMJ", "rhsusf_mag_40Rnd_46x30_FMJ", 50],
	[".46x30mm Mag 40Rnd JHP", "rhsusf_mag_40Rnd_46x30_JHP", 50],
	["7x45mm Mag ACP", "rhsusf_mag_7x45acp_MHP", 15],
	["5.56x45mm Mag 30Rnd Stanag", "rhs_mag_30Rnd_556x45_M200_Stanag", 45],
	["5.56x45mm Mag 30Rnd stanag (No tracer)", "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer", 45],
	["5.56x45mm Mag 30Rnd stanag (Green Tracer)", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green", 45],
	["5.56x45mm Mag 30Rnd stanag (Orange tracer)", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Orange", 45],
	["5.56x45mm Mag 30Rnd stanag (Red tracer)", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 45],
	["5.56x45mm Mag 30Rnd stanag (Yellow tracer)", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow", 45],
	["5.56x45mm Mag 30Rnd stanag Mk262", "rhs_mag_30Rnd_556x45_Mk262_Stanag", 45],
	["5.56x45mm Mag 30Rnd stanag MK318", "rhs_mag_30Rnd_556x45_Mk318_Stanag", 45],
	["5.56x45mm Mag 100Rnd stanag Soft Pouch", "rhsusf_100Rnd_556x45_M200_soft_pouch", 45],
	["5.56x45mm Mag 100Rnd stanag Soft Pouch", "rhsusf_100Rnd_556x45_soft_pouch", 45],
	["5.56x45mm 200Rnd M SAW", "rhs_200rnd_556x45_M_SAW", 150],
	["5.56x45mm 200Rnd B SAW", "rhs_200rnd_556x45_B_SAW", 150],
	["5.56x45mm 200Rnd Soft Pouch", "rhsusf_200Rnd_556x45_soft_pouch", 150],
	["5.56x45mm Mag 30Rnd M855A1 Stanag", "rhs_mag_30Rnd_556x45_M855A1_Stanag", 45],
	["5.56x45mm 200Rnd T Saw", "rhs_200rnd_556x45_T_SAW", 150],
	["9x18mm 57N181S", "rhs_mag_9x18_8_57N181S", 15],
	["7.62x39mm Mag 30Rnd", "rhs_30Rnd_762x39mm", 50],
	["7.62x39mm Mag 30Rnd 89", "rhs_30Rnd_762x39mm_89", 50],
	["7.62x39mm Mag 30Rnd (tracer)", "rhs_30Rnd_762x39mm_tracer", 50],
	["7.62x39mm Mag 30Rnd U", "rhs_30Rnd_762x39mm_U", 50],
	["7.62x45mm Mag 100Rnd R", "rhs_100Rnd_762x54mmR", 150],
	["5.45x39mm Mag 30Rnd", "rhs_30Rnd_545x39_AK", 50],
	["5.45x39mm Mag 30Rnd (NO Tracers)", "rhs_30Rnd_545x39_AK_no_tracers", 50],
	["5.45x39mm Mag 45Rnd", "rhs_45Rnd_545X39_AK", 50],
	["7.62x54mm Mag 5Rnd M38", "rhsgref_5Rnd_762x54_m38", 15],
	["7.62x57mm Mag 5Rnd KAR98K", "rhsgref_5Rnd_792x57_kar98k", 15],
	["00 Buck Mag 5Rnd", "rhsusf_5Rnd_00Buck", 15],
	["T5000 338 Lapua Mag 5Rnd", "rhs_5Rnd_338lapua_t5000", 100],
	["Frag Mag 5Rnd", "rhsusf_5Rnd_FRAG", 15],
	["HE Mag 5Rnd", "rhsusf_5Rnd_HE", 500],
	["Slug Mag 5Rnd", "rhsusf_5Rnd_Slug", 15],
	["Xm2010 Mag 5Rnd", "rhsusf_5Rnd_300winmag_xm2010", 75],
	["M4009 Mag 6Rnd", "rhsusf_mag_6Rnd_m4009", 50],
	["M397 mag 6Rnd HET", "rhsusf_mag_6Rnd_M397_HET", 50],
	["M433 Mag 6Rnd HEDP", "rhsusf_mag_6Rnd_M433_HEDP", 50],
	["M441 Mag 6Rnd HE", "rhsusf_mag_6Rnd_M441_HE", 50],
	["M576 Mag 6Rnd BuckShot", "rhsusf_mag_6Rnd_M576_Buckshot", 50],
	["M585 Mag 6Rnd (White)", "rhsusf_mag_6Rnd_M585_white", 50],
	["M661 Mag 6Rnd (Green)", "rhsusf_mag_6Rnd_m661_green", 50],
	["M662 Mag 6Rnd (Red)", "rhsusf_mag_6Rnd_m662_red", 50],
	["M713 Mag 6Rnd (Red)", "rhsusf_mag_6Rnd_M713_red", 50],
	["M714 Mag 6Rnd (white)", "rhsusf_mag_6Rnd_M714_white", 50],
	["M715 mag 6Rnd (Green)", "rhsusf_mag_6Rnd_M715_green", 50],
	["M716 Mag 6Rnd (Yellow)", "rhsusf_mag_6Rnd_M716_yellow", 50],
	["M781 Mag 6Rnd (Practice)", "rhsusf_mag_6Rnd_M781_Practice", 50],
	["5.45x39mm Mag 30Rnd (Green)", "rhs_30Rnd_545x39_AK_green", 50],
	["5.45x39mm Mag 45Rnd (Green)", "rhs_45Rnd_545X39_AK_Green", 50],
	["7.62x51mm Special Mag 10Rnd", "rhsusf_10Rnd_762x51_m118_special_Mag", 50],
	["7.62x51mm Special Mag 20Rnd", "rhsusf_20Rnd_762x51_m118_special_Mag", 50],
	["7.62x51mm Special Mag 5Rnd", "rhsusf_5Rnd_762x51_m118_special_Mag", 50],
	["7.62x51mm Mag 100Rnd AP", "rhsusf_100Rnd_762x51_m61_ap", 100],
	["7.62x51mm Mag 50Rnd AP", "rhsusf_50Rnd_762x51_m61_ap", 100],
	["7.62x51mm Mag 10Rnd M62", "rhsusf_10Rnd_762x51_m62_Mag", 50],
	["7.62x51mm Mag 100Rnd (Tracer)", "rhsusf_100Rnd_762x51_m62_tracer", 100],
	["7.62x51mm Mag 20Rnd M62", "rhsusf_20Rnd_762x51_m62_Mag", 50],
	["7.62x51mm Mag 5Rnd M62", "rhsusf_5Rnd_762x51_m62_Mag", 50],
	["7.62x51mm Mag 50Rnd (Tracer)", "rhsusf_50Rnd_762x51_m62_tracer", 50],
	["7.62x51mm Mag 100Rnd", "rhsusf_100Rnd_762x51", 100],
	["7.62x51mm Mag 50Rnd", "rhsusf_50Rnd_762x51", 50],
	["7.62x51mm Mag 100Rnd EPR", "rhsusf_100Rnd_762x51_m80a1epr", 100],
	["7.62x51mm Mag 50Rnd EPR", "rhsusf_50Rnd_762x51_m80a1epr", 50],
	["7.62x51mm Mag 100Rnd (Blank)", "rhsusf_100Rnd_762x51_m82_blank", 100],
	["7.62x51mm Mag 50Rnd (Blank)", "rhsusf_50Rnd_762x51_m82_blank", 50],
	["7.62x51mm Mag 10Rnd M993", "rhsusf_10Rnd_762x51_m993_Mag", 50],
	["7.62x51mm Mag 20Rnd M993", "rhsusf_20Rnd_762x51_m993_Mag", 50],
	["7.62x51mm Mag 5Rnd M993", "rhsusf_5Rnd_762x51_m993_Mag", 50],
	["7.62x54mm Mag 100Rnd 7BZ3", "rhs_100Rnd_762x54mmR_7BZ3", 100],
	["7.62x54mm Mag 10Rnd 7N1", "rhs_10Rnd_762x54mmR_7N1", 50],
	["5.45x39mm Mag 30Rnd 7N10", "rhs_30Rnd_545x39_7N10_AK", 50],
	["5.45x39mm Mag 45Rnd 7N10", "rhs_45Rnd_545X39_7N10_AK", 50],
	["7.62x54mm Mag 100Rnd 7N13", "rhs_100Rnd_762x54mmR_7N13", 100],
	["9x19mm Mag 7N21-20", "rhs_mag_9x19mm_7n21_20", 50],
	["9x19mm Mag 7N21-44", "rhs_mag_9x19mm_7n21_44", 50],
	["5.45x39mm Mag 30Rnd 7N22 AK", "rhs_30Rnd_545x39_7N22_AK", 50],
	["5.45x39mm Mag 45Rnd 7N22 AK", "rhs_45Rnd_545X39_7N22_AK", 50],
	["7.62x45mm Mag 100Rnd 7N26", "rhs_100Rnd_762x54mmR_7N26", 50],
	["9x19mm Mag 7N31-20", "rhs_mag_9x19mm_7n31_20", 50],
	["9x19mm Mag 7N31-44", "rhs_mag_9x19mm_7n31_44", 50],
	["5.45x39mm Mag 30Rnd 7N6 AK", "rhs_30Rnd_545x39_7N6_AK", 50],
	["5.45x39mm Mag 45Rnd 7N6 Ak", "rhs_45Rnd_545X39_7N6_AK", 50],
	["7.62x54mm Mag 100Rnd (Green)", "rhs_100Rnd_762x54mmR_green", 100],
	["5.45x39mm Mag 30Rnd 7U1 AK", "rhs_30Rnd_545x39_7U1_AK", 50],
	["5.45x39mm Mag 45Rnd 7U1 AK", "rhs_45Rnd_545X39_7U1_AK", 50],
	["00Buck Mag 8Rnd", "rhsusf_8Rnd_00Buck", 50],
	["00Buck Mag 8Rnd Frag", "rhsusf_8Rnd_FRAG", 50],
	["00Buck Mag 8Rnd HE", "rhsusf_8Rnd_HE", 50],
	["00Buck Mag 8Rnd Slug", "rhsusf_8Rnd_Slug", 50],
	["9x19mm Mag 15Rnd FMJ", "rhsusf_mag_15Rnd_9x19_FMJ", 50],
	["9x19mm Mag 17Rnd FMJ", "rhsusf_mag_17Rnd_9x19_FMJ", 50],
	["9x19mm Mag 15Rnd JHP", "rhsusf_mag_15Rnd_9x19_JHP", 50],
	["9x19mm Mag 17Rnd JHP", "rhsusf_mag_17Rnd_9x19_JHP", 50],
	["RSP30 (Green)", "rhs_mag_rsp30_green", 50],
	["RSP30 Flare (Red)", "rhs_mag_rsp30_red", 50],
	["RSP30 (White)", "rhs_mag_rsp30_white", 50],
	["5.56x45mm Mag 100Rnd EPR G36", "rhssaf_100rnd_556x45_EPR_G36", 100],
	["5.56x45mm Mag 30Rnd EPR G36", "rhssaf_30rnd_556x45_EPR_G36", 50],
	["5.56x45mm Mag 30Rnd MDIM G36", "rhssaf_30rnd_556x45_MDIM_G36", 50],
	["5.56x45mm Mag 30Rnd TDIM G36", "rhssaf_30rnd_556x45_TDIM_G36", 50],
	["5.56x45mm Mag 30Rnd SOST G36", "rhssaf_30rnd_556x45_SOST_G36", 50],
	["5.56x45mm Mag 30Rnd SPR G36", "rhssaf_30rnd_556x45_SPR_G36", 50],
	["5.56x45mm Mag 30Rnd TRACER G36", "rhssaf_30rnd_556x45_Tracers_G36", 50],
	["GDM40", "rhs_GDM40", 50],
	["Mag M4009", "rhs_mag_m4009", 50],
	["GRD40 (Green)", "rhs_GRD40_Green", 50],
	["GRD40 (Red)", "rhs_GRD40_Red", 50],
	["GRD40 (white)", "rhs_GRD40_White", 50],
	["5.56x45mm Mag 30Rnd M21 T", "rhsgref_30rnd_556x45_m21_t", 50],
	["5.56x45mm Mag 30RND M21", "rhsgref_30rnd_556x45_m21", 50],
	["M397 HET", "rhs_mag_M397_HET", 50],
	["M422 HEDP", "rhs_mag_M433_HEDP", 50],
	["M441 HE", "rhs_mag_M441_HE", 50],
	["M576 Mag", "rhs_mag_m576", 50],
	["M585 (White)", "rhs_mag_M585_white", 50],
	["M661 (Green)", "rhs_mag_m661_green", 50],
	["M662 (Red)", "rhs_mag_m662_red", 50],
	["M713 (Red)", "rhs_mag_m713_Red", 50],
	["M714 (White)", "rhs_mag_m714_White", 50],
	["M715 (Green)", "rhs_mag_m715_Green", 50],
	["M716 (Yellow)", "rhs_mag_m716_yellow", 50],
	["7.92x57mm Mag 10Rnd M76 (tracer)", "rhssaf_10Rnd_792x57_m76_tracer", 50],
	["7.92x57mm Mag 10Rnd M76", "rhsgref_10Rnd_792x57_m76", 50],
	["M781 Mag Practice", "rhs_mag_M781_Practice", 50],
	["7.62x54R Mag 250Rnd", "rhssaf_250Rnd_762x54R", 50],
	["9x39mm Mag 10Rnd SP5", "rhs_10rnd_9x39mm_SP5", 50],
	["9x39mm Mag 20Rnd SP5", "rhs_20rnd_9x39mm_SP5", 50],
	["9x39mm Mag 10Rnd SP6", "rhs_10rnd_9x39mm_SP6", 50],
	["9x39mm Mag 20Rnd SP6", "rhs_20rnd_9x39mm_SP6", 50],
	["VG40MD (Green)", "rhs_VG40MD_Green", 50],
	["VG40MD (Red)", "rhs_VG40MD_Red", 50],
	["VG40MD (White)", "rhs_VG40MD_White", 50],
	["VG40OP (Green)", "rhs_VG40OP_green", 50],
	["VG40OP (Red)", "rhs_VG40OP_red", 50],
	["VG40OP (White)", "rhs_VG40OP_white", 50],
	["VG40SZ", "rhs_VG40SZ", 50],
	["VG40TB", "rhs_VG40TB", 50],
	["VOG25", "rhs_VOG25", 50],
	["VOG25P", "rhs_VOG25P", 50],*/
	
	// CUP Ammo
	[".45 ACP 7Rnd Mag", "CUP_7Rnd_45ACP_1911", 5],
	["9x19 10Rnd Mag", "CUP_10Rnd_9x19_Compact", 5],
	["9x19 17Rnd Mag", "CUP_17Rnd_9x19_glock17", 10],
	["9x19 15Rnd Mag", "CUP_15Rnd_9x19_M9", 10],
	["9x18 8Rnd Mag", "CUP_8Rnd_9x18_Makarov_M", 2],
	["9x18 8Rnd Mag (SD)", "CUP_8Rnd_9x18_MakarovSD_M", 3],
	["9x19 30Rnd Mag", "CUP_30Rnd_9x19_UZI", 15],
	["9x19 18Rnd Mag", "CUP_18Rnd_9x19_Phantom", 10],
	[".45 ACP 6Rnd Mag (1 hit)", "CUP_6Rnd_45ACP_M", 20],
	["7.65x17 20Rnd Ball Mag", "CUP_20Rnd_B_765x17_Ball_M", 10],
	
	["9x19 64Rnd Bizon Mag", "CUP_64Rnd_9x19_Bizon_M", 30],
	["9x19 64Rnd Bizon Mag (Green)", "CUP_64Rnd_Green_Tracer_9x19_Bizon_M", 35],
	["9x19 64Rnd Bizon Mag (Red)", "CUP_64Rnd_Red_Tracer_9x19_Bizon_M", 35],
	["9x19 64Rnd Bizon Mag (White)", "CUP_64Rnd_White_Tracer_9x19_Bizon_M", 35],
	["9x19 64Rnd Bizon Mag (Yellow)", "CUP_64Rnd_Yellow_Tracer_9x19_Bizon_M", 35],
	["9x19 30Rnd Evo Mag", "CUP_30Rnd_9x19_EVO", 20],
	["9x19 30Rnd MP5 Mag", "CUP_30Rnd_9x19_MP5", 20],
	
	["AA12 20Rnd Pellets", "CUP_20Rnd_B_AA12_Pellets", 80],
	["AA12 20Rnd Slugs", "CUP_20Rnd_B_AA12_74Slug", 80],
	["AA12 20Rnd HE", "CUP_20Rnd_B_AA12_HE", 500],
	["Beneli 8Rnd Slugs", "CUP_8Rnd_B_Beneli_74Slug", 20],
	["Saiga 8Rnd Slugs", "CUP_8Rnd_B_Saiga12_74Slug_M", 30],
	
	["5.45x39 30Rnd", "CUP_30Rnd_545x39_AK_M", 40],
	["5.45x39 30Rnd (Green)", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK_M", 45],
	["5.45x39 30Rnd (Red)", "CUP_30Rnd_TE1_Red_Tracer_545x39_AK_M", 45],
	["5.45x39 30Rnd (White)", "CUP_30Rnd_TE1_White_Tracer_545x39_AK_M", 45],
	["5.45x39 30Rnd (Yellow)", "CUP_30Rnd_TE1_Yellow_Tracer_545x39_AK_M", 45],
	["7.62x39 30Rnd", "CUP_30Rnd_762x39_AK47_M", 60],
	["5.45x39 75Rnd (Green)", "CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M", 100],
	["12.7x99 5Rnd", "CUP_5Rnd_127x99_as50_M", 50],
	["8.6x70 5Rnd", "CUP_5Rnd_86x70_L115A1", 30],
	["7.62x51 10Rnd Tracer", "CUP_10Rnd_762x51_CZ750_Tracer", 20],
	["7.62x51 10Rnd", "CUP_10Rnd_762x51_CZ750", 20],
	["5.56x45 30Rnd STANAG", "CUP_30Rnd_556x45_Stanag", 20],
	["5.56x45 30Rnd", "CUP_30Rnd_556x45_G36", 20],
	["5.56x45 30Rnd (Red)", "CUP_30Rnd_TE1_Red_Tracer_556x45_G36", 25],
	["5.56x45 30Rnd (Green)", "CUP_30Rnd_TE1_Green_Tracer_556x45_G36", 25],
	["5.56x45 30Rnd (Yellow)", "CUP_30Rnd_TE1_Yellow_Tracer_556x45_G36", 25],
	["5.56x45 100Rnd", "CUP_100Rnd_556x45_BetaCMag", 60],
	["5.56x45 100Rnd (Red)", "CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag", 65],
	["5.56x45 100Rnd (Green)", "CUP_100Rnd_TE1_Green_Tracer_556x45_BetaCMag", 65],
	["5.56x45 100Rnd (Yellow)", "CUP_100Rnd_TE1_Yellow_Tracer_556x45_BetaCMag", 65],
	["5.56x45 20Rnd STANAG", "CUP_20Rnd_556x45_Stanag", 15],
	["7.62x51 20Rnd", "CUP_20Rnd_762x51_CZ805B", 30],
	["7.62x51 20Rnd (Yellow)", "CUP_20Rnd_TE1_Yellow_Tracer_762x51_CZ805B", 35],
	["7.62x51 20Rnd (Red)", "CUP_20Rnd_TE1_Red_Tracer_762x51_CZ805B", 35],
	["7.62x51 20Rnd (Green)", "CUP_20Rnd_TE1_Green_Tracer_762x51_CZ805B", 35],
	["7.62x51 20Rnd (White)", "CUP_20Rnd_TE1_White_Tracer_762x51_CZ805B", 35],
	["7.62x51 20Rnd", "CUP_20Rnd_762x51_DMR", 35],
	["7.62x51 20Rnd (Yellow)", "CUP_20Rnd_TE1_Yellow_Tracer_762x51_DMR", 35],
	["7.62x51 20Rnd (Red)", "CUP_20Rnd_TE1_Red_Tracer_762x51_DMR", 35],
	["7.62x51 20Rnd (Green)", "CUP_20Rnd_TE1_Green_Tracer_762x51_DMR", 35],
	["7.62x51 20Rnd (White)", "CUP_20Rnd_TE1_White_Tracer_762x51_DMR", 35],
	["7.62x51 20Rnd", "CUP_20Rnd_762x51_FNFAL_M", 25],
	["HE 6Rnd", "CUP_6Rnd_HE_M203", 100],
	["Flare 6Rnd (White)", "CUP_6Rnd_FlareWhite_M203", 60],
	["Flare 6Rnd (Green)", "CUP_6Rnd_FlareGreen_M203", 60],
	["Flare 6Rnd (Red)", "CUP_6Rnd_FlareRed_M203", 60],
	["Flare 6Rnd (Yellow)", "CUP_6Rnd_FlareYellow_M203", 60],
	["Smoke 6Rnd (White)", "CUP_6Rnd_Smoke_M203", 60],
	["Smoke 6Rnd (Red)", "CUP_6Rnd_SmokeRed_M203", 60],
	["Smoke 6Rnd (Green)", "CUP_6Rnd_SmokeGreen_M203", 60],
	["Smoke 6Rnd (Yellow)", "CUP_6Rnd_SmokeYellow_M203", 60],
	["HE", "CUP_1Rnd_HE_M203", 20],
	["HEDP", "CUP_1Rnd_HEDP_M203", 20],
	["Flare (White)", "CUP_FlareWhite_M203", 10],
	["Flare (Green)", "CUP_FlareGreen_M203", 10],
	["Flare (Red)", "CUP_FlareRed_M203", 10],
	["Flare (Yellow)", "CUP_FlareYellow_M203", 10],
	["Smoke (White)", "CUP_1Rnd_Smoke_M203", 10],
	["Smoke (Red)", "CUP_1Rnd_SmokeRed_M203", 10],
	["Smoke (Green)", "CUP_1Rnd_SmokeGreen_M203", 10],
	["Smoke (Yellow)", "CUP_1Rnd_SmokeYellow_M203", 10],
	["5.6x15 5Rnd", "CUP_5x_22_LR_17_HMR_M", 5],
	["12.7x108 5Rnd", "CUP_5Rnd_127x108_KSVK_M", 50],
	["7.62x51 100Rnd (White)", "CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M", 100],
	["7.62x51 100Rnd (Red)", "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M", 100],
	["5.56x45 200Rnd (Red)", "CUP_200Rnd_TE4_Red_Tracer_556x45_M249", 100],
	["5.56x45 200Rnd (Yellow)", "CUP_200Rnd_TE4_Yellow_Tracer_556x45_M249", 100],
	["5.56x45 200Rnd (Red)", "CUP_200Rnd_TE1_Red_Tracer_556x45_M249", 100],
	["5.56x45 100Rnd (Green)", "CUP_100Rnd_TE4_Green_Tracer_556x45_M249", 50],
	["5.56x45 100Rnd (Red)", "CUP_100Rnd_TE4_Red_Tracer_556x45_M249", 50],
	["5.56x45 100Rnd (Yellow)", "CUP_100Rnd_TE4_Yellow_Tracer_556x45_M249", 50],
	["5.56x45 200Rnd (Green)", "CUP_200Rnd_TE4_Green_Tracer_556x45_L110A1", 100],
	["5.56x45 200Rnd (Red)", "CUP_200Rnd_TE4_Red_Tracer_556x45_L110A1", 100],
	["5.56x45 200Rnd (Yellow)", "CUP_200Rnd_TE4_Yellow_Tracer_556x45_L110A1", 100],
	[".303 10Rnd", "CUP_10x_303_M", 1],
	["7.62x51 5Rnd", "CUP_5Rnd_762x51_M24", 10],
	["12.7x99 10Rnd", "CUP_10Rnd_127x99_m107", 100],
	["7.62x51 20Rnd", "CUP_20Rnd_762x51_B_M110", 30],
	["7.62x51 20Rnd (Yellow)", "CUP_20Rnd_TE1_Yellow_Tracer_762x51_M110", 35],
	["7.62x51 20Rnd (Red)", "CUP_20Rnd_TE1_Red_Tracer_762x51_M110", 35],
	["7.62x51 20Rnd (Green)", "CUP_20Rnd_TE1_Green_Tracer_762x51_M110", 35],
	["7.62x51 20Rnd (White)", "CUP_20Rnd_TE1_White_Tracer_762x51_M110", 35],
	["7.62x54 100Rnd (Green)", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M", 100],
	["7.62x39 30Rnd (Green)", "CUP_30Rnd_Sa58_M_TracerG", 30],
	["7.62x39 30Rnd (Red)", "CUP_30Rnd_Sa58_M_TracerR", 30],
	["7.62x39 30Rnd (Yellow)", "CUP_30Rnd_Sa58_M_TracerY", 30],
	["7.62x39 30Rnd", "CUP_30Rnd_Sa58_M", 30],
	["7.62x51 20Rnd", "CUP_20Rnd_762x51_B_SCAR", 30],
	["7.62x51 20Rnd (Yellow)", "CUP_20Rnd_TE1_Yellow_Tracer_762x51_SCAR", 30],
	["7.62x51 20Rnd (Red)", "CUP_20Rnd_TE1_Red_Tracer_762x51_SCAR", 30],
	["7.62x51 20Rnd (Green)", "CUP_20Rnd_TE1_Green_Tracer_762x51_SCAR", 30],
	["7.62x51 20Rnd (White)", "CUP_20Rnd_TE1_White_Tracer_762x51_SCAR", 30],
	["7.62x54 10Rnd", "CUP_10Rnd_762x54_SVD_M", 20],
	["7.62x54 50Rnd (Red)", "CUP_50Rnd_UK59_762x54R_Tracer", 80],
	["9x39 10Rnd", "CUP_10Rnd_9x39_SP5_VSS_M", 5],
	["9x39 20Rnd", "CUP_20Rnd_9x39_SP5_VSS_M", 10],
	
	["Strela Missile", "CUP_Strela_2_M", 400],
	["Stinger Missile", "CUP_Stinger_M", 400],
	["Igla Missile", "CUP_Igla_M", 400],
	["HEAA Missile", "CUP_SMAW_HEAA_M", 300],
	["HEDP Missile", "CUP_SMAW_HEDP_M", 300],
	["PG7V Missile", "CUP_PG7V_M", 300],
	["PG7VL Missile", "CUP_PG7VL_M", 300],
	["PG7VR Missile", "CUP_PG7VR_M", 300],
	["OG7 Missile", "CUP_OG7_M", 300],
	["RPG18 Missile", "CUP_RPG18_M", 300],
	["Dik Torpedo", "CUP_M136_M", 100],
	["MAAWS HEAT", "CUP_MAAWS_HEAT_M", 300],
	["MAAWS HEDP", "CUP_MAAWS_HEDP_M", 300],
	["AT13 Missile", "CUP_AT13_M", 300],
	["NLAW Missile", "CUP_NLAW_M", 300],
	["Dragon Missile", "CUP_Dragon_EP1_M", 400],
	["Javelin Missile", "CUP_Javelin_M", 400],
	
	//AMMO ARMA3
	["9mm 10Rnd Mag", "10Rnd_9x21_Mag", 10],
	["9mm 16Rnd Mag", "16Rnd_9x21_Mag", 10],
	["9mm 30Rnd Mag", "30Rnd_9x21_Mag", 10],
	["9mm 30Rnd SMG Mag", "30Rnd_9x21_Mag_SMG_02", 10],
	[".45 ACP 6Rnd Cylinder", "6Rnd_45ACP_Cylinder", 10],
	[".45 ACP 9Rnd Mag", "9Rnd_45ACP_Mag", 10],
	[".45 ACP 11Rnd Mag", "11Rnd_45ACP_Mag", 10],
	[".45 ACP 30Rnd Vermin Mag", "30Rnd_45ACP_MAG_SMG_01", 50],
	[".45 ACP 30Rnd Tracer (Green) Mag", "30Rnd_45ACP_Mag_SMG_01_tracer_green", 50],
	["5.45mm 30Rnd Mag", "30Rnd_545x39_Mag_F", 50],
	["5.45mm 30Rnd Tracer (Yellow) Mag", "30Rnd_545x39_Mag_Tracer_F", 50],
	["5.45mm 30Rnd Tracer (Green) Mag", "30Rnd_545x39_Mag_Tracer_Green_F", 50],
	["5.56mm 20Rnd Underwater Mag", "20Rnd_556x45_UW_mag", 50],
	["5.56mm 30Rnd STANAG Mag", "30Rnd_556x45_Stanag", 50],
	["5.56mm 30Rnd Tracer (Green) Mag", "30Rnd_556x45_Stanag_Tracer_Green", 50],
	["5.56mm 30Rnd Tracer (Yellow) Mag", "30Rnd_556x45_Stanag_Tracer_Yellow", 50],
	["5.56mm 30Rnd Tracer (Red) Mag", "30Rnd_556x45_Stanag_Tracer_Red", 50],
	["5.56mm 150Rnd Mag", "150Rnd_556x45_Drum_Mag_F", 200],
	["5.56mm 150Rnd Tracer (Red) Mag", "150Rnd_556x45_Drum_Mag_Tracer_F", 200],
	["5.56mm 200Rnd Box", "200Rnd_556x45_Box_F", 300],
	["5.56mm 200Rnd Tracer (Yellow) Box", "200Rnd_556x45_Box_Tracer_F", 300],
	["5.56mm 200Rnd Tracer (Red) Box", "200Rnd_556x45_Box_Tracer_Red_F", 300],
	["5.8mm 30Rnd Mag", "30Rnd_580x42_Mag_F", 50],
	["5.8mm 30Rnd Tracer (Green) Mag", "30Rnd_580x42_Mag_Tracer_F", 50],
	["5.8mm 100Rnd Mag", "100Rnd_580x42_Mag_F", 150],
	["5.8mm 100Rnd Tracer (Green) Mag", "100Rnd_580x42_Mag_Tracer_F", 150],
	["6.5mm 20Rnd Mag", "20Rnd_650x39_Cased_Mag_F", 100],
	["6.5mm 30Rnd STANAG Mag", "30Rnd_65x39_caseless_mag", 100],
	["6.5mm 30Rnd Tracer (Red) Mag", "30Rnd_65x39_caseless_mag_Tracer", 100],
	["6.5mm 30Rnd Caseless Mag", "30Rnd_65x39_caseless_green", 100],
	["6.5mm 30Rnd Tracer (Green) Mag", "30Rnd_65x39_caseless_green_mag_Tracer", 100],
	["6.5mm 100Rnd Belt Case", "100Rnd_65x39_caseless_mag", 200],
	["6.5mm 100Rnd Tracer (Red) Belt Case", "100Rnd_65x39_caseless_mag_Tracer", 200],
	["6.5mm 200Rnd Belt Case", "200Rnd_65x39_cased_Box", 250],
	["6.5mm 200Rnd Tracer (Yellow) Belt Case", "200Rnd_65x39_cased_Box_Tracer", 250],
	//["7.62mm 10Rnd Mag", "10Rnd_762x51_Mag", 150],
	["7.62mm 10Rnd Mag", "10Rnd_762x54_Mag", 150],
	["7.62mm 20Rnd Mag", "20Rnd_762x51_Mag", 150],
	["7.62mm 30Rnd Mag", "30Rnd_762x39_Mag_F", 150],
	["7.62mm 30Rnd Tracer (Yellow) Mag", "30Rnd_762x39_Mag_Tracer_F", 150],
	["7.62mm 30Rnd Tracer (Green) Mag", "30Rnd_762x39_Mag_Tracer_Green_F", 150],
	//["7.62mm 150Rnd Box", "150Rnd_762x51_Box", 1500],
	//["7.62mm 150Rnd Tracer (Green) Box", "150Rnd_762x51_Box_Tracer", 1250],
	["7.62mm 150Rnd Box", "150Rnd_762x54_Box", 300],
	["7.62mm 150Rnd Tracer (Green) Box", "150Rnd_762x54_Box_Tracer", 300],
	[".338 LM 10Rnd Mag", "10Rnd_338_Mag", 300],
	[".338 NM 130Rnd Belt", "130Rnd_338_Mag", 1000],
	["9.3mm 10Rnd Mag", "10Rnd_93x64_DMR_05_Mag", 350],
	["9.3mm 150Rnd Belt", "150Rnd_93x64_Mag", 1250],
	[".408 7Rnd Cheetah Mag", "7Rnd_408_Mag", 500],
	["12.7mm 5Rnd Mag", "5Rnd_127x108_Mag", 50],
	["12.7mm 5Rnd Armor-Piercing Mag", "5Rnd_127x108_APDS_Mag", 50],
	["12.7mm 10Rnd Subsonic Mag", "10Rnd_127x54_Mag", 100],
	[".50 BW 10Rnd Mag", "10Rnd_50BW_Mag_F", 700],
	["PG-7VM HEAT Grenade", "RPG7_F", 500],                   // Direct damage: medium    | Splash damage: low    | Guidance: none
	["RPG-42 Anti-Tank Rocket", "RPG32_F", 500],              // Direct damage: high      | Splash damage: low    | Guidance: none
	["RPG-42 High-Explosive Rocket", "RPG32_HE_F", 300],      // Direct damage: medium    | Splash damage: medium | Guidance: none
	["PCML Anti-Tank Missile", "NLAW_F", 1000],                // Direct damage: very high | Splash damage: low    | Guidance: laser, ground vehicles
	["Titan Anti-Tank Missile", "Titan_AT", 3500],             // Direct damage: high      | Splash damage: low    | Guidance: mouse, laser, ground vehicles
	["Titan Anti-Personnel Missile", "Titan_AP", 3500],        // Direct damage: low       | Splash damage: high   | Guidance: mouse, laser
	["Titan Anti-Air Missile", "Titan_AA", 3500],              // Direct damage: low       | Splash damage: medium | Guidance: aircraft
	["40mm HE Grenade Round", "1Rnd_HE_Grenade_shell", 750],
	["40mm 3Rnd HE Grenades", "3Rnd_HE_Grenade_shell", 1000],
	["40mm Smoke Round (White)", "1Rnd_Smoke_Grenade_shell", 275],
	["40mm Smoke Round (Blue)", "1Rnd_SmokeBlue_Grenade_shell", 275],
	["40mm Smoke Round (Red)", "1Rnd_SmokeRed_Grenade_shell", 275],
	["40mm Smoke Round (Green)", "1Rnd_SmokeGreen_Grenade_shell", 275],
	["40mm Smoke Round (Purple)", "1Rnd_SmokePurple_Grenade_shell", 275],
	["40mm Smoke Round (Yellow)", "1Rnd_SmokeYellow_Grenade_shell", 275],
	["40mm Smoke Round (Orange)", "1Rnd_SmokeOrange_Grenade_shell", 275],
	["40mm 3Rnd Smokes (White)", "3Rnd_Smoke_Grenade_shell", 600],
	["40mm 3Rnd Smokes (Blue)", "3Rnd_SmokeBlue_Grenade_shell", 600],
	["40mm 3Rnd Smokes (Red)", "3Rnd_SmokeRed_Grenade_shell", 5000],
	["40mm 3Rnd Smokes (Green)", "3Rnd_SmokeGreen_Grenade_shell", 600],
	["40mm 3Rnd Smokes (Purple)", "3Rnd_SmokePurple_Grenade_shell", 600],
	["40mm 3Rnd Smokes (Yellow)", "3Rnd_SmokeYellow_Grenade_shell", 600],
	["40mm 3Rnd Smokes (Orange)", "3Rnd_SmokeOrange_Grenade_shell", 600],
	["40mm Flare Round (IR)", "UGL_FlareCIR_F", 100],
	["40mm Flare Round (White)", "UGL_FlareWhite_F", 100],
	["40mm Flare Round (Green)", "UGL_FlareGreen_F", 100],
	["40mm Flare Round (Yellow)", "UGL_FlareYellow_F", 100],
	["40mm Flare Round (Red)", "UGL_FlareRed_F", 100],
	["40mm 3Rnd Flares (IR)", "3Rnd_UGL_FlareCIR_F", 250],
	["40mm 3Rnd Flares (White)", "3Rnd_UGL_FlareWhite_F", 250],
	["40mm 3Rnd Flares (Green)", "3Rnd_UGL_FlareGreen_F", 250],
	["40mm 3Rnd Flares (Yellow)", "3Rnd_UGL_FlareYellow_F", 250],
	["40mm 3Rnd Flares (Red)", "3Rnd_UGL_FlareRed_F", 250]
];

//Gun Store item List
//Text name, classname, buy cost, item class
accessoriesArray = compileFinal str
[
	/*["1P29", "rhs_acc_1p29", 300, "item"],
	["1P63", "rhs_acc_1p63", 300, "item"],
	["RakursPM", "rhs_acc_rakursPM", 100, "item"],
	["1P78", "rhs_acc_1p78", 300, "item"],
	["1PN93 1", "rhs_acc_1pn93_1", 500, "item"],
	["1PN93 2", "rhs_acc_1pn93_2", 500, "item"],
	["ZENIT", "rhs_acc_2dpZenit", 50, "item"],
	["ZENIT RIS", "rhs_acc_2dpZenit_ris", 50, "item"],
	["GRIP 2", "rhsusf_acc_grip2", 75, "item"],
	["GRIP 2T", "rhsusf_acc_grip2_tan", 75, "item"],
	["UUK", "rhs_acc_uuk", 25, "item"],
	["ANAPAS 13 GV1", "rhsusf_acc_anpas13gv1", 5000, "item"],
	["ANPEQ 15 SIDE", "rhsusf_acc_anpeq15side", 100, "item"],
	["ANPEQ 15 WMX", "rhsusf_acc_anpeq15_top", 100, "item"],
	["ANPEQ 15 Light", "rhsusf_acc_anpeq15_wmx_light", 100, "item"],
	["ANPEQ 15 WMX", "rhsusf_acc_anpeq15_wmx", 100, "item"],
	["ANPEQ 15 SIDE BK", "rhsusf_acc_anpeq15side_bk", 100, "item"],
	["ANPEQ 15 BK TOP", "rhsusf_acc_anpeq15_bk_top", 100, "item"],
	["ANPEQ 15 ", "rhsusf_acc_anpeq15", 100, "item"],
	["ANPEQ 15 Light", "rhsusf_acc_anpeq15_light", 100, "item"],
	["ANPEQ 15 BK", "rhsusf_acc_anpeq15_bk", 100, "item"],
	["ANPEQ 15 BK Light", "rhsusf_acc_anpeq15_bk_light", 100, "item"],
	["ANPEQ 15A", "rhsusf_acc_anpeq15A", 100, "item"],
	["ACOG2 USMC", "rhsusf_acc_ACOG2_USMC", 300, "item"],
	["ACOG3 USMC", "rhsusf_acc_ACOG3_USMC", 300, "item"],
	["ACOG USMC", "rhsusf_acc_ACOG_USMC", 300, "item"],
	["ANPVS 27", "rhsusf_acc_anpvs27", 500, "item"],
	["ARDEC M240", "rhsusf_acc_ARDEC_M240", 25, "item"],
	["AT4 Handler", "rhs_acc_at4_handler", 25, "item"],
	["BIPOD", "rhs_bipod", 100, "item"],
	["DTK1L", "rhs_acc_dtk1l", 25, "item"],
	["DH 5.20x56", "rhs_acc_dh520x56", 25, "item"],
	["AK5", "rhs_acc_ak5", 25, "item"],
	["DTK", "rhs_acc_dtk", 25, "item"],
	["DTK1983", "rhs_acc_dtk1983", 25, "item"],
	["DTK1", "rhs_acc_dtk1", 25, "item"],
	["DTK1P", "rhs_acc_dtk1p", 25, "item"],
	["DTK2", "rhs_acc_dtk2", 25, "item"],
	["DTK3", "rhs_acc_dtk3", 25, "item"],
	["DTK4 Short", "rhs_acc_dtk4short", 25, "item"],
	["DTK4 Screws", "rhs_acc_dtk4screws", 25, "item"],
	["DTK4 Long", "rhs_acc_dtk4long", 25, "item"],
	["EPK1", "rhs_acc_ekp1", 100, "item"],
	["EOTECH", "rhsusf_acc_EOTECH", 100, "item"],
	["GRIP FFG2", "rhs_acc_grip_ffg2", 25, "item"],
	["Flight Recorder", "rhs_item_flightrecorder", 25, "item"],
	["GRIP1", "rhsusf_acc_grip1", 25, "item"],
	["HARRIS SWIVEL", "rhs_acc_harris_swivel", 25, "item"],
	["HARRIS Bipod", "rhsusf_acc_harris_bipod", 25, "item"],
	["HARRIS SWIVEL", "rhsusf_acc_harris_swivel", 25, "item"],
	["ELCAN", "rhsusf_acc_ELCAN", 300, "item"],
	["ELCAN ARD", "rhsusf_acc_ELCAN_ard", 300, "item"],
	["ACOG", "rhsusf_acc_ACOG", 300, "item"],
	["ACOG2", "rhsusf_acc_ACOG2", 300, "item"],
	["ACOG3", "rhsusf_acc_ACOG3", 300, "item"],
	["ACOG ANPVS27", "rhsusf_acc_ACOG_anpvs27", 375, "item"],
	["M2A1", "rhsusf_acc_M2A1", 250, "item"],
	["EOTECH 552", "rhsusf_acc_eotech_552", 200, "item"],
	["EOTECH 552D", "rhsusf_acc_eotech_552_d", 200, "item"],
	["COMP M4", "rhsusf_acc_compm4", 250, "item"],
	["M8541", "rhsusf_acc_M8541", 550, "item"],
	["M8541 LOW", "rhsusf_acc_M8541_low", 550, "item"],
	["M8541 LOWD", "rhsusf_acc_M8541_low_d", 550, "item"],
	["M8541 LOWWD", "rhsusf_acc_M8541_low_wd", 550, "item"],
	["PREMIER LOW", "rhsusf_acc_premier_low", 550, "item"],
	["PREMIER ANPVS27", "rhsusf_acc_premier_anpvs27", 600, "item"],
	["PREMIER", "rhsusf_acc_premier", 550, "item"],
	["M952V", "rhsusf_acc_M952V", 25, "item"],
	["LEUPOLD MK4", "rhsusf_acc_LEUPOLDMK4", 550, "item"],
	["LEUPOLD MK42", "rhsusf_acc_LEUPOLDMK4_2", 550, "item"],
	["LEUPOLD MK42D", "rhsusf_acc_LEUPOLDMK4_2_d", 550, "item"],
	["NITA", "rhs_acc_nita", 100, "item"],
	["NT4 (BLACK)", "rhsusf_acc_nt4_black", 25, "item"],
	["NT4 (TAN)", "rhsusf_acc_nt4_tan", 25, "item"],
	["PBS1", "rhs_acc_pbs1", 25, "item"],
	["PBS4", "rhs_acc_pbs4", 25, "item"],
	["PERST1IK", "rhs_acc_perst1ik", 25, "item"],
	["PERST1ik RIS", "rhs_acc_perst1ik_ris", 25, "item"],
	["PERST3", "rhs_acc_perst3", 25, "item"],
	["PERST3 TOP", "rhs_acc_perst3_top", 25, "item"],
	["PERST3 2DP", "rhs_acc_perst3_2dp_h", 25, "item"],
	["PERST3 2DP Light", "rhs_acc_perst3_2dp_light_h", 25, "item"],
	["PGS64", "rhs_acc_pgs64", 25, "item"],
	["PGS64 74U", "rhs_acc_pgs64_74u", 25, "item"],
	["PGS64 74UN", "rhs_acc_pgs64_74un", 25, "item"],
	["PGO7V", "rhs_acc_pgo7v", 100, "item"],
	["PGO7V2", "rhs_acc_pgo7v2", 100, "item"],
	["PGO7V3", "rhs_acc_pgo7v3", 100, "item"],
	["PKAS", "rhs_acc_pkas", 100, "item"],
	["PSO1 M2", "rhs_acc_pso1m2", 100, "item"],
	["PSO1 M21", "rhs_acc_pso1m21", 100, "item"],
	["GRIP RK2", "rhs_acc_grip_rk2", 25, "item"],
	["GRIP RK6", "rhs_acc_grip_rk6", 25, "item"],
	["ROTEX5 (GREY)", "rhsusf_acc_rotex5_grey", 25, "item"],
	["ROTEX5 (TAN)", "rhsusf_acc_rotex5_tan", 25, "item"],
	["ROTEX MP7 AOR1", "rhsusf_acc_rotex_mp7_aor1", 25, "item"],
	["ROTEX MP7", "rhsusf_acc_rotex_mp7", 25, "item"],
	["ROTEX MP7 (DESERT)", "rhsusf_acc_rotex_mp7_desert", 25, "item"],
	["ROTEX MP7 (WHINTER)", "rhsusf_acc_rotex_mp7_winter", 25, "item"],
	["GRIP4", "rhsusf_acc_grip4", 25, "item"],
	["SF3P556", "rhsusf_acc_SF3P556", 25, "item"],
	["SFMB556", "rhsusf_acc_SFMB556", 25, "item"],
	["OMEGA 9K", "rhsusf_acc_omega9k", 25, "item"],
	["OPTIC SMAW", "rhs_weap_optic_smaw", 300, "item"],
	["SR25S", "rhsusf_acc_SR25S", 25, "item"],
	["SPERCTER DR", "rhsusf_acc_SpecterDR", 300, "item"],
	["SPECTER DR OD", "rhsusf_acc_SpecterDR_OD", 300, "item"],
	["SPECTER DR D", "rhsusf_acc_SpecterDR_D", 300, "item"],
	["SPECTER DR A", "rhsusf_acc_SpecterDR_A", 300, "item"],
	["ACOG MDO", "rhsusf_acc_ACOG_MDO", 500, "item"],
	["ACOG D", "rhsusf_acc_ACOG_d", 350, "item"],
	["ACOG WD", "rhsusf_acc_ACOG_wd", 350, "item"],
	["ACOG RMR", "rhsusf_acc_ACOG_RMR", 350, "item"],
	["GRIP3", "rhsusf_acc_grip3", 25, "item"],
	["GRIP3 (TAN)", "rhsusf_acc_grip3_tan", 25, "item"],
	["TGPA", "rhs_acc_tgpa", 25, "item"],
	["TGPV", "rhs_acc_tgpv", 25, "item"],
	["M2010S", "rhsusf_acc_M2010S", 25, "item"],
	["WMX", "rhsusf_acc_wmx", 25, "item"],
	["XPS3", "rhsusf_acc_eotech_xps3", 100, "item"],*/
	
	["Suppressor 9mm", "muzzle_snds_L", 50, "item"],
	["Suppressor .45 ACP", "muzzle_snds_acp", 50, "item"],
	["Suppressor 5.56mm", "muzzle_snds_M", 1000, "item"],
	["Suppressor 5.56mm (Khaki)", "muzzle_snds_m_khk_F", 1000, "item"],
	["Suppressor 5.56mm (Sand)", "muzzle_snds_m_snd_F", 1000, "item"],
	["Suppressor 5.8mm", "muzzle_snds_58_blk_F", 1000, "item"],
	["Suppressor 5.8mm (G Hex)", "muzzle_snds_58_wdm_F", 1000, "item"],
	["Suppressor 6.5mm", "muzzle_snds_H", 1000, "item"],
	["Suppressor 6.5mm (Khaki)", "muzzle_snds_H_khk_F", 1000, "item"],
	["Suppressor 6.5mm (Sand)", "muzzle_snds_H_snd_F", 1000, "item"],
	["Suppressor 6.5mm LMG", "muzzle_snds_H_MG", 1250, "item"],
	["Suppressor 6.5mm LMG (Black)", "muzzle_snds_H_MG_blk_F", 1250, "item"],
	["Suppressor 6.5mm LMG (Khaki)", "muzzle_snds_H_MG_khk_F", 1250, "item"],
	["Suppressor Type 115", "muzzle_snds_65_TI_blk_F", 1250, "item"],
	["Suppressor Type 115 (Hex)", "muzzle_snds_65_TI_hex_F", 1250, "item"],
	["Suppressor Type 115 (G Hex)", "muzzle_snds_65_TI_ghex_F", 1250, "item"],
	["Suppressor 7.62mm", "muzzle_snds_B", 1250, "item"],
	["Suppressor 7.62mm (Khaki)", "muzzle_snds_B_khk_F", 1250, "item"],
	["Suppressor 7.62mm (Sand)", "muzzle_snds_B_snd_F", 1250, "item"],
	["Suppressor .338", "muzzle_snds_338_black", 1500, "item"],
	["Suppressor .338 (Green)", "muzzle_snds_338_green", 1500, "item"],
	["Suppressor .338 (Sand)", "muzzle_snds_338_sand", 1750, "item"],
	["Suppressor 9.3mm", "muzzle_snds_93mmg", 1750, "item"],
	["Suppressor 9.3mm (Tan)", "muzzle_snds_93mmg_tan", 1750, "item"],
	["Bipod (NATO)", "bipod_01_F_blk", 1000, "item", "noDLC"],
	["Bipod (CSAT)", "bipod_02_F_blk", 1000, "item", "noDLC"],
	["Bipod (AAF)", "bipod_03_F_blk", 1000, "item", "noDLC"],
	["Bipod (MTP)", "bipod_01_F_mtp", 1000, "item", "noDLC"],
	["Bipod (Hex)", "bipod_02_F_hex", 1000, "item", "noDLC"],
	["Bipod (Olive)", "bipod_03_F_oli", 1000, "item", "noDLC"],
	["Bipod (Sand)", "bipod_01_F_snd", 1000, "item", "noDLC"],
	["Bipod (Tan)", "bipod_02_F_tan", 1000, "item", "noDLC"],
	["Bipod (Khaki)", "bipod_01_F_khk", 1000, "item"],
	["Flashlight", "acc_flashlight", 250, "item"],
	["IR Laser Pointer", "acc_pointer_IR", 250, "item"],
	["Yorris Sight (Zubr Revolver)", "optic_Yorris", 500, "item"],
	["MRD Sight (4-Five Pistol)", "optic_MRD", 500, "item"],
	["ACO SMG (Red)", "optic_aco_smg", 500, "item"],
	["ACO SMG (Green)", "optic_ACO_grn_smg", 500, "item"],
	["ACO (Red)", "optic_Aco", 500, "item"],
	["ACO (Green)", "optic_Aco_grn", 500, "item"],
	["Holosight SMG", "optic_Holosight_smg", 500, "item"],
	["Holosight", "optic_Holosight", 500, "item"],
	["MRCO", "optic_MRCO", 1000, "item"],
	["ERCO", "optic_ERCO_blk_F", 1000, "item"],
	["ERCO (Khaki)", "optic_ERCO_khk_F", 1000, "item"],
	["ERCO (Sand)", "optic_ERCO_snd_F", 1000, "item"],
	["ARCO", "optic_Arco", 1250, "item"],
	["ARCO (Black)", "optic_Arco_blk_F", 1250, "item"],
	["ARCO (G Hex)", "optic_Arco_ghex_F", 1250, "item"],
	["RCO", "optic_Hamr", 1500, "item"],
	["RCO (Khaki)", "optic_Hamr_khk_F", 1500, "item"],
	["MOS", "optic_SOS", 1500, "item"],
	["MOS (Khaki)", "optic_SOS_khk_F", 1500, "item"],
	["DMS", "optic_DMS", 1750, "item"],
	["DMS (G Hex)", "optic_DMS_ghex_F", 1750, "item"],
	["Kahlia (Sightless)", "optic_KHS_old", 2000, "item"],
	["Kahlia", "optic_KHS_blk", 2250, "item"],
	["Kahlia (Hex)", "optic_KHS_hex", 2250, "item"],
	["Kahlia (Tan)", "optic_KHS_tan", 2250, "item"],
	["AMS", "optic_AMS", 2500, "item"],
	["AMS (Khaki)", "optic_AMS_khk", 2500, "item"],
	["AMS (Sand)", "optic_AMS_snd", 2500, "item"],
	["LRPS", "optic_LRPS", 3000, "item"],
	["LRPS (G Hex)", "optic_LRPS_ghex_F", 3000, "item"],
	["LRPS (Tropic)", "optic_LRPS_tna_F", 3000, "item"],
	["NVS", "optic_NVS", 10000, "item"],
	["TWS", "optic_tws", 5000, "item"], // To hide from store list, add "HIDDEN" after "item", like "item", "HIDDEN"]
	["TWS MG", "optic_tws_mg", 5000, "item"],
	["Nightstalker", "optic_Nightstalker", 5500, "item"]
];

// If commented, means the color/camo isn't implemented or is a duplicate of another hat
headArray = compileFinal str
[
	["Gas Mask - MASCARA DE GAS", "H_CrewHelmetHeli_B", 1000, "hat"],
	["Gas Mask - MASCARA DE GAS", "H_CrewHelmetHeli_O", 1000, "hat"],
	["Gas Mask - MASCARA DE GAS", "H_CrewHelmetHeli_I", 1000, "hat"],
	["Modular Helmet (Digi)", "H_HelmetIA", 500, "hat"],
	// ["MICH (Camo)", "H_HelmetIA_net", 50, "hat"],
	// ["MICH 2 (Camo)", "H_HelmetIA_camo", 50, "hat"],
	["Combat Helmet", "H_HelmetB", 500, "hat"],
	["Combat Helmet (Black)", "H_HelmetB_black", 500, "hat"],
	["Combat Helmet (Camonet)", "H_HelmetB_camo", 500, "hat"],
	["Stealth Combat Helmet", "H_HelmetB_TI_tna_F", 1500, "hat"],
	["Enhanced Combat Helmet", "H_HelmetSpecB", 1500, "hat"],
	["Enhanced Combat Helmet (Black)", "H_HelmetSpecB_blk", 1500, "hat"],
	["Enhanced Combat Helmet (Snakeskin)", "H_HelmetSpecB_snakeskin", 1500, "hat"],
	["Enhanced Combat Helmet (Tropic)", "H_HelmetB_Enh_tna_F", 1500, "hat", "noDLC"],
	["Protector Helmet (Hex)", "H_HelmetO_ocamo", 600, "hat"],
	["Protector Helmet (Urban)", "H_HelmetO_oucamo", 600, "hat"],
	["Assassin Helmet (Hex)", "H_HelmetSpecO_ocamo", 750, "hat"],
	["Assassin Helmet (Black)", "H_HelmetSpecO_blk", 750, "hat"],
	["Defender Helmet (Hex)", "H_HelmetLeaderO_ocamo", 1000, "hat"],
	["Defender Helmet (Urban)", "H_HelmetLeaderO_oucamo", 1000, "hat"],
	["Defender Helmet (G Hex)", "H_HelmetLeaderO_ghex_F", 1000, "hat", "noDLC"],
	["Cap op.especiais(Camu)", "H_HelmetO_ViperSP_hex_F", 25000, "hat"],   // APEX
	["Cap op.especiais(Green)", "H_HelmetO_ViperSP_ghex_F", 25000, "hat"],  // APEX
	["Pilot Helmet (NATO)", "H_PilotHelmetFighter_B", 600, "hat"],
	["Pilot Helmet (CSAT)", "H_PilotHelmetFighter_O", 600, "hat"],
	["Pilot Helmet (AAF)", "H_PilotHelmetFighter_I", 600, "hat"],
	["Crew Helmet (NATO)", "H_HelmetCrew_B", 600, "hat"],
	["Crew Helmet (CSAT)", "H_HelmetCrew_O", 600, "hat"],
	["Crew Helmet (AAF)", "H_HelmetCrew_I", 600, "hat"],
	["Heli Pilot Helmet (NATO)", "H_PilotHelmetHeli_B", 1200, "hat"],
	["Heli Pilot Helmet (CSAT)", "H_PilotHelmetHeli_O", 1200, "hat"],
	["Heli Pilot Helmet (AAF)", "H_PilotHelmetHeli_I", 1200, "hat"],
	["Military Cap (Blue)", "H_MilCap_blue", 250, "hat"],
	["Military Cap (Gray)", "H_MilCap_gry", 250, "hat"],
	["Military Cap (Urban)", "H_MilCap_oucamo", 250, "hat"],
	["Military Cap (Russia)", "H_MilCap_rucamo", 250, "hat"],
	["Military Cap (MTP)", "H_MilCap_mcamo", 250, "hat"],
	["Military Cap (Hex)", "H_MilCap_ocamo", 250, "hat"],
	["Military Cap (AAF)", "H_MilCap_dgtl", 250, "hat"],
	["Rangemaster Cap", "H_Cap_headphones", 250, "hat"],
	["Bandana (Black)", "H_Bandanna_gry", 125, "hat"],
	["Bandana (Blue)", "H_Bandanna_blu", 125, "hat"],
	["Bandana (Coyote)", "H_Bandanna_cbr", 125, "hat"],
	["Bandana (Headset)", "H_Bandanna_khk_hs", 125, "hat"],
	["Bandana (Khaki)", "H_Bandanna_khk", 125, "hat"],
	["Bandana (MTP)", "H_Bandanna_mcamo", 125, "hat"],
	["Bandana (Sage)", "H_Bandanna_sgg", 125, "hat"],
	["Bandana (Sand)", "H_Bandanna_sand", 125, "hat"],
	["Bandana (Surfer)", "H_Bandanna_surfer", 125, "hat"],
	["Bandana (Surfer, Black)", "H_Bandanna_surfer_blk", 125, "hat"],
	["Bandana (Surfer, Green)", "H_Bandanna_surfer_grn", 125, "hat"],
	["Bandana (Woodland)", "H_Bandanna_camo", 125, "hat"],
	["Bandanna Mask (Black)", "H_BandMask_blk", 125, "hat"],
	["Bandanna Mask (Demon)", "H_BandMask_demon", 125, "hat"],
	["Bandanna Mask (Khaki)", "H_BandMask_khk", 125, "hat"],
	["Bandanna Mask (Reaper)", "H_BandMask_reaper", 125, "hat"],
	["Beanie (Black)", "H_Watchcap_blk", 125, "hat"],
	["Beanie (Brown)", "H_Watchcap_cbr", 125, "hat"],
	["Beanie (Khaki)", "H_Watchcap_khk", 125, "hat"],
	["Beanie (Navy)", "H_Watchcap_sgg", 125, "hat"],
	["Beanie (Olive)", "H_Watchcap_camo", 125, "hat"],
	["Beret (Black)", "H_Beret_blk", 125, "hat"],
	["Beret (Colonel)", "H_Beret_Colonel", 125, "hat"],
	["Beret (NATO)", "H_Beret_02", 125, "hat"],
	// ["Beret (Green)", "H_Beret_grn", 25, "hat"],
	// ["Beret (Police)", "H_Beret_blk_POLICE", 25, "hat"],
	// ["Beret (Red)", "H_Beret_red", 25, "hat"],
	// ["Beret (SAS)", "H_Beret_brn_SF", 25, "hat"],
	// ["Beret (SF)", "H_Beret_grn_SF", 25, "hat"],
	// ["Beret (RED)", "H_Beret_ocamo", 25, "hat"],
	// ["Black Turban", "H_TurbanO_blk", 50, "hat"],
	// ["Booniehat (Dirty)", "H_Booniehat_dirty", 25, "hat"],
	// ["Booniehat (Green)", "H_Booniehat_grn", 25, "hat"],
	// ["Booniehat (Khaki)", "H_Booniehat_indp", 25, "hat"],
	["Booniehat (AAF)", "H_Booniehat_dgtl", 125, "hat"],
	["Booniehat (Headset)", "H_Booniehat_khk_hs", 125, "hat"],
	["Booniehat (Khaki)", "H_Booniehat_khk", 125, "hat"],
	["Booniehat (MTP)", "H_Booniehat_mcamo", 125, "hat"],
	["Booniehat (Olive)", "H_Booniehat_oli", 125, "hat"],
	["Booniehat (Sand)", "H_Booniehat_tan", 125, "hat"],
	["Fedora (Blue)", "H_Hat_blue", 125, "hat"],
	["Fedora (Brown)", "H_Hat_brown", 125, "hat"],
	["Fedora (Camo)", "H_Hat_camo", 125, "hat"],
	["Fedora (Checker)", "H_Hat_checker", 125, "hat"],
	["Fedora (Gray)", "H_Hat_grey", 125, "hat"],
	["Fedora (Tan)", "H_Hat_tan", 125, "hat"],
	["Cap (BI)", "H_Cap_grn_BI", 125, "hat"],
	["Cap (Black)", "H_Cap_blk", 125, "hat"],
	["Cap (Blue)", "H_Cap_blu", 125, "hat"],
	["Cap (CMMG)", "H_Cap_blk_CMMG", 125, "hat"],
	["Cap (Green)", "H_Cap_grn", 125, "hat"],
	["Cap (ION)", "H_Cap_blk_ION", 125, "hat"],
	["Cap (Olive)", "H_Cap_oli", 125, "hat"],
	["Cap (Olive, Headset)", "H_Cap_oli_hs", 125, "hat"],
	["Cap (Police)", "H_Cap_police", 125, "hat"],
	["Cap (Press)", "H_Cap_press", 125, "hat"],
	["Cap (Red)", "H_Cap_red", 125, "hat"],
	["Cap (Surfer)", "H_Cap_surfer", 125, "hat"],
	["Cap (Tan)", "H_Cap_tan", 125, "hat"],
	["Cap (UK)", "H_Cap_khaki_specops_UK", 125, "hat"],
	["Cap (US Black)", "H_Cap_usblack", 125, "hat"],
	["Cap (US MTP)", "H_Cap_tan_specops_US", 125, "hat"],
	["Cap (AAF)", "H_Cap_blk_Raven", 125, "hat"],
	["Cap (OPFOR)", "H_Cap_brn_SPECOPS", 125, "hat"],
	["Shemag (Olive)", "H_Shemag_olive", 125, "hat"],
	["Shemag (Olive, Headset)", "H_Shemag_olive_hs", 225, "hat"],
	["Shemag (Tan)", "H_ShemagOpen_tan", 225, "hat"],
	["Shemag (White)", "H_ShemagOpen_khk", 225, "hat"],
	["Shemag mask (Tan)", "H_Shemag_tan", 225, "hat"],
	["Racing Helmet (Black)", "H_RacingHelmet_1_black_F", 250, "hat"],
	["Racing Helmet (Blue)", "H_RacingHelmet_1_blue_F", 250, "hat"],
	["Racing Helmet (Green)", "H_RacingHelmet_1_green_F", 250, "hat"],
	["Racing Helmet (Yellow)", "H_RacingHelmet_1_yellow_F", 250, "hat"],
	["Racing Helmet (Orange)", "H_RacingHelmet_1_orange_F", 250, "hat"],
	["Racing Helmet (Red)", "H_RacingHelmet_1_red_F", 250, "hat"],
	["Racing Helmet (White)", "H_RacingHelmet_1_white_F", 250, "hat"],
	["Racing Helmet (Fuel)", "H_RacingHelmet_1_F", 250, "hat"],
	["Racing Helmet (Bluking)", "H_RacingHelmet_2_F", 250, "hat"],
	["Racing Helmet (Redstone)", "H_RacingHelmet_3_F", 250, "hat"],
	["Racing Helmet (Vrana)", "H_RacingHelmet_4_F", 250, "hat"]
];

uniformArray = compileFinal str
[
	["Wetsuit", "U_B_Wetsuit", 500, "uni"],
	["Wetsuit", "U_O_Wetsuit", 500, "uni"],
	["Wetsuit", "U_I_Wetsuit", 500, "uni"],
	["Light Ghillie", "U_B_GhillieSuit", 500, "uni"],
	["Light Ghillie", "U_O_GhillieSuit", 500, "uni"],
	["Light Ghillie", "U_I_GhillieSuit", 500, "uni"],
	["Light Ghillie (Jungle)", "U_B_T_Sniper_F", 500, "uni"],
	["Light Ghillie (Jungle)", "U_O_T_Sniper_F", 500, "uni"],
	["Full Ghillie (Arid)", "U_B_FullGhillie_ard", 2500, "uni"],
	["Full Ghillie (Arid)", "U_O_FullGhillie_ard", 2500, "uni"],
	["Full Ghillie (Arid)", "U_I_FullGhillie_ard", 2500, "uni"],
	["Full Ghillie (Lush)", "U_B_FullGhillie_lsh", 2500, "uni"],
	["Full Ghillie (Lush)", "U_O_FullGhillie_lsh", 2500, "uni"],
	["Full Ghillie (Lush)", "U_I_FullGhillie_lsh", 2500, "uni"],
	["Full Ghillie (Semi-Arid)", "U_B_FullGhillie_sard", 2500, "uni"],
	["Full Ghillie (Semi-Arid)", "U_O_FullGhillie_sard", 2500, "uni"],
	["Full Ghillie (Semi-Arid)", "U_I_FullGhillie_sard", 2500, "uni"],
	["Full Ghillie (Jungle)", "U_B_T_FullGhillie_tna_F", 2500, "uni"],
	["Full Ghillie (Jungle)", "U_O_T_FullGhillie_tna_F", 2500, "uni"],
	["CTRG Stealth Uniform", "U_B_CTRG_Soldier_F", 10000, "uni"],
	["Special Purpose Suit (Hex)", "U_O_V_Soldier_Viper_hex_F", 20000, "uni"],
	["Special Purpose Suit (G Hex)", "U_O_V_Soldier_Viper_F", 20000, "uni"],
	["Survival Fatigues (NATO)", "U_B_survival_uniform", 2000, "uni"],
	["Default Uniform (NATO)", "U_B_CombatUniform_mcam", 250, "uni"],
	["Default Uniform (CSAT)", "U_O_OfficerUniform_ocamo", 250, "uni"],
	["Default Uniform (AAF)", "U_I_CombatUniform", 250, "uni"],
	["Recon Fatigues (MTP)", "U_B_CombatUniform_mcam_vest", 250, "uni"],
	["Combat Fatigues (Tropic)", "U_B_T_Soldier_F", 250, "uni", "noDLC"],
	["Combat Fatigues (Tee)", "U_B_CombatUniform_mcam_tshirt", 250, "uni"],
	["Combat Fatigues (Gangsta)", "U_I_G_resistanceLeader_F", 250, "uni"],
	["Combat Fatigues (Rolled-up)", "U_I_CombatUniform_shortsleeve", 250, "uni"],
	["CTRG Combat Uniform", "U_B_CTRG_1", 250, "uni"],
	["CTRG Combat Uniform (Tee)", "U_B_CTRG_2", 250, "uni"],
	["CTRG Combat Uniform (Rolled-up)", "U_B_CTRG_3", 250, "uni"],
	["Fatigues (Hex)", "U_O_CombatUniform_ocamo", 500, "uni"],
	["Fatigues (Urban)", "U_O_CombatUniform_oucamo", 500, "uni"],
	["Fatigues (G Hex)", "U_O_T_Soldier_F", 500, "uni", "noDLC"],
	["Officer Fatigues", "U_I_OfficerUniform", 250, "uni"],
	["Pilot Coveralls", "U_B_PilotCoveralls", 250, "uni"],
	["Pilot Coveralls", "U_O_PilotCoveralls", 250, "uni"],
	["Pilot Coveralls", "U_I_pilotCoveralls", 250, "uni"],
	["Heli Pilot Coveralls", "U_B_HeliPilotCoveralls", 250, "uni"],
	["Heli Pilot Coveralls", "U_I_HeliPilotCoveralls", 250, "uni"],
	["Guerilla Garment", "U_BG_Guerilla1_1", 250, "uni"],  // BLUFOR
	["Guerilla Outfit (Plain, Dark)", "U_BG_Guerilla2_1", 250, "uni"],
	["Guerilla Outfit (Pattern)", "U_BG_Guerilla2_2", 250, "uni"],
	["Guerilla Outfit (Plain, Light)", "U_BG_Guerilla2_3", 250, "uni"],
	["Guerilla Smocks", "U_BG_Guerilla3_1", 250, "uni"],
	["Guerilla Apparel", "U_BG_Guerrilla_6_1", 250, "uni"],
	["Guerilla Uniform", "U_BG_leader", 250, "uni"],
	["Guerilla Garment", "U_OG_Guerilla1_1", 250, "uni"], // OPFOR
	["Guerilla Outfit (Plain, Dark)", "U_OG_Guerilla2_1", 250, "uni"],
	["Guerilla Outfit (Pattern)", "U_OG_Guerilla2_2", 250, "uni"],
	["Guerilla Outfit (Plain, Light)", "U_OG_Guerilla2_3", 150, "uni"],
	["Guerilla Smocks", "U_OG_Guerilla3_1", 150, "uni"],
	["Guerilla Apparel", "U_OG_Guerrilla_6_1", 150, "uni"],
	["Guerilla Uniform", "U_OG_leader", 150, "uni"],
	["Guerilla Garment", "U_IG_Guerilla1_1", 150, "uni"], // Independent
	["Guerilla Outfit (Plain, Dark)", "U_IG_Guerilla2_1", 150, "uni"],
	["Guerilla Outfit (Pattern)", "U_IG_Guerilla2_2", 150, "uni"],
	["Guerilla Outfit (Plain, Light)", "U_IG_Guerilla2_3", 150, "uni"],
	["Guerilla Smocks", "U_IG_Guerilla3_1", 150, "uni"],
	["Guerilla Apparel", "U_IG_Guerrilla_6_1", 150, "uni"],
	["Guerilla Uniform", "U_IG_leader", 150, "uni"],
	/*["Worker Coveralls", "U_C_WorkerCoveralls", 150, "uni"], // can only be worn by civilian units
	["T-Shirt (Blue)", "U_C_Poor_1", 150, "uni"],
	["Polo (Red/white)", "U_C_Poloshirt_redwhite", 150, "uni"],
	["Polo (Salmon)", "U_C_Poloshirt_salmon", 150, "uni"],
	["Polo (Tri-color)", "U_C_Poloshirt_tricolour", 150, "uni"],
	["Polo (Navy)", "U_C_Poloshirt_blue", 150, "uni"],
	["Polo (Burgundy)", "U_C_Poloshirt_burgundy", 150, "uni"],
	["Polo (Blue/green)", "U_C_Poloshirt_stripped", 150, "uni"],*/
	["Polo (Competitor)", "U_Competitor", 150, "uni"],
	["Polo (Rangemaster)", "U_Rangemaster", 150, "uni"],
	/*["Racing Suit (Black)", "U_C_Driver_1_black", 25, "uni"], // can only be worn by civilian units
	["Racing Suit (Blue)", "U_C_Driver_1_blue", 150, "uni"],
	["Racing Suit (Green)", "U_C_Driver_1_green", 150, "uni"],
	["Racing Suit (Yellow)", "U_C_Driver_1_yellow", 150, "uni"],
	["Racing Suit (Orange)", "U_C_Driver_1_orange", 150, "uni"],
	["Racing Suit (Red)", "U_C_Driver_1_red", 150, "uni"],
	["Racing Suit (White)", "U_C_Driver_1_white", 150, "uni"],
	["Racing Suit (Fuel)", "U_C_Driver_1", 150, "uni"],
	["Racing Suit (Bluking)", "U_C_Driver_2", 150, "uni"],
	["Racing Suit (Redstone)", "U_C_Driver_3", 150, "uni"],
	["Racing Suit (Vrana)", "U_C_Driver_4", 150, "uni"],*/
	["Tron Light Suit (Blue)", "U_B_Protagonist_VR", 5000, "uni"],
	["Tron Light Suit (Red)", "U_O_Protagonist_VR", 5000, "uni"],
	["Tron Light Suit (Green)", "U_I_Protagonist_VR", 5000, "uni"],
	//apex
	["CTRG Stealth Uniform (Rolled Up)", "U_B_CTRG_Soldier_3_F", 10000, "uni"],
	["CTRG Stealth Uniform (Tee)", "U_B_CTRG_Soldier_2_F", 10000, "uni"],
	["CTRG Urban Uniform", "U_B_CTRG_Soldier_urb_1_F", 1000, "uni"],
	["CTRG Urban Uniform (Tee)", "U_B_CTRG_Soldier_urb_2_F", 1000, "uni"],
	["CTRG Urban Uniform (Rolled Up)", "U_B_CTRG_Soldier_urb_3_F", 1000, "uni"],
	["Gendarmerie Commander Uniform", "U_B_GEN_Commander_F", 1000, "uni"],
	["Gendarmerie Uniform", "U_B_GEN_Soldier_F", 1000, "uni"],
	["Syndikat Uniform", "U_I_C_Soldier_Camo_F", 1000, "uni"]
];

vestArray = compileFinal str
[
	["Rebreather (NATO)", "V_RebreatherB", 2000, "vest"],
	["Rebreather (CSAT)", "V_RebreatherIR", 2000, "vest"],
	["Rebreather (AAF)", "V_RebreatherIA", 2000, "vest"],
	["Carrier Lite (Green)", "V_PlateCarrier1_rgr", 1260, "vest"],
	["Carrier Lite (Black)", "V_PlateCarrier1_blk", 1260, "vest"],
	["Carrier Lite (CTRG)", "V_PlateCarrierL_CTRG", 1260, "vest"],
	["Carrier Lite (Tropic)", "V_PlateCarrier1_tna_F", 1260, "vest", "noDLC"],
	["Carrier Rig (Green)", "V_PlateCarrier2_rgr", 1480, "vest"],
	["Carrier Rig (Black)", "V_PlateCarrier2_blk", 1480, "vest"],
	["Carrier Rig (CTRG)", "V_PlateCarrierH_CTRG", 1480, "vest"],
	["Carrier Rig (Tropic)", "V_PlateCarrier2_tna_F", 1480, "vest", "noDLC"],
	["Carrier GL Rig (Green)", "V_PlateCarrierGL_rgr", 1800, "vest"],
	["Carrier GL Rig (Black)", "V_PlateCarrierGL_blk", 1800, "vest"],
	["Carrier GL Rig (MTP)", "V_PlateCarrierGL_mtp", 1800, "vest"],
	["Carrier GL Rig (Tropic)", "V_PlateCarrierGL_tna_F", 1800, "vest", "noDLC"],
	["Carrier Special Rig (Green)", "V_PlateCarrierSpec_rgr", 1550, "vest"],
	["Carrier Special Rig (Black)", "V_PlateCarrierSpec_blk", 1550, "vest"],
	["Carrier Special Rig (MTP)", "V_PlateCarrierSpec_mtp", 1550, "vest"],
	["Carrier Special Rig (Tropic)", "V_PlateCarrierSpec_tna_F", 1550, "vest", "noDLC"],
	["GA Carrier Lite (Digi)", "V_PlateCarrierIA1_dgtl", 1160, "vest"],
	["GA Carrier Rig (Digi)", "V_PlateCarrierIA2_dgtl", 1160, "vest"],
	["GA Carrier GL Rig (Digi)", "V_PlateCarrierIAGL_dgtl", 1700, "vest"],
	["GA Carrier GL Rig (Olive)", "V_PlateCarrierIAGL_oli", 1700, "vest"],
	["LBV Harness", "V_HarnessO_brn", 800, "vest"],
	["LBV Harness (Gray)", "V_HarnessO_gry", 800, "vest"],
	["LBV Grenadier Harness", "V_HarnessOGL_brn", 600, "vest"],
	["LBV Grenadier Harness (Gray)", "V_HarnessOGL_gry", 600, "vest"],
	["Slash Bandolier (Black)", "V_BandollierB_blk", 400, "vest"],
	["Slash Bandolier (Coyote)", "V_BandollierB_cbr", 400, "vest"],
	["Slash Bandolier (Green)", "V_BandollierB_rgr", 400, "vest"],
	["Slash Bandolier (Khaki)", "V_BandollierB_khk", 400, "vest"],
	["Slash Bandolier (Olive)", "V_BandollierB_oli", 400, "vest"],
	["Chest Rig (Khaki)", "V_Chestrig_khk", 700, "vest"],
	["Chest Rig (Green)", "V_Chestrig_rgr", 700, "vest"],
	["Fighter Chestrig (Black)", "V_Chestrig_blk", 700, "vest"],
	["Fighter Chestrig (Olive)", "V_Chestrig_oli", 700, "vest"],
	["Tactical Vest (Black)", "V_TacVest_blk", 500, "vest"],
	["Tactical Vest (Brown)", "V_TacVest_brn", 500, "vest"],
	["Tactical Vest (Camo)", "V_TacVest_camo", 500, "vest"],
	["Tactical Vest (Khaki)", "V_TacVest_khk", 500, "vest"],
	["Tactical Vest (Olive)", "V_TacVest_oli", 500, "vest"],
	["Tactical Vest (Police)", "V_TacVest_blk_POLICE", 500, "vest"],
	["Raven Night Vest", "V_TacVestIR_blk", 700, "vest"],
	["Press Vest", "V_Press_F", 200, "vest"],
	// apex
	["LBV Harness (Green Hex)","V_HarnessO_ghex_F", -1, "vest", "noDLC"],
	["LBV Grenadier Harness (Green Hex)","V_HarnessOGL_ghex_F", -1, "vest", "noDLC"],
	["Slash Bandolier (Green Hex)","V_BandollierB_ghex_F", -1, "vest", "noDLC"],
	["Gendarmerie Vest","V_TacVest_gen_F", -1, "vest", "noDLC"],   
	["Carrier Lite (Green, No Flag)","V_PlateCarrier1_rgr_noflag_F", 500, "vest", "noDLC"], 
	["Carier Rig(Green, No Flag)","V_PlateCarrier2_rgr_noflag_F", 1000, "vest", "noDLC"] 
];

backpackArray = compileFinal str
[
	//["Parachute", "B_Parachute", 200, "backpack"],

	["Assault Pack (Black)", "B_AssaultPack_blk", 100, "backpack"],
	["Assault Pack (Green)", "B_AssaultPack_rgr", 100, "backpack"],
	["Assault Pack (MTP)", "B_AssaultPack_mcamo", 100, "backpack"],
	["Assault Pack (Hex)", "B_AssaultPack_ocamo", 100, "backpack"],
	["Assault Pack (Tropic)", "B_AssaultPack_tna_F", 100, "backpack", "noDLC"],

	["Field Pack (Black)", "B_FieldPack_blk", 250, "backpack"],
	["Field Pack (Coyote)", "B_FieldPack_cbr", 250, "backpack"],
	["Field Pack (Khaki)", "B_FieldPack_khk", 250, "backpack"],
	["Field Pack (Urban)", "B_FieldPack_oucamo", 250, "backpack"],
	["Field Pack (G Hex)", "B_FieldPack_ghex_F", 250, "backpack", "noDLC"],

	["Kitbag (Coyote)", "B_Kitbag_cbr", 300, "backpack"],
	["Kitbag (Green)", "B_Kitbag_rgr", 300, "backpack"],
	["Kitbag (MTP)", "B_Kitbag_mcamo", 300, "backpack"],
	["Kitbag (Sage)", "B_Kitbag_sgg", 300, "backpack"],

	["Viper Light Harness (Black)", "B_ViperLightHarness_blk_F", 400, "backpack", "noDLC"],
	["Viper Light Harness (Hex)", "B_ViperLightHarness_hex_F", 400, "backpack", "noDLC"],
	["Viper Light Harness (G Hex)", "B_ViperLightHarness_ghex_F", 400, "backpack", "noDLC"],
	["Viper Light Harness (Khaki)", "B_ViperLightHarness_khk_F", 400, "backpack", "noDLC"],
	["Viper Light Harness (Olive)", "B_ViperLightHarness_oli_F", 400, "backpack", "noDLC"],

	["Viper Harness (Black)", "B_ViperHarness_blk_F", 500, "backpack", "noDLC"],
	["Viper Harness (Hex)", "B_ViperHarness_hex_F", 500, "backpack", "noDLC"],
	["Viper Harness (G Hex)", "B_ViperHarness_ghex_F", 500, "backpack", "noDLC"],
	["Viper Harness (Khaki)", "B_ViperHarness_khk_F", 500, "backpack", "noDLC"],
	["Viper Harness (Olive)", "B_ViperHarness_oli_F", 500, "backpack", "noDLC"],

	["Carryall (Khaki)", "B_Carryall_khk", 700, "backpack"],
	["Carryall (MTP)", "B_Carryall_mcamo", 700, "backpack"],
	["Carryall (Olive)", "B_Carryall_oli", 700, "backpack"],
	["Carryall (Urban)", "B_Carryall_oucamo", 700, "backpack"],
	["Carryall (G Hex)", "B_Carryall_ghex_F", 7000, "backpack", "noDLC"],

	["Bergen (Digital)", "B_Bergen_dgtl_F", 2000, "backpack", "noDLC"],
	["Bergen (Hex)", "B_Bergen_hex_F", 2000, "backpack"],
	["Bergen (MTP)", "B_Bergen_mcamo_F", 2000, "backpack", "noDLC"],
	["Bergen (Tropic)", "B_Bergen_tna_F", 2000, "backpack", "noDLC"]
];

genItemArray = compileFinal str
[
	["UAV Terminal (NATO)", "B_UavTerminal", 1650, "gps"],
	["UAV Terminal (CSAT)", "O_UavTerminal", 1650, "gps"],
	["UAV Terminal (AAF)", "I_UavTerminal", 1650, "gps"],
	["Quadrotor UAV (NATO)", "B_UAV_01_backpack_F", 10000, "backpack"],
	["Quadrotor UAV (CSAT)", "O_UAV_01_backpack_F", 10000, "backpack"],
	["Quadrotor UAV (AAF)", "I_UAV_01_backpack_F", 10000, "backpack"],
	["Remote Designator (Sand)", "B_Static_Designator_01_weapon_F", 2000, "backpack"],
	["Remote Designator (Hex)", "O_Static_Designator_02_weapon_F", 2000, "backpack"],
	["GPS", "ItemGPS", 200, "gps"],
	["First Aid Kit", "FirstAidKit", 50, "item"],
	["Medikit", "Medikit", 500, "item"],
	["Toolkit", "ToolKit", 500, "item"],
	["Mine Detector", "MineDetector", 500, "item"],
	["Diving Goggles", "G_Diving", 250, "gogg"],
	["NV Goggles (Brown)", "NVGoggles", 500, "nvg"],
	["NV Goggles (Black)", "NVGoggles_OPFOR", 500, "nvg"],
	["NV Goggles (Green)", "NVGoggles_INDEP", 500, "nvg"],
	["NV Goggles (Tropic)", "NVGoggles_tna_F", 500, "nvg"],
	["Compact NVG (Hex)", "O_NVGoggles_hex_F", 500, "nvg"],
	["Compact NVG (G Hex)", "O_NVGoggles_ghex_F", 500, "nvg"],
	["Compact NVG (Urban)", "O_NVGoggles_urb_F", 500, "nvg"],
    ["NVG AP (Brown)", "NVGogglesB_gry_F", 12000, "nvg"],
	["NVG AP (Black)", "NVGogglesB_blk_F", 12000, "nvg"],
	["NVG AP (Green)", "NVGogglesB_grn_F", 12000, "nvg"],
	["Binoculars", "Binocular", 300, "binoc"],
	["Rangefinder", "Rangefinder", 750, "binoc"],
	["Laser Designator (NATO) Thermal OFF", "Laserdesignator", 2000, "binoc"],//blufor, "WEST"
	["Laser Designator (CSAT) Thermal OFF", "Laserdesignator_02", 2000, "binoc"],//opfor , "EAST"
	["Laser Designator (AAF) Thermal OFF", "Laserdesignator_03", 2000, "binoc"], // independente, "GUER"
	["Laser Designator (Green Hex) Thermal OFF", "Laserdesignator_02_ghex_F", 2000, "binoc"],
	["Laser Designator (Khaki) Thermal OFF", "Laserdesignator_01_khk_F", 2000, "binoc"],
	["IR Grenade", "B_IR_Grenade", 100, "mag", "WEST"],
	["IR Grenade", "O_IR_Grenade", 100, "mag", "EAST"],
	["IR Grenade", "I_IR_Grenade", 100, "mag", "GUER"],
	["Chemlight (Blue)", "Chemlight_blue", 25, "mag"],
	["Chemlight (Red)", "Chemlight_red", 25, "mag"],
	["Chemlight (Green)", "Chemlight_green", 25, "mag"],
	["Chemlight (Yellow)", "Chemlight_yellow", 25, "mag"],

	["Stealth Balaclava (Black)", "G_Balaclava_TI_blk_F", 2550, "gogg"],
	["Stealth Balaclava (Black, Goggles)", "G_Balaclava_TI_G_blk_F", 2650, "gogg"],
	["Stealth Balaclava (Green)", "G_Balaclava_TI_tna_F", 2550, "gogg"],
	["Stealth Balaclava (Green, Goggles)", "G_Balaclava_TI_G_tna_F", 2650, "gogg"],
	["Combat Goggles", "G_Combat", 100, "gogg"],
	["Combat Goggles (Green)", "G_Combat_Goggles_tna_F", 100, "gogg", "noDLC"],
	["VR Goggles", "G_Goggles_VR", 100, "gogg"],
	["Balaclava (Black)", "G_Balaclava_blk", 500, "gogg"],
	["Balaclava (Combat Goggles)", "G_Balaclava_combat", 500, "gogg"],
	["Balaclava (Low Profile Goggles)", "G_Balaclava_lowprofile", 500, "gogg"],
	["Balaclava (Olive)", "G_Balaclava_oli", 500, "gogg"],
	["Bandana (Aviator)", "G_Bandanna_aviator", 25, "gogg"],
	["Bandana (Beast)", "G_Bandanna_beast", 25, "gogg"],
	["Bandana (Black)", "G_Bandanna_blk", 25, "gogg"],
	["Bandana (Khaki)", "G_Bandanna_khk", 25, "gogg"],
	["Bandana (Olive)", "G_Bandanna_oli", 25, "gogg"],
	["Bandana (Shades)", "G_Bandanna_shades", 25, "gogg"],
	["Bandana (Sport)", "G_Bandanna_sport", 25, "gogg"],
	["Bandana (Tan)", "G_Bandanna_tan", 25, "gogg"],

	["Aviator Glasses", "G_Aviator", 50, "gogg"],
	["Ladies Shades", "G_Lady_Blue", 50, "gogg"],
	["Ladies Shades (Fire)", "G_Lady_Red", 50, "gogg"],
	["Ladies Shades (Iridium)", "G_Lady_Mirror", 50, "gogg"],
	["Ladies Shades (Sea)", "G_Lady_Dark", 50, "gogg"],
	["Low Profile Goggles", "G_Lowprofile", 50, "gogg"],
	["Shades (Black)", "G_Shades_Black", 50, "gogg"],
	["Shades (Blue)", "G_Shades_Blue", 50, "gogg"],
	["Shades (Green)", "G_Shades_Green", 50, "gogg"],
	["Shades (Red)", "G_Shades_Red", 50, "gogg"],
	["Spectacle Glasses", "G_Spectacles", 50, "gogg"],
	["Sport Shades (Fire)", "G_Sport_Red", 50, "gogg"],
	["Sport Shades (Poison)", "G_Sport_Blackyellow", 50, "gogg"],
	["Sport Shades (Shadow)", "G_Sport_BlackWhite", 50, "gogg"],
	["Sport Shades (Style)", "G_Sport_Checkered", 50, "gogg"],
	["Sport Shades (Vulcan)", "G_Sport_Blackred", 50, "gogg"],
	["Sport Shades (Yetti)", "G_Sport_Greenblack", 50, "gogg"],
	["Square Shades", "G_Squares_Tinted", 50, "gogg"],
	["Square Spectacles", "G_Squares", 50, "gogg"],
	["Tactical Glasses", "G_Tactical_Clear", 50, "gogg"],
	["Tactical Shades", "G_Tactical_Black", 50, "gogg"],
	["Tinted Spectacles", "G_Spectacles_Tinted", 50, "gogg"]
];

allStoreMagazines = compileFinal str (call ammoArray + call throwputArray + call genItemArray);
allRegularStoreItems = compileFinal str (call allGunStoreFirearms + call allStoreMagazines + call accessoriesArray);
allStoreGear = compileFinal str (call headArray + call uniformArray + call vestArray + call backpackArray);

genObjectsArray = compileFinal str
[
	["Camo Ammo Cache", "Box_FIA_Support_F", 2500, "ammocrate"],
	//["Metal Barrel", "Land_MetalBarrel_F", 25, "object"],
	//["Toilet Box", "Land_ToiletBox_F", 25, "object"],
	["Lamp Post (Harbour)", "Land_LampHarbour_F", 500, "object"],
	["Lamp Post (Shabby)", "Land_LampShabby_F", 500, "object"],
	["Boom Gate", "Land_BarGate_F", 1500, "object"],
	["Pipes", "Land_Pipes_Large_F", 2000, "object"],
	["Concrete Frame", "Land_CncShelter_F", 2000, "object"],
	["Highway Guardrail", "Land_Crash_barrier_F", 2000, "object"],
	["Concrete Barrier", "Land_CncBarrier_F", 2000, "object"],
	["Concrete Barrier (Medium)", "Land_CncBarrierMedium_F", 3500, "object"],
	["Concrete Barrier (Long)", "Land_CncBarrierMedium4_F", 5000, "object"],
	["HBarrier (1 block)", "Land_HBarrier_1_F", 1500, "object"],
	["HBarrier (3 blocks)", "Land_HBarrier_3_F", 2000, "object"],
	["HBarrier (5 blocks)", "Land_HBarrier_5_F", 2500, "object"],
	["HBarrier Big", "Land_HBarrierBig_F", 5000, "object"],
	["HBarrier Wall (4 blocks)", "Land_HBarrierWall4_F", 4000, "object"],
	["HBarrier Wall (6 blocks)", "Land_HBarrierWall6_F", 5000, "object"],
	["HBarrier Watchtower", "Land_HBarrierTower_F", 6000, "object"],
	["Concrete Wall", "Land_CncWall1_F", 4000, "object"],
	["Concrete Military Wall", "Land_Mil_ConcreteWall_F", 4000, "object"],
	["Concrete Wall (Long)", "Land_CncWall4_F", 6000, "object"],
	["Military Wall (Big)", "Land_Mil_WallBig_4m_F", 6000, "object"],
	//["Shoot House Wall", "Land_Shoot_House_Wall_F", 1800, "object"],
	["Canal Wall (Small)", "Land_Canal_WallSmall_10m_F", 4000, "object"],
	["Canal Stairs", "Land_Canal_Wall_Stairs_F", 5000, "object"],
	["Bag Fence (Corner)", "Land_BagFence_Corner_F", 1500, "object"],
	["Bag Fence (End)", "Land_BagFence_End_F", 1500, "object"],
	["Bag Fence (Long)", "Land_BagFence_Long_F", 2000, "object"],
	["Bag Fence (Round)", "Land_BagFence_Round_F", 1500, "object"],
	["Bag Fence (Short)", "Land_BagFence_Short_F", 1500, "object"],
	["Bag Bunker (Small)", "Land_BagBunker_Small_F", 2500, "object"],
	["Bag Bunker (Large)", "Land_BagBunker_Large_F", 5000, "object"],
	["Bag Bunker Tower", "Land_BagBunker_Tower_F", 10000, "object"],
	["Military Cargo Post", "Land_Cargo_Patrol_V1_F", 8000, "object"],
	["Military Cargo Tower", "Land_Cargo_Tower_V1_F", 100000, "object"],
	["Concrete Ramp", "Land_RampConcrete_F", 3500, "object"],
	["Concrete Ramp (High)", "Land_RampConcreteHigh_F", 5000, "object"],
	["Scaffolding", "Land_Scaffolding_F", 2500, "object"],
	["Campfire", "Campfire_burning_F", 17500, "object"],
	["Camping Chair", "Land_CampingChair_V1_F", 1000, "object"],
	["Camping Table", "Land_CampingTable_F", 1000, "object"]
];

allGenStoreVanillaItems = compileFinal str (call genItemArray + call genObjectsArray + call allStoreGear);

//Text name, classname, buy cost, spawn type, sell price (selling not implemented) or spawning color
landArray = compileFinal str
[
	// SKIPSAVE = will not be autosaved until first manual force save, good for cheap vehicles that usually get abandoned

	["Kart", "C_Kart_01_F", 2500, "vehicle", "SKIPSAVE"],

	["Quadbike (Civilian)", "C_Quadbike_01_F", 2600, "vehicle", "SKIPSAVE"],
	["Quadbike (NATO)", "B_Quadbike_01_F", 2650, "vehicle", "SKIPSAVE"],
	["Quadbike (CSAT)", "O_Quadbike_01_F", 2650, "vehicle", "SKIPSAVE"],
	["Quadbike (AAF)", "I_Quadbike_01_F", 2650, "vehicle", "SKIPSAVE"],
	["Quadbike (FIA)", "B_G_Quadbike_01_F", 2650, "vehicle", "SKIPSAVE"],

	["Hatchback", "C_Hatchback_01_F", 2800, "vehicle", "SKIPSAVE"],
	["Hatchback Sport", "C_Hatchback_01_sport_F", 3200, "vehicle", "SKIPSAVE"],
	["SUV", "C_SUV_01_F", 4100, "vehicle", "SKIPSAVE"],

	["MB 4WD", "C_Offroad_02_unarmed_F", 5000, "vehicle", "SKIPSAVE"],
	["MB 4WD (Guerilla)", "I_C_Offroad_02_unarmed_F", 4900, "vehicle", "SKIPSAVE"],

	["Offroad", "C_Offroad_01_F", 5100, "vehicle", "SKIPSAVE"],
	["Offroad Camo", "B_G_Offroad_01_F", 5250, "vehicle", "SKIPSAVE"],
	["Offroad Repair", "C_Offroad_01_repair_F", 5500, "vehicle", "SKIPSAVE"],
	["Offroad Repair Camo", "B_G_Offroad_01_repair_F", 5500, "vehicle", "SKIPSAVE"],
	["Offroad HMG", "B_G_Offroad_01_armed_F", 7500, "vehicle"],

	["Truck", "C_Van_01_transport_F", 4700, "vehicle", "SKIPSAVE"],
	["Truck (Camo)", "B_G_Van_01_transport_F", 4800, "vehicle", "SKIPSAVE"],
	["Truck Box", "C_Van_01_box_F", 4900, "vehicle", "SKIPSAVE"],
	["Fuel Truck", "C_Van_01_fuel_F", 6000, "vehicle"],
	["Fuel Truck (Camo)", "B_G_Van_01_fuel_F", 6100, "vehicle"],

	["HEMTT Resupply", "B_Truck_01_ammo_F", 10000, "vehicle"],
	["HEMTT Tractor", "B_Truck_01_mover_F", 8000, "vehicle"],
	//["HEMTT Box", "B_Truck_01_box_F", 5000, "vehicle"],
	["HEMTT Transport", "B_Truck_01_transport_F", 10000, "vehicle"],
	["HEMTT Covered", "B_Truck_01_covered_F", 11000, "vehicle"],
	["HEMTT Fuel", "B_Truck_01_fuel_F", 12000, "vehicle"],
	["HEMTT Medical", "B_Truck_01_medical_F", 13000, "vehicle"],
	["HEMTT Repair", "B_Truck_01_Repair_F", 14000, "vehicle"],

	["Tempest Resupply", "O_Truck_03_ammo_F", 10000, "vehicle"],
	["Tempest Device", "O_Truck_03_device_F", 8000, "vehicle"],
	["Tempest Transport", "O_Truck_03_transport_F", 10000, "vehicle"],
	["Tempest Covered", "O_Truck_03_covered_F", 11000, "vehicle"],
	["Tempest Fuel", "O_Truck_03_fuel_F", 12000, "vehicle"],
	["Tempest Medical", "O_Truck_03_medical_F", 13000, "vehicle"],
	["Tempest Repair", "O_Truck_03_repair_F", 14000, "vehicle"],

	["Zamak Resupply", "I_Truck_02_ammo_F", 10000, "vehicle"],
	["Zamak Transport", "I_Truck_02_transport_F", 8500, "vehicle"],
	["Zamak Covered", "I_Truck_02_covered_F", 9000, "vehicle"],
	["Zamak Fuel", "I_Truck_02_fuel_F", 10000, "vehicle"],
	["Zamak Medical", "I_Truck_02_medical_F", 11000, "vehicle"],
	["Zamak Repair", "I_Truck_02_box_F", 12000, "vehicle"],

	["UGV Stomper (NATO)", "B_UGV_01_F", 12500, "vehicle"],
	["UGV Stomper RCWS (NATO)", "B_UGV_01_rcws_F", 25000, "vehicle"],
	["UGV Stomper (AAF)", "I_UGV_01_F", 12500, "vehicle"],
	["UGV Stomper RCWS (AAF)", "I_UGV_01_rcws_F", 25000, "vehicle"],
	["UGV Saif (CSAT)", "O_UGV_01_F", 12500, "vehicle"],
	["UGV Saif RCWS (CSAT)", "O_UGV_01_rcws_F", 25000, "vehicle"]
];

armoredArray = compileFinal str
[
	["Prowler (Doorless)", "B_CTRG_LSV_01_light_F", 10000, "vehicle", "SKIPSAVE"],
	["Prowler", "B_T_LSV_01_unarmed_F", 15000, "vehicle", "SKIPSAVE"],
	["Prowler HMG", "B_T_LSV_01_armed_F", 30000, "vehicle", "SKIPSAVE"],
	["Qilin", "O_T_LSV_02_unarmed_F", 20000, "vehicle", "SKIPSAVE"],
	["Qilin Minigun", "O_T_LSV_02_armed_F", 30000, "vehicle", "SKIPSAVE"],
	
	["Hunter", "B_MRAP_01_F", 7000, "vehicle", "SKIPSAVE"],
	["Hunter HMG", "B_MRAP_01_hmg_F", 35000, "vehicle"],
	["Hunter GMG", "B_MRAP_01_gmg_F", 40000, "vehicle"],
	["Ifrit", "O_MRAP_02_F", 7000, "vehicle", "SKIPSAVE"],
	["Ifrit HMG", "O_MRAP_02_hmg_F", 35000, "vehicle"],
	["Ifrit GMG", "O_MRAP_02_gmg_F", 40000, "vehicle"],
	["Strider", "I_MRAP_03_F", 7000, "vehicle", "SKIPSAVE"],
	["Strider HMG", "I_MRAP_03_hmg_F", 35000, "vehicle"],
	["Strider GMG", "I_MRAP_03_gmg_F", 40000, "vehicle"],
	["MSE-3 Marid", "O_APC_Wheeled_02_rcws_F", 80000, "vehicle"],
	["AMV-7 Marshall", "B_APC_Wheeled_01_cannon_F", 90000, "vehicle"],
	["AFV-4 Gorgon", "I_APC_Wheeled_03_cannon_F", 100000, "vehicle"]
];

tanksArray = compileFinal str
[
	["CRV-6e Bobcat (Resupply)", "B_APC_Tracked_01_CRV_F", 180000, "vehicle"],
	["IFV-6c Panther", "B_APC_Tracked_01_rcws_F", 65000, "vehicle"],
	["FV-720 Mora", "I_APC_tracked_03_cannon_F", 70000, "vehicle"],
	["BTR-K Kamysh", "O_APC_Tracked_02_cannon_F", 80000, "vehicle"],
	["IFV-6a Cheetah AA", "B_APC_Tracked_01_AA_F", 250000, "vehicle"], 
	["ZSU-39 Tigris AA", "O_APC_Tracked_02_AA_F", 300000, "vehicle"], 
	["M2A1 Slammer", "B_MBT_01_cannon_F", 200000, "vehicle"],
	["M2A4 Slammer HMG", "B_MBT_01_TUSK_F", 250000, "vehicle"], // Commander gun variant
	["T-100 Varsuk", "O_MBT_02_cannon_F", 300000, "vehicle"],
	["MBT-52 Kuma", "I_MBT_03_cannon_F", 350000, "vehicle"],
	["M4 Scorcher", "B_MBT_01_arty_F", 2000000, "vehicle"],
	["M5 Sandstorm MLRS", "B_MBT_01_mlrs_F", 2000000, "vehicle"]
];


helicoptersArray = compileFinal str
[
	["M-900 Civilian", "C_Heli_Light_01_civil_F", 4000, "vehicle"], // MH-6, no flares
	["MH-9 Hummingbird", "B_Heli_Light_01_F", 6000, "vehicle"], // MH-6
	["PO-30 Orca (Black)", "O_Heli_Light_02_unarmed_F", 8000, "vehicle"], // Ka-60
	["WY-55 Hellcat (Green)", "I_Heli_light_03_unarmed_F", 9000, "vehicle"], // AW159
	["CH-49 Mohawk", "I_Heli_Transport_02_F", 10000, "vehicle"], // AW101

	["Mi-290 Taru (Resupply)", "O_Heli_Transport_04_ammo_F", 250000, "vehicle"],
	["Mi-290 Taru (Crane)", "O_Heli_Transport_04_F", 50000, "vehicle"], // CH-54
	["Mi-290 Taru (Box)", "O_Heli_Transport_04_box_F", 30000, "vehicle"],
	["Mi-290 Taru (Fuel)", "O_Heli_Transport_04_fuel_F", 30000, "vehicle"],
	["Mi-290 Taru (Bench)", "O_Heli_Transport_04_bench_F", 30000, "vehicle"],
	["Mi-290 Taru (Transport)", "O_Heli_Transport_04_covered_F", 30000, "vehicle"],
	["Mi-290 Taru (Medical)", "O_Heli_Transport_04_medevac_F",30000, "vehicle"],
	["Mi-290 Taru (Repair)", "O_Heli_Transport_04_repair_F", 100000, "vehicle"],

	["CH-67 Huron Unarmed (Green)", "B_Heli_Transport_03_unarmed_green_F", 12000, "vehicle"], // CH-47 Unarmed (Green)
	["CH-67 Huron (Black)", "B_Heli_Transport_03_unarmed_F", 12000, "vehicle"], // CH-47
	["CH-67 Huron (Armed)", "B_Heli_Transport_03_F", 25000, "vehicle"], // CH-47 with 2 side miniguns
	["CH-67 Huron (Black_Armed)", "B_Heli_Transport_03_black_F", 25000, "vehicle"], // CH-67 Huron (Black) with 2 side miniguns
	
	["UH-80 Ghost Hawk", "B_Heli_Transport_01_F", 35000, "vehicle"], // UH-60 Stealth with 2 side miniguns
	["AH-9 Pawnee", "B_Heli_Light_01_armed_F", 60000, "vehicle"], // Armed AH-6
	["PO-30 Orca (Armed, Black)", "O_Heli_Light_02_v2_F", 70000, "vehicle"], // Armed Ka-60 with orca paintjob
	["PO-30 Orca (Armed, Hex)", "O_Heli_Light_02_F", 75000, "vehicle"], // Armed Ka-60
	["WY-55 Hellcat (Armed)", "I_Heli_light_03_F", 120000, "vehicle"], // Armed AW159
	["AH-99 Blackfoot", "B_Heli_Attack_01_F", 550000, "vehicle"], // RAH-66 with gunner
	["Mi-48 Kajman", "O_Heli_Attack_02_F", 550000, "vehicle"], // Mi-28 with gunner

	["MQ-12 Falcon UAV", "B_T_UAV_03_F", 250000, "vehicle"]
];

planesArray = compileFinal str
[
	["Caesar BTT", "C_Plane_Civil_01_F", 5000, "vehicle"],

	["A-143 Buzzard AA", "I_Plane_Fighter_03_AA_F", 232000, "vehicle"],
	["A-143 Buzzard CAS", "I_Plane_Fighter_03_CAS_F", 272000, "vehicle"],
	["A-164 Wipeout CAS", "B_Plane_CAS_01_F", 320000, "vehicle"],
	["To-199 Neophron CAS", "O_Plane_CAS_02_F", 315000, "vehicle"],

	["V-44 X Blackfish (Infantry)", "B_T_VTOL_01_infantry_F", 20000, "vehicle"],
	["V-44 X Blackfish (Gunship)", "B_T_VTOL_01_armed_F", 550000, "vehicle"],
	["Y-32 Xi'an", "O_T_VTOL_02_infantry_F", 590000, "vehicle"],

	["MQ4A Greyhawk Missile UAV", "B_UAV_02_F", 240000, "vehicle"],
	["MQ4A Greyhawk Bomber UAV", "B_UAV_02_CAS_F", 225000, "vehicle"], // Bomber UAVs are a lot harder to use, hence why they are cheaper than Missile ones
	["K40 Ababil-3 Missile UAV", "O_UAV_02_F", 240000, "vehicle"],
	["K40 Ababil-3 Bomber UAV", "O_UAV_02_CAS_F", 225000, "vehicle"],
	["K40 Ababil-3 Missile UAV", "I_UAV_02_F", 240000, "vehicle"],
	["K40 Ababil-3 Bomber UAV", "I_UAV_02_CAS_F", 225000, "vehicle"],

	["KH-3A Fenghuang UAV", "O_T_UAV_04_CAS_F", 240000, "vehicle"]
];

boatsArray = compileFinal str
[
	["Water Scooter", "C_Scooter_Transport_01_F", 2500, "boat", "SKIPSAVE"],

	["Rescue Boat", "C_Rubberboat", 2500, "boat", "SKIPSAVE"],
	["Rescue Boat (NATO)", "B_Lifeboat", 2500, "boat", "SKIPSAVE"],
	["Rescue Boat (CSAT)", "O_Lifeboat", 2500, "boat", "SKIPSAVE"],
	["Assault Boat (NATO)", "B_Boat_Transport_01_F", 2600, "boat", "SKIPSAVE"],
	["Assault Boat (CSAT)", "O_Boat_Transport_01_F", 2600, "boat", "SKIPSAVE"],
	["Assault Boat (AAF)", "I_Boat_Transport_01_F", 2600, "boat", "SKIPSAVE"],
	["Assault Boat (FIA)", "B_G_Boat_Transport_01_F", 2600, "boat", "SKIPSAVE"],
	["Motorboat", "C_Boat_Civil_01_F", 3000, "boat", "SKIPSAVE"],
	["Motorboat Rescue", "C_Boat_Civil_01_rescue_F", 3900, "boat", "SKIPSAVE"],
	["Motorboat Police", "C_Boat_Civil_01_police_F", 4100, "boat", "SKIPSAVE"],

	["RHIB", "I_C_Boat_Transport_02_F", 4250, "boat"],

	["Speedboat HMG (CSAT)", "O_Boat_Armed_01_hmg_F", 7500, "boat"],
	["Speedboat Minigun (NATO)", "B_Boat_Armed_01_minigun_F", 7000, "boat"],
	["Speedboat Minigun (AAF)", "I_Boat_Armed_01_minigun_F", 7000, "boat"],
	["SDV Submarine (NATO)", "B_SDV_01_F", 3000, "submarine"],
	["SDV Submarine (CSAT)", "O_SDV_01_F", 3000, "submarine"],
	["SDV Submarine (AAF)", "I_SDV_01_F", 3000, "submarine"]
];

allVehStoreVehicles = compileFinal str (call landArray + call armoredArray + call tanksArray + call helicoptersArray + call planesArray + call boatsArray);

uavArray = compileFinal str
[
	// Deprecated
];

noColorVehicles = compileFinal str
[
	// Deprecated
];

rgbOnlyVehicles = compileFinal str
[
	// Deprecated
];

_color = "#(rgb,1,1,1)color";
_texDir = "client\images\vehicleTextures\";
_kartDir = "\A3\soft_f_kart\Kart_01\Data\";
_mh9Dir = "\A3\air_f\Heli_Light_01\Data\";
_mohawkDir = "\A3\air_f_beta\Heli_Transport_02\Data\";
_wreckDir = "\A3\structures_f\wrecks\data\";
_gorgonDir = "\A3\armor_f_gamma\APC_Wheeled_03\data\";

colorsArray = compileFinal str
[
	[ // Main colors
		"All",
		[
			["Black", _color + "(0.01,0.01,0.01,1)"], // #(argb,8,8,3)color(0.1,0.1,0.1,0.1)
			["Gray", _color + "(0.15,0.151,0.152,1)"], // #(argb,8,8,3)color(0.5,0.51,0.512,0.3)
			["White", _color + "(0.75,0.75,0.75,1)"], // #(argb,8,8,3)color(1,1,1,0.5)
			["Dark Blue", _color + "(0,0.05,0.15,1)"], // #(argb,8,8,3)color(0,0.3,0.6,0.05)
			["Blue", _color + "(0,0.03,0.5,1)"], // #(argb,8,8,3)color(0,0.2,1,0.75)
			["Teal", _color + "(0,0.3,0.3,1)"], // #(argb,8,8,3)color(0,1,1,0.15)
			["Green", _color + "(0,0.5,0,1)"], // #(argb,8,8,3)color(0,1,0,0.15)
			["Yellow", _color + "(0.5,0.4,0,1)"], // #(argb,8,8,3)color(1,0.8,0,0.4)
			["Orange", _color + "(0.4,0.09,0,1)"], // #(argb,8,8,3)color(1,0.5,0,0.4)
			["Red", _color + "(0.45,0.005,0,1)"], // #(argb,8,8,3)color(1,0.1,0,0.3)
			["Pink", _color + "(0.5,0.03,0.3,1)"], // #(argb,8,8,3)color(1,0.06,0.6,0.5)
			["Purple", _color + "(0.1,0,0.3,1)"], // #(argb,8,8,3)color(0.8,0,1,0.1)
			["NATO Tan", _texDir + "nato.paa"], // #(argb,8,8,3)color(0.584,0.565,0.515,0.3)
			["CSAT Brown", _texDir + "csat.paa"], // #(argb,8,8,3)color(0.624,0.512,0.368,0.3)
			["AAF Green", _texDir + "aaf.paa"], // #(argb,8,8,3)color(0.546,0.59,0.363,0.2)
			["Bloodshot", _texDir + "bloodshot.paa"],
			["Carbon", _texDir + "carbon.paa"],
			["Confederate", _texDir + "confederate.paa"],
			["Denim", _texDir + "denim.paa"],
			["Digital", _texDir + "digi.paa"],
			["Digital Black", _texDir + "digi_black.paa"],
			["Digital Desert", _texDir + "digi_desert.paa"],
			["Digital Woodland", _texDir + "digi_wood.paa"],
			["Doritos", _texDir + "doritos.paa"],
			["Drylands", _texDir + "drylands.paa"],
			["Hello Kitty", _texDir + "hellokitty.paa"],
			["Hex", _texDir + "hex.paa"],
			["Hippie", _texDir + "hippie.paa"],
			["ISIS", _texDir + "isis.paa"],
			["Leopard", _texDir + "leopard.paa"],
			["Mountain Dew", _texDir + "mtndew.paa"],
			["'Murica", _texDir + "murica.paa"],
			["Nazi", _texDir + "nazi.paa"],
			["Orange Camo", _texDir + "camo_orange.paa"],
			["Pink Camo", _texDir + "camo_pink.paa"],
			["Pride", _texDir + "pride.paa"],
			["Psych", _texDir + "psych.paa"],
			["Red Camo", _texDir + "camo_red.paa"],
			["Rusty", _texDir + "rusty.paa"],
			["Sand", _texDir + "sand.paa"],
			["Snake", _texDir + "snake.paa"],
			["Stripes", _texDir + "stripes.paa"],
			["Stripes 2", _texDir + "stripes2.paa"],
			["Stripes 3", _texDir + "stripes3.paa"],
			["Swamp", _texDir + "swamp.paa"],
			["Tiger", _texDir + "tiger.paa"],
			["Trippy", _texDir + "rainbow.paa"],
			["Union Jack", _texDir + "unionjack.paa"],
			["Urban", _texDir + "urban.paa"],
			["Weed", _texDir + "weed.paa"],
			["Woodland", _texDir + "woodland.paa"],
			["Woodland Dark", _texDir + "wooddark.paa"],
			["Woodland Tiger", _texDir + "woodtiger.paa"]
		]
	],
	[ // Kart colors
		"Kart_01_Base_F",
		[
			["Black (Kart)", ["Black"]], // ["Black (Kart)", [configName (configFile >> "CfgVehicles" >> "C_Kart_01_F" >> "TextureSources" >> "Black")]],
			["White (Kart)", ["White"]],
			["Blue (Kart)", ["Blue"]],
			["Green (Kart)", ["Green"]],
			["Yellow (Kart)", ["Yellow"]],
			["Orange (Kart)", ["Orange"]],
			["Red (Kart)", [[0, _kartDir + "kart_01_base_red_co.paa"]]] // no red TextureSource :(
		]
	],
	[ // MH-9 colors
		"Heli_Light_01_base_F",
		[
			["AAF Camo (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_indp_co.paa"]]],
			["Blue 'n White (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_blue_co.paa"]]],
			["Blueline (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_blueline_co.paa"]]],
			["Cream Gravy (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_co.paa"]]],
			["Digital (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_digital_co.paa"]]],
			["Elliptical (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_elliptical_co.paa"]]],
			["Furious (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_furious_co.paa"]]],
			["Graywatcher (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_graywatcher_co.paa"]]],
			["ION (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_ion_co.paa"]]],
			["Jeans (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_jeans_co.paa"]]],
			["Light (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_light_co.paa"]]],
			["Shadow (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_shadow_co.paa"]]],
			["Sheriff (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_sheriff_co.paa"]]],
			["Speedy (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_speedy_co.paa"]]],
			["Sunset (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_sunset_co.paa"]]],
			["Vrana (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_vrana_co.paa"]]],
			["Wasp (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_wasp_co.paa"]]],
			["Wave (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_wave_co.paa"]]]
		]
	],
	[ // Mohawk colors
		"Heli_Transport_02_base_F",
		[
			["Dahoman (Mohawk)", [
				[0, _mohawkDir + "Skins\heli_transport_02_1_dahoman_co.paa"],
				[1, _mohawkDir + "Skins\heli_transport_02_2_dahoman_co.paa"],
				[2, _mohawkDir + "Skins\heli_transport_02_3_dahoman_co.paa"]
			]],
			["ION (Mohawk)", [
				[0, _mohawkDir + "Skins\heli_transport_02_1_ion_co.paa"],
				[1, _mohawkDir + "Skins\heli_transport_02_2_ion_co.paa"],
				[2, _mohawkDir + "Skins\heli_transport_02_3_ion_co.paa"]
			]]
		]
	],
	[ // Taru paintjob
		"Heli_Transport_04_base_F",
		[
			["Black (Taru)", ["Black"]]
		]
	],
	[ // Kajman paintjobs
		"Heli_Attack_02_base_F",
		[
			["Black (Kajman)", ["Black"]],
			["Rusty (Kajman)", [
				[0, _wreckDir + "wreck_heli_attack_02_body1_co.paa"],
				[1, _wreckDir + "wreck_heli_attack_02_body2_co.paa"]
			]],
			["Mossy (Kajman)", [
				[0, _wreckDir + "uwreck_heli_attack_02_body1_co.paa"],
				[1, _wreckDir + "uwreck_heli_attack_02_body2_co.paa"]
			]]
		]
	],
	[ // Ghost Hawk camo
		"Heli_Transport_01_base_F",
		[
			//["Black (Ghost Hawk)", ["Black"]], // default
			["Olive (Ghost Hawk)", ["Green"]],
			["Dazzle Black (Ghost Hawk)", ["Olive"]],
			["Dazzle Tan (Ghost Hawk)", ["Sand"]]
		]
	],
	[ // Zamak paintjobs
		"Truck_02_base_F",
		[
			["Hex (Zamak)", ["Opfor"]],
			["Orange (Zamak)", ["Orange"]]
		]
	],
	[ // Strider NATO color
		"MRAP_03_base_F",
		[
			["Tan (Strider)", ["Blufor"]]
		]
	],
	[ // Gorgon NATO color
		"APC_Wheeled_03_base_F",
		[
			["Tan (Gorgon)", [
				[0, _gorgonDir + "apc_wheeled_03_ext_co.paa"],
				[1, _gorgonDir + "apc_wheeled_03_ext2_co.paa"],
				[2, _gorgonDir + "rcws30_co.paa"],
				[3, _gorgonDir + "apc_wheeled_03_ext_alpha_co.paa"]
			]]
		]
	],
	[ // Hatchback wreck paintjob
		"Hatchback_01_base_F",
		[
			["Rusty (Hatchback)", [[0, _wreckDir + "civilcar_extwreck_co.paa"]]]
		]
	],
	[ // GOD EMPEROR
		"B_MBT_01_cannon_F",
		[
			["Trump (Slammer)", [
				[0, _texDir + "slammer_trump_0.paa"],
				[1, _texDir + "slammer_trump_1.paa"]
			]]
		]
	],
	[
		"B_MBT_01_TUSK_F",
		[
			["Trump (Slammer)", [[2, _texDir + "slammer_trump_2.paa"]]]
		]
	],
	[ // RHIB paintjob
		"Boat_Transport_02_base_F",
		[
			["Civilian (RHIB)", ["Civilian"]]
		]
	],
	[ // Prowler paintjobs
		"LSV_01_base_F",
		[
			["Olive (Prowler)", ["Olive"]],
			["Dazzle (Prowler)", ["Dazzle"]],
			["Black (Prowler)", ["Black"]],
			["Tan (Prowler)", ["Sand"]]
		]
	],
	[ // Qilin paintjobs
		"LSV_02_base_F",
		[
			//["Green Hex (Qilin)", ["GreenHex"]], // default
			["Hex (Qilin)", ["Arid"]],
			["Black (Qilin)", ["Black"]]
		]
	],
	[ // Blackfish paintjobs
		"VTOL_01_base_F",
		[
			//["Olive (Blackfish)", ["Olive"]], // default
			["Blue (Blackfish)", ["Blue"]]
		]
	],
	[ // Xi'an paintjobs
		"VTOL_02_base_F",
		[
			//["Green Hex (Xi'an)", ["GreenHex"]], // default
			["Hex (Xi'an)", ["Hex"]],
			["Gray Hex (Xi'an)", ["Grey"]]
		]
	],
	[ // UGV paintjobs
		"UGV_01_base_F",
		[
			["Tan (UGV)", ["Blufor"]],
			["Hex (UGV)", ["Opfor"]],
			["Digital (UGV)", ["Indep"]],
			["Green Hex (UGV)", ["GreenHex"]]
		]
	],
	[ // Ifrit GreenHex
		"MRAP_02_base_F",
		[
			["Green Hex (Ifrit)", ["GreenHex"]]
		]
	],
	[ // Tempest GreenHex
		"Truck_03_base_F",
		[
			["Green Hex (Tempest)", ["GreenHex"]]
		]
	],
	[ // Marid GreenHex
		"APC_Wheeled_02_base_F",
		[
			["Green Hex (Marid)", ["GreenHex"]]
		]
	],
	[ // Kamysh & Tigris GreenHex
		"APC_Tracked_02_base_F",
		[
			["Green Hex (Kamysh)", ["GreenHex"]]
		]
	],
	[ // Varsuk & Sochor GreenHex
		"MBT_02_base_F",
		[
			["Green Hex (Varsuk)", ["GreenHex"]]
		]
	]
];

//General Store Item List
//Display Name, Class Name, Description, Picture, Buy Price, Sell Price.
// ["Medical Kit", "medkits", localize "STR_WL_ShopDescriptions_MedKit", "client\icons\medkit.paa", 400, 200],  // not needed since there are First Ait Kits
customPlayerItems = compileFinal str
[
	["Water Bottle", "water", localize "STR_WL_ShopDescriptions_Water", "client\icons\waterbottle.paa", 30, 15],
	["Canned Food", "cannedfood", localize "STR_WL_ShopDescriptions_CanFood", "client\icons\cannedfood.paa", 30, 15],
	["Repair Kit", "repairkit", localize "STR_WL_ShopDescriptions_RepairKit", "client\icons\briefcase.paa", 500, 250],
	["Jerry Can (Full)", "jerrycanfull", localize "STR_WL_ShopDescriptions_fuelFull", "client\icons\jerrycan.paa", 150, 75],
	["Jerry Can (Empty)", "jerrycanempty", localize "STR_WL_ShopDescriptions_fuelEmpty", "client\icons\jerrycan.paa", 50, 25],
	["Spawn Beacon", "spawnbeacon", localize "STR_WL_ShopDescriptions_spawnBeacon", "client\icons\spawnbeacon.paa", 4000, 3000],
	["Camo Net", "camonet", localize "STR_WL_ShopDescriptions_Camo", "client\icons\camonet.paa", 200, 100],
	["Syphon Hose", "syphonhose", localize "STR_WL_ShopDescriptions_SyphonHose", "client\icons\syphonhose.paa", 200, 100],
	//["Energy Drink", "energydrink", localize "STR_WL_ShopDescriptions_Energy_Drink", "client\icons\energydrink.paa", 100, 50],
	["Warchest", "warchest", localize "STR_WL_ShopDescriptions_Warchest", "client\icons\warchest.paa", 1000, 500],
	["LSD", "lsd", localize "STR_WL_ShopDescriptions_LSD", "client\icons\lsd.paa", 10500, 7500],
	["Marijuana", "marijuana", localize "STR_WL_ShopDescriptions_Marijuana", "client\icons\marijuana.paa", 10500, 7500],
	["Cocaine", "cocaine", localize "STR_WL_ShopDescriptions_Cocaine", "client\icons\cocaine.paa", 10500, 7500],
	["Heroin", "heroin", localize "STR_WL_ShopDescriptions_Heroin", "client\icons\heroin.paa", 10500, 7500]
];

donatorItems = compileFinal str
[
"H_MilCap_blue",
"H_MilCap_gry",
"H_MilCap_oucamo",
"H_MilCap_rucamo",
"H_MilCap_mcamo",
"H_MilCap_ocamo",
"H_MilCap_dgtl",
"H_Cap_headphones",
"H_Bandanna_gry",
"H_Bandanna_blu",
"H_Bandanna_cbr",
"H_Bandanna_khk_hs",
"H_Bandanna_khk",
"H_Bandanna_mcamo",
"H_Bandanna_sgg",
"H_Bandanna_sand",
"H_Bandanna_surfer",
"H_Bandanna_surfer_blk",
"H_Bandanna_surfer_grn",
"H_Bandanna_camo",
"H_Watchcap_blk",
"H_Watchcap_cbr",
"H_Watchcap_khk",
"H_Watchcap_sgg",
"H_Watchcap_camo",
"H_Beret_blk",
"H_Beret_Colonel",
"H_Beret_02",
"H_Booniehat_dgtl",
"H_Booniehat_khk_hs",
"H_Booniehat_khk",
"H_Booniehat_mcamo",
"H_Booniehat_oli",
"H_Booniehat_tan",
"H_Hat_blue",
"H_Hat_brown",
"H_Hat_camo",
"H_Hat_checker",
"H_Hat_grey",
"H_Hat_tan",
"H_Cap_grn_BI",
"H_Cap_blk",
"H_Cap_blu",
"H_Cap_blk_CMMG",
"H_Cap_grn",
"H_Cap_blk_ION",
"H_Cap_oli",
"H_Cap_oli_hs",
"H_Cap_police",
"H_Cap_press",
"H_Cap_red",
"H_Cap_surfer",
"H_Cap_tan",
"H_Cap_khaki_specops_UK",
"H_Cap_usblack",
"H_Cap_tan_specops_US",
"H_Cap_blk_Raven",
"H_Cap_brn_SPECOPS",
"H_Shemag_olive",
"H_Shemag_olive_hs",
"H_ShemagOpen_tan",
"H_ShemagOpen_khk",
"H_RacingHelmet_1_black_F",
"H_RacingHelmet_1_blue_F",
"H_RacingHelmet_1_green_F",
"H_RacingHelmet_1_yellow_F",
"H_RacingHelmet_1_orange_F",
"H_RacingHelmet_1_red_F",
"H_RacingHelmet_1_white_F",
"H_RacingHelmet_1_F",
"H_RacingHelmet_2_F",
"H_RacingHelmet_3_F",
"H_RacingHelmet_4_F",
"G_Goggles_VR",
"G_Balaclava_blk",
"G_Balaclava_combat",
"G_Balaclava_lowprofile",
"G_Balaclava_oli",
"G_Bandanna_aviator",
"G_Bandanna_beast",
"G_Bandanna_blk",
"G_Bandanna_khk",
"G_Bandanna_oli",
"G_Bandanna_shades",
"G_Bandanna_sport",
"G_Bandanna_tan",
"G_Aviator",
"G_Lady_Blue",
"G_Lady_Red",
"G_Lady_Mirror",
"G_Lady_Dark",
"G_Lowprofile",
"G_Shades_Black",
"G_Shades_Blue",
"G_Shades_Green",
"G_Shades_Red",
"G_Spectacles",
"G_Sport_Red",
"G_Sport_Blackyellow",
"G_Sport_BlackWhite",
"G_Sport_Checkered",
"G_Sport_Blackred",
"G_Sport_Greenblack",
"G_Squares_Tinted",
"G_Squares",
"G_Tactical_Clear",
"G_Tactical_Black",
"G_Spectacles_Tinted",
"B_UAV_01_backpack_F",
"O_UAV_01_backpack_F",
"I_UAV_01_backpack_F",
"U_C_Driver_1_black",
"U_C_Driver_1_blue",
"U_C_Driver_1_green",
"U_C_Driver_1_yellow",
"U_C_Driver_1_orange",
"U_C_Driver_1_red",
"U_C_Driver_1_white",
"U_C_Driver_1",
"U_C_Driver_2",
"U_C_Driver_3",
"U_C_Driver_4",
"U_B_Protagonist_VR",
"U_O_Protagonist_VR",
"U_I_Protagonist_VR"
];

//Put all gun, ammo, or general item classes in this list if you only want them only accessible through missions (this list will not add these items to mission crates, do that manually)
missionOnlyItems = compileFinal str
[
"srifle_GM6_F",
"srifle_GM6_camo_F",
"srifle_GM6_ghex_F",
"MMG_02_sand_F",
"MMG_02_camo_F",
"MMG_02_black_F",
"MMG_01_tan_F",
"MMG_01_hex_F",
"Titan_AT",
"Titan_AP",
"Laserdesignator",
"Laserdesignator_02",
"Laserdesignator_03",
"optic_tws",
"optic_tws_mg",
"optic_Nightstalker",
"NVGogglesB_gry_F",
"NVGogglesB_blk_F",
"NVGogglesB_grn_F",
"H_HelmetO_ViperSP_hex_F",
"H_HelmetO_ViperSP_ghex_F"
];

call compile preprocessFileLineNumbers "mapConfig\storeOwners.sqf";

storeConfigDone = compileFinal "true";
