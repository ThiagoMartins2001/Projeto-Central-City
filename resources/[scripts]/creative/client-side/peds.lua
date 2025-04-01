-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local localPeds = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- LIST
-----------------------------------------------------------------------------------------------------------------------------------------
local List = {
	{ -- 
		Distance = 100,
		Coords = { 2455.75,4979.53,51.56,133.23 },
		Model = "s_m_y_construct_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- 
		Distance = 100,
		Coords = { -286.25,2838.74,54.95,147.41 },
		Model = "s_m_y_construct_02",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- 
		Distance = 100,
		Coords = { -1505.78,1526.09,115.25,79.38 },
		Model = "s_m_y_construct_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- 
		Distance = 100,
		Coords = { 3452.73,3646.45,42.6,170.08 },
		Model = "s_m_y_construct_02",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Prisao
		Distance = 100,
		Coords = { 1775.73,2553.63,45.56,110.56 },
		Model = "s_m_m_prisguard_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Police
		Distance = 100,
		Coords = { -351.34,-254.62,36.06,96.38 },
		Model = "s_m_y_cop_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Police PRF 1
		Distance = 100,
		Coords = { 1514.89,791.35,78.42,209.77 },
		Model = "s_m_y_cop_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Police PRF 2
		Distance = 100,
		Coords = { 2917.94,4178.91,52.5,252.29 },
		Model = "s_m_y_cop_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Police PRF 3
		Distance = 100,
		Coords = { -275.47,6058.53,33.04,243.78 },
		Model = "s_m_y_cop_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Police PRF 4
		Distance = 100,
		Coords = { -3019.38,386.01,16.63,56.7 },
		Model = "s_m_y_cop_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Police
	Distance = 100,
	Coords = { -336.58,-245.8,34.39,195.6 },
	Model = "s_m_y_cop_01",
	anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Police
	Distance = 100,
	Coords = { -332.78,-251.28,34.39,232.45 },
	Model = "s_m_y_cop_01",
	anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Hospital
		Distance = 100,
		Coords = { 301.73,-591.11,43.27,337.33 },
		Model = "s_m_m_doctor_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Hospital
		Distance = 100,
		Coords = { 324.37,-583.76,43.27,161.58 },
		Model = "s_f_y_scrubs_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Hospital garages
		Distance = 100,
		Coords = { 285.54,-578.71,43.22,143.12 },
		Model = "csb_trafficwarden",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Scrap
		Distance = 100,
		Coords = { 3809.16,4489.51,6.39,300.48 }, --verificar
		Model = "g_m_y_salvagoon_03",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Scrap
		Distance = 100,
		Coords = { -2017.88,3383.98,31.24,45.36 },
		Model = "g_m_y_salvagoon_03",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Concessionária
		Distance = 20,
		Coords = {563.35,-240.73,49.98,122.51},
		Model = "u_m_m_bankman",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Foundry
		Distance = 20,
		Coords = { 1084.82,-2002.8,31.37,51.03 },
		Model = "ig_chef",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Foundry 2
		Distance = 20,
		Coords = { 1085.83,-2001.74,31.41,48.19 },
		Model = "mp_m_counterfeit_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Keychain
		Distance = 20,
		Coords = { 166.73,-1803.23,29.32,320.32 },
		Model = "s_m_m_autoshop_02",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Digital Den
		Distance = 20,
		Coords = { 1132.37,-474.31,66.71,343.0 },
		Model = "u_m_y_baygor",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Caminhoneiro
		Distance = 20,
		Coords = { 1239.87,-3257.2,7.09,274.97 },
		Model = "s_m_m_trucker_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Cassino
		Distance = 20,
		Coords = { 988.37,43.06,71.3,170.08 },
		Model = "s_f_y_casino_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- TowDriver
		Distance = 20,
		Coords = { 408.98,-1622.74,29.28,232.45 },
		Model = "g_m_m_armboss_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Coveiro
		Distance = 20,
		Coords = { -1745.92,-204.83,57.39,320.32 },
		Model = "g_m_m_armboss_01",
		anim = { "timetable@trevor@smoking_meth@base","base" }
	},
	{ -- Animal Ark
		Distance = 100,
		Coords = {562.26,2741.57,42.87,189.32},
		Model = "a_f_m_ktown_02",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Leiteiro
		Distance = 50,
		Coords = { 2313.76,4888.19,41.8,53.86 },
		Model = "a_m_m_hillbilly_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Leiteiro
		Distance = 100,
		Coords = { 2266.83,4892.59,40.89,317.49 },
		Model = "a_c_cow"
	},
	{ -- Leiteiro
		Distance = 100,
		Coords = { 2256.55,4902.48,40.78,311.82 },
		Model = "a_c_cow"
	},
	{ -- Leiteiro
		Distance = 100,
		Coords = { 2248.82,4910.18,40.73,311.82 },
		Model = "a_c_cow"
	},
	{ -- Leiteiro
		Distance = 100,
		Coords = { 2240.87,4918.91,40.76,311.82 },
		Model = "a_c_cow"
	},
	{ -- Leiteiro
		Distance = 100,
		Coords = { 2232.99,4926.0,40.83,323.15 },
		Model = "a_c_cow"
	},
	{ -- Leiteiro
		Distance = 100,
		Coords = { 2224.58,4934.4,40.88,314.65 },
		Model = "a_c_cow"
	},
	{ -- Leiteiro
		Distance = 100,
		Coords = { 2203.05,4914.07,40.57,311.82 },
		Model = "a_c_cow"
	},
	{ -- Leiteiro
		Distance = 100,
		Coords = { 2211.45,4905.68,40.81,306.15 },
		Model = "a_c_cow"
	},
	{ -- Leiteiro
		Distance = 100,
		Coords = { 2217.82,4897.23,40.76,311.82 },
		Model = "a_c_cow"
	},
	{ -- Leiteiro
		Distance = 100,
		Coords = { 2227.2,4889.42,40.71,314.65 },
		Model = "a_c_cow"
	},
	{ -- Leiteiro
		Distance = 100,
		Coords = { 2235.72,4881.53,40.96,311.82 },
		Model = "a_c_cow"
	},
	{ -- Leiteiro
		Distance = 100,
		Coords = { 2243.74,4872.59,40.81,317.49 },
		Model = "a_c_cow"
	},
	{ -- Prefeitura
		Distance = 100,
		Coords = { -551.93,-190.04,38.22,170.08}, --Verificar
		Model = "ig_barry",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Judiciario
		Distance = 100,
		Coords = { 217.09,-413.68,47.97,212.6}, --Verificar
		Model = "ig_barry",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Ilegal Armas
		Distance = 20,
		Coords = { -458.2,-2266.19,8.51,272.13 },
		Model = "g_f_y_ballas_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Ilegal Munição
		Distance = 20,
		Coords = { -1164.54,-2022.29,13.16,133.23 },
		Model = "g_f_y_ballas_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Ilegal Contrabando
		Distance = 20,
		Coords = { 600.56,-3252.6,6.07,0.0 },
		Model = "g_f_y_ballas_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Ilegal
		Distance = 20,
		Coords = { 301.4,-195.29,61.57,158.75 },
		Model = "g_f_y_ballas_01",
		anim = { "amb@lo_res_idles@","world_human_lean_male_foot_up_lo_res_base" }
	},
	{ -- Ilegal
		Distance = 20,
		Coords = { 169.28,-1536.23,29.25,311.82 },
		Model = "g_f_y_ballas_01",
		anim = { "amb@lo_res_idles@","world_human_lean_male_foot_up_lo_res_base" }
	},
	{ -- Ilegal
		Distance = 20,
		Coords = { 487.56,-1456.11,29.28,272.13 },
		Model = "g_f_y_ballas_01",
		anim = { "amb@lo_res_idles@","world_human_lean_male_foot_up_lo_res_base" }
	},
	{ -- Ilegal
		Distance = 20,
		Coords = { 154.66,-1472.9,29.35,325.99 },
		Model = "g_f_y_ballas_01",
		anim = { "amb@lo_res_idles@","world_human_lean_male_foot_up_lo_res_base" }
	},
	{ -- Ilegal
		Distance = 20,
		Coords = { 389.69,-942.1,29.42,175.75 },
		Model = "g_f_y_ballas_01",
		anim = { "amb@lo_res_idles@","world_human_lean_male_foot_up_lo_res_base" }
	},
	{ -- Ilegal
		Distance = 20,
		Coords = { 475.1,3555.28,33.23,263.63 },
		Model = "g_f_y_ballas_01",
		anim = { "amb@lo_res_idles@","world_human_lean_male_foot_up_lo_res_base" }
	},
	{ -- Ilegal
		Distance = 20,
		Coords = { 112.41,3373.68,35.25,59.53 },
		Model = "g_m_y_ballaeast_01",
		anim = { "amb@lo_res_idles@","world_human_lean_male_foot_up_lo_res_base" }
	},
	{ -- Ilegal
		Distance = 20,
		Coords = { 2013.95,4990.88,41.21,133.23 },
		Model = "g_m_y_ballasout_01",
		anim = { "amb@lo_res_idles@","world_human_lean_male_foot_up_lo_res_base" }
	},
	{ -- Ilegal
		Distance = 20,
		Coords = { 186.9,6374.75,32.33,206.93 },
		Model = "g_m_y_famca_01",
		anim = { "amb@lo_res_idles@","world_human_lean_male_foot_up_lo_res_base" }
	},

	{ -- Departament Store
		Distance = 20,
		Coords = { 24.49,-1346.08,29.49,272.13 },
		Model = "mp_m_shopkeep_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 20,
		Coords = { 2556.04,380.89,108.61,0.0 },
		Model = "mp_m_shopkeep_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 20,
		Coords = { 1164.82,-323.63,69.2,99.22 },
		Model = "mp_m_shopkeep_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 20,
		Coords = { -706.16,-914.55,19.21,90.71 },
		Model = "mp_m_shopkeep_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 20,
		Coords = { -47.39,-1758.63,29.42,51.03 },
		Model = "mp_m_shopkeep_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 20,
		Coords = { 372.86,327.53,103.56,257.96 },
		Model = "mp_m_shopkeep_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 20,
		Coords = { -3243.38,1000.11,12.82,0.0 },
		Model = "mp_m_shopkeep_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 20,
		Coords = { 1728.39,6416.21,35.03,246.62 },
		Model = "mp_m_shopkeep_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 20,
		Coords = { 549.2,2670.22,42.16,96.38 },
		Model = "mp_m_shopkeep_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 20,
		Coords = { 1959.54,3741.01,32.33,303.31 },
		Model = "mp_m_shopkeep_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 20,
		Coords = { 2677.07,3279.95,55.23,334.49 },
		Model = "mp_m_shopkeep_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 20,
		Coords = { 1697.35,4923.46,42.06,328.82 },
		Model = "mp_m_shopkeep_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 20,
		Coords = { -1819.55,793.51,138.08,133.23 },
		Model = "mp_m_shopkeep_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 20,
		Coords = { 1392.03,3606.1,34.98,204.1 },
		Model = "mp_m_shopkeep_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 20,
		Coords = { -2966.41,391.59,15.05,85.04 },
		Model = "mp_m_shopkeep_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 20,
		Coords = { -3040.04,584.22,7.9,19.85 },
		Model = "mp_m_shopkeep_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 20,
		Coords = { 1134.33,-983.09,46.4,277.8 },
		Model = "mp_m_shopkeep_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 20,
		Coords = { 1165.26,2710.79,38.15,178.59 },
		Model = "mp_m_shopkeep_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 20,
		Coords = { -1486.77,-377.56,40.15,133.23 },
		Model = "mp_m_shopkeep_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 20,
		Coords = { -1221.42,-907.91,12.32,31.19 },
		Model = "mp_m_shopkeep_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 20,
		Coords = {241.18,-897.91,29.62,158.27},
		Model = "mp_m_shopkeep_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Departament Store
		Distance = 20,
		Coords = {160.83,6641.9,31.69,226.78},
		Model = "mp_m_shopkeep_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Ammu-Nation Store
		Distance = 20,
		Coords = { 1692.28,3760.94,34.69,229.61 },
		Model = "ig_dale",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Ammu-Nation Store
		Distance = 20,
		Coords = { 253.79,-50.5,69.94,68.04 },
		Model = "ig_dale",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Ammu-Nation Store
		Distance = 20,
		Coords = { 842.41,-1035.28,28.19,0.0 },
		Model = "ig_dale",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Ammu-Nation Store
		Distance = 20,
		Coords = { -331.62,6084.93,31.46,226.78 },
		Model = "ig_dale",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Ammu-Nation Store
		Distance = 20,
		Coords = { -662.29,-933.62,21.82,181.42 },
		Model = "ig_dale",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Ammu-Nation Store
		Distance = 20,
		Coords = { -1304.17,-394.62,36.7,73.71 },
		Model = "ig_dale",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Ammu-Nation Store
		Distance = 20,
		Coords = { -1118.95,2699.73,18.55,223.94 },
		Model = "ig_dale",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Ammu-Nation Store
		Distance = 20,
		Coords = { 2567.98,292.65,108.73,0.0 },
		Model = "ig_dale",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Ammu-Nation Store
		Distance = 20,
		Coords = { -3173.51,1088.38,20.84,249.45 },
		Model = "ig_dale",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Ammu-Nation Store
		Distance = 20,
		Coords = { 22.59,-1105.54,29.79,155.91 },
		Model = "ig_dale",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Ammu-Nation Store
		Distance = 20,
		Coords = { 810.22,-2158.99,29.62,0.0 },
		Model = "ig_dale",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	-- { -- Life Invader
	-- 	Distance = 20,
	-- 	Coords = { -1083.15,-245.88,37.76,209.77 },
	-- 	Model = "ig_barry",
	-- 	anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	-- },
	{ -- Pharmacy Store
		Distance = 20,
		Coords = { -171.46,6386.75,31.49,133.23 },
		Model = "u_m_y_baygor",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Pharmacy Store
		Distance = 20,
		Coords = { 318.23,-1078.4,29.47,351.5 },
		Model = "u_m_y_baygor",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Pharmacy Store
		Distance = 20,
		Coords = { 92.04,-231.03,54.66,337.33 },
		Model = "u_m_y_baygor",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Mercado MegaMall
		Distance = 20,
		Coords = { 46.62,-1749.7,29.62,48.19 },
		Model = "ig_cletus",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Mercado Central
		Distance = 20,
		Coords = { 2736.91,3462.28,55.69,334.49 },
		Model = "ig_cletus",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Mercado Central
		Distance = 20,
		Coords = { 2741.5,3464.06,55.69,79.38 },
		Model = "g_m_y_salvagoon_02",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Mercado Central
		Distance = 20,
		Coords = { -40.2,-1660.0,29.49,232.45 },
		Model = "ig_cletus",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Mercado Central norte
		Distance = 20,
		Coords = { 160.08,6651.86,31.66,133.23 },
		Model = "ig_cletus",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Mercado Central
		Distance = 20,
		Coords = { -29.57,-1655.14,29.49,113.39 },
		Model = "g_m_y_salvagoon_02",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Lixeiro
		Distance = 20,
		Coords = { -355.75,-1555.85,25.17,181.42 },
		Model = "s_m_y_garbage",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Lixeiro
		Distance = 20,
		Coords = { 287.77,2843.9,44.7,121.89 },
		Model = "s_m_y_garbage",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Lixeiro
		Distance = 20,
		Coords = { -413.97,6171.58,31.48,320.32 },
		Model = "s_m_y_garbage",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Recycling Sell
		Distance = 50,
		Coords = { -428.54,-1728.29,19.78,70.87 },
		Model = "s_m_y_garbage",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Recycling Sell
		Distance = 50,
		Coords = { 180.07,2793.29,45.65,283.47 },
		Model = "s_m_y_garbage",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Recycling Sell
		Distance = 50,
		Coords = { -195.42,6264.62,31.49,42.52 },
		Model = "s_m_y_garbage",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Jewelry
		Distance = 20,
		Coords = { -628.79,-238.7,38.05,311.82 },
		Model = "cs_gurk",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Oxy Store
		Distance = 20, --verificar
		Coords = { -1636.74,-1092.17,13.08,320.32 },
		Model = "a_f_y_epsilon_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Transporter
		Distance = 20,
		Coords = { -228.22,-843.52,30.68,161.58 },
		Model = "ig_casey",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Carteiro
		Distance = 20,
		Coords = { 78.93,112.45,81.16,158.75 },
		Model = "s_m_m_postal_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Lenhador
		Distance = 50,
		Coords = { 2433.45,5013.46,46.99,314.65 },
		Model = "a_m_o_ktown_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Motorista
		Distance = 20,
		Coords = { -200.3,6234.62,31.49,223.94 },
		Model = "u_m_m_edtoh",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Motorista
		Distance = 20,
		Coords = { 452.97,-607.75,28.59,266.46 },
		Model = "u_m_m_edtoh",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Loja de Roupas
		Distance = 20,
		Coords = { -709.23,-151.35,37.41,119.06 },
		Model = "a_f_y_epsilon_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Loja de Roupas
		Distance = 20,
		Coords = { -165.08,-303.46,39.73,249.45 },
		Model = "a_f_y_epsilon_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Loja de Roupas
		Distance = 20,
		Coords = { -823.16,-1072.39,11.32,212.6 },
		Model = "a_f_y_epsilon_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Loja de Roupas
		Distance = 20,
		Coords = { -1194.6,-767.56,17.3,215.44 },
		Model = "a_f_y_epsilon_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Loja de Roupas
		Distance = 20,
		Coords = { -1448.61,-237.61,49.81,51.03 },
		Model = "a_f_y_epsilon_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Loja de Roupas
		Distance = 20,
		Coords = { 5.87,6511.4,31.88,45.36 },
		Model = "a_f_y_epsilon_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Loja de Roupas
		Distance = 20,
		Coords = { 1695.37,4823.17,42.06,96.38 },
		Model = "a_f_y_epsilon_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Loja de Roupas
		Distance = 20,
		Coords = { 127.23,-223.39,54.56,65.2 },
		Model = "a_f_y_epsilon_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Loja de Roupas
		Distance = 20,
		Coords = { 613.09,2761.8,42.09,274.97 },
		Model = "a_f_y_epsilon_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Loja de Roupas
		Distance = 20,
		Coords = { 1196.55,2711.64,38.22,184.26 },
		Model = "a_f_y_epsilon_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Loja de Roupas
		Distance = 20,
		Coords = { -3169.1,1044.04,20.86,65.2 },
		Model = "a_f_y_epsilon_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Loja de Roupas
		Distance = 20,
		Coords = { -1102.41,2711.57,19.11,221.11 },
		Model = "a_f_y_epsilon_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Loja de Roupas
		Distance = 20,
		Coords = { 427.02,-806.21,29.49,87.88 },
		Model = "a_f_y_epsilon_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Loja de Roupas
		Distance = 20,
		Coords = { 73.93,-1392.9,29.37,277.8 },
		Model = "a_f_y_epsilon_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},


	{ -- Loja de Tatuagem
		Distance = 20,
		Coords = { 1326.43,-1651.63,52.27,39.69 },
		Model = "a_f_y_hippie_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Loja de Tatuagem
		Distance = 20,
		Coords = { -1150.39,-1425.4,4.95,34.02 },
		Model = "a_f_y_hippie_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Loja de Tatuagem
		Distance = 20,
		Coords = { 320.05,183.3,103.59,161.58 },
		Model = "a_f_y_hippie_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Loja de Tatuagem
		Distance = 20,
		Coords = { -3172.82,1073.41,20.83,249.45 },
		Model = "a_f_y_hippie_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Loja de Tatuagem
		Distance = 20,
		Coords = { 1863.42,3751.76,33.03,119.06 },
		Model = "a_f_y_hippie_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Loja de Tatuagem
		Distance = 20,
		Coords = { -292.11,6196.32,31.49,314.65 },
		Model = "a_f_y_hippie_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Taxista
		Distance = 20,
		Coords = {396.97,-1178.85,29.40,4.13},
		Model = "ig_bride",
		anim = { "anim@heists@prison_heistig1_p1_guard_checks_bus","loop" }
	},
	{ -- Taxista
		Distance = 20,
		Coords = {388.90,-1182.90,29.50,292.71},
		Model = "ig_bankman",
		anim = { "timetable@maid@couch@", "base", "loop" }
	},
	{ -- Taxista
		Distance = 50,
		Coords = {391.05,-1150.00,29.29,178.77},
		Model = "csb_trafficwarden",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Caçador
		Distance = 20,
		Coords = { -775.96,5602.95,33.73,269.3 },
		Model = "ig_hunter",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Caçador
		Distance = 20,
		Coords = { 568.96,2796.64,42.01,272.13 },
		Model = "a_m_o_ktown_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Agricultor
		Distance = 20,
		Coords = { 1170.55,-296.03,69.1,107.72 },
		Model = "a_m_o_ktown_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Ingrediente
		Distance = 20,
		Coords = { 1170.88,-298.2,69.1,96.38 },
		Model = "csb_ortega",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Pescador
		Distance = 20,
		Coords = { 1171.93,-304.11,69.1,56.7 },
		Model = "a_f_y_eastsa_03",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Pescador
		Distance = 20,
		Coords = { 1522.17,3783.13,34.47,218.27 },
		Model = "a_f_y_eastsa_03",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Barbearia
		Distance = 20,
		Coords = { -821.82,-183.36,37.56,212.6 },
		Model = "a_f_y_hipster_04",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Barbearia
		Distance = 20,
		Coords = { 137.12,-1710.54,29.28,138.9 },
		Model = "a_f_y_hipster_04",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Barbearia
		Distance = 20,
		Coords = { -1284.59,-1118.98,6.99,90.71 },
		Model = "a_f_y_hipster_04",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Barbearia
		Distance = 20,
		Coords = { 1934.17,3729.63,32.84,212.6 },
		Model = "a_f_y_hipster_04",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Barbearia
		Distance = 20,
		Coords = { 1210.2,-474.01,66.2,73.71 },
		Model = "a_f_y_hipster_04",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Barbearia
		Distance = 20,
		Coords = { -34.04,-150.15,57.07,340.16 },
		Model = "a_f_y_hipster_04",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Barbearia
		Distance = 20,
		Coords = { -280.72,6228.2,31.69,42.52 },
		Model = "a_f_y_hipster_04",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- BurgerShot
		Distance = 20,
		Coords = { -1199.93,-893.03,13.88,232.45 },
		Model = "u_m_y_burgerdrug_01",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- BurgerShot
		Distance = 20,
		Coords = { -1198.31,-905.14,13.83,218.27 },
		Model = "u_m_y_burgerdrug_01",
		anim = { "amb@lo_res_idles@","world_human_lean_male_foot_up_lo_res_base" }
	},
	{ -- CluckinBell
		Distance = 20, --verificar
		Coords = { -510.34,-702.67,33.16,31.19 },
		Model = "IVcluckin_f",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- CluckinBell
		Distance = 20, --verificar
		Coords = { -510.13,-696.63,33.16,45.36 },
		Model = "IVcluckin_m",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Acompanhate de luxo
		Distance = 20,
		Coords = {129.86,-1325.01,29.22,299.89},
		Model = "ig_vincent",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Crafting de peças de armas
		Distance = 20,
		Coords = { 1127.77,-2034.83,32.07,87.88 },
		Model = "ig_chef",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Ilegal
		Distance = 20,
		Coords = { 949.75,-1550.9,30.75,0.0 },
		Model = "a_m_y_soucent_02",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
	{ -- Lavagem Lester Publica
		Distance = 20,
		Coords = { 1271.71,-1712.18,54.76,277.8 },
		Model = "cs_wade",
		anim = { "anim@heists@heist_corona@single_team","single_team_loop_boss" }
	},
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADDPED
-----------------------------------------------------------------------------------------------------------------------------------------
exports("AddPed", function(Data)
	for Number = 1,#List do
		local Distance = #(vec3(Data.Coords[1],Data.Coords[2],Data.Coords[3]) - vec3(List[Number]["Coords"][1],List[Number]["Coords"][2],List[Number]["Coords"][3]))
		if Distance <= 1.0 then
			return
		end
	end
	table.insert(List,Data)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADLIST
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	while true do
		local Ped = PlayerPedId()
		local Coords = GetEntityCoords(Ped)
		for Number = 1,#List do
			local Distance = #(Coords - vec3(List[Number]["Coords"][1],List[Number]["Coords"][2],List[Number]["Coords"][3]))
			if Distance <= List[Number]["Distance"] then
				if not localPeds[Number] and LocalPlayer["state"]["Route"] < 900000 then
					if LoadModel(List[Number]["Model"]) then
						localPeds[Number] = CreatePed(4,List[Number]["Model"],List[Number]["Coords"][1],List[Number]["Coords"][2],List[Number]["Coords"][3] - 1,List[Number]["Coords"][4],false,false)
						SetPedArmour(localPeds[Number],99)
						SetEntityInvincible(localPeds[Number],true)
						FreezeEntityPosition(localPeds[Number],true)
						SetBlockingOfNonTemporaryEvents(localPeds[Number],true)
						SetModelAsNoLongerNeeded(List[Number]["Model"])
						if List[Number]["Model"] == "s_f_y_casino_01" then
							SetPedDefaultComponentVariation(localPeds[Number])
							SetPedComponentVariation(localPeds[Number],0,3,0,0)
							SetPedComponentVariation(localPeds[Number],1,0,0,0)
							SetPedComponentVariation(localPeds[Number],2,3,0,0)
							SetPedComponentVariation(localPeds[Number],3,0,1,0)
							SetPedComponentVariation(localPeds[Number],4,1,0,0)
							SetPedComponentVariation(localPeds[Number],6,1,0,0)
							SetPedComponentVariation(localPeds[Number],7,1,0,0)
							SetPedComponentVariation(localPeds[Number],8,0,0,0)
							SetPedComponentVariation(localPeds[Number],10,0,0,0)
							SetPedComponentVariation(localPeds[Number],11,0,0,0)
							SetPedPropIndex(localPeds[Number],1,0,0,false)
						end

						if List[Number]["anim"] ~= nil then
							if LoadAnim(List[Number]["anim"][1]) then
								TaskPlayAnim(localPeds[Number],List[Number]["anim"][1],List[Number]["anim"][2],8.0,8.0,-1,1,0,0,0,0)
							end
						end
					end
				end
			else
				if localPeds[Number] then
					if DoesEntityExist(localPeds[Number]) then
						DeleteEntity(localPeds[Number])
					end
					localPeds[Number] = nil
				end
			end
		end
		Wait(1000)
	end
end)