SupportBuild = "3337"
SupportVersion = "1.69"

------------------------------------ Launch Menu

GoldenGetsMenu = gui.get_tab("GoldenGets Menu")
gui.show_message("GoldenGets Menu v1.1 | "..SupportVersion.." b"..SupportBuild.."","is Successfully launched!")

------------------------------------ Build Compatibility

CurrentBuild = memory.scan_pattern("8B C3 33 D2 C6 44 24 20"):add(0x24):rip()
CurrentBuild_string = CurrentBuild:get_string()
BuildStatus = 0

if CurrentBuild:get_string() ~= SupportBuild then
    BuildStatus = 0
	gui.show_error("GoldenGets Menu - Outdate","Unsupported Build version (b"..SupportBuild.."). Some functions will be automatically disabled!")
    log.warning("Unsupported Build version (b"..SupportBuild.."), current Build version is (b"..CurrentBuild_string.."). Some functions will be automatically disabled!")
else
    BuildStatus = 1
end

function globals_b_get_int(SupportBuild_string, intglobal)
    if tostring(SupportBuild_string) == CurrentBuild_string or BuildStatus == 5 then
        return globals.get_int(intglobal)
    else
        log.warning("Unable to read data, unsupported Build version (b"..SupportBuild_string.."). Current Build version is (b"..CurrentBuild_string..")")
    end
end

function globals_b_set_int(SupportBuild_string, intglobal, intval)
    if tostring(SupportBuild_string) == CurrentBuild_string or BuildStatus == 5 then
        globals.set_int(intglobal, intval)
    else
        log.warning("Unable to run, unsupported Build version (b"..SupportBuild_string.."). Current Build version is (b"..CurrentBuild_string..")")
    end
end

function globals_b_get_float(SupportBuild_string, floatglobal)
    if tostring(SupportBuild_string) == CurrentBuild_string or BuildStatus == 5 then
        return globals.get_float(floatglobal)
    else
        log.warning("Unable to read data, unsupported Build version (b"..SupportBuild_string.."). Current Build version is (b"..CurrentBuild_string..")")
    end
end

function globals_b_set_float(SupportBuild_string, floatglobal, floatval)
    if tostring(SupportBuild_string) == CurrentBuild_string or BuildStatus == 5 then
        globals.set_float(floatglobal, floatval)
    else
        log.warning("Unable to run, unsupported Build version (b"..SupportBuild_string.."). Current Build version is (b"..CurrentBuild_string..")")
    end
end

function locals_b_get_int(SupportBuild_string, scriptname, intlocal)
    if tostring(SupportBuild_string) == CurrentBuild_string or BuildStatus == 5 then
        return locals.get_int(scriptname, intlocal)
    else
        log.warning("Unable to read data, unsupported Build version (b"..SupportBuild_string.."). Current Build version is (b"..CurrentBuild_string..")")
    end
end

function locals_b_set_int(SupportBuild_string, scriptname, intlocal, intlocalval)
    if tostring(SupportBuild_string) == CurrentBuild_string or BuildStatus == 5 then
        locals.set_int(scriptname, intlocal, intlocalval)
    else
        log.warning("Unable to run, unsupported Build version (b"..SupportBuild_string.."). Current Build version is (b"..CurrentBuild_string..")")
    end
end

function locals_b_get_float(SupportBuild_string, scriptname, flocal)
    if tostring(SupportBuild_string) == CurrentBuild_string or BuildStatus == 5 then
        return locals.get_float(scriptname, flocal)
    else
        log.warning("Unable to read data, unsupported Build version (b"..SupportBuild_string.."). Current Build version is (b"..CurrentBuild_string..")")
    end
end

function locals_b_set_float(SupportBuild_string, scriptname, flocal, flocalval)
    if tostring(SupportBuild_string) == CurrentBuild_string or BuildStatus == 5 then
        locals.set_float(scriptname, flocal, flocalval)
    else
        log.warning("Unable to run, unsupported Build version (b"..SupportBuild_string.."). Current Build version is (b"..CurrentBuild_string..")")
    end
end

function stats_set_packed_stat_bool(boolindex, boolval)
    stats.set_packed_stat_bool(boolindex, boolval)
end

------------------------------------ Version Compatibility

CurrentVersion = NETWORK.GET_ONLINE_VERSION()
CurrentVersion_string = CurrentVersion
VersionStatus = 0

if CurrentVersion ~= SupportVersion then
    VersionStatus = 0
	gui.show_error("GoldenGets Menu - Outdate","Unsupported Online version (v"..SupportVersion.."). Some functions will be automatically disabled!")
    log.warning("Unsupported Online version (v"..SupportVersion.."), current Online version is (v"..CurrentVersion_string.."). Some functions will be automatically disabled!")
else
    VersionStatus = 1
end

function globals_v_get_int(SupportVersion_string, intglobal)
    if tostring(SupportVersion_string) == CurrentVersion_string or VersionStatus == 5 then
        return globals.get_int(intglobal)
    else
        log.warning("Unable to read data, unsupported Online version (v"..SupportVersion_string.."). Current Online version is (v"..CurrentVersion_string..")")
    end
end

function globals_v_set_int(SupportVersion_string, intglobal, intval)
    if tostring(SupportVersion_string) == CurrentVersion_string or VersionStatus == 5 then
        globals.set_int(intglobal, intval)
    else
        log.warning("Unable to run, unsupported Online version (v"..SupportVersion_string.."). Current Online version is (v"..CurrentVersion_string..")")
    end
end

function globals_v_get_float(SupportVersion_string, floatglobal)
    if tostring(SupportVersion_string) == CurrentVersion_string or VersionStatus == 5 then
        return globals.get_float(floatglobal)
    else
        log.warning("Unable to read data, unsupported Online version (v"..SupportVersion_string.."). Current Online version is (v"..CurrentVersion_string..")")
    end
end

function globals_v_set_float(SupportVersion_string, floatglobal, floatval)
    if tostring(SupportVersion_string) == CurrentVersion_string or VersionStatus == 5 then
        globals.set_float(floatglobal, floatval)
    else
        log.warning("Unable to run, unsupported Online version (v"..SupportVersion_string.."). Current Online version is (v"..CurrentVersion_string..")")
    end
end

function locals_v_get_int(SupportVersion_string, scriptname, intlocal)
    if tostring(SupportVersion_string) == CurrentVersion_string or VersionStatus == 5 then
        return locals.get_int(scriptname, intlocal)
    else
        log.warning("Unable to read data, unsupported Online version (v"..SupportVersion_string.."). Current Online version is (v"..CurrentVersion_string..")")
    end
end

function locals_v_set_int(SupportVersion_string, scriptname, intlocal, intlocalval)
    if tostring(SupportVersion_string) == CurrentVersion_string or VersionStatus == 5 then
        locals.set_int(scriptname, intlocal, intlocalval)
    else
        log.warning("Unable to run, unsupported Online version (v"..SupportVersion_string.."). Current Online version is (v"..CurrentVersion_string..")")
    end
end

function locals_v_get_float(SupportVersion_string, scriptname, flocal)
    if tostring(SupportVersion_string) == CurrentVersion_string or VersionStatus == 5 then
        return locals.get_float(scriptname, flocal)
    else
        log.warning("Unable to read data, unsupported Online version (v"..SupportVersion_string.."). Current Online version is (v"..CurrentVersion_string..")")
    end
end

function locals_v_set_float(SupportVersion_string, scriptname, flocal, flocalval)
    if tostring(SupportVersion_string) == CurrentVersion_string or VersionStatus == 5 then
        locals.set_float(scriptname, flocal, flocalval)
    else
        log.warning("Unable to run, unsupported Online version (v"..SupportVersion_string.."). Current Online version is (v"..CurrentVersion_string..")")
    end
end

function stats_v_set_packed_stat_bool(boolindex, boolval)
    stats.set_packed_stat_bool(boolindex, boolval)
end

------------------------------------

--Scripts--

ASS   = "appsecuroserv"
AMN   = "am_mp_nightclub"
AMW   = "am_mp_warehouse"
FMC   = "fm_mission_controller"
FMC20 = "fm_mission_controller_2020"
THP   = "tuner_planning"
VP    = "vehrob_planning"
HIP   = "heist_island_planning"
GCHP  = "gb_casino_heist_planning"
GCS   = "gb_contraband_sell"
GCB   = "gb_contraband_buy"
GB    = "gb_gunrunning"
GS    = "gb_smuggler"
CLW   = "casino_lucky_wheel"
BJ    = "blackjack"
CR    = "casinoroulette"
CS    = "casino_slots"
TCP   = "three_card_poker"
GSH   = "gunclub_shop"

--Globals--

FMg     = 262145 						-- free mode 				    	   		// Tunable: CASH_MULTIPLIER

BTEg1   = 4537455 						-- bypass transaction error 1
BTEg2   = 4537456 						-- bypass transaction error 2
BTEg3   = 4537457 						-- bypass transaction error 3

TTg     = 4537311 						-- trigger transaction

GSIg    = 1663174 						-- get supplies instantly 					// Guide:   OR_PSUP_DEL

--Locals--

BCISl    = 1211 + 774 		-- bunker crash instant sell
HCVISl1  = 1934 + 1078 		-- hangar cargo vip instant sell 1 			   // Guide: SMOT_HLPDROP2
HCVISl2  = 1934 + 768 		-- hangar cargo vip instant sell 2			   // Guide: MP_MISSION_COUNTDOWN_SOUNDSET
SCVAl1   = 741 				-- special cargo vip appsecuroserv 1 		   // Guide: MP_WH_SELL
SCVAl2   = 742 				-- special cargo vip appsecuroserv 2 		   // Guide: MP_WH_SELL
SCVAl3   = 560 				-- special cargo vip appsecuroserv 3 		   // Guide: MP_WH_SELL
SCVAl4   = 1138 			-- special cargo vip additional 1
SCVAl5   = 598 				-- special cargo vip additional 2
SCVAl6   = 1127 			-- special cargo vip additional 3
SCVMTl   = 545 + 7 			-- special cargo vip mission type
SCVISl   = 545 + 1 			-- special cargo vip instant sell
SCVIBl1  = 603 + 5 			-- special cargo vip instant buy 1
SCVIBl2  = 603 + 1 			-- special cargo vip instant buy 2
SCVIBl3  = 603 + 191 		-- special cargo vip instant buy 3
SCVIBl4  = 603 + 192 		-- special cargo vip instant buy 4
NLCl     = 181 + 32 + 1 	-- night loop collect local
BLWLl    = 142 + 747 		-- bypass locked weapon livery

--Global Variables--

INT_MAX = 2147483646 -- max integer value
SPACE   = "? | ?" -- just space
README  = "Read Me"  -- just read me

------------------------------------

	-- GoldenGets Scripts --
	
	AMP 		= "am_mp_peds"
	GBCS 		= "gb_biker_contraband_sell"
	FCALS 		= "fm_content_acid_lab_sell"
	
	-- GoldenGets Globals 1.69 --
	
	SCSMg 	= FMg + 15624			-- Special Cargo Sell Mission global
	MCBSg 	= FMg + 18356		 	-- Motorcycle Club Business Sell global
	ASCCC 	= FMg + 31869			-- Auto Shop Customer Cars % Chance							// Tunable: 
	
	-- GoldenGets Locals 1.69 --
	
	SCVSIl 	= 1942640				-- special cargo vip special item local
	SCVUCl 	= 1942486				-- special cargo vip unique cargo local
	MCBSTl 	= 704 + 17			 	-- Motorcycle Club Business Shipment Type local
	ALISDl1 = 5483 + 1358		 	-- Acid lab Instan Sell Delivery local (10 Delivery Mission) 																		-- https://www.unknowncheats.me/forum/3641612-post76.html -- https://www.unknowncheats.me/forum/3953350-post4478.html
	ALISCl1 = 5483 + 1293		 	-- Acid lab Instan Sell Complete local (10 Delivery Mission) 																		-- https://www.unknowncheats.me/forum/3641612-post76.html -- https://www.unknowncheats.me/forum/3953350-post4478.html
	ALISDl2 = 5483 + 1299		 	-- Acid lab Instan Sell Delivery local (1 Delivery Mission) // int *(1260)*															-- https://www.unknowncheats.me/forum/3641612-post76.html -- https://www.unknowncheats.me/forum/3953350-post4478.html
	ALISCl2 = 5483 + 1294		 	-- Acid lab Instan Sell Complete local (1 Delivery Mission) 																		-- https://www.unknowncheats.me/forum/3641612-post76.html -- https://www.unknowncheats.me/forum/3953350-post4478.html
	ALISDl3 = 5483 + 1340		 	-- Acid lab Instan Sell Delivery local (5 Delivery Mission) 																		-- https://www.unknowncheats.me/forum/3641612-post76.html -- https://www.unknowncheats.me/forum/3953350-post4478.html
	ALISCl3 = 5483 + 1295		 	-- Acid lab Instan Sell Complete local (5 Delivery Mission) 																		-- https://www.unknowncheats.me/forum/3641612-post76.html -- https://www.unknowncheats.me/forum/3953350-post4478.html
	
	ALMl 	= 19709 				-- Alone Launch Mission local																										-- https://www.unknowncheats.me/forum/grand-theft-auto-v/463868-modest-menu-lua-scripting-megathread-239.html#google_vignette
	ALMl1	= 3526					-- Alone Launch Mission local 1
	ALMl2	= 3527					-- Alone Launch Mission local 2
	ALMl3	= 3529					-- Alone Launch Mission local 3
	ALMl4	= 178821				-- Alone Launch Mission local 4
	APSHl 	= 9775 					-- Apartement Pacific Standard Hack local
	
	DWCl 	= 2685444 + 3078 + 265 	-- Dispatch Work Cooldown local

------------------------------------

function delete_entity(ent)  --discord@rostal315
	if ENTITY.DOES_ENTITY_EXIST(ent) then
		ENTITY.DETACH_ENTITY(ent, true, true)
		ENTITY.SET_ENTITY_VISIBLE(ent, false, false)
		NETWORK.NETWORK_SET_ENTITY_ONLY_EXISTS_FOR_PARTICIPANTS(ent, true)
		ENTITY.SET_ENTITY_COORDS_NO_OFFSET(ent, 0.0, 0.0, -1000.0, false, false, false)
		ENTITY.SET_ENTITY_COLLISION(ent, false, false)
		ENTITY.SET_ENTITY_AS_MISSION_ENTITY(ent, true, true)
		ENTITY.SET_ENTITY_AS_NO_LONGER_NEEDED(ent)
		ENTITY.DELETE_ENTITY(ent)
	end
end

function request_control(entity) -- CCTV thread
	if not NETWORK.NETWORK_HAS_CONTROL_OF_ENTITY(entity) then
		local netId = NETWORK.NETWORK_GET_NETWORK_ID_FROM_ENTITY(entity)
		NETWORK.SET_NETWORK_ID_CAN_MIGRATE(netId, true)
		NETWORK.NETWORK_REQUEST_CONTROL_OF_ENTITY(entity)
	end
	return NETWORK.NETWORK_HAS_CONTROL_OF_ENTITY(entity)
end

has_bought_something = 1943376
global_computer_type = 1963007
function start_script(script_name, stack_size, script) -- Computer thread
	if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat(script_name)) >= 1 then
		return
	end
	SCRIPT.REQUEST_SCRIPT(script_name)
	repeat script:yield() until SCRIPT.HAS_SCRIPT_LOADED(script_name)
	SYSTEM.START_NEW_SCRIPT(script_name, stack_size)
	SCRIPT.SET_SCRIPT_AS_NO_LONGER_NEEDED(script_name)
	script:sleep(100)
	if script_name == 'appArcadeBusinessHub' then
		while SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat(script_name)) >= 1 do
			if globals.get_int(global_computer_type) == -1 then
				globals.set_int(has_bought_something, 0)
			end
			script:yield()
		end
	else
		repeat script:yield() until SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat(script_name)) == 0
		globals.set_int(has_bought_something, 0)
	end
end

TransactionManager = {}
TransactionManager.__index = TransactionManager
function TransactionManager:GetCharacter() -- Funds thread
    local _, char = STATS.STAT_GET_INT(joaat("MPPLY_LAST_MP_CHAR"), 0, 1)
    return tonumber(char)
end

function TransactionManager:GetWalletBalance()
    local character = self:GetCharacter()
    return MONEY.NETWORK_GET_VC_WALLET_BALANCE(character)
end

function TransactionManager:GetBankBalance()
    local character = self:GetCharacter()
    return MONEY.NETWORK_GET_VC_BANK_BALANCE(character)
end
transactionManager = setmetatable({}, TransactionManager)

------------------------------------

WalletValue = 0
WalletValue = math.min(transactionManager:GetWalletBalance(), WalletValue)
BankValue = 0
BankValue = math.min(transactionManager:GetBankBalance(), BankValue)

GoldenGetsMenu:add_imgui(function()
    --if ImGui.Button("Switch CEO/President") then
	--	local playerIndex = stats.get_int("MPPLY_LAST_MP_CHAR") --????ID
	--	--playerOrganizationTypeRaw: {Global_1886967[PLAYER::PLAYER_ID() /*609*/].f_10.f_429}  GLOBAL  
	--	--playerOrganizationType: {('1886967', '*609', '10', '429', '1')}  GLOBAL  global + (pid *pidmultiplier) + offset + offset + offset (values: 0 = CEO and 1 = MOTORCYCLE CLUB) 
	--	if locals_b_get_int(SupportBuild, 1887305+playerIndex*609+10+430+1) == 0 then --1886967+playerIndex*609+10+429+1 = 0 ?CEO =1??????
	--		locals_b_set_int(SupportBuild, 1887305+playerIndex*609+10+430+1,1)
	--		gui.show_message("Switch as a President","Become a President of your own Motorcycle Club")
	--	else
	--		if locals_b_get_int(SupportBuild, 1887305+playerIndex*609+10+430+1) == 1 then
	--			locals_b_set_int(SupportBuild, 1887305+playerIndex*609+10+430+1,0)
	--			gui.show_message("Switch as a CEO","Become a CEO of your own Organization")
	--		else
	--			gui.show_message("You are Not the Boss","You Must Register as a CEO or President")
	--		end
	--	end
	--end
    --if ImGui.IsItemHovered() then	
    --    ImGui.SetTooltip("May not work in public session")
    --end
	--ImGui.SameLine()
	--auto_ceo_mc = ImGui.Checkbox("Auto Register as a Boss", auto_ceo_mc) -- Detects the cases that you should be a CEO/MC to start some heists/missions, make you one of it.
	
	ImGui.SeparatorText("Device Access")
	
	if ImGui.Button("Start Internet##Device") then
		script.run_in_fiber(function (script)
			start_script('appInternet', 4592, script)
		end)
	end
	ImGui.SameLine()
	if NETWORK.NETWORK_IS_SESSION_STARTED() then
		if ImGui.Button("Start Arcade Laptop##Device") then
			script.run_in_fiber(function (script)
				start_script('appArcadeBusiness', 4592, script)
			end)
		end
		if ImGui.IsItemHovered() then
			ImGui.SetTooltip("Must be in your Arcade Interior. If there is a Bug, press 'Start Internet'")
		end
	else
		if ImGui.Button("Start Arcade Laptop") then
			gui.show_error("GoldenGets - Error","Unavailable in Single Player")
		end
	end
	
	if ImGui.Button("Instant Hack/Mini Games") then
		local local_H4_hack = 24880 --3274    --func_6004(&Local_24880, &(Local_24871[func_389(bParam1, 3) /*2*/]), 0, joaat("heist"), Global_786547.f_1);
	
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_mission_controller_2020")) ~= 0 then
	
			locals_v_set_int(SupportVersion, "fm_mission_controller_2020", 29700, 6) --3274 --??????????
	
			locals_v_set_float(SupportVersion, "fm_mission_controller_2020", 30939 + 3, 100) --3274 ????????
	
			if locals_v_get_int(SupportVersion, "fm_mission_controller_2020", 30914) == 3 then --?????? --Input_Code_Enter_Correct
				locals_v_set_int(SupportVersion, "fm_mission_controller_2020", 30915, 2) --3274 --???????
				locals_v_set_float(SupportVersion, "fm_mission_controller_2020", 30915 + 1 + 1, locals_v_get_int(SupportVersion, "fm_mission_controller_2020", 30915 + 1 + 1 + 1)) --3274 --???????????
				locals_v_set_float(SupportVersion, "fm_mission_controller_2020", 30915 + 1 + 1 + 2, locals_v_get_int(SupportVersion, "fm_mission_controller_2020", 30915 + 1 + 1 + 1 + 2)) --3274 --???????????
				locals_v_set_float(SupportVersion, "fm_mission_controller_2020", 30915 + 1 + 1 + 4, locals_v_get_int(SupportVersion, "fm_mission_controller_2020", 30915 + 1 + 1 + 1 + 4)) --3274 --???????????
				PAD.SET_CONTROL_VALUE_NEXT_FRAME(2, 237, 1.0) --????
			end
		
			local_H4_hack_v = locals_v_get_int(SupportVersion, "fm_mission_controller_2020", local_H4_hack) --???finger clone
			if (local_H4_hack_v & (1 << 0)) == 0 then
				local_H4_hack_v = local_H4_hack_v ~ (1 << 0)
				locals_v_set_int(SupportVersion, "fm_mission_controller_2020", local_H4_hack, local_H4_hack_v)
			end
		end
				
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_mission_controller")) ~= 0 then --????
			locals_v_set_float(SupportVersion, "fm_mission_controller", 10069 + 11, 1) --3274 ??????
			locals_v_set_int(SupportVersion, "fm_mission_controller", 10109 + 2, 8) --3274 ??????? DLC_HEIST3\HEIST_FINALE_LASER_DRILL case 8
		end
		--???????????
		local local_H3_hack_1 = 53019 --3274    --func_14102(&Local_52985, &(Local_52920[Local_31603[bLocal_3229 /*292*/].f_27 /*2*/]), 0, joaat("heist"), Global_786547.f_1);
		local local_H3_hack_2 = 54085 --3274    --func_14104(&Local_54047, &(Local_53982[Local_31603[bLocal_3229 /*292*/].f_27 /*2*/]), 0, joaat("heist"), Global_786547.f_1);
		local local_H3_hack_1_p = 2840 --3274    
		local local_H3_hack_2_p = 3841 --3274    
	
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_mission_controller")) ~= 0 then --??????
			local_H3_hack_1_v = locals_v_get_int(SupportVersion, "fm_mission_controller", local_H3_hack_1)
			if (local_H3_hack_1_v & (1 << 0)) == 0 then
				local_H3_hack_1_v = local_H3_hack_1_v ~ (1 << 0)
				locals_v_set_int(SupportVersion, "fm_mission_controller", local_H3_hack_1, local_H3_hack_1_v)
			end
			local_H3_hack_2_v = locals_v_get_int(SupportVersion, "fm_mission_controller", local_H3_hack_2)
			if (local_H3_hack_2_v & (1 << 0)) == 0 then
				local_H3_hack_2_v = local_H3_hack_2_v ~ (1 << 0)
				locals_v_set_int(SupportVersion, "fm_mission_controller", local_H3_hack_2, local_H3_hack_2_v)
			end
		end
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("am_mp_arc_cab_manager")) ~= 0 then --??????-??
			local_H3_hack_1_p_v = locals_v_get_int(SupportVersion, "am_mp_arc_cab_manager", local_H3_hack_1_p)
			if (local_H3_hack_1_p_v & (1 << 0)) == 0 then
				local_H3_hack_1_p_v = local_H3_hack_1_p_v ~ (1 << 0)
				locals_v_set_int(SupportVersion, "am_mp_arc_cab_manager", local_H3_hack_1_p, local_H3_hack_1_p_v)
			end
			local_H3_hack_2_p_v = locals_v_get_int(SupportVersion, "am_mp_arc_cab_manager", local_H3_hack_2_p)
			if (local_H3_hack_2_p_v & (1 << 0)) == 0 then
				local_H3_hack_2_p_v = local_H3_hack_2_p_v ~ (1 << 0)
				locals_v_set_int(SupportVersion, "am_mp_arc_cab_manager", local_H3_hack_2_p, local_H3_hack_2_p_v)
			end
		end
	
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_mission_controller")) ~= 0 then
			locals_v_set_int(SupportVersion, "fm_mission_controller", 1545, 2)  --???-?????(Heist2-Mission1-Prep3:SERVER FARM)  GRAPHICS::DRAW_SPRITE("MPHotwire", "failed"
		end
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_mission_controller_2020")) ~= 0 then
			locals_v_set_int(SupportVersion, "fm_mission_controller_2020", 1254, 2)  --??????? (Bottom Dollar Bail Office Mission)  GRAPHICS::DRAW_SPRITE("MPHotwire", "failed"
		end
	
		--??voltlab
			--[[
			if (iLocal_765 == iLocal_764)
				{
					AUDIO::PLAY_SOUND_FRONTEND(-1, "All_Connected_Correct", uParam1->f_741, true);
				}
		]]
	
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_mission_controller_2020")) ~= 0 then --voltlab????
			locals_v_set_int(SupportVersion, "fm_mission_controller_2020", 1723, locals_v_get_int(SupportVersion, "fm_mission_controller_2020", 1724)) --3274 --voltlab???????????
			locals_v_set_int(SupportVersion, "fm_mission_controller_2020", 1725, 3) --3274 ??????
		end
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_content_island_heist")) ~= 0 then
			locals_v_set_int(SupportVersion, "fm_content_island_heist", 766, locals_v_get_int(SupportVersion, "fm_content_island_heist", 767)) --3274 --voltlab???????????
			locals_v_set_int(SupportVersion, "fm_content_island_heist", 768, 3) --3274  ??????
		end
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_content_vehrob_prep")) ~= 0 then
			locals_v_set_int(SupportVersion, "fm_content_vehrob_prep", 547, locals_v_get_int(SupportVersion, "fm_content_vehrob_prep", 548)) --3274 --voltlab???????????
			locals_v_set_int(SupportVersion, "fm_content_vehrob_prep", 549, 3) --3274  ??????
		end
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("am_mp_arc_cab_manager")) ~= 0 then
			locals_v_set_int(SupportVersion, "am_mp_arc_cab_manager", 455, locals_v_get_int(SupportVersion, "am_mp_arc_cab_manager", 456)) --3274 --voltlab???????????
			locals_v_set_int(SupportVersion, "am_mp_arc_cab_manager", 457, 3) --3274  ??????
		end
	
	
		--??????????????
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_content_vehrob_casino_prize")) ~= 0 then
			locals_v_set_int(SupportVersion, "fm_content_vehrob_casino_prize", 1045 + 135 , 3) --3274 case 3 Pass_Remote
		end
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_mission_controller")) ~= 0 then --
			locals_v_set_int(SupportVersion, "fm_mission_controller", 1271 + 135 , 3) --3274 case 3 Pass_Remote
		end
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_mission_controller_2020")) ~= 0 then
			locals_v_set_int(SupportVersion, "fm_mission_controller_2020", 980 + 135 , 3) --3095 case 3 Pass_Remote
		end
	
		--??????? CIRC_COMP
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_mission_controller")) ~= 0 then --
			locals_v_set_int(SupportVersion, "fm_mission_controller", 11778 + 24 , 7)
		end
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_mission_controller_2020")) ~= 0 then --
			locals_v_set_int(SupportVersion, "fm_mission_controller_2020", 9018 + 24 , 7)
		end
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_content_business_battles")) ~= 0 then --
			locals_v_set_int(SupportVersion, "fm_content_business_battles", 4101 + 24 , 7)
		end
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_content_island_heist")) ~= 0 then --
			locals_v_set_int(SupportVersion, "fm_content_island_heist", 10080 + 24 , 7)
		end
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_content_vehrob_prep")) ~= 0 then --
			locals_v_set_int(SupportVersion, "fm_content_vehrob_prep", 9134 + 24 , 7)
		end
	
	
		--int* iParam0, int iParam1, int iParam2, int iParam3, int iParam4, var uParam5, var uParam6, int iParam7, bool bParam8, bool bParam9, bool bParam10, bool bParam11, bool bParam12, bool bParam13, int iParam14, int iParam15, bool bParam16, bool bParam17, bool bParam18, bool bParam19, bool bParam20, bool bParam21
		local minigamelocaltable = {
			[1]  = {script_name = "agency_heist3b", minigame_local = 6210},
			[2]  = {script_name = "business_battles_sell", minigame_local = 431},
			[3]  = {script_name = "fm_content_business_battles", minigame_local = 4101},
			[4]  = {script_name = "fm_content_island_heist", minigame_local = 10080},
			[5]  = {script_name = "fm_content_vehrob_casino_prize", minigame_local = 7651 + 2},
			[6]  = {script_name = "fm_content_vehrob_police", minigame_local = 7511},
			[7]  = {script_name = "fm_content_vehrob_prep", minigame_local = 9134},
			[8]  = {script_name = "fm_content_vip_contract_1", minigame_local = 7323},
			[9]  = {script_name = "fm_mission_controller_2020", minigame_local = 28917},
			[10]  = {script_name = "fm_mission_controller", minigame_local = 9775},
			[11]  = {script_name = "gb_cashing_out", minigame_local = 401},
			[12]  = {script_name = "gb_gunrunning_defend", minigame_local = 2261},
			[13]  = {script_name = "gb_sightseer", minigame_local = 460},
		}
			--[12]  = {script_name = "gb_casino_heist", minigame_local = }, --Global_2737317
			--[12]  = {script_name = "gb_casino", minigame_local = }, --Global_2737317
			--[12]  = {script_name = "gb_gangops", minigame_local = }, --Global_2737317
			--[12]  = {script_name = "gb_gunrunning", minigame_local = }, --Global_2737317
			--[12]  = {script_name = "gb_infiltration", minigame_local = }, --Global_2737317
			--[12]  = {script_name = "gb_smuggler", minigame_local = }, --Global_2737317
			--[0]  = {script_name = "business_battles", minigame_local = }, --Global_2737317
	
		for i = 1, 13 do
			if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat(minigamelocaltable[i].script_name)) ~= 0 then
				minigame_tmp_v = locals_v_get_int(SupportVersion, minigamelocaltable[i].script_name, minigamelocaltable[i].minigame_local) --3274 -- WINBRUTE 
				if (minigame_tmp_v & (1 << 9)) == 0 then
					minigame_tmp_v = minigame_tmp_v ~ (1 << 9)
					locals_v_set_int(SupportVersion, minigamelocaltable[i].script_name, minigamelocaltable[i].minigame_local, minigame_tmp_v)
				end
			end
			if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat(minigamelocaltable[i].script_name)) ~= 0 then
				minigame_tmp_v = locals_v_get_int(SupportVersion, minigamelocaltable[i].script_name, minigamelocaltable[i].minigame_local) --3274 -- WINIP 
				if (minigame_tmp_v & (1 << 18)) == 0 then
					minigame_tmp_v = minigame_tmp_v ~ (1 << 18)
					locals_v_set_int(SupportVersion, minigamelocaltable[i].script_name, minigamelocaltable[i].minigame_local, minigame_tmp_v)
				end
			end
			if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat(minigamelocaltable[i].script_name)) ~= 0 then
				minigame_tmp_v = locals_v_get_int(SupportVersion, minigamelocaltable[i].script_name, minigamelocaltable[i].minigame_local) --3274 --  --Biolab ?????????? ???? --"Hack_Success", "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
				if (minigame_tmp_v & (1 << 26)) == 0 then
					minigame_tmp_v = minigame_tmp_v ~ (1 << 26)
					locals_v_set_int(SupportVersion, minigamelocaltable[i].script_name, minigamelocaltable[i].minigame_local, minigame_tmp_v)
				end
			end
			if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat(minigamelocaltable[i].script_name)) ~= 0 then
				minigame_tmp_v = locals_v_get_int(SupportVersion, minigamelocaltable[i].script_name, minigamelocaltable[i].minigame_local) --3274 --  --Biolab ?????????? ???? --"Hack_Success", "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
				if (minigame_tmp_v & (1 << 28)) == 0 then
					minigame_tmp_v = minigame_tmp_v ~ (1 << 28)
					locals_v_set_int(SupportVersion, minigamelocaltable[i].script_name, minigamelocaltable[i].minigame_local, minigame_tmp_v)
				end
			end
		end
	
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_mission_controller")) ~= 0 then --patch for WINIP
			locals_v_set_int(SupportVersion, "fm_mission_controller", 142 , 0)
			locals_v_set_int(SupportVersion, "fm_mission_controller", 143 , 0)
			locals_v_set_int(SupportVersion, "fm_mission_controller", 158 , 7)
		end
	
		minigame_tmp_v2 = globals.get_int(2737663)
		if (minigame_tmp_v2 & (1 << 9)) == 0 then
			minigame_tmp_v2 = minigame_tmp_v2 ~ (1 << 9)
		end
		if (minigame_tmp_v2 & (1 << 18)) == 0 then
			minigame_tmp_v2 = minigame_tmp_v2 ~ (1 << 18)
		end
		if (minigame_tmp_v2 & (1 << 26)) == 0 then
			minigame_tmp_v2 = minigame_tmp_v2 ~ (1 << 26)
		end
		globals.set_int(2737663, minigame_tmp_v2)
		
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_content_stash_house")) ~= 0 then --??????
			locals_v_set_int(SupportVersion, "fm_content_stash_house", 119 + 1 , 1)
		end
	end
	if ImGui.IsItemHovered() then
		ImGui.SetTooltip("Skip all the hacking, fleeca and casino drilling, cayo glass cutting and drainage cut")
	end
	ImGui.SameLine()
	RemoveAllCCTV = ImGui.Checkbox("Remove All CCTV", RemoveAllCCTV)
	
	ImGui.Separator()
	
	if ImGui.BeginTabBar("GoldenGets Menu Tabs") then
		--if NETWORK.NETWORK_IS_SESSION_STARTED() then
			if ImGui.BeginTabItem("ATM") then
				if NETWORK.NETWORK_IS_SESSION_STARTED() then
					ImGui.Text("$Wallet: " .. transactionManager:GetWalletBalance())
					
					if ImGui.Button("Deposit All Money To $Bank") then
						character = transactionManager:GetCharacter()
						wallet = transactionManager:GetWalletBalance()
						NETSHOPPING.NET_GAMESERVER_TRANSFER_WALLET_TO_BANK(character, wallet)
					end
					
					WalletValue, drag = ImGui.DragInt("##WalletValue", WalletValue, 1, 0, transactionManager:GetWalletBalance())
					if ImGui.Button("Deposit Amount") then
						character = transactionManager:GetCharacter()
						NETSHOPPING.NET_GAMESERVER_TRANSFER_WALLET_TO_BANK(character, WalletValue)
					end
					
					ImGui.Text("$Bank: " .. transactionManager:GetBankBalance())
					
					if ImGui.Button("Withdraw All Money To $Wallet") then
						character = transactionManager:GetCharacter()
						bank = transactionManager:GetBankBalance()
						NETSHOPPING.NET_GAMESERVER_TRANSFER_BANK_TO_WALLET(character, bank)
					end
					
					BankValue, drag = ImGui.DragInt("##BankValue", BankValue, 1, 0, transactionManager:GetBankBalance())
					if ImGui.Button("Withdraw Amount") then
						character = transactionManager:GetCharacter()
						NETSHOPPING.NET_GAMESERVER_TRANSFER_BANK_TO_WALLET(character, BankValue)
					end
				else
					ImGui.Text("\nUnavailable in Single Player.\n\n")
				end
				ImGui.EndTabItem()
			end
			
			if ImGui.BeginTabItem("Computer") then
				if NETWORK.NETWORK_IS_SESSION_STARTED() then
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("You must register as a boss, otherwise some mission will not work. If you get a\nblackscreen on exterior, go to Settings > Debug > Misc > 'Remove Black Screen'")
					end
					
					if ImGui.Button("Start Master Control Terminal##Computer") then
						script.run_in_fiber(function (script)
							start_script('appArcadeBusinessHub', 1424, script)
						end)
					end
					
					if ImGui.TreeNode("MC Business Computer") then
						if ImGui.Button("Start Clubhouse Computer##Computer") then
							script.run_in_fiber(function (script)
								globals.set_int(1962105)
								start_script('appBikerBusiness', 4592, script)
							end)
						end
						
						if ImGui.Button("Start Cocaine Lockup Computer##Computer") then
							script.run_in_fiber(function (script)
								globals.set_int(global_computer_type, 8)
								start_script('appBikerBusiness', 4592, script)
							end)
						end
						
						if ImGui.Button("Start Methamphetamine Lab Computer##Computer") then
							script.run_in_fiber(function (script)
								globals.set_int(global_computer_type, 6)
								start_script('appBikerBusiness', 4592, script)
							end)
						end
						
						if ImGui.Button("Start Weed Farm Computer##Computer") then
							script.run_in_fiber(function (script)
								globals.set_int(global_computer_type, 7)
								start_script('appBikerBusiness', 4592, script)
							end)
						end
						
						if ImGui.Button("Start Counterfeit Cash Factory Computer##Computer") then
							script.run_in_fiber(function (script)
								globals.set_int(global_computer_type, 9)
								start_script('appBikerBusiness', 4592, script)
							end)
						end
						
						if ImGui.Button("Start Document Forgery Computer##Computer") then
							script.run_in_fiber(function (script)
								globals.set_int(global_computer_type, 10)
								start_script('appBikerBusiness', 4592, script)
							end)
						end
						
						ImGui.Separator()
						
						ImGui.TreePop()
					end
					
					if ImGui.Button("Start Bunker Desktop Computer##Computer") then
						script.run_in_fiber(function (script)
							start_script('appBunkerBusiness', 1424, script)
						end)
					end
					
					if ImGui.Button("Start Hangar Desktop Computer##Computer") then
						script.run_in_fiber(function (script)
							start_script('appSmuggler', 4592, script)
						end)
					end
					
					if ImGui.Button("Start Nightclub Computer##Computer") then
						script.run_in_fiber(function (script)
							start_script('appBusinessHub', 1424, script)
						end)
					end
					
					if ImGui.Button("Start Terrorbyte Touchscreen Computer##Computer") then
						script.run_in_fiber(function (script)
							start_script('appHackerTruck', 4592, script)
						end)
					end
					
					if ImGui.Button("Start Agency Network Computer##Computer") then
						script.run_in_fiber(function (script)
							start_script('appFixerSecurity', 4592, script)
						end)
					end
					
					if ImGui.Button("Start Avengers Operations Terminal##Computer") then
						script.run_in_fiber(function (script)
							start_script('appAvengerOperations', 4592, script)
						end)
					end
					
					if ImGui.Button("Start Bail Office Enforcement System##Computer") then
						script.run_in_fiber(function (script)
							start_script('appBailOffice', 4592, script)
						end)
					end
				else
					ImGui.Text("\nUnavailable in Single Player.\n\n")
				end
				ImGui.EndTabItem()
			end
			
			if ImGui.BeginTabItem("Cooldowns") then
				if NETWORK.NETWORK_IS_SESSION_STARTED() then
					All_Cooldowns = AllCooldowns
					AllCooldowns = ImGui.Checkbox("All Cooldowns##AllCooldowns", AllCooldowns)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Enable/Disable all 'Cooldowns'")
					end
					if AllCooldowns ~= All_Cooldowns then
						AllJobCooldowns = AllCooldowns
						VIPMCWorkChallengeCooldown = AllCooldowns
						MCBikerBarMissionCooldown = AllCooldowns
						TerrorbyteClientJobCooldown = AllCooldowns
						CasinoWorkCooldown = AllCooldowns
						AgencyCooldown = AllCooldowns
						DaxWorkCooldown = AllCooldowns
						DispatchWorkCooldown = AllCooldowns
						AllBusinessCooldowns = AllCooldowns
						SpecialCargoCooldown = AllCooldowns
						SpecialCargoSourceCooldown = AllCooldowns
						SpecialCargoSellCooldown = AllCooldowns
						VehicleCargoCooldown = AllCooldowns
						VehicleCargoSourceCooldown = AllCooldowns
						VehicleCargoSellCooldown = AllCooldowns
						HangarCargoCooldown = AllCooldowns
						HangarCargoSourceCooldown = AllCooldowns
						HangarCargoSellCooldown = AllCooldowns
						HangarCargoDuration = AllCooldowns
						NightclubCooldown = AllCooldowns
						AllOtherCooldowns = AllCooldowns
						RequestVehicleCooldown = AllCooldowns
						ServiceVehiclesCooldown = AllCooldowns
						CEOAbilitiesCooldown = AllCooldowns
						CEOVehiclesCooldown = AllCooldowns
						SpinLuckyWheelCooldown = AllCooldowns
						AllMiscCooldowns = AllCooldowns
						MCClientVehicleCooldown = AllCooldowns
						BunkerCooldown = AllCooldowns
						ArenaWheelCooldown = AllCooldowns
						NightclubTroublemakerCooldown = AllCooldowns
						AutoShopClientVehicleCooldown = AllCooldowns
						AllCooldowns28 = true
					else
						AllCooldowns28 = false
					end
					if not AllCooldowns28 then
						AllCooldowns = AllJobCooldowns
						and VIPMCWorkChallengeCooldown
						and MCBikerBarMissionCooldown
						and TerrorbyteClientJobCooldown
						and CasinoWorkCooldown
						and AgencyCooldown
						and DaxWorkCooldown
						and DispatchWorkCooldown
						and AllBusinessCooldowns
						and SpecialCargoCooldown
						and SpecialCargoSourceCooldown
						and SpecialCargoSellCooldown
						and VehicleCargoCooldown
						and VehicleCargoSourceCooldown
						and VehicleCargoSellCooldown
						and HangarCargoCooldown
						and HangarCargoSourceCooldown
						and HangarCargoSellCooldown
						and HangarCargoDuration
						and NightclubCooldown
						and AllOtherCooldowns
						and RequestVehicleCooldown
						and ServiceVehiclesCooldown
						and CEOAbilitiesCooldown
						and CEOVehiclesCooldown
						and SpinLuckyWheelCooldown
						and AllMiscCooldowns
						and MCClientVehicleCooldown
						and BunkerCooldown
						and ArenaWheelCooldown
						and NightclubTroublemakerCooldown
						and AutoShopClientVehicleCooldown
					end
					
					All_Job_Cooldowns = AllJobCooldowns
					AllJobCooldowns = ImGui.Checkbox("All##AllJobCooldowns", AllJobCooldowns)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Enable/Disable all options for 'Remove Job Cooldowns'")
					end
					if AllJobCooldowns ~= All_Job_Cooldowns then
						VIPMCWorkChallengeCooldown = AllJobCooldowns
						MCBikerBarMissionCooldown = AllJobCooldowns
						TerrorbyteClientJobCooldown = AllJobCooldowns
						CasinoWorkCooldown = AllJobCooldowns
						AgencyCooldown = AllJobCooldowns
						DaxWorkCooldown = AllJobCooldowns
						DispatchWorkCooldown = AllJobCooldowns
						AllJobCooldowns28 = true
					else
						AllJobCooldowns28 = false
					end
					if not AllJobCooldowns28 then
						AllJobCooldowns = VIPMCWorkChallengeCooldown
						and MCBikerBarMissionCooldown
						and TerrorbyteClientJobCooldown
						and CasinoWorkCooldown
						and AgencyCooldown
						and DaxWorkCooldown
						and DispatchWorkCooldown
					end
					ImGui.SameLine()
					if ImGui.TreeNode("Remove Job Cooldowns") then
						VIPMCWorkChallengeCooldown = ImGui.Checkbox("VIP/MC Work & Challenge##VIPMCWorkChallengeCooldown", VIPMCWorkChallengeCooldown)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Remove cooldown vip/mc work and challenge on interaction menu")
						end
						
						MCBikerBarMissionCooldown = ImGui.Checkbox("MC Biker Bar Mission##MCBikerBarMissionCooldown", MCBikerBarMissionCooldown)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Remove short cooldown clubhouse mission")
						end
						
						TerrorbyteClientJobCooldown = ImGui.Checkbox("Terrorbyte Client Job##TerrorbyteClientJobCooldown", TerrorbyteClientJobCooldown)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Remove cooldown client jobs")
						end
						
						CasinoWorkCooldown = ImGui.Checkbox("Casino Work##CasinoWorkCooldown", CasinoWorkCooldown)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Remove short cooldown casino work and request a job to Ms. Baker")
						end
						
						AgencyCooldown = ImGui.Checkbox("Agency##AgencyCooldown", AgencyCooldown)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Remove cooldown security contract, vip contract and payphone hit assassination.\nFor vip contract, you must be outside agency until called by Franklin or Imani")
						end
						
						DaxWorkCooldown = ImGui.Checkbox("Dax Work##DaxWorkCooldown", DaxWorkCooldown)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Remove cooldown fooligan job after request work to Dax")
						end
						
						DispatchWorkCooldown = ImGui.Checkbox("Dispatch Work##DispatchWorkCooldown", DispatchWorkCooldown)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Remove short cooldown dispatch work after request received from Vincent")
						end
						
						ImGui.Separator()
						
						ImGui.TreePop()
					end
					
					All_Business_Cooldowns = AllBusinessCooldowns
					AllBusinessCooldowns = ImGui.Checkbox("All##AllBusinessCooldowns", AllBusinessCooldowns)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Enable/Disable all options for 'Remove Business Cooldowns'")
					end
					if AllBusinessCooldowns ~= All_Business_Cooldowns then
						SpecialCargoCooldown = AllBusinessCooldowns
						SpecialCargoSourceCooldown = AllBusinessCooldowns
						SpecialCargoSellCooldown = AllBusinessCooldowns
						VehicleCargoCooldown = AllBusinessCooldowns
						VehicleCargoSourceCooldown = AllBusinessCooldowns
						VehicleCargoSellCooldown = AllBusinessCooldowns
						HangarCargoCooldown = AllBusinessCooldowns
						HangarCargoSourceCooldown = AllBusinessCooldowns
						HangarCargoSellCooldown = AllBusinessCooldowns
						HangarCargoDuration = AllBusinessCooldowns
						NightclubCooldown = AllBusinessCooldowns
						AllBusinessCooldowns28 = true
					else
						AllBusinessCooldowns28 = false
					end
					if not AllBusinessCooldowns28 then
						AllBusinessCooldowns = SpecialCargoCooldown
						and SpecialCargoSourceCooldown
						and SpecialCargoSellCooldown
						and VehicleCargoCooldown
						and VehicleCargoSourceCooldown
						and VehicleCargoSellCooldown
						and HangarCargoCooldown
						and HangarCargoSourceCooldown
						and HangarCargoSellCooldown
						and HangarCargoDuration
						and NightclubCooldown
					end
					ImGui.SameLine()
					if ImGui.TreeNode("Remove Business Cooldowns") then
						Special_Cargo_Cooldown = SpecialCargoCooldown
						SpecialCargoCooldown = ImGui.Checkbox("Special Cargo##SpecialCargoCooldown", SpecialCargoCooldown)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Remove cooldown source/sell crates")
						end
						if SpecialCargoCooldown ~= Special_Cargo_Cooldown then
							SpecialCargoSourceCooldown = SpecialCargoCooldown
							SpecialCargoSellCooldown = SpecialCargoCooldown
							SpecialCargoCooldownSS = true
						else
							SpecialCargoCooldownSS = false
						end
						if not SpecialCargoCooldownSS then
							SpecialCargoCooldown = SpecialCargoSourceCooldown
							and SpecialCargoSellCooldown
						end
						
						Vehicle_Cargo_Cooldown = VehicleCargoCooldown
						VehicleCargoCooldown = ImGui.Checkbox("Vehicle Cargo##VehicleCargoCooldown", VehicleCargoCooldown)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Remove cooldown import/export vehicle cargo")
						end
						if VehicleCargoCooldown ~= Vehicle_Cargo_Cooldown then
							VehicleCargoSourceCooldown = VehicleCargoCooldown
							VehicleCargoSellCooldown = VehicleCargoCooldown
							VehicleCargoCooldownSS = true
						else
							VehicleCargoCooldownSS = false
						end
						if not VehicleCargoCooldownSS then
							VehicleCargoCooldown = VehicleCargoSourceCooldown
							and VehicleCargoSellCooldown
						end
						
						Hangar_Cargo_Cooldown = HangarCargoCooldown
						HangarCargoCooldown = ImGui.Checkbox("Hangar Cargo##HangarCargoCooldown", HangarCargoCooldown)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Remove cooldown source/sell hangar crates")
						end
						if HangarCargoCooldown ~= Hangar_Cargo_Cooldown then
							HangarCargoSourceCooldown = HangarCargoCooldown
							HangarCargoSellCooldown = HangarCargoCooldown
							HangarCargoCooldownSS = true
						else
							HangarCargoCooldownSS = false
						end
						if not HangarCargoCooldownSS then
							HangarCargoCooldown = HangarCargoSourceCooldown
							and HangarCargoSellCooldown
						end
						ImGui.SameLine()
						HangarCargoDuration = ImGui.Checkbox("Extend Timers##HangarCargoDuration", HangarCargoDuration)
						
						NightclubCooldown = ImGui.Checkbox("Nightclub##NightclubCooldown", NightclubCooldown)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Remove cooldown promote club, source/sell goods")
						end
						
						ImGui.Separator()
						
						ImGui.TreePop()
					end
					
					All_Other_Cooldowns = AllOtherCooldowns
					AllOtherCooldowns = ImGui.Checkbox("All##AllOtherCooldowns", AllOtherCooldowns)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Enable/Disable all options for 'Remove Other Cooldowns'")
					end
					if AllOtherCooldowns ~= All_Other_Cooldowns then
						RequestVehicleCooldown = AllOtherCooldowns
						ServiceVehiclesCooldown = AllOtherCooldowns
						CEOAbilitiesCooldown = AllOtherCooldowns
						CEOVehiclesCooldown = AllOtherCooldowns
						SpinLuckyWheelCooldown = AllOtherCooldowns
						AllOtherCooldowns28 = true
					else
						AllOtherCooldowns28 = false
					end
					if not AllOtherCooldowns28 then
						AllOtherCooldowns = RequestVehicleCooldown
						and ServiceVehiclesCooldown
						and CEOAbilitiesCooldown
						and CEOVehiclesCooldown
						and SpinLuckyWheelCooldown
					end
					ImGui.SameLine()
					if ImGui.TreeNode("Remove Other Cooldowns") then
						RequestVehicleCooldown = ImGui.Checkbox("Request Vehicle##RequestVehicleCooldown", RequestVehicleCooldown)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Activate before request. Remove short cooldown\nafter request a vehicle")
						end
						ImGui.SameLine()
						ServiceVehiclesCooldown = ImGui.Checkbox("Service Vehicles##ServiceVehiclesCooldown", ServiceVehiclesCooldown)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Activate before request. Remove short cooldown\nrequest a service vehicles on interaction menu")
						end
						
						CEOAbilitiesCooldown = ImGui.Checkbox("CEO Abilities##CEOAbilitiesCooldown", CEOAbilitiesCooldown)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Remove short cooldown after request a ceo abilities on interaction menu")
						end
						ImGui.SameLine()
						CEOVehiclesCooldown = ImGui.Checkbox("CEO Vehicles##CEOVehiclesCooldown", CEOVehiclesCooldown)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Remove short cooldown after request a ceo vehicles on interaction menu")
						end
						
						SpinLuckyWheelCooldown = ImGui.Checkbox("Spin Lucky Wheel##SpinLuckyWheelCooldown", SpinLuckyWheelCooldown)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Remove cooldown spin lucky wheel once per day at diamond casino")
						end
						
						ImGui.Separator()
						
						ImGui.TreePop()
					end
									
					All_Misc_Cooldowns = AllMiscCooldowns
					AllMiscCooldowns = ImGui.Checkbox("All##AllMiscCooldowns", AllMiscCooldowns)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Enable/Disable all options for 'Misc Cooldowns'")
					end
					if AllMiscCooldowns ~= All_Misc_Cooldowns then
						MCClientVehicleCooldown = AllMiscCooldowns
						BunkerCooldown = AllMiscCooldowns
						ArenaWheelCooldown = AllMiscCooldowns
						NightclubTroublemakerCooldown = AllMiscCooldowns
						AutoShopClientVehicleCooldown = AllMiscCooldowns
						AllMiscCooldowns28 = true
					else
						AllMiscCooldowns28 = false
					end
					if not AllMiscCooldowns28 then
						AllMiscCooldowns = MCClientVehicleCooldown
						and BunkerCooldown
						and ArenaWheelCooldown
						and NightclubTroublemakerCooldown
						and AutoShopClientVehicleCooldown
					end
					ImGui.SameLine()
					if ImGui.TreeNode("Misc Cooldowns") then
						MCClientVehicleCooldown = ImGui.Checkbox("MC Client Vehicle##MCClientVehicleCooldown", MCClientVehicleCooldown)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Mc client is vehicle always come")
						end
						
						BunkerCooldown = ImGui.Checkbox("Bunker Deliver Ammunation##BunkerCooldown", BunkerCooldown)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Bunker delivery ammunation is always ready")
						end
						
						ArenaWheelCooldown = ImGui.Checkbox("Arena Spin Wheel##ArenaWheelCooldown", ArenaWheelCooldown)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Remove short cooldown after spin arena wheel")
						end
						
						NightclubTroublemakerCooldown = ImGui.Checkbox("Nightclub Troublemaker##NightclubTroublemakerCooldown", NightclubTroublemakerCooldown)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Troublemakers are always present in your nightclub")
						end
						
						AutoShopClientVehicleCooldown = ImGui.Checkbox("Auto Shop Client Vehicle##AutoShopClientVehicleCooldown", AutoShopClientVehicleCooldown)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Auto shop client is vehicle always come")
						end
						
						ImGui.Separator()
						
						ImGui.TreePop()
					end
				else
					ImGui.Text("\nUnavailable in Single Player.\n\n")
				end
				ImGui.EndTabItem()
			end
		--end
		
		if ImGui.BeginTabItem("Settings") then
			PhoneAnimations = ImGui.Checkbox("Enable Phone Animations", PhoneAnimations)
			if ImGui.IsItemHovered() then
				ImGui.SetTooltip("Makes so player's ped actually uses phone like in singleplayer")
			end
			if PhoneAnimations then
				restore_sp_funcs = ImGui.Checkbox("Restore Singleplayer Functions", restore_sp_funcs)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Recreates singleplayer's phone functions like finger moving, phone leaning in email app etc.")
				end
			end
			
			ImGui.Separator()
			
			ForceUnsupportedVersion = ImGui.Checkbox("Force Unsupported Version", ForceUnsupportedVersion)
			if ImGui.IsItemHovered() then
				ImGui.SetTooltip("This will undo some disabled scripts, as they are outdated with\nthe current game version.")
			end
			ImGui.EndTabItem()
		end
		ImGui.EndTabBar()
	end
end)

AllCCTV = {
	joaat("prop_cctv_cam_01a"),
	joaat("prop_cctv_cam_01b"),
	joaat("prop_cctv_cam_02a"),
	joaat("prop_cctv_cam_03a"),
	joaat("prop_cctv_cam_04a"),
	joaat("prop_cctv_cam_04c"),
	joaat("prop_cctv_cam_05a"),
	joaat("prop_cctv_cam_06a"),
	joaat("prop_cctv_cam_07a"),
	joaat("prop_cs_cctv"),
	joaat("p_cctv_s"),
	joaat("hei_prop_bank_cctv_01"),
	joaat("hei_prop_bank_cctv_02"),
	joaat("ch_prop_ch_cctv_cam_02a"),
	joaat("xm_prop_x17_server_farm_cctv_01"),
	joaat("prop_cctv_pole_02"),
	joaat("prop_cctv_pole_03"),
	joaat("prop_cctv_pole_04"),
	joaat("prop_cctv_pole_01a"),
	joaat("h4_prop_h4_cctv_pole_04"),
}

auto_ceo_mc = false
RemoveAllCCTV = false

script.register_looped("GoldenGets Menu", function()
	--if not util.is_session_started() then return end
	--
	--local CEOLabels = {
	--	"HIP_HELP_BBOSS",
	--	"HIP_HELP_BBOSS2",
	--	"HPBOARD_REG",
	--	"HPBOARD_REGB",
	--	"HT_NOT_BOSS",
	--	"HUB_PC_BLCK",
	--	"NHPG_HELP_BBOSS",
	--	"OFF_COMP_REG",
	--	"TRUCK_PC_BLCK",
	--	"TUN_HELP_BBOSS",
	--	"BUNK_PC_BLCK",
	--	"CH_FINALE_REG",
	--	"CH_PREP_REG",
	--	"CH_SETUP_REG",
	--	"FHQ_PC_BLCK",
	--	"HANG_PC_BLCK",
	--	"HFBOARD_REG",
	--	"HIBOARD_REG",
	--	"HIBOARD_REGB",
	--	"MP_OFF_LAP_1",
	--	"MP_OFF_LAP_PC",
	--	"OFF_COMP_REG",
	--	"ARC_PC_BLCK",
	--	"ARC_HT_0",
	--	"ARC_HT_0B",
	--	"ACID_SLL_HLP2",
	--	"HRBOARD_REG",
	--	"HRBOARD_REGB",
	--}
	--for _, label in pairs(CEOLabels) do
	--	if IS_HELP_MSG_DISPLAYED(label) then
	--		if players.get_boss(players.user()) == -1 then menu.trigger_commands("ceostart") end
	--		if players.get_org_type(players.user()) == 1 then menu.trigger_commands("ceotomc") end
	--		gui.show_message("Seems like you need to be a CEO. So, Heist Control made you become CEO.")
	--	end
	--end
	--
	--local MCLabels = {
	--	"CLBHBKRREG",
	--	"ARC_HT_1",
	--	"ARC_HT_1B",
	--}
	--for _, label in pairs(MCLabels) do
	--	if IS_HELP_MSG_DISPLAYED(label) then
	--		if players.get_boss(players.user()) == -1 then menu.trigger_commands("mcstart") end
	--		if players.get_org_type(players.user()) == 0 then menu.trigger_commands("ceotomc") end
	--		gui.show_message("Seems like you need to be a MC President. So, Heist Control made you become MC President.")
	--	end
	--end
	
    if RemoveAllCCTV then
        for _, ent in pairs(entities.get_all_objects_as_handles()) do
            for __, cam in pairs(AllCCTV) do
                if ENTITY.GET_ENTITY_MODEL(ent) == cam then
                    request_control(ent)
                    delete_entity(ent)               
                end
            end
        end
    end
end)

AllCooldowns = false
VIPMCWorkChallengeCooldown = false
MCBikerBarMissionCooldown = false
TerrorbyteClientJobCooldown = false
CasinoWorkCooldown = false
AgencyCooldown = false
DaxWorkCooldown = false
DispatchWorkCooldown = false
AllBusinessCooldowns = false
SpecialCargoCooldown = false
VehicleCargoCooldown = false
HangarCargoCooldown = false
HangarCargoDuration = false
NightclubCooldown = false
AllOtherCooldowns = false
RequestVehicleCooldown = false
ServiceVehiclesCooldown = false
CEOAbilitiesCooldown = false
CEOVehiclesCooldown = false
SpinLuckyWheelCooldown = false
AllMiscCooldowns = false
MCClientVehicleCooldown = false
BunkerCooldown = false
ArenaWheelCooldown = false
NightclubTroublemakerCooldown = false
AutoShopClientVehicleCooldown = false

script.register_looped("GoldenGets Cooldowns", function()
	if VIPMCWorkChallengeCooldown then
		if tunables.get_int("GB_COOLDOWN_UNTIL_NEXT_BOSS_WORK") ~= 0 then -- VIP Work Cooldown *(300000ms)*
			tunables.set_int("GB_COOLDOWN_UNTIL_NEXT_BOSS_WORK", 0)
		end
		if tunables.get_int("GB_COOLDOWN_UNTIL_NEXT_BOSS_CHALLENGE") ~= 0 then -- VIP Challenge Cooldown *(180000ms)*
			tunables.set_int("GB_COOLDOWN_UNTIL_NEXT_BOSS_CHALLENGE", 0)
		end
		if tunables.get_int("GB_BECOME_BOSS_COOLDOWN") ~= 0 then -- *(43200ms)*
			tunables.set_int("GB_BECOME_BOSS_COOLDOWN", 0)
		end
		if tunables.get_int("GB_ASSAULT_COOLDOWN") ~= 0 then -- *(1200000ms)*
			tunables.set_int("GB_ASSAULT_COOLDOWN", 0)
		end
		if tunables.get_int("GB_BELLY_COOLDOWN") ~= 0 then -- *(600000ms)*
			tunables.set_int("GB_BELLY_COOLDOWN", 0)
		end
		if tunables.get_int("GB_BOSSVSBOSSDM_COOLDOWN") ~= 0 then -- *(1800000ms)*
			tunables.set_int("GB_BOSSVSBOSSDM_COOLDOWN", 0)
		end
		if tunables.get_int("GB_CARJACKING_COOLDOWN") ~= 0 then -- *(600000ms)*
			tunables.set_int("GB_CARJACKING_COOLDOWN", 0)
		end
		if tunables.get_int("GB_FINDERS_KEEPERS_COOLDOWN") ~= 0 then -- *(600000ms)*
			tunables.set_int("GB_FINDERS_KEEPERS_COOLDOWN", 0)
		end
		if tunables.get_int("GB_HUNTBOSS_COOLDOWN") ~= 0 then -- *(600000ms)*
			tunables.set_int("GB_HUNTBOSS_COOLDOWN", 0)
		end
		if tunables.get_int("GB_MOSTWANTED_COOLDOWN") ~= 0 then -- *(600000ms)*
			tunables.set_int("GB_MOSTWANTED_COOLDOWN", 0)
		end
		if tunables.get_int("GB_POINTTOPOINT_COOLDOWN") ~= 0 then -- *(600000ms)*
			tunables.set_int("GB_POINTTOPOINT_COOLDOWN", 0)
		end
		if tunables.get_int("GB_PROTECTIONRACKET_COOLDOWN") ~= 0 then -- *(600000ms)*
			tunables.set_int("GB_PROTECTIONRACKET_COOLDOWN", 0)
		end
		if tunables.get_int("GB_SIGHTSEER_COOLDOWN") ~= 0 then -- *(600000ms)*
			tunables.set_int("GB_SIGHTSEER_COOLDOWN", 0)
		end
		if tunables.get_int("GB_SMASHANDGRAB_COOLDOWN") ~= 0 then -- *(600000ms)*
			tunables.set_int("GB_SMASHANDGRAB_COOLDOWN", 0)
		end
		if tunables.get_int("GB_YACHTATTACK_COOLDOWN") ~= 0 then -- *(3600000ms)*
			tunables.set_int("GB_YACHTATTACK_COOLDOWN", 0)
		end
		if tunables.get_int("GB_SMASHANDGRAB_STORE_COOLDOWN") ~= 0 then -- *(120000ms)*
			tunables.set_int("GB_SMASHANDGRAB_STORE_COOLDOWN", 0)
		end
		if tunables.get_int("EXEC_CASHING_COOLDOWN") ~= 0 then -- *(600000ms)*
			tunables.set_int("EXEC_CASHING_COOLDOWN", 0)
		end
		if tunables.get_int("EXEC_SALVAGE_COOLDOWN") ~= 0 then -- *(600000ms)*
			tunables.set_int("EXEC_SALVAGE_COOLDOWN", 0)
		end
		if tunables.get_int("EXEC_AIRFREIGHT_COOLDOWN") ~= 0 then -- *(600000ms)*
			tunables.set_int("EXEC_AIRFREIGHT_COOLDOWN", 0)
		end
		if tunables.get_int("EXEC_AIRFREIGHT_DISCONNECT_COOLDOWN") ~= 0 then -- *(30000ms)*
			tunables.set_int("EXEC_AIRFREIGHT_DISCONNECT_COOLDOWN", 0)
		end
		if tunables.get_int("EXEC_DESTROY_CONTRABAND_RATE_LIMITER_COOLDOWN") ~= 0 then -- *(2880ms)*
			tunables.set_int("EXEC_DESTROY_CONTRABAND_RATE_LIMITER_COOLDOWN", 0)
		end
		if tunables.get_int("EXEC_FGOODS_COOLDOWN") ~= 0 then -- *(600000ms)*
			tunables.set_int("EXEC_FGOODS_COOLDOWN", 0)
		end
		if tunables.get_int("EXEC_FGOODS_DISCONNECT_COOLDOWN") ~= 0 then -- *(30000ms)*
			tunables.set_int("EXEC_FGOODS_DISCONNECT_COOLDOWN", 0)
		end
		if tunables.get_int("EXEC_HEADHUNTER_COOLDOWN") ~= 0 then -- *(600000ms)*
			tunables.set_int("EXEC_HEADHUNTER_COOLDOWN", 0)
		end
		if tunables.get_int("IMPEXP_PLOWED_COOLDOWN") ~= 0 then -- *(3600000ms)*
			tunables.set_int("IMPEXP_PLOWED_COOLDOWN", 0)
		end
		if tunables.get_int("IMPEXP_FULLY_LOADED_COOLDOWN") ~= 0 then -- *(3600000ms)*
			tunables.set_int("IMPEXP_FULLY_LOADED_COOLDOWN", 0)
		end
		if tunables.get_int("IMPEXP_AMPHIBIOUS_ASSAULT_COOLDOWN") ~= 0 then -- *(1800000ms)*
			tunables.set_int("IMPEXP_AMPHIBIOUS_ASSAULT_COOLDOWN", 0)
		end
		if tunables.get_int("IMPEXP_TRANSPORTER_COOLDOWN") ~= 0 then -- *(1800000ms)*
			tunables.set_int("IMPEXP_TRANSPORTER_COOLDOWN", 0)
		end
		if tunables.get_int("IMPEXP_FORTIFIED_COOLDOWN") ~= 0 then -- *(1800000ms)*
			tunables.set_int("IMPEXP_FORTIFIED_COOLDOWN", 0)
		end
		if tunables.get_int("IMPEXP_VELOCITY_COOLDOWN") ~= 0 then -- *(1800000ms)*
			tunables.set_int("IMPEXP_VELOCITY_COOLDOWN", 0)
		end
		if tunables.get_int("IMPEXP_RAMPED_UP_COOLDOWN") ~= 0 then -- *(3600000ms)*
			tunables.set_int("IMPEXP_RAMPED_UP_COOLDOWN", 0)
		end
		if tunables.get_int("IMPEXP_STOCKPILING_COOLDOWN") ~= 0 then -- *(1800000ms)*
			tunables.set_int("IMPEXP_STOCKPILING_COOLDOWN", 0)
		end
		if tunables.get_int("BIKER_CLUB_WORK_COOLDOWN_GLOBAL") ~= 0 then -- MC Club Work Cooldown *(180000ms)*
			tunables.set_int("BIKER_CLUB_WORK_COOLDOWN_GLOBAL", 0)
		end
		if tunables.get_int("BIKER_CHALLENGES_COOLDOWN_GLOBAL") ~= 0 then -- MC Challenge Cooldown -- null tunable
			tunables.set_int("BIKER_CHALLENGES_COOLDOWN_GLOBAL", 0)
		end
		if tunables.get_int("BIKER_CHALLENGES_COOLDOWN_SPECIFIC") ~= 0 then -- null tunable
			tunables.set_int("BIKER_CHALLENGES_COOLDOWN_SPECIFIC", 0)
		end
		if tunables.get_int("BIKER_DEATHMATCH_COOLDOWN") ~= 0 then -- null tunable
			tunables.set_int("BIKER_DEATHMATCH_COOLDOWN", 0)
		end
		if tunables.get_int("BIKER_JOUST_COOLDOWN") ~= 0 then -- null tunable
			tunables.set_int("BIKER_JOUST_COOLDOWN", 0)
		end
		if tunables.get_int("BIKER_STAND_YOUR_GROUND_COOLDOWN") ~= 0 then -- *(600000ms)*
			tunables.set_int("BIKER_STAND_YOUR_GROUND_COOLDOWN", 0)
		end
		if tunables.get_int("BIKER_CAGED_IN_COOLDOWN") ~= 0 then -- null tunable
			tunables.set_int("BIKER_CAGED_IN_COOLDOWN", 0)
		end
		if stats.get_int("MPPLY_VIPGAMEPLAYDISABLEDTIMER") ~= 0 then
			stats.set_int("MPPLY_VIPGAMEPLAYDISABLEDTIMER", 0)
		end
	else
		tunables.set_int("GB_COOLDOWN_UNTIL_NEXT_BOSS_WORK", 300000)
		tunables.set_int("GB_COOLDOWN_UNTIL_NEXT_BOSS_CHALLENGE", 180000)
		tunables.set_int("GB_BECOME_BOSS_COOLDOWN", 43200)
		tunables.set_int("GB_ASSAULT_COOLDOWN", 1200000)
		tunables.set_int("GB_BELLY_COOLDOWN", 600000)
		tunables.set_int("GB_BOSSVSBOSSDM_COOLDOWN", 1800000)
		tunables.set_int("GB_CARJACKING_COOLDOWN", 600000)
		tunables.set_int("GB_FINDERS_KEEPERS_COOLDOWN", 600000)
		tunables.set_int("GB_HUNTBOSS_COOLDOWN", 600000)
		tunables.set_int("GB_MOSTWANTED_COOLDOWN", 600000)
		tunables.set_int("GB_POINTTOPOINT_COOLDOWN", 600000)
		tunables.set_int("GB_PROTECTIONRACKET_COOLDOWN", 600000)
		tunables.set_int("GB_SIGHTSEER_COOLDOWN", 600000)
		tunables.set_int("GB_SMASHANDGRAB_COOLDOWN", 600000)
		tunables.set_int("GB_YACHTATTACK_COOLDOWN", 3600000)
		tunables.set_int("GB_SMASHANDGRAB_STORE_COOLDOWN", 120000)
		tunables.set_int("EXEC_CASHING_COOLDOWN", 600000)
		tunables.set_int("EXEC_SALVAGE_COOLDOWN", 600000)
		tunables.set_int("EXEC_AIRFREIGHT_COOLDOWN", 600000)
		tunables.set_int("EXEC_AIRFREIGHT_DISCONNECT_COOLDOWN", 30000)
		tunables.set_int("EXEC_DESTROY_CONTRABAND_RATE_LIMITER_COOLDOWN", 2880)
		tunables.set_int("EXEC_FGOODS_COOLDOWN", 600000)
		tunables.set_int("EXEC_FGOODS_DISCONNECT_COOLDOWN", 30000)
		tunables.set_int("EXEC_HEADHUNTER_COOLDOWN", 600000)
		tunables.set_int("IMPEXP_PLOWED_COOLDOWN", 3600000)
		tunables.set_int("IMPEXP_FULLY_LOADED_COOLDOWN", 3600000)
		tunables.set_int("IMPEXP_AMPHIBIOUS_ASSAULT_COOLDOWN", 1800000)
		tunables.set_int("IMPEXP_TRANSPORTER_COOLDOWN", 1800000)
		tunables.set_int("IMPEXP_FORTIFIED_COOLDOWN", 1800000)
		tunables.set_int("IMPEXP_VELOCITY_COOLDOWN", 1800000)
		tunables.set_int("IMPEXP_RAMPED_UP_COOLDOWN", 3600000)
		tunables.set_int("IMPEXP_STOCKPILING_COOLDOWN", 1800000)
		tunables.set_int("BIKER_CLUB_WORK_COOLDOWN_GLOBAL", 180000)
		--tunables.set_int("BIKER_CHALLENGES_COOLDOWN_GLOBAL", 0)
		--tunables.set_int("BIKER_CHALLENGES_COOLDOWN_SPECIFIC", 0)
		--tunables.set_int("BIKER_DEATHMATCH_COOLDOWN", 0)
		--tunables.set_int("BIKER_JOUST_COOLDOWN", 0)
		tunables.set_int("BIKER_STAND_YOUR_GROUND_COOLDOWN", 180000)
		--tunables.set_int("BIKER_CAGED_IN_COOLDOWN", 0)
		--stats.set_int("MPPLY_VIPGAMEPLAYDISABLEDTIMER", 0)
	end
	
	if MCBikerBarMissionCooldown then
		if tunables.get_int("BIKER_CLUBHOUSE_COOLDOWN") ~= 0 then -- null tunable
			tunables.set_int("BIKER_CLUBHOUSE_COOLDOWN", 0)
		end
		if tunables.get_int("BIKER_RESUPPLY_MISSION_COOLDOWN") ~= 0 then -- *(48)*
			tunables.set_int("BIKER_RESUPPLY_MISSION_COOLDOWN", 0)
		end
		if stats.get_int("MPX_BIKER_BAR_RESUPPLY_CD_POSIX") ~= -1 then
			stats.set_int("MPX_BIKER_BAR_RESUPPLY_CD_POSIX", -1)
		end
	else
		--tunables.set_int("BIKER_CLUBHOUSE_COOLDOWN", 0)
		tunables.set_int("BIKER_RESUPPLY_MISSION_COOLDOWN", 48)
		--stats.set_int("MPX_BIKER_BAR_RESUPPLY_CD_POSIX", 0)
	end
	
	if TerrorbyteClientJobCooldown then
		if tunables.get_int("BB_TERRORBYTE_MISSION_COOLDOWN_TIMER") ~= 0 then -- null tunable
			tunables.set_int("BB_TERRORBYTE_MISSION_COOLDOWN_TIMER", 0)
		end
		if tunables.get_int("BB_HACKER_WORK_CLIENT_WORK_GLOBAL_COOLDOWN") ~= 0 then -- Between Jobs *(300000ms)*
			tunables.set_int("BB_HACKER_WORK_CLIENT_WORK_GLOBAL_COOLDOWN", 0)
		end
		if tunables.get_int("BB_HACKER_WORK_CLIENT_WORK_COOLDOWN_BANK_JOB") ~= 0 then -- Robbery in Progress *(1800000ms)*
			tunables.set_int("BB_HACKER_WORK_CLIENT_WORK_COOLDOWN_BANK_JOB", 0)
		end
		if tunables.get_int("BB_HACKER_WORK_CLIENT_WORK_COOLDOWN_DATA_HACK") ~= 0 then -- Data Sweep *(1800000ms)*
			tunables.set_int("BB_HACKER_WORK_CLIENT_WORK_COOLDOWN_DATA_HACK", 0)
		end
		if tunables.get_int("BB_HACKER_WORK_CLIENT_WORK_COOLDOWN_INFILTRATION") ~= 0 then -- Targeted Data *(1800000ms)*
			tunables.set_int("BB_HACKER_WORK_CLIENT_WORK_COOLDOWN_INFILTRATION", 0)
		end
		if tunables.get_int("BB_HACKER_WORK_CLIENT_WORK_COOLDOWN_JEWEL_STORE_GRAB") ~= 0 then -- Diamond Shopping *(1800000ms)*
			tunables.set_int("BB_HACKER_WORK_CLIENT_WORK_COOLDOWN_JEWEL_STORE_GRAB", 0)
		end
		if tunables.get_int("BB_HACKER_WORK_HACKER_CHALLENGE_COOLDOWN_GLOBAL_COOLDOWN") ~= 0 then -- ??? *(180000ms)*
			tunables.set_int("BB_HACKER_WORK_HACKER_CHALLENGE_COOLDOWN_GLOBAL_COOLDOWN", 0)
		end
		if tunables.get_int("BB_HACKER_WORK_HACKER_CHALLENGE_COOLDOWN_SECURITY_VANS") ~= 0 then -- Collectors Pieces *(600000ms)*
			tunables.set_int("BB_HACKER_WORK_HACKER_CHALLENGE_COOLDOWN_SECURITY_VANS", 0)
		end
		if tunables.get_int("BB_HACKER_WORK_HACKER_CHALLENGE_COOLDOWN_TARGET_PURSUIT") ~= 0 then -- Deal Breaker *(600000ms)*
			tunables.set_int("BB_HACKER_WORK_HACKER_CHALLENGE_COOLDOWN_TARGET_PURSUIT", 0)
		end
	else
		--tunables.set_int("BB_TERRORBYTE_MISSION_COOLDOWN_TIMER", 0)
		tunables.set_int("BB_HACKER_WORK_CLIENT_WORK_GLOBAL_COOLDOWN", 300000)
		tunables.set_int("BB_HACKER_WORK_CLIENT_WORK_COOLDOWN_BANK_JOB", 1800000)
		tunables.set_int("BB_HACKER_WORK_CLIENT_WORK_COOLDOWN_DATA_HACK", 1800000)
		tunables.set_int("BB_HACKER_WORK_CLIENT_WORK_COOLDOWN_INFILTRATION", 1800000)
		tunables.set_int("BB_HACKER_WORK_CLIENT_WORK_COOLDOWN_JEWEL_STORE_GRAB", 1800000)
		tunables.set_int("BB_HACKER_WORK_HACKER_CHALLENGE_COOLDOWN_GLOBAL_COOLDOWN", 180000)
		tunables.set_int("BB_HACKER_WORK_HACKER_CHALLENGE_COOLDOWN_SECURITY_VANS", 600000)
		tunables.set_int("BB_HACKER_WORK_HACKER_CHALLENGE_COOLDOWN_TARGET_PURSUIT", 600000)
	end
	
	if CasinoWorkCooldown then
		if tunables.get_int("VC_WORK_COOLDOWN") ~= 0 then -- *(36000ms)*
			tunables.set_int("VC_WORK_COOLDOWN", 0)
		end
		if tunables.get_int("VC_WORK_REQUEST_COOLDOWN") ~= 0 then -- *(180000ms)*
			tunables.set_int("VC_WORK_REQUEST_COOLDOWN", 0)
		end
	else
		tunables.set_int("VC_WORK_COOLDOWN", 36000)
		tunables.set_int("VC_WORK_REQUEST_COOLDOWN", 180000)
	end
	
	if AgencyCooldown then
		if tunables.get_int("FIXER_STORY_COOLDOWN_POSIX") ~= 0 then -- *(1800ms)*
			tunables.set_int("FIXER_STORY_COOLDOWN_POSIX", 0)
		end
		if tunables.get_int("FIXER_SECURITY_CONTRACT_COOLDOWN_TIME") ~= 0 then -- *(300000ms)* Agency Security Contract
			tunables.set_int("FIXER_SECURITY_CONTRACT_COOLDOWN_TIME", 0)
		end
		if tunables.get_int("FRANKLIN_SUPPLY_STASH_COOLDOWN") ~= 0 then -- *(600000ms)*
			tunables.set_int("FRANKLIN_SUPPLY_STASH_COOLDOWN", 0)
		end
		if tunables.get_int("REQUEST_FRANKLIN_PAYPHONE_HIT_COOLDOWN") ~= 0 then -- *(600000ms)*
			tunables.set_int("REQUEST_FRANKLIN_PAYPHONE_HIT_COOLDOWN", 0)
		end
	else
		tunables.set_int("FIXER_STORY_COOLDOWN_POSIX", 1800)
		tunables.set_int("FIXER_SECURITY_CONTRACT_COOLDOWN_TIME", 300000)
		tunables.set_int("FRANKLIN_SUPPLY_STASH_COOLDOWN", 600000)
		tunables.set_int("REQUEST_FRANKLIN_PAYPHONE_HIT_COOLDOWN", 600000)
	end
	
	if DaxWorkCooldown then
		if stats.get_int("MPX_XM22JUGGALOWORKCDTIMER") ~= -1 then
			stats.set_int("MPX_XM22JUGGALOWORKCDTIMER", -1)
		end
		if tunables.get_int("JUGALLO_BOSS_WORK_COOLDOWN_TIME") ~= 0 then -- *(2880ms)*
			tunables.set_int("JUGALLO_BOSS_WORK_COOLDOWN_TIME", 0)
		end
	else
		--stats.set_int("MPX_XM22JUGGALOWORKCDTIMER", 0)
		tunables.set_int("JUGALLO_BOSS_WORK_COOLDOWN_TIME", 2880)
	end
	
	if DispatchWorkCooldown then
		if locals_v_get_int(SupportVersion, DWCl) ~= 0 then
			locals_v_set_int(SupportVersion, DWCl, 0)
		end
		if stats.get_int("MPX_DISPATCH_WORK_CALL_CD") ~= 0 then
			stats.set_int("MPX_DISPATCH_WORK_CALL_CD", 0)
		end
		if stats.get_int("MPX_DISPATCH_WORK_REQUEST_CD") ~= 0 then
			stats.set_int("MPX_DISPATCH_WORK_REQUEST_CD", 0)
		end
	else
		--locals_v_set_int(SupportVersion, DWCl, 0)
		--stats.set_int("MPX_DISPATCH_WORK_CALL_CD", 0)
		--stats.set_int("MPX_DISPATCH_WORK_REQUEST_CD", 0)
	end
	
	if HangarCargoDuration then
		if tunables.get_int("SMUG_STEAL_BEACON_GRAB_MISSION_DURATION") ~= 2000000000 then
			tunables.set_int("SMUG_STEAL_BEACON_GRAB_MISSION_DURATION", 2000000000)
		end
		if tunables.get_int("SMUG_STEAL_BLACKBOX_MISSION_DURATION") ~= 2000000000 then
			tunables.set_int("SMUG_STEAL_BLACKBOX_MISSION_DURATION", 2000000000)
		end
		if tunables.get_int("SMUG_STEAL_BOMBING_RUN_MISSION_DURATION") ~= 2000000000 then
			tunables.set_int("SMUG_STEAL_BOMBING_RUN_MISSION_DURATION", 2000000000)
		end
		if tunables.get_int("SMUG_STEAL_BOMB_BASE_MISSION_DURATION") ~= 2000000000 then
			tunables.set_int("SMUG_STEAL_BOMB_BASE_MISSION_DURATION", 2000000000)
		end
		if tunables.get_int("SMUG_STEAL_BOMB_ROOF_MISSION_DURATION") ~= 2000000000 then
			tunables.set_int("SMUG_STEAL_BOMB_ROOF_MISSION_DURATION", 2000000000)
		end
		if tunables.get_int("SMUG_STEAL_DOGFIGHT_MISSION_DURATION") ~= 2000000000 then
			tunables.set_int("SMUG_STEAL_DOGFIGHT_MISSION_DURATION", 2000000000)
		end
		if tunables.get_int("SMUG_STEAL_ESCORT_MISSION_DURATION") ~= 2000000000 then
			tunables.set_int("SMUG_STEAL_ESCORT_MISSION_DURATION", 2000000000)
		end
		if tunables.get_int("SMUG_STEAL_INFILTRATION_MISSION_DURATION") ~= 2000000000 then
			tunables.set_int("SMUG_STEAL_INFILTRATION_MISSION_DURATION", 2000000000)
		end
		if tunables.get_int("SMUG_STEAL_ROOF_ATTACK_MISSION_DURATION") ~= 2000000000 then
			tunables.set_int("SMUG_STEAL_ROOF_ATTACK_MISSION_DURATION", 2000000000)
		end
		if tunables.get_int("SMUG_STEAL_SPLASH_LANDING_MISSION_DURATION") ~= 2000000000 then
			tunables.set_int("SMUG_STEAL_SPLASH_LANDING_MISSION_DURATION", 2000000000)
		end
		if tunables.get_int("SMUG_STEAL_STEAL_AIRCRAFT_MISSION_DURATION") ~= 2000000000 then
			tunables.set_int("SMUG_STEAL_STEAL_AIRCRAFT_MISSION_DURATION", 2000000000)
		end
		if tunables.get_int("SMUG_STEAL_STUNT_PILOT_MISSION_DURATION") ~= 2000000000 then
			tunables.set_int("SMUG_STEAL_STUNT_PILOT_MISSION_DURATION", 2000000000)
		end
		if tunables.get_int("SMUG_STEAL_THERMAL_SCOPE_MISSION_DURATION") ~= 2000000000 then
			tunables.set_int("SMUG_STEAL_THERMAL_SCOPE_MISSION_DURATION", 2000000000)
		end
		if tunables.get_int("SMUG_STEAL_CARGO_PLANE_INTERCEPT_MISSION_DURATION") ~= 2000000000 then
			tunables.set_int("SMUG_STEAL_CARGO_PLANE_INTERCEPT_MISSION_DURATION", 2000000000)
		end
		if tunables.get_int("SMUG_STEAL_CARGO_PLANE_DELIVER_MISSION_DURATION") ~= 2000000000 then
			tunables.set_int("SMUG_STEAL_CARGO_PLANE_DELIVER_MISSION_DURATION", 2000000000)
		end
		if tunables.get_int("SMUG_SELL_AGILE_DELIVERY_MISSION_DURATION") ~= 2000000000 then
			tunables.set_int("SMUG_SELL_AGILE_DELIVERY_MISSION_DURATION", 2000000000)
		end
		if tunables.get_int("SMUG_SELL_AIR_DELIVERY_MISSION_DURATION") ~= 2000000000 then
			tunables.set_int("SMUG_SELL_AIR_DELIVERY_MISSION_DURATION", 2000000000)
		end
		if tunables.get_int("SMUG_SELL_AIR_POLICE_MISSION_DURATION") ~= 2000000000 then
			tunables.set_int("SMUG_SELL_AIR_POLICE_MISSION_DURATION", 2000000000)
		end
		--if tunables.get_int("SMUG_SELL_BOMB_ROOF_MISSION_DURATION") ~= 2000000000 then -- tunable not found
		--	tunables.set_int("SMUG_SELL_BOMB_ROOF_MISSION_DURATION", 2000000000)
		--end
		if tunables.get_int("SMUG_SELL_CONTESTED_MISSION_DURATION") ~= 2000000000 then
			tunables.set_int("SMUG_SELL_CONTESTED_MISSION_DURATION", 2000000000)
		end
		if tunables.get_int("SMUG_SELL_FLYING_FORTRESS_MISSION_DURATION") ~= 2000000000 then
			tunables.set_int("SMUG_SELL_FLYING_FORTRESS_MISSION_DURATION", 2000000000)
		end
		if tunables.get_int("SMUG_SELL_FLY_LOW_MISSION_DURATION") ~= 2000000000 then
			tunables.set_int("SMUG_SELL_FLY_LOW_MISSION_DURATION", 2000000000)
		end
		if tunables.get_int("SMUG_SELL_HEAVY_LIFTING_MISSION_DURATION") ~= 2000000000 then
			tunables.set_int("SMUG_SELL_HEAVY_LIFTING_MISSION_DURATION", 2000000000)
		end
		if tunables.get_int("SMUG_SELL_PRECISION_DELIVERY_MISSION_DURATION") ~= 2000000000 then
			tunables.set_int("SMUG_SELL_PRECISION_DELIVERY_MISSION_DURATION", 2000000000)
		end
		if tunables.get_int("SMUG_SELL_UNDER_THE_RADAR_MISSION_DURATION") ~= 2000000000 then
			tunables.set_int("SMUG_SELL_UNDER_THE_RADAR_MISSION_DURATION", 2000000000)
		end
	else
		tunables.set_int("SMUG_STEAL_BEACON_GRAB_MISSION_DURATION", 1800000)
		tunables.set_int("SMUG_STEAL_BLACKBOX_MISSION_DURATION", 1800000)
		tunables.set_int("SMUG_STEAL_BOMBING_RUN_MISSION_DURATION", 1800000)
		tunables.set_int("SMUG_STEAL_BOMB_BASE_MISSION_DURATION", 1800000)
		tunables.set_int("SMUG_STEAL_BOMB_ROOF_MISSION_DURATION", 1800000)
		tunables.set_int("SMUG_STEAL_DOGFIGHT_MISSION_DURATION", 1800000)
		tunables.set_int("SMUG_STEAL_ESCORT_MISSION_DURATION", 1800000)
		tunables.set_int("SMUG_STEAL_INFILTRATION_MISSION_DURATION", 1800000)
		tunables.set_int("SMUG_STEAL_ROOF_ATTACK_MISSION_DURATION", 1800000)
		tunables.set_int("SMUG_STEAL_SPLASH_LANDING_MISSION_DURATION", 1800000)
		tunables.set_int("SMUG_STEAL_STEAL_AIRCRAFT_MISSION_DURATION", 1800000)
		tunables.set_int("SMUG_STEAL_STUNT_PILOT_MISSION_DURATION", 1800000)
		tunables.set_int("SMUG_STEAL_THERMAL_SCOPE_MISSION_DURATION", 1800000)
		tunables.set_int("SMUG_STEAL_CARGO_PLANE_INTERCEPT_MISSION_DURATION", 1200000)
		tunables.set_int("SMUG_STEAL_CARGO_PLANE_DELIVER_MISSION_DURATION", 1200000)
		tunables.set_int("SMUG_SELL_AGILE_DELIVERY_MISSION_DURATION", 1800000)
		tunables.set_int("SMUG_SELL_AIR_DELIVERY_MISSION_DURATION", 1800000)
		tunables.set_int("SMUG_SELL_AIR_POLICE_MISSION_DURATION", 1800000)
		--tunables.set_int("SMUG_SELL_BOMB_ROOF_MISSION_DURATION", 0) -- tunable not found
		tunables.set_int("SMUG_SELL_CONTESTED_MISSION_DURATION", 1800000)
		tunables.set_int("SMUG_SELL_FLYING_FORTRESS_MISSION_DURATION", 1800000)
		tunables.set_int("SMUG_SELL_FLY_LOW_MISSION_DURATION", 1800000)
		tunables.set_int("SMUG_SELL_HEAVY_LIFTING_MISSION_DURATION", 1800000)
		tunables.set_int("SMUG_SELL_PRECISION_DELIVERY_MISSION_DURATION", 1800000)
		tunables.set_int("SMUG_SELL_UNDER_THE_RADAR_MISSION_DURATION", 1800000)
	end
	
	if NightclubCooldown then
		if tunables.get_int("BB_CLUB_MANAGEMENT_CLUB_MANAGEMENT_MISSION_COOLDOWN") ~= 0 then -- Nightclub Promote Club Cooldown *(300000ms)*
			tunables.set_int("BB_CLUB_MANAGEMENT_CLUB_MANAGEMENT_MISSION_COOLDOWN", 0)
		end
		if tunables.get_int("BB_SELL_MISSIONS_MISSION_COOLDOWN") ~= 0 then -- *(300000ms)*
			tunables.set_int("BB_SELL_MISSIONS_MISSION_COOLDOWN", 0)
		end
		if tunables.get_int("BB_SELL_MISSIONS_DELIVERY_VEHICLE_COOLDOWN_AFTER_SELL_MISSION") ~= 0 then -- *(300000ms)*
			tunables.set_int("BB_SELL_MISSIONS_DELIVERY_VEHICLE_COOLDOWN_AFTER_SELL_MISSION", 0)
		end
		if stats.get_int("MPX_SOURCE_GOODS_CDTIMER") ~= -1 then -- Yohan Nightclub Mission Cooldown
			stats.set_int("MPX_SOURCE_GOODS_CDTIMER", -1)
		end
		if stats.get_int("MPX_SOURCE_RESEARCH_CDTIMER") ~= -1 then -- Yohan Nightclub Mission Cooldown
			stats.set_int("MPX_SOURCE_RESEARCH_CDTIMER", -1)
		end
		if tunables.get_int("EXPORT_CARGO_LAUNCH_CD_TIME") ~= 0 then -- *(2880ms)* Nightclub Export Mixed Goods Mission Cooldown
			tunables.set_int("EXPORT_CARGO_LAUNCH_CD_TIME", 0)
		end
		if tunables.get_int("NC_SOURCE_TRUCK_COOLDOWN") ~= 0 then -- *(960000ms)*
			tunables.set_int("NC_SOURCE_TRUCK_COOLDOWN", 0)
		end
		if tunables.get_int("NIGHTCLUB_SOURCE_GOODS_CD_TIME") ~= 0 then -- *(1200ms)*
			tunables.set_int("NIGHTCLUB_SOURCE_GOODS_CD_TIME", 0)
		end
	else
		tunables.set_int("BB_CLUB_MANAGEMENT_CLUB_MANAGEMENT_MISSION_COOLDOWN", 300000)
		tunables.set_int("BB_SELL_MISSIONS_MISSION_COOLDOWN", 300000)
		tunables.set_int("BB_SELL_MISSIONS_DELIVERY_VEHICLE_COOLDOWN_AFTER_SELL_MISSION", 300000)
		--stats.set_int("MPX_SOURCE_GOODS_CDTIMER", 0)
		--stats.set_int("MPX_SOURCE_RESEARCH_CDTIMER", 0)
		tunables.set_int("EXPORT_CARGO_LAUNCH_CD_TIME", 2880)
		tunables.set_int("NC_SOURCE_TRUCK_COOLDOWN", 960000)
		tunables.set_int("NIGHTCLUB_SOURCE_GOODS_CD_TIME", 1200)
	end
	
	if RequestVehicleCooldown then
		if tunables.get_int("PV_MECHANIC_COOLDOWN") ~= 0 then -- null tunable
			tunables.set_int("PV_MECHANIC_COOLDOWN", 0)
		end
		if tunables.get_int("PV_RETURN_COOLDOWN") ~= 0 then -- *(0ms)*
			tunables.set_int("PV_RETURN_COOLDOWN", 0)
		end
		if tunables.get_int("YACHT_CAPTAIN_REQUEST_HELI") ~= 0 then -- *(1000ms)*
			tunables.set_int("YACHT_CAPTAIN_REQUEST_HELI", 0)
		end
		if tunables.get_int("YACHT_CAPTAIN_REQUEST_BOAT") ~= 0 then -- *(750ms)*
			tunables.set_int("YACHT_CAPTAIN_REQUEST_BOAT", 0)
		end
		if tunables.get_int("YACHT_CAPTAIN_REQUEST_PV") ~= 0 then -- *(0ms)*
			tunables.set_int("YACHT_CAPTAIN_REQUEST_PV", 0)
		end
		if tunables.get_int("SV_MECHANIC_COOLDOWN") ~= 0 then -- *(120000ms)*
			tunables.set_int("SV_MECHANIC_COOLDOWN", 0)
		end
		if tunables.get_int("TANK_COOLDOWN_TIME") ~= 0 then -- *(120000ms)*
			tunables.set_int("TANK_COOLDOWN_TIME", 0)
		end
		if tunables.get_int("SUPPORT_BIKE_REQUEST_COOLDOWN") ~= 0 then -- *(0ms)*
			tunables.set_int("SUPPORT_BIKE_REQUEST_COOLDOWN", 0)
		end
		if tunables.get_int("SMUG_REQUEST_PERSONAL_AIRCRAFT_COOLDOWN") ~= 0 then -- *(300000ms)*
			tunables.set_int("SMUG_REQUEST_PERSONAL_AIRCRAFT_COOLDOWN", 0)
		end
		if tunables.get_int("TONY_LIMO_COOLDOWN_TIME") ~= 0 then -- *(120000ms)*
			tunables.set_int("TONY_LIMO_COOLDOWN_TIME", 0)
		end
		if tunables.get_int("BB_SUBMARINE_REQUEST_COOLDOWN_TIMER") ~= 0 then -- *(120000ms)*
			tunables.set_int("BB_SUBMARINE_REQUEST_COOLDOWN_TIMER", 0)
		end
		if tunables.get_int("BB_SUBMARINE_DINGHY_REQUEST_COOLDOWN_TIMER") ~= 0 then -- *(0ms)*
			tunables.set_int("BB_SUBMARINE_DINGHY_REQUEST_COOLDOWN_TIMER", 0)
		end
		if tunables.get_int("VC_COOLDOWN_REQUEST_CAR_SERVICE") ~= 0 then -- *(120000ms)*
			tunables.set_int("VC_COOLDOWN_REQUEST_CAR_SERVICE", 0)
		end
		if tunables.get_int("VC_COOLDOWN_REQUEST_LIMO_SERVICE") ~= 0 then -- *(120000ms)*
			tunables.set_int("VC_COOLDOWN_REQUEST_LIMO_SERVICE", 0)
		end
		if tunables.get_int("REQUEST_COMPANY_SUV_SERVICE_COOLDOWN") ~= 0 then -- *(120000ms)*
			tunables.set_int("REQUEST_COMPANY_SUV_SERVICE_COOLDOWN", 0)
		end
		if tunables.get_int("JUGALLO_BOSS_VEHICLE_COOLDOWN_TIME") ~= 0 then -- *(120000ms)*
			tunables.set_int("JUGALLO_BOSS_VEHICLE_COOLDOWN_TIME", 0)
		end
	else
		--tunables.set_int("PV_MECHANIC_COOLDOWN", 0)
		--tunables.set_int("PV_RETURN_COOLDOWN", 0)
		tunables.set_int("YACHT_CAPTAIN_REQUEST_HELI", 1000)
		tunables.set_int("YACHT_CAPTAIN_REQUEST_BOAT", 750)
		--tunables.set_int("YACHT_CAPTAIN_REQUEST_PV", 0)
		tunables.set_int("SV_MECHANIC_COOLDOWN", 120000)
		tunables.set_int("TANK_COOLDOWN_TIME", 120000)
		--tunables.set_int("SUPPORT_BIKE_REQUEST_COOLDOWN", 0)
		tunables.set_int("SMUG_REQUEST_PERSONAL_AIRCRAFT_COOLDOWN", 300000)
		tunables.set_int("TONY_LIMO_COOLDOWN_TIME", 120000)
		tunables.set_int("BB_SUBMARINE_REQUEST_COOLDOWN_TIMER", 120000)
		--tunables.set_int("BB_SUBMARINE_DINGHY_REQUEST_COOLDOWN_TIMER", 0)
		tunables.set_int("VC_COOLDOWN_REQUEST_CAR_SERVICE", 120000)
		tunables.set_int("VC_COOLDOWN_REQUEST_LIMO_SERVICE", 120000)
		tunables.set_int("REQUEST_COMPANY_SUV_SERVICE_COOLDOWN", 120000)
		tunables.set_int("JUGALLO_BOSS_VEHICLE_COOLDOWN_TIME", 120000)
	end
	
	if ServiceVehiclesCooldown then
		if tunables.get_int("GR_MOBILE_OPERATIONS_CENTRE_COOLDOWN_TIMER") ~= 0 then -- *(120000ms)*
			tunables.set_int("GR_MOBILE_OPERATIONS_CENTRE_COOLDOWN_TIMER", 0)
		end
		if tunables.get_int("H2_AVENGER_INTN_MENU_REQUEST_AVENGER_COOLDOWN") ~= 0 then -- *(120000ms)*
			tunables.set_int("H2_AVENGER_INTN_MENU_REQUEST_AVENGER_COOLDOWN", 0)
		end
		if tunables.get_int("BB_TERRORBYTE_TERRORBYTE_COOLDOWN_TIMER") ~= 0 then -- *(120000ms)*
			tunables.set_int("BB_TERRORBYTE_TERRORBYTE_COOLDOWN_TIMER", 0)
		end
		if tunables.get_int("IH_MOON_POOL_COOLDOWN") ~= 0 then -- *(120000ms)*
			tunables.set_int("IH_MOON_POOL_COOLDOWN", 0)
		end
		if tunables.get_int("ACID_LAB_REQUEST_COOLDOWN") ~= 0 then -- *(300000ms)*
			tunables.set_int("ACID_LAB_REQUEST_COOLDOWN", 0)
		end
	else
		tunables.set_int("GR_MOBILE_OPERATIONS_CENTRE_COOLDOWN_TIMER", 120000)
		tunables.set_int("H2_AVENGER_INTN_MENU_REQUEST_AVENGER_COOLDOWN", 120000)
		tunables.set_int("BB_TERRORBYTE_TERRORBYTE_COOLDOWN_TIMER", 120000)
		tunables.set_int("IH_MOON_POOL_COOLDOWN", 120000)
		tunables.set_int("ACID_LAB_REQUEST_COOLDOWN", 300000)
	end
	
	if CEOAbilitiesCooldown then
		if tunables.get_int("GB_DROP_BULLSHARK_COOLDOWN") ~= 0 then -- *(30000ms)*
			tunables.set_int("GB_DROP_BULLSHARK_COOLDOWN", 0)
		end
		if tunables.get_int("GB_DROP_AMMO_COOLDOWN") ~= 0 then -- *(30000ms)*
			tunables.set_int("GB_DROP_AMMO_COOLDOWN", 0)
		end
		if tunables.get_int("GB_DROP_ARMOR_COOLDOWN") ~= 0 then -- *(30000ms)*
			tunables.set_int("GB_DROP_ARMOR_COOLDOWN", 0)
		end
		if tunables.get_int("BALLISTICARMOURREQUESTCOOLDOWN") ~= 0 then -- *(900000ms)*
			tunables.set_int("BALLISTICARMOURREQUESTCOOLDOWN", 0)
		end
		if tunables.get_int("GR_BALLISTIC_EQ_COOLDOWN_TIMER") ~= 0 then -- null tunable
			tunables.set_int("GR_BALLISTIC_EQ_COOLDOWN_TIMER", 0)
		end
		if tunables.get_int("GB_GHOST_ORG_COOLDOWN") ~= 0 then -- *(600000ms)*
			tunables.set_int("GB_GHOST_ORG_COOLDOWN", 0)
		end
		if tunables.get_int("GB_BRIBE_AUTHORITIES_COOLDOWN") ~= 0 then -- *(600000ms)*
			tunables.set_int("GB_BRIBE_AUTHORITIES_COOLDOWN", 0)
		end
	else
		tunables.set_int("GB_DROP_BULLSHARK_COOLDOWN", 30000)
		tunables.set_int("GB_DROP_AMMO_COOLDOWN", 30000)
		tunables.set_int("GB_DROP_ARMOR_COOLDOWN", 30000)
		tunables.set_int("BALLISTICARMOURREQUESTCOOLDOWN", 900000)
		--tunables.set_int("GR_BALLISTIC_EQ_COOLDOWN_TIMER", 0)
		tunables.set_int("GB_GHOST_ORG_COOLDOWN", 600000)
		tunables.set_int("GB_BRIBE_AUTHORITIES_COOLDOWN", 600000)
	end
	
	if CEOVehiclesCooldown then
		if tunables.get_int("GB_CALL_VEHICLE_COOLDOWN") ~= 0 then -- *(120000ms)*
			tunables.set_int("GB_CALL_VEHICLE_COOLDOWN", 0)
		end
	else
		tunables.set_int("GB_CALL_VEHICLE_COOLDOWN", 120000)
	end
	
	if SpinLuckyWheelCooldown then
		if stats.get_int("MPX_LUCKY_WHEEL_NUM_SPIN") ~= 0 then
			stats.set_int("MPX_LUCKY_WHEEL_NUM_SPIN", 0)
		end
		if tunables.get_int("VC_LUCKY_WHEEL_NUM_SPINS_PER_DAY") ~= 1 then
			tunables.set_int("VC_LUCKY_WHEEL_NUM_SPINS_PER_DAY", 1)
		end
		if tunables.get_int("VC_LUCKY_WHEEL_ADDITIONAL_SPINS_ENABLE") ~= 1 then
			tunables.set_int("VC_LUCKY_WHEEL_ADDITIONAL_SPINS_ENABLE", 1)
		end
	else
		--stats.set_int("MPX_LUCKY_WHEEL_NUM_SPIN", 0)
		--tunables.set_int("VC_LUCKY_WHEEL_NUM_SPINS_PER_DAY", 0)
		--tunables.set_int("VC_LUCKY_WHEEL_ADDITIONAL_SPINS_ENABLE", 0)
	end
	
	if MCClientVehicleCooldown then
		if tunables.get_int("BIKER_CLIENT_VEH_SPAWN_COOLDOWN_POSIX_TIME") ~= 0 then -- *(600ms)*
			tunables.set_int("BIKER_CLIENT_VEH_SPAWN_COOLDOWN_POSIX_TIME", 0)
		end
	else
		tunables.set_int("BIKER_CLIENT_VEH_SPAWN_COOLDOWN_POSIX_TIME", 600)
	end
	
	if BunkerCooldown then
		if tunables.get_int("BUNKER_VEHICLE_COOLDOWN_TIME") ~= 0 then -- *(120000ms)*
			tunables.set_int("BUNKER_VEHICLE_COOLDOWN_TIME", 0)
		end
	else
		tunables.set_int("BUNKER_VEHICLE_COOLDOWN_TIME", 120000)
	end
	
	if ArenaWheelCooldown then
		if tunables.get_int("AW_ARENA_WAR_WHEEL_COOLDOWN") ~= 0 then -- *(10000ms)*
			tunables.set_int("AW_ARENA_WAR_WHEEL_COOLDOWN", 0)
		end
	else
		tunables.set_int("AW_ARENA_WAR_WHEEL_COOLDOWN", 10000)
	end
	
	if NightclubTroublemakerCooldown then
		if tunables.get_int("NC_TROUBLEMAKER_CHANCE_IS_VIP_EVENT") ~= 0 then -- *(50%)*
			tunables.set_int("NC_TROUBLEMAKER_CHANCE_IS_VIP_EVENT", 0)
		end
	else
		tunables.set_int("NC_TROUBLEMAKER_CHANCE_IS_VIP_EVENT", 50)
	end
	
	if AutoShopClientVehicleCooldown then
		if tunables.get_int("TUNER_AUTO_SHOP_CLIENT_VEH_SPAWN_COOLDOWN_POSIX_TIME") ~= 0 then -- *(2880ms)*
			tunables.set_int("TUNER_AUTO_SHOP_CLIENT_VEH_SPAWN_COOLDOWN_POSIX_TIME", 0)
		end
	else
		tunables.set_int("TUNER_AUTO_SHOP_CLIENT_VEH_SPAWN_COOLDOWN_POSIX_TIME", 2880)
	end
end)

PhoneAnimations = false
restore_sp_funcs = false
ForceUnsupportedVersion = false

script.register_looped("GoldenGets Settings", function (script)
    if globals.get_int(79389) == 1 then
        if PhoneAnimations then
            if PED.GET_PED_CONFIG_FLAG(self.get_ped(), 242, true) then
                PED.SET_PED_CONFIG_FLAG(self.get_ped(), 242, false)
            end
            if PED.GET_PED_CONFIG_FLAG(self.get_ped(), 243, true) then
                PED.SET_PED_CONFIG_FLAG(self.get_ped(), 243, false)
            end
            if PED.GET_PED_CONFIG_FLAG(self.get_ped(), 244, true) then
                PED.SET_PED_CONFIG_FLAG(self.get_ped(), 244, false)
            end
        else
            PED.SET_PED_CONFIG_FLAG(self.get_ped(), 242, true)
            PED.SET_PED_CONFIG_FLAG(self.get_ped(), 243, true)
            PED.SET_PED_CONFIG_FLAG(self.get_ped(), 244, true)
        end
		
        if restore_sp_funcs then
            if PAD.IS_CONTROL_JUST_PRESSED(2, 172) then
                MOBILE.CELL_SET_INPUT(1)
            end
            if PAD.IS_CONTROL_JUST_PRESSED(2, 173) then
                MOBILE.CELL_SET_INPUT(2)
            end
        end
		
		if ForceUnsupportedVersion then
			BuildStatus = 5
			VersionStatus = 5
		else
			BuildStatus = 0
			VersionStatus = 0
		end
    end
end)

------------------------------------

------------------
GoldenGetsBusiness = GoldenGetsMenu:add_tab("Business")
------------------

 -- Resupply
Warehouse1 = stats.get_int("MPX_CONTOTALFORWHOUSE0")
Warehouse2 = stats.get_int("MPX_CONTOTALFORWHOUSE1")
Warehouse3 = stats.get_int("MPX_CONTOTALFORWHOUSE2")
Warehouse4 = stats.get_int("MPX_CONTOTALFORWHOUSE3")
Warehouse5 = stats.get_int("MPX_CONTOTALFORWHOUSE4")
WarehouseCrates = (Warehouse1 + Warehouse2 + Warehouse3 + Warehouse4 + Warehouse5)
collectcrates = 1
selected_unique_cargo = locals.get_int(SCVUCl)
unique_cargo_selected = 0
MCBusinessSupplyCost = tunables.get_int("BIKER_PURCHASE_SUPPLIES_COST_PER_SEGMENT")
BunkerSupplyCost = tunables.get_int("GR_PURCHASE_SUPPLIES_COST_PER_SEGMENT")
HangarCrates = stats.get_int("MPX_HANGAR_CONTRABAND_TOTAL")
CargoandShipmentsCapacity = tunables.get_int("BB_BUSINESS_TOTAL_MAX_UNITS_CARGO")
SportingGoodsCapacity = tunables.get_int("BB_BUSINESS_TOTAL_MAX_UNITS_WEAPONS")
SouthAmericaImportsCapacity = tunables.get_int("BB_BUSINESS_TOTAL_MAX_UNITS_COKE")
PharmaceuticalResearchCapacity = tunables.get_int("BB_BUSINESS_TOTAL_MAX_UNITS_METH")
OrganicProduceCapacity = tunables.get_int("BB_BUSINESS_TOTAL_MAX_UNITS_WEED")
PrintingandCopyingCapacity = tunables.get_int("BB_BUSINESS_TOTAL_MAX_UNITS_FORGED_DOCUMENTS")
CashCreationCapacity = tunables.get_int("BB_BUSINESS_TOTAL_MAX_UNITS_COUNTERFEIT_CASH")

 -- Selling
CratesValue1 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD1")
CratesValue2 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD2")
CratesValue3 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD3")
CratesValue45 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD4")
CratesValue67 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD5")
CratesValue89 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD6")
CratesValue1014 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD7")
CratesValue1519 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD8")
CratesValue2024 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD9")
CratesValue2529 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD10")
CratesValue3034 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD11")
CratesValue3539 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD12")
CratesValue4044 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD13")
CratesValue4549 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD14")
CratesValue5059 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD15")
CratesValue6069 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD16")
CratesValue7079 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD17")
CratesValue8089 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD18")
CratesValue9099 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD19")
CratesValue100110 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD20")
CratesValue111 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD21")
VehicleStandardRange = tunables.get_int("IMPEXP_SELL_BUYER1_OFFER_EASY")
VehicleMidRange = tunables.get_int("IMPEXP_SELL_BUYER1_OFFER_MED")
VehicleTopRange = tunables.get_int("IMPEXP_SELL_BUYER1_OFFER_HARD")
MCBusinessProductMultiplier1 = tunables.get_float("BIKER_SELL_PRODUCT_LOCAL_MODIFIER")
MCBusinessProductMultiplier2 = tunables.get_float("BIKER_SELL_PRODUCT_FAR_MODIFIER")
MCBusinessSell = 1
BunkerProduct = tunables.get_int("GR_MANU_PRODUCT_VALUE")
BunkerEquipmentUpgrade = tunables.get_int("GR_MANU_PRODUCT_VALUE_EQUIPMENT_UPGRADE")
BunkerStaffUpgrade = tunables.get_int("GR_MANU_PRODUCT_VALUE_STAFF_UPGRADE")
CargoandShipmentsValue = tunables.get_int("BB_BUSINESS_VALUE_CARGO")
SportingGoodsValue = tunables.get_int("BB_BUSINESS_VALUE_WEAPONS")
SouthAmericaImportsValue = tunables.get_int("BB_BUSINESS_VALUE_COKE")
PharmaceuticalResearchValue = tunables.get_int("BB_BUSINESS_VALUE_METH")
OrganicProduceValue = tunables.get_int("BB_BUSINESS_VALUE_WEED")
PrintingandCopyingValue = tunables.get_int("BB_BUSINESS_VALUE_FORGED_DOCUMENTS")
CashCreationValue = tunables.get_int("BB_BUSINESS_VALUE_COUNTERFEIT_CASH")

script.register_looped("get_GoldenGets Business", function (script)
	Warehouse1 = stats.get_int("MPX_CONTOTALFORWHOUSE0")
	Warehouse2 = stats.get_int("MPX_CONTOTALFORWHOUSE1")
	Warehouse3 = stats.get_int("MPX_CONTOTALFORWHOUSE2")
	Warehouse4 = stats.get_int("MPX_CONTOTALFORWHOUSE3")
	Warehouse5 = stats.get_int("MPX_CONTOTALFORWHOUSE4")
	WarehouseCrates = (Warehouse1 + Warehouse2 + Warehouse3 + Warehouse4 + Warehouse5)
	collectcrates = 1
	selected_unique_cargo = locals.get_int(SCVUCl)
	unique_cargo_selected = 0
	MCBusinessSupplyCost = tunables.get_int("BIKER_PURCHASE_SUPPLIES_COST_PER_SEGMENT")
	BunkerSupplyCost = tunables.get_int("GR_PURCHASE_SUPPLIES_COST_PER_SEGMENT")
	HangarCrates = stats.get_int("MPX_HANGAR_CONTRABAND_TOTAL")
	CargoandShipmentsCapacity = tunables.get_int("BB_BUSINESS_TOTAL_MAX_UNITS_CARGO")
	SportingGoodsCapacity = tunables.get_int("BB_BUSINESS_TOTAL_MAX_UNITS_WEAPONS")
	SouthAmericaImportsCapacity = tunables.get_int("BB_BUSINESS_TOTAL_MAX_UNITS_COKE")
	PharmaceuticalResearchCapacity = tunables.get_int("BB_BUSINESS_TOTAL_MAX_UNITS_METH")
	OrganicProduceCapacity = tunables.get_int("BB_BUSINESS_TOTAL_MAX_UNITS_WEED")
	PrintingandCopyingCapacity = tunables.get_int("BB_BUSINESS_TOTAL_MAX_UNITS_FORGED_DOCUMENTS")
	CashCreationCapacity = tunables.get_int("BB_BUSINESS_TOTAL_MAX_UNITS_COUNTERFEIT_CASH")
	
	CratesValue1 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD1")
	CratesValue2 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD2")
	CratesValue3 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD3")
	CratesValue45 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD4")
	CratesValue67 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD5")
	CratesValue89 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD6")
	CratesValue1014 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD7")
	CratesValue1519 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD8")
	CratesValue2024 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD9")
	CratesValue2529 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD10")
	CratesValue3034 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD11")
	CratesValue3539 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD12")
	CratesValue4044 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD13")
	CratesValue4549 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD14")
	CratesValue5059 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD15")
	CratesValue6069 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD16")
	CratesValue7079 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD17")
	CratesValue8089 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD18")
	CratesValue9099 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD19")
	CratesValue100110 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD20")
	CratesValue111 = tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD21")
	VehicleStandardRange = tunables.get_int("IMPEXP_SELL_BUYER1_OFFER_EASY")
	VehicleMidRange = tunables.get_int("IMPEXP_SELL_BUYER1_OFFER_MED")
	VehicleTopRange = tunables.get_int("IMPEXP_SELL_BUYER1_OFFER_HARD")
	MCBusinessProductMultiplier1 = tunables.get_float("BIKER_SELL_PRODUCT_LOCAL_MODIFIER")
	MCBusinessProductMultiplier2 = tunables.get_float("BIKER_SELL_PRODUCT_FAR_MODIFIER")
	BunkerProduct = tunables.get_int("GR_MANU_PRODUCT_VALUE")
	BunkerEquipmentUpgrade = tunables.get_int("GR_MANU_PRODUCT_VALUE_EQUIPMENT_UPGRADE")
	BunkerStaffUpgrade = tunables.get_int("GR_MANU_PRODUCT_VALUE_STAFF_UPGRADE")
	CargoandShipmentsValue = tunables.get_int("BB_BUSINESS_VALUE_CARGO")
	SportingGoodsValue = tunables.get_int("BB_BUSINESS_VALUE_WEAPONS")
	SouthAmericaImportsValue = tunables.get_int("BB_BUSINESS_VALUE_COKE")
	PharmaceuticalResearchValue = tunables.get_int("BB_BUSINESS_VALUE_METH")
	OrganicProduceValue = tunables.get_int("BB_BUSINESS_VALUE_WEED")
	PrintingandCopyingValue = tunables.get_int("BB_BUSINESS_VALUE_FORGED_DOCUMENTS")
	CashCreationValue = tunables.get_int("BB_BUSINESS_VALUE_COUNTERFEIT_CASH")
	script:yield()
end)

GoldenGetsBusiness:add_imgui(function()
	if NETWORK.NETWORK_IS_SESSION_STARTED() then
		if ImGui.BeginTabBar("GoldenGets Business Tab") then
			if ImGui.BeginTabItem("Controls##Business") then
				BusinessRaids = ImGui.Checkbox("Disable Business Raids", BusinessRaids)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Your business will not be attacked by thieves, especially in the mc business which is often attacked")
				end
				
				All_Business_Income = AllBusinessIncome
				AllBusinessIncome = ImGui.Checkbox("All##AllBusinessIncome", AllBusinessIncome)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Enable/Disable all options for 'Business Income'")
				end
				if AllBusinessIncome ~= All_Business_Income then
					NightclubIncome = AllBusinessIncome
					NightclubPopularity = AllBusinessIncome
					ArcadeIncome = AllBusinessIncome
					AgencyIncome = AllBusinessIncome
					AllBusinessIncome4 = true
				else
					AllBusinessIncome4 = false
				end
				if not AllBusinessIncome4 then
					AllBusinessIncome = NightclubIncome
					and NightclubPopularity
					and ArcadeIncome
					and AgencyIncome
				end
				ImGui.SameLine()
				if ImGui.TreeNode("Business Income") then
					NightclubIncome = ImGui.Checkbox("Max Nightclub Income", NightclubIncome)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Income equals nightclub safe capacity")
					end
					ImGui.SameLine()
					NightclubPopularity = ImGui.Checkbox("Full Nightclub Popularity", NightclubPopularity)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Your nightclub popularity is always full")
					end
					
					ArcadeIncome = ImGui.Checkbox("Max Arcade Income", ArcadeIncome)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Income equals arcade safe capacity")
					end
					
					AgencyIncome = ImGui.Checkbox("Max Agency Income", AgencyIncome)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Income equals agency safe capacity")
					end
					
					ImGui.Separator()
					
					ImGui.TreePop()
				end
				
				All_Auto_Resupply = AllAutoResupply
				AllAutoResupply = ImGui.Checkbox("All##AllAutoResupply", AllAutoResupply)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Enable/Disable all options for 'Auto-Fill Low Supplies'")
				end
				if AllAutoResupply ~= All_Auto_Resupply then
					MCBusinessAutoResupply = AllAutoResupply
					BunkerAutoResupply = AllAutoResupply
					AcidLabAutoResupply = AllAutoResupply
					AllAutoResupply3 = true
				else
					AllAutoResupply3 = false
				end
				if not AllAutoResupply3 then
					AllAutoResupply = MCBusinessAutoResupply 
					and BunkerAutoResupply 
					and AcidLabAutoResupply
				end
				ImGui.SameLine()
				if ImGui.TreeNode("Auto-Fill Low Supplies") then
					MCBusinessAutoResupply = ImGui.Checkbox("MC Business Auto-Fill##MCBusinessAutoResupply", MCBusinessAutoResupply)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Auto refilling low mc business supply. If unlimited resupply bug occurs, turn off and change session")
					end
					
					BunkerAutoResupply = ImGui.Checkbox("Bunker Auto-Fill##BunkerAutoResupply", BunkerAutoResupply)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Auto refilling low bunker supply. If unlimited resupply bug occurs, turn off and change session")
					end
					
					AcidLabAutoResupply = ImGui.Checkbox("Acid Lab Auto-Fill##AcidLabAutoResupply", AcidLabAutoResupply)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Auto refilling low acid lab supply. If unlimited resupply bug occurs, turn off and change session")
					end
					
					ImGui.Separator()
					
					ImGui.TreePop()
				end
				
				All_Reduce_Production = AllReduceProduction
				AllReduceProduction = ImGui.Checkbox("All##AllReduceProduction", AllReduceProduction)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Enable/Disable all options for 'Reduce Production of Supply'")
				end
				if AllReduceProduction ~= All_Reduce_Production then
					MCBusinessReduceProduction = AllReduceProduction
					BunkerReduceProduction = AllReduceProduction
					AcidLabReduceProduction = AllReduceProduction
					AllReduceProduction3 = true
				else
					AllReduceProduction3 = false
				end
				if not AllReduceProduction3 then
					AllReduceProduction = MCBusinessReduceProduction 
					and BunkerReduceProduction 
					and AcidLabReduceProduction
				end
				ImGui.SameLine()
				if ImGui.TreeNode("Reduce Production of Supply") then
					MCBusinessReduceProduction = ImGui.Checkbox("MC Business Reduce##MCBusinessReduceProduction", MCBusinessReduceProduction)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Reducing multiple units of mc business supply produced to just single unit")
					end
					
					BunkerReduceProduction = ImGui.Checkbox("Bunker Reduce##BunkerReduceProduction", BunkerReduceProduction)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Reducing multiple units of bunker supply produced to just single unit")
					end
					
					AcidLabReduceProduction = ImGui.Checkbox("Acid Lab Reduce##AcidLabReduceProduction", AcidLabReduceProduction)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Reducing multiple units of acid lab supply produced to just single unit")
					end
					
					ImGui.Separator()
					
					ImGui.TreePop()
				end
				
				All_Production_Cooldown = AllProductionCooldown
				AllProductionCooldown = ImGui.Checkbox("All##AllProductionCooldown", AllProductionCooldown)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Enable/Disable all options for 'Production Speed'")
				end
				if AllProductionCooldown ~= All_Production_Cooldown then
					--MCBusinessProductionCooldown60s = AllProductionCooldown
					MCBusinessProductionCooldown5s = AllProductionCooldown
					--BunkerProductionCooldown60s = AllProductionCooldown
					BunkerProductionCooldown5s = AllProductionCooldown
					--BunkerResearchCooldown60s = AllProductionCooldown
					BunkerResearchCooldown5s = AllProductionCooldown
					--NightclubProductionCooldownx4 = AllProductionCooldown
					--NightclubProductionCooldownx10 = AllProductionCooldown
					--NightclubProductionCooldownx20 = AllProductionCooldown
					NightclubProductionCooldown5s = AllProductionCooldown
					--AcidLabProductionCooldown60s = AllProductionCooldown
					AcidLabProductionCooldown5s = AllProductionCooldown
					AllProductionCooldown12 = true
				else
					AllProductionCooldown12 = false
				end
				if not AllProductionCooldown12 then
					--AllProductionCooldown = MCBusinessProductionCooldown60s 
					AllProductionCooldown = MCBusinessProductionCooldown5s 
					--and BunkerProductionCooldown60s 
					and BunkerProductionCooldown5s 
					--and BunkerResearchCooldown60s 
					and BunkerResearchCooldown5s 
					--and NightclubProductionCooldownx4 
					--and NightclubProductionCooldownx10 
					--and NightclubProductionCooldownx20 
					and NightclubProductionCooldown5s 
					--and AcidLabProductionCooldown60s 
					and AcidLabProductionCooldown5s
				end
				ImGui.SameLine()
				if ImGui.TreeNode("Production Speed") then
					--MCBusinessProductionCooldown60s = ImGui.Checkbox("MC Business 60s##MCBusinessProductionCooldown60s", MCBusinessProductionCooldown60s)
					--if MCBusinessProductionCooldown60s then
					--	MCBusinessProductionCooldown5s = false
					--end
					--ImGui.SameLine()
					MCBusinessProductionCooldown5s = ImGui.Checkbox("MC Business Speed##MCBusinessProductionCooldown5s", MCBusinessProductionCooldown5s)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("This production speed will be triggered next time or change session.\nIt would be better if combine with 'Auto-Fill Low Supplies'")
					end
					--if MCBusinessProductionCooldown5s then
					--	MCBusinessProductionCooldown60s = false
					--end
					
					--BunkerProductionCooldown60s = ImGui.Checkbox("Bunker 60s##BunkerProductionCooldown60s", BunkerProductionCooldown60s)
					--if BunkerProductionCooldown60s then
					--	BunkerProductionCooldown5s = false
					--end
					--ImGui.SameLine()
					BunkerProductionCooldown5s = ImGui.Checkbox("Bunker Speed##BunkerProductionCooldown5s", BunkerProductionCooldown5s)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("This production speed will be triggered next time or change session.\nIt would be better if combine with 'Auto-Fill Low Supplies'")
					end
					--if BunkerProductionCooldown5s then
					--	BunkerProductionCooldown60s = false
					--end
					ImGui.SameLine()
					--BunkerResearchCooldown60s = ImGui.Checkbox("Research 60s##BunkerResearchCooldown60s", BunkerResearchCooldown60s)
					--if BunkerResearchCooldown60s then
					--	BunkerResearchCooldown5s = false
					--end
					--ImGui.SameLine()
					BunkerResearchCooldown5s = ImGui.Checkbox("Research Speed##BunkerResearchCooldown5s", BunkerResearchCooldown5s)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("This production speed will be triggered next time or change session")
					end
					--if BunkerResearchCooldown5s then
					--	BunkerResearchCooldown60s = false
					--end
					
					--NightclubProductionCooldownx4 = ImGui.Checkbox("Nightclub x4##NightclubProductionCooldownx4", NightclubProductionCooldownx4)
					--if NightclubProductionCooldownx4 then
					--	NightclubProductionCooldownx10 = false
					--	NightclubProductionCooldownx20 = false
					--	NightclubProductionCooldown5s = false
					--end
					--ImGui.SameLine()
					--NightclubProductionCooldownx10 = ImGui.Checkbox("Nightclub x10##NightclubProductionCooldownx10", NightclubProductionCooldownx10)
					--if NightclubProductionCooldownx10 then
					--	NightclubProductionCooldownx4 = false
					--	NightclubProductionCooldownx20 = false
					--	NightclubProductionCooldown5s = false
					--end
					
					--NightclubProductionCooldownx20 = ImGui.Checkbox("Nightclub x20##NightclubProductionCooldownx20", NightclubProductionCooldownx20)
					--if NightclubProductionCooldownx20 then
					--	NightclubProductionCooldownx4 = false
					--	NightclubProductionCooldownx10 = false
					--	NightclubProductionCooldown5s = false
					--end
					--ImGui.SameLine()
					NightclubProductionCooldown5s = ImGui.Checkbox("Nightclub Speed##NightclubProductionCooldown5s", NightclubProductionCooldown5s)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("This production speed will be triggered next time or change session")
					end
					--if NightclubProductionCooldown5s then
					--	NightclubProductionCooldownx4 = false
					--	NightclubProductionCooldownx10 = false
					--	NightclubProductionCooldownx20 = false
					--end
					
					--AcidLabProductionCooldown60s = ImGui.Checkbox("Acid Lab 60s##AcidLabProductionCooldown60s", AcidLabProductionCooldown60s)
					--if AcidLabProductionCooldown60s then
					--	AcidLabProductionCooldown5s = false
					--end
					--ImGui.SameLine()
					AcidLabProductionCooldown5s = ImGui.Checkbox("Acid Lab Speed##AcidLabProductionCooldown5s", AcidLabProductionCooldown5s)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("This production speed will be triggered next time or change session.\nIt would be better if combine with 'Auto-Fill Low Supplies'")
					end
					--if AcidLabProductionCooldown5s then
					--	AcidLabProductionCooldown60s = false
					--end
					
					ImGui.Separator()
					
					ImGui.TreePop()
				end
				
				All_Easy_Business_Mission = AllEasyBusinessMission
				AllEasyBusinessMission = ImGui.Checkbox("All##AllEasyBusinessMission", AllEasyBusinessMission)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Enable/Disable all options for 'Business Income'")
				end
				if AllEasyBusinessMission ~= All_Easy_Business_Mission then
					VehicleCargoSourceMission = AllEasyBusinessMission
					SpecialCargoBuyMission = AllEasyBusinessMission
					SpecialCargoSellMission = AllEasyBusinessMission
					MCBusinessStealMission = AllEasyBusinessMission
					MCBusinessSellMission = AllEasyBusinessMission
					HangarAirStealMission = AllEasyBusinessMission
					HangarAirSellMission = AllEasyBusinessMission
					NightclubSellMission = AllEasyBusinessMission
					AllEasyBusinessMission4 = true
				else
					AllEasyBusinessMission4 = false
				end
				if not AllEasyBusinessMission4 then
					AllEasyBusinessMission = VehicleCargoSourceMission
					and SpecialCargoBuyMission
					and SpecialCargoSellMission
					and MCBusinessStealMission
					and MCBusinessSellMission
					and HangarAirStealMission
					and HangarAirSellMission
					and NightclubSellMission
				end
				ImGui.SameLine()
				if ImGui.TreeNode("Easy Business Mission") then
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Possibility the second business mission failed to start. If mission not start, change sessions")
					end
					VehicleCargoSourceMission = ImGui.Checkbox("Vehicle Cargo Source##VehicleCargoSourceMission", VehicleCargoSourceMission)
					
					SpecialCargoBuyMission = ImGui.Checkbox("Special Cargo Buy##SpecialCargoBuyMission", SpecialCargoBuyMission)
					ImGui.SameLine()
					SpecialCargoSellMission = ImGui.Checkbox("Special Cargo Sell##SpecialCargoSellMission", SpecialCargoSellMission)
					
					MCBusinessStealMission = ImGui.Checkbox("MC Business Steal##MCBusinessStealMission", MCBusinessStealMission)
					ImGui.SameLine()
					MCBusinessSellMission = ImGui.Checkbox("MC Business Sell##MCBusinessSellMission", MCBusinessSellMission)
					
					HangarAirStealMission = ImGui.Checkbox("Hangar Air Steal##HangarAirStealMission", HangarAirStealMission)
					ImGui.SameLine()
					HangarAirSellMission = ImGui.Checkbox("Hangar Air Sell##HangarAirSellMission", HangarAirSellMission)
					
					NightclubSellMission = ImGui.Checkbox("Nightclub Sell##NightclubSellMission", NightclubSellMission)
					
					ImGui.Separator()
					
					ImGui.TreePop()
				end
				
				WarehouseAuto = ImGui.Checkbox("Enable Warehouse Auto", WarehouseAuto)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Automatically fill your warehouse in one second or also sell crates one by one. On the\ncomputer screen, select special cargo > source/sell cargo, select your warehouse")
				end
				if WarehouseAuto then
					if ImGui.Button("Start Master Control Terminal") then
						script.run_in_fiber(function (script)
							start_script('appArcadeBusinessHub', 1424, script)
						end)
					end
				end
				ImGui.EndTabItem()
			end
			
			if ImGui.BeginTabItem("Resupply") then
				ImGui.SeparatorText("Special Cargo")
				
				if ImGui.Button("Instant Collect Crates##SpecialCargo") then
					locals_v_set_int(SupportVersion, GCB, SCVIBl1, 1)
					locals_v_set_int(SupportVersion, GCB, SCVIBl3, 6)
					locals_v_set_int(SupportVersion, GCB, SCVIBl4, 4)
				end
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Completing the current crate orders as needed. Not working\non Lupe's mission source special cargo")
				end
				
				collectcrates, drag = ImGui.DragInt("Crates Source", collectcrates, 1, 0, 111)
				if ImGui.Button("Collect Crates Amount##SpecialCargo") then
					locals_v_set_int(SupportVersion, GCB, SCVIBl1, 1)
					locals_v_set_int(SupportVersion, GCB, SCVIBl2, collectcrates)
					locals_v_set_int(SupportVersion, GCB, SCVIBl3, 6)
					locals_v_set_int(SupportVersion, GCB, SCVIBl4, 4)
				end
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Completing the current crate orders with customizations.\nNot working on Lupe's mission source special cargo")
				end
				
				if WarehouseCrates < 555 then
					if ImGui.Button("Staff Source Crates##WarehouseStaffSourced") then
						script.run_in_fiber(function(fillceo)
							for i = 12, 16 do
								stats.set_bool_masked("MPX_FIXERPSTAT_BOOL1", true, i)
								fillceo:sleep(500) -- half second delay between each warehouse
							end
						end)
					end
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Send your staff member to source crates\nof special cargo for the warehouse")
					end
					ImGui.SameLine()
					WarehouseStaffSourced = ImGui.Checkbox("Fill Up##WarehouseStaffSourced", WarehouseStaffSourced, true)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Continuously send your staff member to source\ncrates of special cargo for the warehouse")
					end
				else
					if WarehouseStaffSourced then
						WarehouseStaffSourced = false
					end
					ImGui.Text("[ All your Warehouses are full ]")
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Unavailable. All your warehouses are already\nfull")
					end
				end
				
				--CEOSpecialItem = ImGui.Checkbox("Enable Special Item Unique Cargo", CEOSpecialItem)
				
				--selected_unique_cargo, unique_cargo_selected = ImGui.Combo("Select Unique Cargo", selected_unique_cargo, { "Film Reel", "Rare Hide", "Golden Minigun", "Ornamental Egg", "Large Diamond", "Rare Pocket Watch" }, 6)
				--if unique_cargo_selected == 1 then
				--	globals.set_int(SCVUCl, 8)
				--elseif unique_cargo_selected == 2 then
				--	globals.set_int(SCVUCl, 7)
				--elseif unique_cargo_selected == 3 then
				--	globals.set_int(SCVUCl, 4)
				--elseif unique_cargo_selected == 4 then
				--	globals.set_int(SCVUCl, 2)
				--elseif unique_cargo_selected == 5 then
				--	globals.set_int(SCVUCl, 6)
				--else unique_cargo_selected = 6
				--	globals.set_int(SCVUCl, 9)
				--end
				
				SpecialCargoSourceCooldown = ImGui.Checkbox("Remove Special Cargo Source Cooldown##SpecialCargoSourceCooldown", SpecialCargoSourceCooldown)
				
				ImGui.SeparatorText("Vehicle Cargo")
				
				VehicleCargoSourceCooldown = ImGui.Checkbox("Remove Vehicle Cargo Source Cooldown##VehicleCargoSourceCooldown", VehicleCargoSourceCooldown)
				
				ImGui.SeparatorText("Motorcycle Club Business")
				
				MCBusinessResupplyCost = ImGui.Checkbox("> MC Business Resupply Cost##MCBusinessResupplyCost", MCBusinessResupplyCost)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Toggle to expand for customize a mc business resupply cost")
				end
				if MCBusinessResupplyCost then
					MCBusinessSupplyCost, drag = ImGui.DragInt("Cost##MCBusinessSupplyCost", MCBusinessSupplyCost, 100, 200, 15000)
					if drag then
						MCBusinessSupplyCost = math.min(math.max(MCBusinessSupplyCost, 0), INT_MAX)
					end
				end
				
				MCBusinessSupplyDelay = ImGui.Checkbox("Remove Supply Delay##MCBusinessSupplyDelay", MCBusinessSupplyDelay)
				
				ImGui.SeparatorText("Bunker")
				
				BunkerResupplyCost = ImGui.Checkbox("> Bunker Resupply Cost##BunkerResupplyCost", BunkerResupplyCost)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Toggle to expand for customize a bunker resupply cost")
				end
				if BunkerResupplyCost then
					BunkerSupplyCost, drag = ImGui.DragInt("Cost##BunkerSupplyCost", BunkerSupplyCost, 100, 200, 15000)
					if drag then
						BunkerSupplyCost = math.min(math.max(BunkerSupplyCost, 0), INT_MAX)
					end
				end
				
				BunkerSupplyDelay = ImGui.Checkbox("Remove Supply Delay##BunkerSupplyDelay", BunkerSupplyDelay)
				
				TriggerBunkerProduction = ImGui.Checkbox("Trigger Bunker Production", TriggerBunkerProduction)
				
				ImGui.SeparatorText("Hangar Cargo")
				
				if HangarCrates < 50 then
					if ImGui.Button("Staff Source Crates##HangarStaffSourced") then
						stats.set_bool_masked("MPX_DLC22022PSTAT_BOOL3", true, 9)
					end
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Send rooster to source crates of\nair-freight cargo for the hangar")
					end
					ImGui.SameLine()
					HangarStaffSourced = ImGui.Checkbox("Fill Up##HangarStaffSourced", HangarStaffSourced, true)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Continuously send rooster to source crates of\nair-freight cargo for the hangar")
					end
				else
					if HangarStaffSourced then
						HangarStaffSourced = false
					end
					ImGui.Text("[ Your Hangar is full ]")
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Unavailable. Not enough storage space\nfor more air-freight cargo")
					end
				end
				
				HangarCargoSourceCooldown = ImGui.Checkbox("Remove Hangar Cargo Source Cooldown##HangarCargoSourceCooldown", HangarCargoSourceCooldown)
				
				ImGui.SeparatorText("Nightclub")
				
				--if ImGui.Button("Fill All Goods") then
				--	stats.set_int("MPX_HUB_PROD_TOTAL_0", 50)
				--	stats.set_int("MPX_HUB_PROD_TOTAL_1", 100)
				--	stats.set_int("MPX_HUB_PROD_TOTAL_2", 10)
				--	stats.set_int("MPX_HUB_PROD_TOTAL_3", 20)
				--	stats.set_int("MPX_HUB_PROD_TOTAL_4", 80)
				--	stats.set_int("MPX_HUB_PROD_TOTAL_5", 60)
				--	stats.set_int("MPX_HUB_PROD_TOTAL_6", 40)
				--end
				
				NightclubGoodsCapacity = ImGui.Checkbox("> Nightclub Goods Capacity", NightclubGoodsCapacity)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Toggle to expand for customize a units goods capacity")
				end
				if NightclubGoodsCapacity then
					CargoandShipmentsCapacity, drag = ImGui.DragInt("Cargo and Shipments##CargoandShipmentsCapacity", CargoandShipmentsCapacity, 10, 50, 500)
					if drag then
						CargoandShipmentsCapacity = math.min(math.max(CargoandShipmentsCapacity, 0), INT_MAX)
					end
					SportingGoodsCapacity, drag = ImGui.DragInt("Sporting Goods##SportingGoodsCapacity", SportingGoodsCapacity, 10, 100, 1000)
					if drag then
						SportingGoodsCapacity = math.min(math.max(SportingGoodsCapacity, 0), INT_MAX)
					end
					SouthAmericaImportsCapacity, drag = ImGui.DragInt("South America Imports##SouthAmericaImportsCapacity", SouthAmericaImportsCapacity, 10, 10, 100)
					if drag then
						SouthAmericaImportsCapacity = math.min(math.max(SouthAmericaImportsCapacity, 0), INT_MAX)
					end
					PharmaceuticalResearchCapacity, drag = ImGui.DragInt("Pharmaceutical Research##PharmaceuticalResearchCapacity", PharmaceuticalResearchCapacity, 10, 20, 200)
					if drag then
						PharmaceuticalResearchCapacity = math.min(math.max(PharmaceuticalResearchCapacity, 0), INT_MAX)
					end
					OrganicProduceCapacity, drag = ImGui.DragInt("Organic Produce##OrganicProduceCapacity", OrganicProduceCapacity, 10, 80, 800)
					if drag then
						OrganicProduceCapacity = math.min(math.max(OrganicProduceCapacity, 0), INT_MAX)
					end
					PrintingandCopyingCapacity, drag = ImGui.DragInt("Printing & Copying##PrintingandCopyingCapacity", PrintingandCopyingCapacity, 10, 60, 600)
					if drag then
						PrintingandCopyingCapacity = math.min(math.max(PrintingandCopyingCapacity, 0), INT_MAX)
					end
					CashCreationCapacity, drag = ImGui.DragInt("Cash Creation##CashCreationCapacity", CashCreationCapacity, 10, 40, 400)
					if drag then
						CashCreationCapacity = math.min(math.max(CashCreationCapacity, 0), INT_MAX)
					end
				end
				ImGui.EndTabItem()
			end
			
			if ImGui.BeginTabItem("Selling") then
				ImGui.SeparatorText("Special Cargo")
				
				SpecialCargoValue = ImGui.Checkbox("> Special Cargo Price##SpecialCargoValue", SpecialCargoValue)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Toggle to expand for customize a special cargo price")
				end
				if SpecialCargoValue then
					CratesValue1, drag = ImGui.DragInt("1 Crates##CratesValue1", CratesValue1, 50, 10000, 20000)
					if drag then
						CratesValue1 = math.min(math.max(CratesValue1, 0), 40000)
					end
					CratesValue2, drag = ImGui.DragInt("2 Crates##CratesValue2", CratesValue2, 50, 11000, 22000)
					if drag then
						CratesValue2 = math.min(math.max(CratesValue2, 0), 44000)
					end
					CratesValue3, drag = ImGui.DragInt("3 Crates##CratesValue3", CratesValue3, 50, 12000, 24000)
					if drag then
						CratesValue3 = math.min(math.max(CratesValue3, 0), 48000)
					end
					CratesValue45, drag = ImGui.DragInt("4-5 Crates##CratesValue45", CratesValue45, 50, 13000, 26000)
					if drag then
						CratesValue45 = math.min(math.max(CratesValue45, 0), 52000)
					end
					CratesValue67, drag = ImGui.DragInt("6-7 Crates##CratesValue67", CratesValue67, 50, 13500, 27000)
					if drag then
						CratesValue67 = math.min(math.max(CratesValue67, 0), 54000)
					end
					CratesValue89, drag = ImGui.DragInt("8-9 Crates##CratesValue89", CratesValue89, 50, 14000, 28000)
					if drag then
						CratesValue89 = math.min(math.max(CratesValue89, 0), 56000)
					end
					CratesValue1014, drag = ImGui.DragInt("10-14 Crates##CratesValue1014", CratesValue1014, 50, 14500, 29000)
					if drag then
						CratesValue1014 = math.min(math.max(CratesValue1014, 0), 58000)
					end
					CratesValue1519, drag = ImGui.DragInt("15-19 Crates##CratesValue1519", CratesValue1519, 50, 15000, 30000)
					if drag then
						CratesValue1519 = math.min(math.max(CratesValue1519, 0), 60000)
					end
					CratesValue2024, drag = ImGui.DragInt("20-24 Crates##CratesValue2024", CratesValue2024, 50, 15500, 31000)
					if drag then
						CratesValue2024 = math.min(math.max(CratesValue2024, 0), 62000)
					end
					CratesValue2529, drag = ImGui.DragInt("25-29 Crates##CratesValue2529", CratesValue2529, 50, 16000, 32000)
					if drag then
						CratesValue2529 = math.min(math.max(CratesValue2529, 0), 64000)
					end
					CratesValue3034, drag = ImGui.DragInt("30-34 Crates##CratesValue3034", CratesValue3034, 50, 16500, 33000)
					if drag then
						CratesValue3034 = math.min(math.max(CratesValue3034, 0), 66000)
					end
					CratesValue3539, drag = ImGui.DragInt("35-39 Crates##CratesValue3539", CratesValue3539, 50, 17000, 34000)
					if drag then
						CratesValue3539 = math.min(math.max(CratesValue3539, 0), 68000)
					end
					CratesValue4044, drag = ImGui.DragInt("40-44 Crates##CratesValue4044", CratesValue4044, 50, 17500, 35000)
					if drag then
						CratesValue4044 = math.min(math.max(CratesValue4044, 0), 70000)
					end
					CratesValue4549, drag = ImGui.DragInt("45-49 Crates##CratesValue4549", CratesValue4549, 50, 17750, 35500)
					if drag then
						CratesValue4549 = math.min(math.max(CratesValue4549, 0), 71000)
					end
					CratesValue5059, drag = ImGui.DragInt("50-59 Crates##CratesValue5059", CratesValue5059, 50, 18000, 36000)
					if drag then
						CratesValue5059 = math.min(math.max(CratesValue5059, 0), 72000)
					end
					CratesValue6069, drag = ImGui.DragInt("60-69 Crates##CratesValue6069", CratesValue6069, 50, 18250, 36500)
					if drag then
						CratesValue6069 = math.min(math.max(CratesValue6069, 0), 73000)
					end
					CratesValue7079, drag = ImGui.DragInt("70-79 Crates##CratesValue7079", CratesValue7079, 50, 18500, 37000)
					if drag then
						CratesValue7079 = math.min(math.max(CratesValue7079, 0), 74000)
					end
					CratesValue8089, drag = ImGui.DragInt("80-89 Crates##CratesValue8089", CratesValue8089, 50, 18750, 37500)
					if drag then
						CratesValue8089 = math.min(math.max(CratesValue8089, 0), 75000)
					end
					CratesValue9099, drag = ImGui.DragInt("90-99 Crates##CratesValue9099", CratesValue9099, 50, 19000, 38000)
					if drag then
						CratesValue9099 = math.min(math.max(CratesValue9099, 0), 76000)
					end
					CratesValue100110, drag = ImGui.DragInt("100-110 Crates##CratesValue100110", CratesValue100110, 50, 19500, 39000)
					if drag then
						CratesValue100110 = math.min(math.max(CratesValue100110, 0), 78000)
					end
					CratesValue111, drag = ImGui.DragInt("111 Crates##CratesValue111", CratesValue111, 50, 20000, 40000)
					if drag then
						CratesValue111 = math.min(math.max(CratesValue111, 0), 800000)
					end
				end
				
				SpecialCargoShipmentType = ImGui.Checkbox("Sell With Single Shipment##SpecialCargoShipmentType", SpecialCargoShipmentType)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Activate before selling. Support instant sales")
				end
				
				if ImGui.Button("Instant Sell##SpecialCargo") then
					locals_v_set_int(SupportVersion, GCS, SCVISl, 99999)
				end
				
				SpecialCargoSellCooldown = ImGui.Checkbox("Remove Special Cargo Sell Cooldown", SpecialCargoSellCooldown)
				
				ImGui.SeparatorText("Vehicle Cargo")
				
				VehicleCargoPaymentPrice = ImGui.Checkbox("> Vehicle Cargo Payment", VehicleCargoPaymentPrice)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Toggle to expand for customize a payment price")
				end
				if VehicleCargoPaymentPrice then
					VehicleStandardRange, drag = ImGui.DragInt("Vehicle Standard Range", VehicleStandardRange, 1000, 15000, 310000)
					if drag then
						VehicleStandardRange = math.min(math.max(VehicleStandardRange, 0), 310000)
					end
					VehicleMidRange, drag = ImGui.DragInt("Vehicle Mid Range", VehicleMidRange, 1000, 25000, 310000)
					if drag then
						VehicleMidRange = math.min(math.max(VehicleMidRange, 0), 310000)
					end
					VehicleTopRange, drag = ImGui.DragInt("Vehicle Top Range", VehicleTopRange, 1000, 40000, 310000)
					if drag then
						VehicleTopRange = math.min(math.max(VehicleTopRange, 0), 310000)
					end
				end
				
				VehicleCargoSellCooldown = ImGui.Checkbox("Remove Vehicle Cargo Sell Cooldown", VehicleCargoSellCooldown)
				
				ImGui.SeparatorText("Motorcycle Club Business")
				
				MCBusinessProductMultiplier = ImGui.Checkbox("> Sales Multiplier##MCBusinessProductMultiplier", MCBusinessProductMultiplier)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Toggle to expand for customize a sales multiplier")
				end
				if MCBusinessProductMultiplier then
					MCBusinessProductMultiplier1, drag = ImGui.DragFloat("Sales Location 1##MCBusinessProductMultiplier1", MCBusinessProductMultiplier1, 0.10, 1.00, 2.00, "%.2f")
					if drag then
						MCBusinessProductMultiplier1 = math.min(math.max(MCBusinessProductMultiplier1, 0), 4.00)
					end
					MCBusinessProductMultiplier2, drag = ImGui.DragFloat("Sales Location 2##MCBusinessProductMultiplier2", MCBusinessProductMultiplier2, 0.10, 1.50, 3.00, "%.2f")
					if drag then
						MCBusinessProductMultiplier2 = math.min(math.max(MCBusinessProductMultiplier2, 0), 6.00)
					end
				end
				
				MCBusinessShipmentType = ImGui.Checkbox("Sell With Other Shipment", MCBusinessShipmentType)
				if MCBusinessShipmentType then
					MCBusinessShipmentType0 = false
				end
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Activate before selling. Support instant sales")
				end
				ImGui.SameLine()
				MCBusinessShipmentType0 = ImGui.Checkbox("Sell With Single Shipment##MCBusinessShipmentType0", MCBusinessShipmentType0)
				if MCBusinessShipmentType0 then
					MCBusinessShipmentType = false
				end
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Activate before selling. Does not support instant sales")
				end
				
				MCBusinessSell, drag = ImGui.DragInt("Supply Sell", MCBusinessSell, 1, 0, 15)
				if ImGui.Button("Sell Supply Amount") then
					if locals_v_get_int(SupportVersion, GBCS, MCBSTl) >= 1 then
						locals_v_set_int(SupportVersion, GBCS, 704 + 122, MCBusinessSell) --704 + 122 = 826
					else
						gui.show_error("GoldenGets Selling - Error", "Not work with single Shipment, there will be no payment.")
					end
				end
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Not support with single shipment. There will be no payment.")
				end
				
				ImGui.SeparatorText("Bunker")
				
				BunkerValue = ImGui.Checkbox("> Bunker Product Price", BunkerValue)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Toggle to expand for customize a bunker price")
				end
				if BunkerValue then
					BunkerProduct, drag = ImGui.DragInt("Product", BunkerProduct, 100, 5000, 10000)
					if drag then
						BunkerProduct = math.min(math.max(BunkerProduct, 0), 20000)
					end
					BunkerEquipmentUpgrade, drag = ImGui.DragInt("Equipment Upgrade", BunkerEquipmentUpgrade, 100, 1000, 2000)
					if drag then
						BunkerEquipmentUpgrade = math.min(math.max(BunkerEquipmentUpgrade, 0), 4000)
					end
					BunkerStaffUpgrade, drag = ImGui.DragInt("Staff Upgrade", BunkerStaffUpgrade, 100, 1000, 2000)
					if drag then
						BunkerStaffUpgrade = math.min(math.max(BunkerStaffUpgrade, 0), 4000)
					end
				end
				
				if ImGui.Button("Instant Sell (Beta)##Bunker") then
					gui.show_message("Autoshipment","may show that the task failed, but you should get the money!")
					locals_v_set_int(SupportVersion, GB, BCISl, 0) 
					--  gb_gunrunning.c Local_1211.f_774
					--	while (iVar0 < func_837(func_3839(), func_60(), Local_1211.f_774, Local_1211.f_809))
					--  REMOVE_PARTICLE_FX_FROM_ENTITY
					gui.show_message("Autoship"," may show that the task failed, but you should get the money!")
				end
				
				ImGui.SeparatorText("Hangar Cargo")
				
				HangarSellRonsCut = ImGui.Checkbox("Remove Ron's Cut Hangar Sell", HangarSellRonsCut)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Delete Ron's cut payment sales")
				end
				
				if ImGui.Button("Instant Sell - Air##HangarCargo") then
				gui.show_message("Autoshipment","may show that the task failed, but you should get the money!")
					local integer = locals_v_get_int(SupportVersion, GS, HCVISl1)  --Local_1934.f_1078 SMOT_HLPDROP2
					locals_v_set_int(SupportVersion, GS, 1934 + 1035, integer) --1934 + 1035 = 2969
					gui.show_message("Autoshipment","may show that the task failed, but you should get the money!")
				end
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Only work for Air-Freight Cargo")
				end
				
				HangarCargoSellCooldown = ImGui.Checkbox("Remove Hangar Cargo Sell Cooldown", HangarCargoSellCooldown)
				
				ImGui.SeparatorText("Nightclub")
				
				NightclubGoodsValue = ImGui.Checkbox("> Nightclub Goods Price", NightclubGoodsValue)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Toggle to expand for customize a goods price")
				end
				if NightclubGoodsValue then
					CargoandShipmentsValue, drag = ImGui.DragInt("Cargo and Shipments##CargoandShipmentsValue", CargoandShipmentsValue, 1000, 10000, 20000)
					if drag then
						CargoandShipmentsValue = math.min(math.max(CargoandShipmentsValue, 0), 40000)
					end
					SportingGoodsValue, drag = ImGui.DragInt("Sporting Goods##SportingGoodsValue", SportingGoodsValue, 500, 5000, 10000)
					if drag then
						SportingGoodsValue = math.min(math.max(SportingGoodsValue, 0), 20000)
					end
					SouthAmericaImportsValue, drag = ImGui.DragInt("South America Imports##SouthAmericaImportsValue", SouthAmericaImportsValue, 1500, 27000, 54000)
					if drag then
						SouthAmericaImportsValue = math.min(math.max(SouthAmericaImportsValue, 0), 108000)
					end
					PharmaceuticalResearchValue, drag = ImGui.DragInt("Pharmaceutical Research##PharmaceuticalResearchValue", PharmaceuticalResearchValue, 75, 11475, 22950)
					if drag then
						PharmaceuticalResearchValue = math.min(math.max(PharmaceuticalResearchValue, 0), 45900)
					end
					OrganicProduceValue, drag = ImGui.DragInt("Organic Produce##OrganicProduceValue", OrganicProduceValue, 25, 2025, 4050)
					if drag then
						OrganicProduceValue = math.min(math.max(OrganicProduceValue, 0), 8100)
					end
					PrintingandCopyingValue, drag = ImGui.DragInt("Printing & Copying##PrintingandCopyingValue", PrintingandCopyingValue, 50, 1350, 2700)
					if drag then
						PrintingandCopyingValue = math.min(math.max(PrintingandCopyingValue, 0), 5400)
					end
					CashCreationValue, drag = ImGui.DragInt("Cash Creation##CashCreationValue", CashCreationValue, 25, 4725, 9450)
					if drag then
						CashCreationValue = math.min(math.max(CashCreationValue, 0), 18900)
					end
				end
				
				NightclubSellTonysCut = ImGui.Checkbox("Remove Tony's Cut Nightclub Sell", NightclubSellTonysCut)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Delete Tony's cut payment sales")
				end
				
				ImGui.SeparatorText("Acid Lab")
				
				if ImGui.Button("Instant Sell##AcidLab") then
					if locals_v_get_int(SupportVersion, FCALS) == true then -- https://www.unknowncheats.me/forum/3641612-post76.html
						if locals_v_get_int(SupportVersion, FCALS, ALISCl1) >= 1 then
							locals_v_set_int(SupportVersion, FCALS, ALISDl1 + 2, 10) -- Progress Delivery Mission
							locals_v_set_int(SupportVersion, FCALS, ALISDl1 + 3, 10) -- Must Delivery Mission
							script:sleep(1000)
							locals_v_set_int(SupportVersion, FCALS, ALISCl1, 2) -- Delivery Mission Passed
					--	else
					--		locals_v_set_int(SupportVersion, FCALS, ALISDl2, 3) -- Skip Fake Delivery Mission
					--		script:sleep(1000)
					--		if locals_v_get_int(SupportVersion, FCALS, ALISDl2) == 3 then
					--			locals_v_set_int(SupportVersion, FCALS, ALISDl2, 5)
					--			locals_v_set_int(SupportVersion, FCALS, ALISCl2, 5) -- Delivery Mission Passed
					--		end
						end
					--else
					--	locals_v_set_int(SupportVersion, FCALS, ALISDl3, 2)
					--	script:sleep(1000)
					--	locals_v_set_int(SupportVersion, FCALS, ALISCl3, 2) -- Delivery Mission Passed
					end
				end
				ImGui.EndTabItem()
			end
			ImGui.EndTabBar()
		end
		else
		ImGui.Text("\nUnavailable in Single Player.\n\n")
	end
end)

------------------------------------

BusinessRaids = false
AllBusinessIncome = false
NightclubIncome = false
NightclubPopularity = false
ArcadeIncome = false
AgencyIncome = false
AllAutoResupply = false
AllAutoResupply3 = false
MCBusinessAutoResupply = false
BunkerAutoResupply = false
AcidLabAutoResupply = false
AllReduceProduction = false
AllReduceProduction3 = false
MCBusinessReduceProduction = false
BunkerReduceProduction = false
AcidLabReduceProduction = false
AllProductionCooldown = false
AllProductionCooldown12 = false
MCBusinessProductionCooldown60s = false
MCBusinessProductionControl60s = 0
MCBusinessProductionCooldown5s = false
MCBusinessProductionControl5s = 0
BunkerProductionCooldown60s = false
BunkerProductionControl60s = 0
BunkerProductionCooldown5s = false
BunkerProductionControl5s = 0
BunkerResearchCooldown60s = false
BunkerResearchControl60s = 0
BunkerResearchCooldown5s = false
BunkerResearchControl5s = 0
NightclubProductionCooldownx4 = false
NightclubProductionControlx4 = 0
NightclubProductionCooldownx10 = false
NightclubProductionControlx10 = 0
NightclubProductionCooldownx20 = false
NightclubProductionControlx20 = 0
NightclubProductionCooldown5s = false
NightclubProductionControl5s = 0
AcidLabProductionCooldown60s = false
AcidLabProductionControl60s = 0
AcidLabProductionCooldown5s = false
AcidLabProductionControl5s = 0
AllEasyBusinessMission = false
VehicleCargoSourceMission = false
SpecialCargoBuyMission = false
SpecialCargoSellMission = false
MCBusinessStealMission = false
MCBusinessSellMission = false
HangarAirStealMission = false
HangarAirSellMission = false
NightclubSellMission = false
WarehouseAuto = false

script.register_looped("GoldenGets Controls", function (script)
	if BusinessRaids then
		if tunables.get_bool("EXEC_DISABLE_DEFEND_MISSIONS") ~= true then -- CEO Warehouse
			tunables.set_bool("EXEC_DISABLE_DEFEND_MISSIONS", true)
		end
		if tunables.get_bool("EXEC_DISABLE_DEFEND_FLEEING") ~= true then
			tunables.set_bool("EXEC_DISABLE_DEFEND_FLEEING", true)
		end
		if tunables.get_bool("EXEC_DISABLE_DEFEND_UNDER_ATTACK") ~= true then
			tunables.set_bool("EXEC_DISABLE_DEFEND_UNDER_ATTACK", true)
		end
		--if tunables.get_float("EXEC_WAREHOUSE_STOCK_DEFEND_THRESHOLD") ~= 9999 then
		--	tunables.set_float("EXEC_WAREHOUSE_STOCK_DEFEND_THRESHOLD", 9999)
		--end
		if tunables.get_bool("BIKER_DISABLE_DEFEND_GETAWAY") ~= true then -- MC Business
			tunables.set_bool("BIKER_DISABLE_DEFEND_GETAWAY", true)
		end
		if tunables.get_bool("BIKER_DISABLE_DEFEND_SHOOTOUT") ~= true then
			tunables.set_bool("BIKER_DISABLE_DEFEND_SHOOTOUT", true)
		end
		if tunables.get_bool("BIKER_DISABLE_DEFEND_CRASH_DEAL") ~= true then
			tunables.set_bool("BIKER_DISABLE_DEFEND_CRASH_DEAL", true)
		end
		if tunables.get_bool("BIKER_DISABLE_DEFEND_SNITCH") ~= true then
			tunables.set_bool("BIKER_DISABLE_DEFEND_SNITCH", true)
		end
		if tunables.get_bool("BIKER_DISABLE_DEFEND_RETRIEVAL") ~= true then
			tunables.set_bool("BIKER_DISABLE_DEFEND_RETRIEVAL", true)
		end
		--if tunables.get_int("BIKER_DEFEND_SHOOTOUT_PRODUCT_THRESHOLD") ~= 9999 then
		--	tunables.set_int("BIKER_DEFEND_SHOOTOUT_PRODUCT_THRESHOLD", 9999)
		--end
		--if tunables.get_int("BIKER_DEFEND_GETAWAY_PRODUCT_THRESHOLD") ~= 9999 then
		--	tunables.set_int("BIKER_DEFEND_GETAWAY_PRODUCT_THRESHOLD", 9999)
		--end
		--if tunables.get_int("BIKER_DEFEND_CRASH_DEAL_PRODUCT_THRESHOLD") ~= 9999 then
		--	tunables.set_int("BIKER_DEFEND_CRASH_DEAL_PRODUCT_THRESHOLD", 9999)
		--end
		--if tunables.get_int("BIKER_DEFEND_RETRIEVAL_PRODUCT_THRESHOLD") ~= 9999 then
		--	tunables.set_int("BIKER_DEFEND_RETRIEVAL_PRODUCT_THRESHOLD", 9999)
		--end
		--if tunables.get_int("BIKER_DEFEND_SNITCH_PRODUCT_THRESHOLD") ~= 9999 then
		--	tunables.set_int("BIKER_DEFEND_SNITCH_PRODUCT_THRESHOLD", 9999)
		--end
		if tunables.get_bool("GR_DEFEND_VALKYRIE_DISABLE_VALKYRIE") ~= true then -- Bunker
			tunables.set_bool("GR_DEFEND_VALKYRIE_DISABLE_VALKYRIE", true)
		end
		if tunables.get_bool("GR_DEFEND_DISARM_BOMBS_DISABLE_DISARM_BOMBS") ~= true then
			tunables.set_bool("GR_DEFEND_DISARM_BOMBS_DISABLE_DISARM_BOMBS", true)
		end
		--if tunables.get_int("GR_GENERAL_STOCK_LEVEL_LAUNCH_THRESHOLD") ~= 9999 then
		--	tunables.set_int("GR_GENERAL_STOCK_LEVEL_LAUNCH_THRESHOLD", 9999)
		--end
		if tunables.get_float("BB_DEFEND_MISSIONS_WEIGHTING_POLICE_RAID") ~= 0.000 then -- Nightclub
			tunables.set_float("BB_DEFEND_MISSIONS_WEIGHTING_POLICE_RAID", 0.000)
		end
		if tunables.get_float("BB_DEFEND_MISSIONS_WEIGHTING_RECOVER_PROPERTY") ~= 0.000 then
			tunables.set_float("BB_DEFEND_MISSIONS_WEIGHTING_RECOVER_PROPERTY", 0.000)
		end
		--if tunables.get_float("BB_DEFEND_MISSIONS_STOCK_THRESHOLD_FOR_MISSION_LAUNCH_DEFAULT") ~= 9999 then
		--	tunables.set_float("BB_DEFEND_MISSIONS_STOCK_THRESHOLD_FOR_MISSION_LAUNCH_DEFAULT", 9999)
		--end
		--if tunables.get_float("BB_DEFEND_MISSIONS_STOCK_THRESHOLD_FOR_MISSION_LAUNCH_UPGRADED") ~= 9999 then
		--	tunables.set_float("BB_DEFEND_MISSIONS_STOCK_THRESHOLD_FOR_MISSION_LAUNCH_UPGRADED", 9999)
		--end
	else
		tunables.set_bool("EXEC_DISABLE_DEFEND_MISSIONS", false) -- CEO Warehouse
		tunables.set_bool("EXEC_DISABLE_DEFEND_FLEEING", false)
		tunables.set_bool("EXEC_DISABLE_DEFEND_UNDER_ATTACK", false)
		--tunables.set_float("EXEC_WAREHOUSE_STOCK_DEFEND_THRESHOLD", 0.700)
		tunables.set_bool("BIKER_DISABLE_DEFEND_GETAWAY", false) -- MC Business
		tunables.set_bool("BIKER_DISABLE_DEFEND_SHOOTOUT", false)
		tunables.set_bool("BIKER_DISABLE_DEFEND_CRASH_DEAL", false)
		tunables.set_bool("BIKER_DISABLE_DEFEND_SNITCH", false)
		tunables.set_bool("BIKER_DISABLE_DEFEND_RETRIEVAL", false)
		--tunables.set_int("BIKER_DEFEND_SHOOTOUT_PRODUCT_THRESHOLD", 20)
		--tunables.set_int("BIKER_DEFEND_GETAWAY_PRODUCT_THRESHOLD", 20)
		--tunables.set_int("BIKER_DEFEND_CRASH_DEAL_PRODUCT_THRESHOLD", 20)
		--tunables.set_int("BIKER_DEFEND_RETRIEVAL_PRODUCT_THRESHOLD", 20)
		--tunables.set_int("BIKER_DEFEND_SNITCH_PRODUCT_THRESHOLD", 20)
		tunables.set_bool("GR_DEFEND_VALKYRIE_DISABLE_VALKYRIE", false) -- Bunker
		tunables.set_bool("GR_DEFEND_DISARM_BOMBS_DISABLE_DISARM_BOMBS", false)
		--tunables.set_int("GR_GENERAL_STOCK_LEVEL_LAUNCH_THRESHOLD", 50)
		tunables.set_float("BB_DEFEND_MISSIONS_WEIGHTING_POLICE_RAID", 1.000) -- Nightclub
		tunables.set_float("BB_DEFEND_MISSIONS_WEIGHTING_RECOVER_PROPERTY", 1.000)
		--tunables.set_float("BB_DEFEND_MISSIONS_STOCK_THRESHOLD_FOR_MISSION_LAUNCH_DEFAULT", 0.200)
		--tunables.set_float("BB_DEFEND_MISSIONS_STOCK_THRESHOLD_FOR_MISSION_LAUNCH_UPGRADED", 0.400)
	end
	
	if NightclubIncome then
		--if tunables.get_int("NIGHTCLUBMAXSAFEVALUE") ~= 250000 then
		--	tunables.set_int("NIGHTCLUBMAXSAFEVALUE", 250000)
		--end
		if tunables.get_int("NIGHTCLUBINCOMEUPTOPOP5") ~= 250000 then
			tunables.set_int("NIGHTCLUBINCOMEUPTOPOP5", 250000)
		end
		if tunables.get_int("NIGHTCLUBINCOMEUPTOPOP10") ~= 250000 then
			tunables.set_int("NIGHTCLUBINCOMEUPTOPOP10", 250000)
		end
		if tunables.get_int("NIGHTCLUBINCOMEUPTOPOP15") ~= 250000 then
			tunables.set_int("NIGHTCLUBINCOMEUPTOPOP15", 250000)
		end
		if tunables.get_int("NIGHTCLUBINCOMEUPTOPOP20") ~= 250000 then
			tunables.set_int("NIGHTCLUBINCOMEUPTOPOP20", 250000)
		end
		if tunables.get_int("NIGHTCLUBINCOMEUPTOPOP25") ~= 250000 then
			tunables.set_int("NIGHTCLUBINCOMEUPTOPOP25", 250000)
		end
		if tunables.get_int("NIGHTCLUBINCOMEUPTOPOP30") ~= 250000 then
			tunables.set_int("NIGHTCLUBINCOMEUPTOPOP30", 250000)
		end
		if tunables.get_int("NIGHTCLUBINCOMEUPTOPOP35") ~= 250000 then
			tunables.set_int("NIGHTCLUBINCOMEUPTOPOP35", 250000)
		end
		if tunables.get_int("NIGHTCLUBINCOMEUPTOPOP40") ~= 250000 then
			tunables.set_int("NIGHTCLUBINCOMEUPTOPOP40", 250000)
		end
		if tunables.get_int("NIGHTCLUBINCOMEUPTOPOP45") ~= 250000 then
			tunables.set_int("NIGHTCLUBINCOMEUPTOPOP45", 250000)
		end
		if tunables.get_int("NIGHTCLUBINCOMEUPTOPOP50") ~= 250000 then
			tunables.set_int("NIGHTCLUBINCOMEUPTOPOP50", 250000)
		end
		if tunables.get_int("NIGHTCLUBINCOMEUPTOPOP55") ~= 250000 then
			tunables.set_int("NIGHTCLUBINCOMEUPTOPOP55", 250000)
		end
		if tunables.get_int("NIGHTCLUBINCOMEUPTOPOP60") ~= 250000 then
			tunables.set_int("NIGHTCLUBINCOMEUPTOPOP60", 250000)
		end
		if tunables.get_int("NIGHTCLUBINCOMEUPTOPOP65") ~= 250000 then
			tunables.set_int("NIGHTCLUBINCOMEUPTOPOP65", 250000)
		end
		if tunables.get_int("NIGHTCLUBINCOMEUPTOPOP70") ~= 250000 then
			tunables.set_int("NIGHTCLUBINCOMEUPTOPOP70", 250000)
		end
		if tunables.get_int("NIGHTCLUBINCOMEUPTOPOP75") ~= 250000 then
			tunables.set_int("NIGHTCLUBINCOMEUPTOPOP75", 250000)
		end
		if tunables.get_int("NIGHTCLUBINCOMEUPTOPOP80") ~= 250000 then
			tunables.set_int("NIGHTCLUBINCOMEUPTOPOP80", 250000)
		end
		if tunables.get_int("NIGHTCLUBINCOMEUPTOPOP85") ~= 250000 then
			tunables.set_int("NIGHTCLUBINCOMEUPTOPOP85", 250000)
		end
		if tunables.get_int("NIGHTCLUBINCOMEUPTOPOP90") ~= 250000 then
			tunables.set_int("NIGHTCLUBINCOMEUPTOPOP90", 250000)
		end
		if tunables.get_int("NIGHTCLUBINCOMEUPTOPOP95") ~= 250000 then
			tunables.set_int("NIGHTCLUBINCOMEUPTOPOP95", 250000)
		end
		if tunables.get_int("NIGHTCLUBINCOMEUPTOPOP100") ~= 250000 then
			tunables.set_int("NIGHTCLUBINCOMEUPTOPOP100", 250000)
		end
	else
		--tunables.set_int("NIGHTCLUBMAXSAFEVALUE", 250000)
		tunables.set_int("NIGHTCLUBINCOMEUPTOPOP5", 1500)
		tunables.set_int("NIGHTCLUBINCOMEUPTOPOP10", 1600)
		tunables.set_int("NIGHTCLUBINCOMEUPTOPOP15", 1800)
		tunables.set_int("NIGHTCLUBINCOMEUPTOPOP20", 2000)
		tunables.set_int("NIGHTCLUBINCOMEUPTOPOP25", 2200)
		tunables.set_int("NIGHTCLUBINCOMEUPTOPOP30", 2500)
		tunables.set_int("NIGHTCLUBINCOMEUPTOPOP35", 8000)
		tunables.set_int("NIGHTCLUBINCOMEUPTOPOP40", 8500)
		tunables.set_int("NIGHTCLUBINCOMEUPTOPOP45", 9000)
		tunables.set_int("NIGHTCLUBINCOMEUPTOPOP50", 9500)
		tunables.set_int("NIGHTCLUBINCOMEUPTOPOP55", 10000)
		tunables.set_int("NIGHTCLUBINCOMEUPTOPOP60", 20000)
		tunables.set_int("NIGHTCLUBINCOMEUPTOPOP65", 21000)
		tunables.set_int("NIGHTCLUBINCOMEUPTOPOP70", 22000)
		tunables.set_int("NIGHTCLUBINCOMEUPTOPOP75", 23000)
		tunables.set_int("NIGHTCLUBINCOMEUPTOPOP80", 24000)
		tunables.set_int("NIGHTCLUBINCOMEUPTOPOP85", 25000)
		tunables.set_int("NIGHTCLUBINCOMEUPTOPOP90", 45000)
		tunables.set_int("NIGHTCLUBINCOMEUPTOPOP95", 50000)
		tunables.set_int("NIGHTCLUBINCOMEUPTOPOP100", 50000)
	end
	
	if NightclubPopularity then
		stats.set_int("MPX_CLUB_POPULARITY", 1000)
	end
	
	if ArcadeIncome then
		--if tunables.get_int("MAXARCADESAFESTORAGE") ~= 100000 then
		--	tunables.set_int("MAXARCADESAFESTORAGE", 100000)
		--end
		if tunables.get_int("MAXARCADEPAYOUTPERDAY") ~= 100000 then
			tunables.set_int("MAXARCADEPAYOUTPERDAY", 100000)
		end
		if tunables.get_int("MINPAYOUTPERCABINET") ~= 100000 then
			tunables.set_int("MINPAYOUTPERCABINET", 100000)
		end
		if tunables.get_int("MAXPAYOUTPERCABINET") ~= 100000 then
			tunables.set_int("MAXPAYOUTPERCABINET", 100000)
		end
		if tunables.get_int("ARCADECABINETPAYOUTINCREMENT") ~= 100000 then
			tunables.set_int("ARCADECABINETPAYOUTINCREMENT", 100000)
		end
		if tunables.get_int("ARCADESCORESCREENSPAYOUTBONUS") ~= 100000 then
			tunables.set_int("ARCADESCORESCREENSPAYOUTBONUS", 100000)
		end
		if tunables.get_int("ARCADENEONFEATUREPAYOUTBONUS") ~= 100000 then
			tunables.set_int("ARCADENEONFEATUREPAYOUTBONUS", 100000)
		end
		if tunables.get_int("ARCADEALLTROPHIESPAYOUTBONUS") ~= 100000 then
			tunables.set_int("ARCADEALLTROPHIESPAYOUTBONUS", 100000)
		end
		if tunables.get_int("ARCADEPAYOUTPERTROPHY") ~= 100000 then
			tunables.set_int("ARCADEPAYOUTPERTROPHY", 100000)
		end
	else
		--tunables.set_int("MAXARCADESAFESTORAGE", 100000)
		tunables.set_int("MAXARCADEPAYOUTPERDAY", 5000)
		tunables.set_int("MINPAYOUTPERCABINET", 200)
		tunables.set_int("MAXPAYOUTPERCABINET", 250)
		tunables.set_int("ARCADECABINETPAYOUTINCREMENT", 10)
		tunables.set_int("ARCADESCORESCREENSPAYOUTBONUS", 125)
		tunables.set_int("ARCADENEONFEATUREPAYOUTBONUS", 125)
		tunables.set_int("ARCADEALLTROPHIESPAYOUTBONUS", 350)
		tunables.set_int("ARCADEPAYOUTPERTROPHY", 50)
	end
	
	if AgencyIncome then
		--if tunables.get_int("MAXFIXERHQSAFESTORAGE") ~= 250000 then
		--	tunables.set_int("MAXFIXERHQSAFESTORAGE", 250000)
		--end
		if tunables.get_int("MAXFIXERHQPAYOUTPERDAY") ~= 250000 then
			tunables.set_int("MAXFIXERHQPAYOUTPERDAY", 250000)
		end
	else
		--tunables.set_int("MAXFIXERHQSAFESTORAGE", 250000)
		tunables.set_int("MAXFIXERHQPAYOUTPERDAY", 5000)
	end
	
	if MCBusinessAutoResupply then
		if stats.get_int("MPX_PROP_FAC_SLOT0") ~= 0 then
			if stats.get_int ("MPX_MATTOTALFORFACTORY0") <= 18 then -- Cocaine Lockup
			script:sleep(5000)
				locals_v_set_int(SupportVersion, GSIg + 0 + 1, 1)
				script:sleep(10000)
			end
		end
		if stats.get_int("MPX_PROP_FAC_SLOT1") ~= 0 then
			if stats.get_int ("MPX_MATTOTALFORFACTORY1") <= 11 then -- Methamphetamine Lab
			script:sleep(5000)
				locals_v_set_int(SupportVersion, GSIg + 1 + 1, 1)
				script:sleep(10000)
			end
		end
		if stats.get_int("MPX_PROP_FAC_SLOT2") ~= 0 then
			if stats.get_int ("MPX_MATTOTALFORFACTORY2") <= 7 then -- Weed Farm
			script:sleep(5000)
				locals_v_set_int(SupportVersion, GSIg + 2 + 1, 1)
				script:sleep(10000)
			end
		end
		if stats.get_int("MPX_PROP_FAC_SLOT3") ~= 0 then
			if stats.get_int ("MPX_MATTOTALFORFACTORY3") <= 5 then -- Counterfeit Cash Factory
			script:sleep(5000)
				locals_v_set_int(SupportVersion, GSIg + 3 + 1, 1)
				script:sleep(10000)
			end
		end
		if stats.get_int("MPX_PROP_FAC_SLOT4") ~= 0 then
			if stats.get_int ("MPX_MATTOTALFORFACTORY4") <= 3 then -- Document Forgery
			script:sleep(5000)
				locals_v_set_int(SupportVersion, GSIg + 4 + 1, 1)
				script:sleep(10000)
			end
		end
	end
	
	if BunkerAutoResupply then
		if stats.get_int("MPX_PROP_FAC_SLOT5") ~= 0 then
			if stats.get_int ("MPX_MATTOTALFORFACTORY5") <= 10 then
			script:sleep(5000)
				locals_v_set_int(SupportVersion, GSIg + 5 + 1, 1)
				script:sleep(10000)
			end
		end
	end
	
	if AcidLabAutoResupply then
		if stats.get_int("MPX_PROP_FAC_SLOT6") ~= 0 then
			if stats.get_int ("MPX_MATTOTALFORFACTORY6") <= 2 then
			script:sleep(5000)
				locals_v_set_int(SupportVersion, GSIg + 6 + 1, 1)
				script:sleep(10000)
			end
		end
	end
	
	if MCBusinessReduceProduction then
        if tunables.get_int("BIKER_CRACK_MATERIAL_PRODUCT_COST") ~= 1 then
			tunables.set_int("BIKER_CRACK_MATERIAL_PRODUCT_COST", 1)
		end
        if tunables.get_int("BIKER_CRACK_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION") ~= 1 then
			tunables.set_int("BIKER_CRACK_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION", 1)
		end
        if tunables.get_int("BIKER_METH_MATERIAL_PRODUCT_COST") ~= 1 then
			tunables.set_int("BIKER_METH_MATERIAL_PRODUCT_COST", 1)
		end
        if tunables.get_int("BIKER_METH_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION") ~= 1 then
			tunables.set_int("BIKER_METH_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION", 1)
		end
        if tunables.get_int("BIKER_WEED_MATERIAL_PRODUCT_COST") ~= 1 then
			tunables.set_int("BIKER_WEED_MATERIAL_PRODUCT_COST", 1)
		end
        if tunables.get_int("BIKER_WEED_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION") ~= 1 then
			tunables.set_int("BIKER_WEED_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION", 1)
		end
        if tunables.get_int("BIKER_COUNTERCASH_MATERIAL_PRODUCT_COST") ~= 1 then
			tunables.set_int("BIKER_COUNTERCASH_MATERIAL_PRODUCT_COST", 1)
		end
        if tunables.get_int("BIKER_COUNTERCASH_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION") ~= 1 then
			tunables.set_int("BIKER_COUNTERCASH_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION", 1)
		end
        if tunables.get_int("BIKER_FAKEIDS_MATERIAL_PRODUCT_COST") ~= 1 then
			tunables.set_int("BIKER_FAKEIDS_MATERIAL_PRODUCT_COST", 1)
		end
        if tunables.get_int("BIKER_FAKEIDS_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION") ~= 1 then
			tunables.set_int("BIKER_FAKEIDS_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION", 1)
		end
	else
		tunables.set_int("BIKER_CRACK_MATERIAL_PRODUCT_COST", 50)
		tunables.set_int("BIKER_CRACK_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION", 25)
		tunables.set_int("BIKER_METH_MATERIAL_PRODUCT_COST", 24)
		tunables.set_int("BIKER_METH_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION", 12)
		tunables.set_int("BIKER_WEED_MATERIAL_PRODUCT_COST", 4)
		tunables.set_int("BIKER_WEED_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION", 2)
		tunables.set_int("BIKER_COUNTERCASH_MATERIAL_PRODUCT_COST", 10)
		tunables.set_int("BIKER_COUNTERCASH_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION", 5)
		tunables.set_int("BIKER_FAKEIDS_MATERIAL_PRODUCT_COST", 4)
		tunables.set_int("BIKER_FAKEIDS_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION", 2)
	end
	
	if BunkerReduceProduction then
        if tunables.get_int("GR_MANU_MATERIAL_PRODUCT_COST") ~= 1 then
			tunables.set_int("GR_MANU_MATERIAL_PRODUCT_COST", 1)
		end
        if tunables.get_int("GR_MANU_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION") ~= 1 then
			tunables.set_int("GR_MANU_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION", 1)
		end
        if tunables.get_int("GR_RESEARCH_MATERIAL_PRODUCT_COST") ~= 1 then
			tunables.set_int("GR_RESEARCH_MATERIAL_PRODUCT_COST", 1)
		end
        if tunables.get_int("GR_RESEARCH_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION") ~= 1 then
			tunables.set_int("GR_RESEARCH_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION", 1)
		end
	else
		tunables.set_int("GR_MANU_MATERIAL_PRODUCT_COST", 10)
		tunables.set_int("GR_MANU_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION", 5)
		tunables.set_int("GR_RESEARCH_MATERIAL_PRODUCT_COST", 2)
		tunables.set_int("GR_RESEARCH_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION", 1)
	end
	
	if AcidLabReduceProduction then
        if tunables.get_int("BIKER_ACID_MATERIAL_PRODUCT_COST") ~= 1 then
			tunables.set_int("BIKER_ACID_MATERIAL_PRODUCT_COST", 1)
		end
        if tunables.get_int("BIKER_ACID_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION") ~= 1 then
			tunables.set_int("BIKER_ACID_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION", 1)
		end
	else
		tunables.set_int("BIKER_ACID_MATERIAL_PRODUCT_COST", 2)
		tunables.set_int("BIKER_ACID_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION", 1)
	end
	
    if MCBusinessProductionCooldown60s then
        if MCBusinessProductionControl60s == 0 then
            tunables.set_int("BIKER_FAKEIDS_UPGRADE_EQUIPMENT_REDUCTION_TIME", 0)
            tunables.set_int("BIKER_COUNTERCASH_UPGRADE_EQUIPMENT_REDUCTION_TIME", 0)
            tunables.set_int("BIKER_CRACK_UPGRADE_EQUIPMENT_REDUCTION_TIME", 0)
            tunables.set_int("BIKER_METH_UPGRADE_EQUIPMENT_REDUCTION_TIME", 0)
            tunables.set_int("BIKER_WEED_UPGRADE_EQUIPMENT_REDUCTION_TIME", 0)
			
            tunables.set_int("BIKER_FAKEIDS_UPGRADE_STAFF_REDUCTION_TIME", 0)
            tunables.set_int("BIKER_COUNTERCASH_UPGRADE_STAFF_REDUCTION_TIME", 0)
            tunables.set_int("BIKER_CRACK_UPGRADE_STAFF_REDUCTION_TIME", 0)
            tunables.set_int("BIKER_METH_UPGRADE_STAFF_REDUCTION_TIME", 0)
            tunables.set_int("BIKER_WEED_UPGRADE_STAFF_REDUCTION_TIME", 0)
            gui.show_message("MC Business Speed60s","It will take effect the next time production is triggered. You can change session immediately")
        end
        if tunables.get_int("BIKER_WEED_PRODUCTION_TIME") ~= 60000 then
            tunables.set_int("BIKER_WEED_PRODUCTION_TIME", 60000)
        end
        if tunables.get_int("BIKER_METH_PRODUCTION_TIME") ~= 60000 then
            tunables.set_int("BIKER_METH_PRODUCTION_TIME", 60000)
        end
        if tunables.get_int("BIKER_CRACK_PRODUCTION_TIME") ~= 60000 then
            tunables.set_int("BIKER_CRACK_PRODUCTION_TIME", 60000)
        end
        if tunables.get_int("BIKER_FAKEIDS_PRODUCTION_TIME") ~= 60000 then
            tunables.set_int("BIKER_FAKEIDS_PRODUCTION_TIME", 60000)
        end
        if tunables.get_int("BIKER_COUNTERCASH_PRODUCTION_TIME") ~= 60000 then
            tunables.set_int("BIKER_COUNTERCASH_PRODUCTION_TIME", 60000)
        end
        MCBusinessProductionControl60s = 1
    else
        if MCBusinessProductionControl60s == 1 then
            tunables.set_int("BIKER_WEED_PRODUCTION_TIME", 360000) 
            tunables.set_int("BIKER_METH_PRODUCTION_TIME", 1800000) 
            tunables.set_int("BIKER_CRACK_PRODUCTION_TIME", 3000000) 
            tunables.set_int("BIKER_FAKEIDS_PRODUCTION_TIME", 300000) 
            tunables.set_int("BIKER_COUNTERCASH_PRODUCTION_TIME", 720000)
			
            tunables.set_int("BIKER_FAKEIDS_UPGRADE_EQUIPMENT_REDUCTION_TIME", 60000)
            tunables.set_int("BIKER_COUNTERCASH_UPGRADE_EQUIPMENT_REDUCTION_TIME", 120000)
            tunables.set_int("BIKER_CRACK_UPGRADE_EQUIPMENT_REDUCTION_TIME", 600000)
            tunables.set_int("BIKER_METH_UPGRADE_EQUIPMENT_REDUCTION_TIME", 360000)
            tunables.set_int("BIKER_WEED_UPGRADE_EQUIPMENT_REDUCTION_TIME", 60000)
			
            tunables.set_int("BIKER_FAKEIDS_UPGRADE_STAFF_REDUCTION_TIME", 45000)
            tunables.set_int("BIKER_COUNTERCASH_UPGRADE_STAFF_REDUCTION_TIME", 45000)
            tunables.set_int("BIKER_CRACK_UPGRADE_STAFF_REDUCTION_TIME", 45000)
            tunables.set_int("BIKER_METH_UPGRADE_STAFF_REDUCTION_TIME", 45000)
            tunables.set_int("BIKER_WEED_UPGRADE_STAFF_REDUCTION_TIME", 45000)
            MCBusinessProductionControl60s = 0
        end
    end
	
    if MCBusinessProductionCooldown5s then
        if MCBusinessProductionControl5s == 0 then
			gui.show_message("MC Business Speed5s","It will take effect the next time production is triggered. You can change session immediately")
            tunables.set_int("BIKER_FAKEIDS_UPGRADE_EQUIPMENT_REDUCTION_TIME", 0)
            tunables.set_int("BIKER_COUNTERCASH_UPGRADE_EQUIPMENT_REDUCTION_TIME", 0)
            tunables.set_int("BIKER_CRACK_UPGRADE_EQUIPMENT_REDUCTION_TIME", 0)
            tunables.set_int("BIKER_METH_UPGRADE_EQUIPMENT_REDUCTION_TIME", 0)
            tunables.set_int("BIKER_WEED_UPGRADE_EQUIPMENT_REDUCTION_TIME", 0)
			
            tunables.set_int("BIKER_FAKEIDS_UPGRADE_STAFF_REDUCTION_TIME", 0)
            tunables.set_int("BIKER_COUNTERCASH_UPGRADE_STAFF_REDUCTION_TIME", 0)
            tunables.set_int("BIKER_CRACK_UPGRADE_STAFF_REDUCTION_TIME", 0)
            tunables.set_int("BIKER_METH_UPGRADE_STAFF_REDUCTION_TIME", 0)
            tunables.set_int("BIKER_WEED_UPGRADE_STAFF_REDUCTION_TIME", 0)
        end
        if tunables.get_int("BIKER_WEED_PRODUCTION_TIME") ~= 5000 then
            tunables.set_int("BIKER_WEED_PRODUCTION_TIME", 5000)
        end
        if tunables.get_int("BIKER_METH_PRODUCTION_TIME") ~= 5000 then
            tunables.set_int("BIKER_METH_PRODUCTION_TIME", 5000)
        end
        if tunables.get_int("BIKER_CRACK_PRODUCTION_TIME") ~= 5000 then
            tunables.set_int("BIKER_CRACK_PRODUCTION_TIME", 5000)
        end
        if tunables.get_int("BIKER_FAKEIDS_PRODUCTION_TIME") ~= 5000 then
            tunables.set_int("BIKER_FAKEIDS_PRODUCTION_TIME", 5000)
        end
        if tunables.get_int("BIKER_COUNTERCASH_PRODUCTION_TIME") ~= 5000 then
            tunables.set_int("BIKER_COUNTERCASH_PRODUCTION_TIME", 5000)
        end
        MCBusinessProductionControl5s = 1
    else
        if MCBusinessProductionControl5s == 1 then 
            tunables.set_int("BIKER_WEED_PRODUCTION_TIME", 360000) 
            tunables.set_int("BIKER_METH_PRODUCTION_TIME", 1800000) 
            tunables.set_int("BIKER_CRACK_PRODUCTION_TIME", 3000000) 
            tunables.set_int("BIKER_FAKEIDS_PRODUCTION_TIME", 300000) 
            tunables.set_int("BIKER_COUNTERCASH_PRODUCTION_TIME", 720000)
			
            tunables.set_int("BIKER_FAKEIDS_UPGRADE_EQUIPMENT_REDUCTION_TIME", 60000)
            tunables.set_int("BIKER_COUNTERCASH_UPGRADE_EQUIPMENT_REDUCTION_TIME", 120000)
            tunables.set_int("BIKER_CRACK_UPGRADE_EQUIPMENT_REDUCTION_TIME", 600000)
            tunables.set_int("BIKER_METH_UPGRADE_EQUIPMENT_REDUCTION_TIME", 360000)
            tunables.set_int("BIKER_WEED_UPGRADE_EQUIPMENT_REDUCTION_TIME", 60000)
			
            tunables.set_int("BIKER_FAKEIDS_UPGRADE_STAFF_REDUCTION_TIME", 45000)
            tunables.set_int("BIKER_COUNTERCASH_UPGRADE_STAFF_REDUCTION_TIME", 45000)
            tunables.set_int("BIKER_CRACK_UPGRADE_STAFF_REDUCTION_TIME", 45000)
            tunables.set_int("BIKER_METH_UPGRADE_STAFF_REDUCTION_TIME", 45000)
            tunables.set_int("BIKER_WEED_UPGRADE_STAFF_REDUCTION_TIME", 45000)
            MCBusinessProductionControl5s = 0
        end    
    end
	
    if BunkerProductionCooldown60s then
        if BunkerProductionControl60s == 0 then
            gui.show_message("Bunker Speed60s","It will take effect the next time production is triggered. You can change session immediately")
        end
        if tunables.get_int("GR_MANU_PRODUCTION_TIME") ~= 60000 then
            tunables.set_int("GR_MANU_PRODUCTION_TIME", 60000)
        end
        if tunables.get_int("GR_MANU_UPGRADE_EQUIPMENT_REDUCTION_TIME") ~= 60000 then
            tunables.set_int("GR_MANU_UPGRADE_EQUIPMENT_REDUCTION_TIME", 60000)
        end
        if tunables.get_int("GR_MANU_UPGRADE_STAFF_REDUCTION_TIME") ~= 60000 then
            tunables.set_int("GR_MANU_UPGRADE_STAFF_REDUCTION_TIME", 60000)
        end
        BunkerProductionControl60s = 1
    else
        if BunkerProductionControl60s == 1 then
            tunables.set_int("GR_MANU_PRODUCTION_TIME", 600000)
            tunables.set_int("GR_MANU_UPGRADE_EQUIPMENT_REDUCTION_TIME", 90000)
            tunables.set_int("GR_MANU_UPGRADE_STAFF_REDUCTION_TIME", 90000)
            BunkerProductionControl60s = 0
        end
    end
	
    if BunkerProductionCooldown5s then
        if BunkerProductionControl5s == 0 then
			gui.show_message("Bunker Speed5s","It will take effect the next time production is triggered. You can change session immediately")
        end
        if tunables.get_int("GR_MANU_PRODUCTION_TIME") ~= 5000 then
            tunables.set_int("GR_MANU_PRODUCTION_TIME", 5000)
        end
        if tunables.get_int("GR_MANU_UPGRADE_EQUIPMENT_REDUCTION_TIME") ~= 5000 then
            tunables.set_int("GR_MANU_UPGRADE_EQUIPMENT_REDUCTION_TIME", 5000)
        end
        if tunables.get_int("GR_MANU_UPGRADE_STAFF_REDUCTION_TIME") ~= 5000 then
            tunables.set_int("GR_MANU_UPGRADE_STAFF_REDUCTION_TIME", 5000)
        end
        BunkerProductionControl5s = 1
    else
        if BunkerProductionControl5s == 1 then
            tunables.set_int("GR_MANU_PRODUCTION_TIME", 600000)
            tunables.set_int("GR_MANU_UPGRADE_EQUIPMENT_REDUCTION_TIME", 90000)
            tunables.set_int("GR_MANU_UPGRADE_STAFF_REDUCTION_TIME", 90000)
            BunkerProductionControl5s = 0
        end    
    end
	
    if BunkerResearchCooldown60s then
        if BunkerResearchControl60s == 0 then
            gui.show_message("Research Speed60s","It will take effect the next time production is triggered. You can change session immediately")
        end
        if tunables.get_int("GR_RESEARCH_PRODUCTION_TIME") ~= 60000 then
            tunables.set_int("GR_RESEARCH_PRODUCTION_TIME", 60000)
        end
        if tunables.get_int("GR_RESEARCH_UPGRADE_EQUIPMENT_REDUCTION_TIME") ~= 60000 then
            tunables.set_int("GR_RESEARCH_UPGRADE_EQUIPMENT_REDUCTION_TIME", 60000)
        end
        BunkerResearchControl60s = 1
    else
        if BunkerResearchControl60s == 1 then
            tunables.set_int("GR_RESEARCH_PRODUCTION_TIME", 300000)
            tunables.set_int("GR_RESEARCH_UPGRADE_EQUIPMENT_REDUCTION_TIME", 45000)
            BunkerResearchControl60s = 0
        end
    end
	
    if BunkerResearchCooldown5s then
        if BunkerResearchControl5s == 0 then
			gui.show_message("Research Speed5s","It will take effect the next time production is triggered. You can change session immediately")
        end
        if tunables.get_int("GR_RESEARCH_PRODUCTION_TIME") ~= 5000 then
            tunables.set_int("GR_RESEARCH_PRODUCTION_TIME", 5000)
        end
        if tunables.get_int("GR_RESEARCH_UPGRADE_EQUIPMENT_REDUCTION_TIME") ~= 5000 then
            tunables.set_int("GR_RESEARCH_UPGRADE_EQUIPMENT_REDUCTION_TIME", 5000)
        end
        BunkerResearchControl5s = 1
    else
        if BunkerResearchControl5s == 1 then
            tunables.set_int("GR_RESEARCH_PRODUCTION_TIME", 300000)
            tunables.set_int("GR_RESEARCH_UPGRADE_EQUIPMENT_REDUCTION_TIME", 45000)
            BunkerResearchControl5s = 0
        end
    end
	
    if NightclubProductionCooldownx4 then -- x4
        if NightclubProductionControlx4 == 0 then
            gui.show_message("Nightclub Speedx4","It will take effect the next time production is triggered. Reassign employees to take effect immediately")
        end
        if tunables.get_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_CARGO") ~= 2100000 then -- Cargo and Shipments
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_CARGO", 2100000)
        end
        if tunables.get_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_WEAPONS") ~= 3600000 then -- Sporting Goods
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_WEAPONS", 3600000)
        end
        if tunables.get_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_COKE") ~= 1800000 then -- South America Imports
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_COKE", 1800000)
        end
        if tunables.get_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_METH") ~= 600000 then -- Pharmaceutical Research
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_METH", 600000)
        end
        if tunables.get_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_WEED") ~= 600000 then -- Organic Produce
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_WEED", 600000)
        end
        if tunables.get_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_FORGED_DOCUMENTS") ~= 450000 then -- Printing & Copying
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_FORGED_DOCUMENTS", 450000)
        end
        if tunables.get_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_COUNTERFEIT_CASH") ~= 900000 then -- Cash Creation
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_COUNTERFEIT_CASH", 900000)
        end
        NightclubProductionControlx4 = 1
    else
        if NightclubProductionControlx4 == 1 then
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_CARGO", 8400000) -- Cargo and Shipments
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_WEAPONS", 4800000) -- Sporting Goods
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_COKE", 14400000) -- South America Imports
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_METH", 7200000) -- Pharmaceutical Research
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_WEED", 2400000) -- Organic Produce
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_FORGED_DOCUMENTS", 1800000) -- Printing & Copying
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_COUNTERFEIT_CASH", 3600000) -- Cash Creation
            NightclubProductionControlx4 = 0
        end
    end
	
    if NightclubProductionCooldownx10 then -- x10
        if NightclubProductionControlx10 == 0 then
            gui.show_message("Nightclub Speedx10","It will take effect the next time production is triggered. Reassign employees to take effect immediately")
        end
        if tunables.get_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_CARGO") ~= 840000 then -- Cargo and Shipments
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_CARGO", 840000)
        end
        if tunables.get_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_WEAPONS") ~= 1440000 then -- Sporting Goods
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_WEAPONS", 1440000)
        end
        if tunables.get_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_COKE") ~= 720000 then -- South America Imports
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_COKE", 720000)
        end
        if tunables.get_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_METH") ~= 240000 then -- Pharmaceutical Research
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_METH", 240000)
        end
        if tunables.get_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_WEED") ~= 240000 then -- Organic Produce
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_WEED", 240000)
        end
        if tunables.get_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_FORGED_DOCUMENTS") ~= 180000 then -- Printing & Copying
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_FORGED_DOCUMENTS", 180000)
        end
        if tunables.get_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_COUNTERFEIT_CASH") ~= 360000 then -- Cash Creation
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_COUNTERFEIT_CASH", 360000)
        end
        NightclubProductionControlx10 = 1
    else
        if NightclubProductionControlx10 == 1 then
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_CARGO", 8400000) -- Cargo and Shipments
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_WEAPONS", 4800000) -- Sporting Goods
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_COKE", 14400000) -- South America Imports
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_METH", 7200000) -- Pharmaceutical Research
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_WEED", 2400000) -- Organic Produce
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_FORGED_DOCUMENTS", 1800000) -- Printing & Copying
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_COUNTERFEIT_CASH", 3600000) -- Cash Creation
            NightclubProductionControlx10 = 0
        end
    end
	
    if NightclubProductionCooldownx20 then -- x20
        if NightclubProductionControlx20 == 0 then
            gui.show_message("Nightclub Speedx20","It will take effect the next time production is triggered. Reassign employees to take effect immediately")
        end
        if tunables.get_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_CARGO") ~= 420000 then -- Cargo and Shipments
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_CARGO", 420000)
        end
        if tunables.get_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_WEAPONS") ~= 720000 then -- Sporting Goods
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_WEAPONS", 720000)
        end
        if tunables.get_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_COKE") ~= 360000 then -- South America Imports
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_COKE", 360000)
        end
        if tunables.get_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_METH") ~= 120000 then -- Pharmaceutical Research
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_METH", 120000)
        end
        if tunables.get_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_WEED") ~= 120000 then -- Organic Produce
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_WEED", 120000)
        end
        if tunables.get_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_FORGED_DOCUMENTS") ~= 90000 then -- Printing & Copying
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_FORGED_DOCUMENTS", 90000)
        end
        if tunables.get_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_COUNTERFEIT_CASH") ~= 5000 then -- Cash Creation
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_COUNTERFEIT_CASH", 180000)
        end
        NightclubProductionControlx20 = 1
    else
        if NightclubProductionControlx20 == 1 then
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_CARGO", 8400000) -- Cargo and Shipments
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_WEAPONS", 4800000) -- Sporting Goods
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_COKE", 14400000) -- South America Imports
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_METH", 7200000) -- Pharmaceutical Research
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_WEED", 2400000) -- Organic Produce
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_FORGED_DOCUMENTS", 1800000) -- Printing & Copying
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_COUNTERFEIT_CASH", 3600000) -- Cash Creation
            NightclubProductionControlx20 = 0
        end
    end
	
	if NightclubProductionCooldown5s then
        if NightclubProductionControl5s == 0 then
            gui.show_message("Nightclub Speed5s","It will take effect the next time production is triggered. Reassign employees to take effect immediately")
        end
        if tunables.get_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_CARGO") ~= 5000 then -- Cargo and Shipments
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_CARGO", 5000)
        end
        if tunables.get_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_WEAPONS") ~= 5000 then -- Sporting Goods
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_WEAPONS", 5000)
        end
        if tunables.get_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_COKE") ~= 5000 then -- South America Imports
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_COKE", 5000)
        end
        if tunables.get_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_METH") ~= 5000 then -- Pharmaceutical Research
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_METH", 5000)
        end
        if tunables.get_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_WEED") ~= 5000 then -- Organic Produce
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_WEED", 5000)
        end
        if tunables.get_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_FORGED_DOCUMENTS") ~= 5000 then -- Printing & Copying
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_FORGED_DOCUMENTS", 5000)
        end
        if tunables.get_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_COUNTERFEIT_CASH") ~= 5000 then -- Cash Creation
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_COUNTERFEIT_CASH", 5000)
        end
        NightclubProductionControl5s = 1
    else
        if NightclubProductionControl5s == 1 then
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_CARGO", 8400000) -- Cargo and Shipments
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_WEAPONS", 4800000) -- Sporting Goods
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_COKE", 14400000) -- South America Imports
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_METH", 7200000) -- Pharmaceutical Research
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_WEED", 2400000) -- Organic Produce
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_FORGED_DOCUMENTS", 1800000) -- Printing & Copying
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_COUNTERFEIT_CASH", 3600000) -- Cash Creation
            NightclubProductionControl5s = 0
        end
    end
	
    if AcidLabProductionCooldown60s then
        local playerid = stats.get_int("MPPLY_LAST_MP_CHAR")
        if AcidLabProductionControl60s == 0 then
            gui.show_message("Acid Lab Speed60s","It will take effect the next time production is triggered. You can change session immediately")
            tunables.set_int("BIKER_ACID_UPGRADE_EQUIPMENT_REDUCTION_TIME", 0)
        end
        if tunables.get_int("BIKER_ACID_PRODUCTION_TIME") ~= 60000 then
            tunables.set_int("BIKER_ACID_PRODUCTION_TIME", 60000)
        end
        AcidLabProductionControl60s = 1
    else
        if AcidLabProductionControl60s == 1 then
            tunables.set_int("BIKER_ACID_PRODUCTION_TIME", 135000)
            tunables.set_int("BIKER_ACID_UPGRADE_EQUIPMENT_REDUCTION_TIME", 45000)
            AcidLabProductionControl60s = 0
        end
    end
	
    if AcidLabProductionCooldown5s then
        local playerid = stats.get_int("MPPLY_LAST_MP_CHAR")
        if AcidLabProductionControl5s == 0 then
			gui.show_message("Acid Lab Speed5s","It will take effect the next time production is triggered. You can change session immediately")
            tunables.set_int("BIKER_ACID_UPGRADE_EQUIPMENT_REDUCTION_TIME", 0)
        end
        if tunables.get_int("BIKER_ACID_PRODUCTION_TIME") ~= 5000 then
            tunables.set_int("BIKER_ACID_PRODUCTION_TIME", 5000)
        end
        AcidLabProductionControl5s = 1
    else
        if AcidLabProductionControl5s == 1 then
            tunables.set_int("BIKER_ACID_PRODUCTION_TIME", 135000)
            tunables.set_int("BIKER_ACID_UPGRADE_EQUIPMENT_REDUCTION_TIME", 45000)
            AcidLabProductionControl5s = 0
        end    
    end
	
	if VehicleCargoSourceMission then
		--if tunables.get_bool("IMPEXP_DISABLE_PARKED_CAR") == false then
		--	tunables.set_bool("IMPEXP_DISABLE_PARKED_CAR", true)
		--end
		if tunables.get_bool("IMPEXP_DISABLE_PROTECTED_CAR") == false then
			tunables.set_bool("IMPEXP_DISABLE_PROTECTED_CAR", true)
		end
		if tunables.get_bool("IMPEXP_DISABLE_MOVING_CAR") == false then
			tunables.set_bool("IMPEXP_DISABLE_MOVING_CAR", true)
		end
		if tunables.get_bool("IMPEXP_DISABLE_PICTURE_MESSAGE") == false then
			tunables.set_bool("IMPEXP_DISABLE_PICTURE_MESSAGE", true)
		end
		if tunables.get_bool("IMPEXP_DISABLE_EYE_SKY") == false then
			tunables.set_bool("IMPEXP_DISABLE_EYE_SKY", true)
		end
		if tunables.get_bool("IMPEXP_DISABLE_CRIME_SCENE") == false then
			tunables.set_bool("IMPEXP_DISABLE_CRIME_SCENE", true)
		end
		if tunables.get_bool("IMPEXP_DISABLE_DRUNK_DRIVER") == false then
			tunables.set_bool("IMPEXP_DISABLE_DRUNK_DRIVER", true)
		end
		if tunables.get_bool("IMPEXP_DISABLE_POLICE_CHASE") == false then
			tunables.set_bool("IMPEXP_DISABLE_POLICE_CHASE", true)
		end
		if tunables.get_bool("IMPEXP_DISABLE_CARGOBOB") == false then
			tunables.set_bool("IMPEXP_DISABLE_CARGOBOB", true)
		end
		if tunables.get_bool("IMPEXP_DISABLE_TAIL_VEHICLE") == false then
			tunables.set_bool("IMPEXP_DISABLE_TAIL_VEHICLE", true)
		end
		if tunables.get_bool("IMPEXP_DISABLE_CAR_MEET") == false then
			tunables.set_bool("IMPEXP_DISABLE_CAR_MEET", true)
		end
		if tunables.get_bool("IMPEXP_DISABLE_PARTY_CRASHER") == false then
			tunables.set_bool("IMPEXP_DISABLE_PARTY_CRASHER", true)
		end
		if tunables.get_bool("IMPEXP_DISABLE_BOMB_DEFUSE") == false then
			tunables.set_bool("IMPEXP_DISABLE_BOMB_DEFUSE", true)
		end
		if tunables.get_bool("IMPEXP_DISABLE_LAPPED_RACE") == false then
			tunables.set_bool("IMPEXP_DISABLE_LAPPED_RACE", true)
		end
		if tunables.get_bool("IMPEXP_DISABLE_PHOTO_SHOOT") == false then
			tunables.set_bool("IMPEXP_DISABLE_PHOTO_SHOOT", true)
		end
		if tunables.get_bool("IMPEXP_DISABLE_STUNT_MAN") == false then
			tunables.set_bool("IMPEXP_DISABLE_STUNT_MAN", true)
		end
	else
		--tunables.set_bool("IMPEXP_DISABLE_PARKED_CAR", false)
		tunables.set_bool("IMPEXP_DISABLE_PROTECTED_CAR", false)
		tunables.set_bool("IMPEXP_DISABLE_MOVING_CAR", false)
		tunables.set_bool("IMPEXP_DISABLE_PICTURE_MESSAGE", false)
		tunables.set_bool("IMPEXP_DISABLE_EYE_SKY", false)
		tunables.set_bool("IMPEXP_DISABLE_CRIME_SCENE", false)
		tunables.set_bool("IMPEXP_DISABLE_DRUNK_DRIVER", false)
		tunables.set_bool("IMPEXP_DISABLE_POLICE_CHASE", false)
		tunables.set_bool("IMPEXP_DISABLE_CARGOBOB", false)
		tunables.set_bool("IMPEXP_DISABLE_TAIL_VEHICLE", false)
		tunables.set_bool("IMPEXP_DISABLE_CAR_MEET", false)
		tunables.set_bool("IMPEXP_DISABLE_PARTY_CRASHER", false)
		tunables.set_bool("IMPEXP_DISABLE_BOMB_DEFUSE", false)
		tunables.set_bool("IMPEXP_DISABLE_LAPPED_RACE", false)
		tunables.set_bool("IMPEXP_DISABLE_PHOTO_SHOOT", false)
		tunables.set_bool("IMPEXP_DISABLE_STUNT_MAN", false)
	end
	
	if SpecialCargoBuyMission then -- there is 19 missions // https://gta.fandom.com/wiki/Special_Cargo/Steal_Missions
		if tunables.get_bool("EXEC_DISABLE_BUY_AFTERMATH") ~= true then
			tunables.set_bool("EXEC_DISABLE_BUY_AFTERMATH", true)
		end
		if tunables.get_bool("EXEC_DISABLE_BUY_AMBUSHED") ~= true then
			tunables.set_bool("EXEC_DISABLE_BUY_AMBUSHED", true)
		end
		if tunables.get_bool("EXEC_DISABLE_BUY_ASSASSINATE") ~= true then
			tunables.set_bool("EXEC_DISABLE_BUY_ASSASSINATE", true)
		end
		if tunables.get_bool("EXEC_DISABLE_BUY_BOATATTACK") ~= true then
			tunables.set_bool("EXEC_DISABLE_BUY_BOATATTACK", true)
		end
		if tunables.get_bool("EXEC_DISABLE_BUY_BREAKUPDEAL") ~= true then
			tunables.set_bool("EXEC_DISABLE_BUY_BREAKUPDEAL", true)
		end
		if tunables.get_bool("EXEC_DISABLE_BUY_CARGODROP") ~= true then
			tunables.set_bool("EXEC_DISABLE_BUY_CARGODROP", true)
		end
		if tunables.get_bool("EXEC_DISABLE_BUY_CRASHSITE") ~= true then
			tunables.set_bool("EXEC_DISABLE_BUY_CRASHSITE", true)
		end
		if tunables.get_bool("EXEC_DISABLE_BUY_GANGHIDEOUT") ~= true then
			tunables.set_bool("EXEC_DISABLE_BUY_GANGHIDEOUT", true)
		end
		if tunables.get_bool("EXEC_DISABLE_BUY_HELITAKEDOWN") ~= true then
			tunables.set_bool("EXEC_DISABLE_BUY_HELITAKEDOWN", true)
		end
		if tunables.get_bool("EXEC_DISABLE_BUY_IMPOUNDED") ~= true then
			tunables.set_bool("EXEC_DISABLE_BUY_IMPOUNDED", true)
		end
		if tunables.get_bool("EXEC_DISABLE_BUY_MOVEDCOLLECTION") ~= true then
			tunables.set_bool("EXEC_DISABLE_BUY_MOVEDCOLLECTION", true)
		end
		if tunables.get_bool("EXEC_DISABLE_BUY_MOVINGCOLLECTION") ~= true then
			tunables.set_bool("EXEC_DISABLE_BUY_MOVINGCOLLECTION", true)
		end
		if tunables.get_bool("EXEC_DISABLE_BUY_MULTIPLEMOVINGVEHICLES") ~= true then
			tunables.set_bool("EXEC_DISABLE_BUY_MULTIPLEMOVINGVEHICLES", true)
		end
		if tunables.get_bool("EXEC_DISABLE_BUY_POLICESTING") ~= true then
			tunables.set_bool("EXEC_DISABLE_BUY_POLICESTING", true)
		end
		if tunables.get_bool("EXEC_DISABLE_BUY_STEALTRANSPORTER") ~= true then
			tunables.set_bool("EXEC_DISABLE_BUY_STEALTRANSPORTER", true)
		end
		if tunables.get_bool("EXEC_DISABLE_BUY_THIEF") ~= true then
			tunables.set_bool("EXEC_DISABLE_BUY_THIEF", true)
		end
		if tunables.get_bool("EXEC_DISABLE_BUY_TRACKIFY") ~= true then
			tunables.set_bool("EXEC_DISABLE_BUY_TRACKIFY", true)
		end
		if tunables.get_bool("EXEC_DISABLE_BUY_TRAPPED") ~= true then
			tunables.set_bool("EXEC_DISABLE_BUY_TRAPPED", true)
		end
		if tunables.get_bool("EXEC_DISABLE_BUY_VALKYRIETAKEDOWN") ~= true then
			tunables.set_bool("EXEC_DISABLE_BUY_VALKYRIETAKEDOWN", true)
		end
		--if tunables.get_bool("EXEC_DISABLE_BUY_VEHICLECOLLECTION") ~= true then
		--	tunables.set_bool("EXEC_DISABLE_BUY_VEHICLECOLLECTION", true)
		--end
	else
		tunables.set_bool("EXEC_DISABLE_BUY_AFTERMATH", false)
		tunables.set_bool("EXEC_DISABLE_BUY_AMBUSHED", false)
		tunables.set_bool("EXEC_DISABLE_BUY_ASSASSINATE", false)
		tunables.set_bool("EXEC_DISABLE_BUY_BOATATTACK", false)
		tunables.set_bool("EXEC_DISABLE_BUY_BREAKUPDEAL", false)
		tunables.set_bool("EXEC_DISABLE_BUY_CARGODROP", false)
		tunables.set_bool("EXEC_DISABLE_BUY_CRASHSITE", false)
		tunables.set_bool("EXEC_DISABLE_BUY_GANGHIDEOUT", false)
		tunables.set_bool("EXEC_DISABLE_BUY_HELITAKEDOWN", false)
		tunables.set_bool("EXEC_DISABLE_BUY_IMPOUNDED", false)
		tunables.set_bool("EXEC_DISABLE_BUY_MOVEDCOLLECTION", false)
		tunables.set_bool("EXEC_DISABLE_BUY_MOVINGCOLLECTION", false)
		tunables.set_bool("EXEC_DISABLE_BUY_MULTIPLEMOVINGVEHICLES", false)
		tunables.set_bool("EXEC_DISABLE_BUY_POLICESTING", false)
		tunables.set_bool("EXEC_DISABLE_BUY_STEALTRANSPORTER", false)
		tunables.set_bool("EXEC_DISABLE_BUY_THIEF", false)
		tunables.set_bool("EXEC_DISABLE_BUY_TRACKIFY", false)
		tunables.set_bool("EXEC_DISABLE_BUY_TRAPPED", false)
		tunables.set_bool("EXEC_DISABLE_BUY_VALKYRIETAKEDOWN", false)
		--tunables.set_bool("EXEC_DISABLE_BUY_VEHICLECOLLECTION", false)
	end
	
	if SpecialCargoSellMission then
		if tunables.get_bool("EXEC_DISABLE_SELL_AIRATTACKED") ~= true then
			tunables.set_bool("EXEC_DISABLE_SELL_AIRATTACKED", true)
		end
		--if tunables.get_bool("EXEC_DISABLE_SELL_AIRCLEARAREA") ~= true then -- not included in the mission
		--	tunables.set_bool("EXEC_DISABLE_SELL_AIRCLEARAREA", true)
		--end
		if tunables.get_bool("EXEC_DISABLE_SELL_AIRDROP") ~= true then
			tunables.set_bool("EXEC_DISABLE_SELL_AIRDROP", true)
		end
		if tunables.get_bool("EXEC_DISABLE_SELL_AIRFLYLOW") ~= true then
			tunables.set_bool("EXEC_DISABLE_SELL_AIRFLYLOW", true)
		end
		if tunables.get_bool("EXEC_DISABLE_SELL_AIRRESTRICTED") ~= true then
			tunables.set_bool("EXEC_DISABLE_SELL_AIRRESTRICTED", true)
		end
		if tunables.get_bool("EXEC_DISABLE_SELL_ATTACKED") ~= true then
			tunables.set_bool("EXEC_DISABLE_SELL_ATTACKED", true)
		end
		--if tunables.get_bool("EXEC_DISABLE_SELL_DEFAULT") ~= true then -- not included in the mission
		--	tunables.set_bool("EXEC_DISABLE_SELL_DEFAULT", true)
		--end
		if tunables.get_bool("EXEC_DISABLE_SELL_DEFEND") ~= true then
			tunables.set_bool("EXEC_DISABLE_SELL_DEFEND", true)
		end
		--if tunables.get_bool("EXEC_DISABLE_SELL_MULTIPLE") ~= true then -- not included in the mission
		--	tunables.set_bool("EXEC_DISABLE_SELL_MULTIPLE", true)
		--end
		if tunables.get_bool("EXEC_DISABLE_SELL_NODAMAGE") ~= true then
			tunables.set_bool("EXEC_DISABLE_SELL_NODAMAGE", true)
		end
		if tunables.get_bool("EXEC_DISABLE_SELL_SEAATTACKED") ~= true then
			tunables.set_bool("EXEC_DISABLE_SELL_SEAATTACKED", true)
		end
		if tunables.get_bool("EXEC_DISABLE_SELL_SEADEFEND") ~= true then
			tunables.set_bool("EXEC_DISABLE_SELL_SEADEFEND", true)
		end
		if tunables.get_bool("EXEC_DISABLE_SELL_STING") ~= true then
			tunables.set_bool("EXEC_DISABLE_SELL_STING", true)
		end
		if tunables.get_bool("EXEC_DISABLE_SELL_TRACKIFY") ~= true then
			tunables.set_bool("EXEC_DISABLE_SELL_TRACKIFY", true)
		end
	else
		tunables.set_bool("EXEC_DISABLE_SELL_AIRATTACKED", false)
		--tunables.set_bool("EXEC_DISABLE_SELL_AIRCLEARAREA", false) -- not included in the mission
		tunables.set_bool("EXEC_DISABLE_SELL_AIRDROP", false)
		tunables.set_bool("EXEC_DISABLE_SELL_AIRFLYLOW", false)
		tunables.set_bool("EXEC_DISABLE_SELL_AIRRESTRICTED", false)
		tunables.set_bool("EXEC_DISABLE_SELL_ATTACKED", false)
		--tunables.set_bool("EXEC_DISABLE_SELL_DEFAULT", false) -- not included in the mission
		tunables.set_bool("EXEC_DISABLE_SELL_DEFEND", false)
		--tunables.set_bool("EXEC_DISABLE_SELL_MULTIPLE", false) -- not included in the mission
		tunables.set_bool("EXEC_DISABLE_SELL_NODAMAGE", false)
		tunables.set_bool("EXEC_DISABLE_SELL_SEAATTACKED", false)
		tunables.set_bool("EXEC_DISABLE_SELL_SEADEFEND", false)
		tunables.set_bool("EXEC_DISABLE_SELL_STING", false)
		tunables.set_bool("EXEC_DISABLE_SELL_TRACKIFY", false)
	end
	
	if MCBusinessStealMission then -- there is 17 missions // https://gta.fandom.com/wiki/Business_Supplies/Steal_Missions
		if tunables.get_bool("BIKER_DISABLE_AGGREGATE_POSITION") ~= true then
			tunables.set_bool("BIKER_DISABLE_AGGREGATE_POSITION", true)
		end
		if tunables.get_bool("BIKER_DISABLE_MARKED_FOR_DEATH_ON_ABANDON") ~= true then
			tunables.set_bool("BIKER_DISABLE_MARKED_FOR_DEATH_ON_ABANDON", true)
		end
		if tunables.get_bool("BIKER_DISABLE_FAVOURITE_BIKE") ~= true then
			tunables.set_bool("BIKER_DISABLE_FAVOURITE_BIKE", true)
		end
		--if tunables.get_bool("BIKER_DISABLE_CLUB_RUN") ~= true then -- not included in the mission
		--	tunables.set_bool("BIKER_DISABLE_CLUB_RUN", true)
		--end
		if tunables.get_bool("BIKER_DISABLE_GUNRUNNING") ~= true then
			tunables.set_bool("BIKER_DISABLE_GUNRUNNING", true)
		end
		if tunables.get_bool("BIKER_DISABLE_POW") ~= true then
			tunables.set_bool("BIKER_DISABLE_POW", true)
		end
		if tunables.get_bool("BIKER_DISABLE_GUNS_FOR_HIRE") ~= true then
			tunables.set_bool("BIKER_DISABLE_GUNS_FOR_HIRE", true)
		end
		if tunables.get_bool("BIKER_DISABLE_BY_THE_POUND") ~= true then
			tunables.set_bool("BIKER_DISABLE_BY_THE_POUND", true)
		end
		if tunables.get_bool("BIKER_DISABLE_NINE_TENTHS") ~= true then
			tunables.set_bool("BIKER_DISABLE_NINE_TENTHS", true)
		end
		if tunables.get_bool("BIKER_DISABLE_CRACKED") ~= true then
			tunables.set_bool("BIKER_DISABLE_CRACKED", true)
		end
		if tunables.get_bool("BIKER_DISABLE_JAILBREAK") ~= true then
			tunables.set_bool("BIKER_DISABLE_JAILBREAK", true)
		end
		if tunables.get_bool("BIKER_DISABLE_FRAGILE_GOODS") ~= true then
			tunables.set_bool("BIKER_DISABLE_FRAGILE_GOODS", true)
		end
		if tunables.get_bool("BIKER_DISABLE_OUTRIDER") ~= true then
			tunables.set_bool("BIKER_DISABLE_OUTRIDER", true)
		end
		--if tunables.get_bool("BIKER_DISABLE_DEATHMATCH") ~= true then -- not included in the mission
		--	tunables.set_bool("BIKER_DISABLE_DEATHMATCH", true)
		--end
		if tunables.get_bool("BIKER_DISABLE_JOUST") ~= true then
			tunables.set_bool("BIKER_DISABLE_JOUST", true)
		end
		if tunables.get_bool("BIKER_DISABLE_CAGED_IN") ~= true then
			tunables.set_bool("BIKER_DISABLE_CAGED_IN", true)
		end
		if tunables.get_bool("BIKER_DISABLE_ON_THE_RUN") ~= true then
			tunables.set_bool("BIKER_DISABLE_ON_THE_RUN", true)
		end
		--if tunables.get_bool("BIKER_DISABLE_HIT_AND_RIDE") ~= true then
		--	tunables.set_bool("BIKER_DISABLE_HIT_AND_RIDE", true)
		--end
		if tunables.get_bool("BIKER_DISABLE_CRIMINAL_MISCHIEF") ~= true then
			tunables.set_bool("BIKER_DISABLE_CRIMINAL_MISCHIEF", true)
		end
		--if tunables.get_bool("BIKER_DISABLE_DEATHBIKE_DELIVERY") ~= true then -- not included in the mission
		--	tunables.set_bool("BIKER_DISABLE_DEATHBIKE_DELIVERY", true)
		--end
	else
		tunables.set_bool("BIKER_DISABLE_AGGREGATE_POSITION", false)
		tunables.set_bool("BIKER_DISABLE_MARKED_FOR_DEATH_ON_ABANDON", false)
		tunables.set_bool("BIKER_DISABLE_FAVOURITE_BIKE", false)
		--tunables.set_bool("BIKER_DISABLE_CLUB_RUN", true) -- not included in the mission
		tunables.set_bool("BIKER_DISABLE_GUNRUNNING", false)
		tunables.set_bool("BIKER_DISABLE_POW", false)
		tunables.set_bool("BIKER_DISABLE_GUNS_FOR_HIRE", false)
		tunables.set_bool("BIKER_DISABLE_BY_THE_POUND", false)
		tunables.set_bool("BIKER_DISABLE_NINE_TENTHS", false)
		tunables.set_bool("BIKER_DISABLE_CRACKED", false)
		tunables.set_bool("BIKER_DISABLE_JAILBREAK", false)
		tunables.set_bool("BIKER_DISABLE_FRAGILE_GOODS", false)
		tunables.set_bool("BIKER_DISABLE_OUTRIDER", false)
		--tunables.set_bool("BIKER_DISABLE_DEATHMATCH", false) -- not included in the mission
		tunables.set_bool("BIKER_DISABLE_JOUST", false)
		tunables.set_bool("BIKER_DISABLE_CAGED_IN", false)
		tunables.set_bool("BIKER_DISABLE_ON_THE_RUN", false)
		--tunables.set_bool("BIKER_DISABLE_HIT_AND_RIDE", false)
		tunables.set_bool("BIKER_DISABLE_CRIMINAL_MISCHIEF", false)
		--tunables.set_bool("BIKER_DISABLE_DEATHBIKE_DELIVERY", false) -- not included in the mission
	end
	
	if MCBusinessSellMission then -- there is 9 missions // https://gta.fandom.com/wiki/Business_Supplies/Sell_Missions
		if tunables.get_bool("BIKER_DISABLE_SELL_CONVOY") ~= true then
			tunables.set_bool("BIKER_DISABLE_SELL_CONVOY", true)
		end
		if tunables.get_bool("BIKER_DISABLE_SELL_TRASHMASTER") ~= true then
			tunables.set_bool("BIKER_DISABLE_SELL_TRASHMASTER", true)
		end
		if tunables.get_bool("BIKER_DISABLE_SELL_PROVEN") ~= true then
			tunables.set_bool("BIKER_DISABLE_SELL_PROVEN", true)
		end
		if tunables.get_bool("BIKER_DISABLE_SELL_FRIENDS_IN_NEED") ~= true then
			tunables.set_bool("BIKER_DISABLE_SELL_FRIENDS_IN_NEED", true)
		end
		if tunables.get_bool("BIKER_DISABLE_SELL_BORDER_PATROL") ~= true then
			tunables.set_bool("BIKER_DISABLE_SELL_BORDER_PATROL", true)
		end
		if tunables.get_bool("BIKER_DISABLE_SELL_HELICOPTER_DROP") ~= true then
			tunables.set_bool("BIKER_DISABLE_SELL_HELICOPTER_DROP", true)
		end
		if tunables.get_bool("BIKER_DISABLE_SELL_POSTMAN") ~= true then
			tunables.set_bool("BIKER_DISABLE_SELL_POSTMAN", true)
		end
		if tunables.get_bool("BIKER_DISABLE_SELL_AIR_DROP_AT_SEA") ~= true then
			tunables.set_bool("BIKER_DISABLE_SELL_AIR_DROP_AT_SEA", true)
		end
		if tunables.get_bool("BIKER_DISABLE_SELL_STING_OP") ~= true then
			tunables.set_bool("BIKER_DISABLE_SELL_STING_OP", true)
		end
		--if tunables.get_bool("BIKER_DISABLE_SELL_BENSON") ~= true then
		--	tunables.set_bool("BIKER_DISABLE_SELL_BENSON", true)
		--end
		--if tunables.get_bool("BIKER_DISABLE_SELL_BAG_DROP") ~= true then -- not included in the mission
		--	tunables.set_bool("BIKER_DISABLE_SELL_BAG_DROP", true)
		--end
		if tunables.get_bool("BIKER_DISABLE_SELL_RACE") ~= true then
			tunables.set_bool("BIKER_DISABLE_SELL_RACE", true)
		end
	else
		tunables.set_bool("BIKER_DISABLE_SELL_CONVOY", false)
		tunables.set_bool("BIKER_DISABLE_SELL_TRASHMASTER", false)
		tunables.set_bool("BIKER_DISABLE_SELL_PROVEN", false)
		tunables.set_bool("BIKER_DISABLE_SELL_FRIENDS_IN_NEED", false)
		tunables.set_bool("BIKER_DISABLE_SELL_BORDER_PATROL", false)
		tunables.set_bool("BIKER_DISABLE_SELL_HELICOPTER_DROP", false)
		tunables.set_bool("BIKER_DISABLE_SELL_POSTMAN", false)
		tunables.set_bool("BIKER_DISABLE_SELL_AIR_DROP_AT_SEA", false)
		tunables.set_bool("BIKER_DISABLE_SELL_STING_OP", false)
		--tunables.set_bool("BIKER_DISABLE_SELL_BENSON", false)
		--tunables.set_bool("BIKER_DISABLE_SELL_BAG_DROP", false) -- not included in the mission
		tunables.set_bool("BIKER_DISABLE_SELL_RACE", false)
	end
	
	if HangarAirStealMission then
		if tunables.get_float("SMUG_STEAL_BEACON_GRAB_WEIGHTING") ~= 0.00 then
			tunables.set_float("SMUG_STEAL_BEACON_GRAB_WEIGHTING", 0.00)
		end
		if tunables.get_float("SMUG_STEAL_BLACKBOX_WEIGHTING") ~= 0.00 then
			tunables.set_float("SMUG_STEAL_BLACKBOX_WEIGHTING", 0.00)
		end
		if tunables.get_float("SMUG_STEAL_BOMBING_RUN_WEIGHTING") ~= 0.00 then
			tunables.set_float("SMUG_STEAL_BOMBING_RUN_WEIGHTING", 0.00)
		end
		if tunables.get_float("SMUG_STEAL_BOMB_BASE_WEIGHTING") ~= 0.00 then
			tunables.set_float("SMUG_STEAL_BOMB_BASE_WEIGHTING", 0.00)
		end
		if tunables.get_float("SMUG_STEAL_BOMB_ROOF_WEIGHTING") ~= 0.00 then
			tunables.set_float("SMUG_STEAL_BOMB_ROOF_WEIGHTING", 0.00)
		end
		--if tunables.get_float("SMUG_STEAL_CARGO_PLANE_WEIGHTING") ~= 0.00 then
		--	tunables.set_float("SMUG_STEAL_CARGO_PLANE_WEIGHTING", 0.00)
		--end
		if tunables.get_float("SMUG_STEAL_DOGFIGHT_WEIGHTING") ~= 0.00 then
			tunables.set_float("SMUG_STEAL_DOGFIGHT_WEIGHTING", 0.00)
		end
		if tunables.get_float("SMUG_STEAL_ESCORT_WEIGHTING") ~= 0.00 then
			tunables.set_float("SMUG_STEAL_ESCORT_WEIGHTING", 0.00)
		end
		if tunables.get_float("SMUG_STEAL_INFILTRATION_WEIGHTING") ~= 0.00 then
			tunables.set_float("SMUG_STEAL_INFILTRATION_WEIGHTING", 0.00)
		end
		if tunables.get_float("SMUG_STEAL_ROOF_ATTACK_WEIGHTING") ~= 0.00 then
			tunables.set_float("SMUG_STEAL_ROOF_ATTACK_WEIGHTING", 0.00)
		end
		if tunables.get_float("SMUG_STEAL_SPLASH_LANDING_WEIGHTING") ~= 0.00 then
			tunables.set_float("SMUG_STEAL_SPLASH_LANDING_WEIGHTING", 0.00)
		end
		--if tunables.get_float("SMUG_STEAL_STEAL_AIRCRAFT_WEIGHTING") ~= 0.00 then
		--	tunables.set_float("SMUG_STEAL_STEAL_AIRCRAFT_WEIGHTING", 0.00)
		--end
		if tunables.get_float("SMUG_STEAL_STUNT_PILOT_WEIGHTING") ~= 0.00 then
			tunables.set_float("SMUG_STEAL_STUNT_PILOT_WEIGHTING", 0.00)
		end
		if tunables.get_float("SMUG_STEAL_THERMAL_SCOPE_WEIGHTING") ~= 0.00 then
			tunables.set_float("SMUG_STEAL_THERMAL_SCOPE_WEIGHTING", 0.00)
		end
	else
		tunables.set_float("SMUG_STEAL_BEACON_GRAB_WEIGHTING", 1.00)
		tunables.set_float("SMUG_STEAL_BLACKBOX_WEIGHTING", 1.00)
		tunables.set_float("SMUG_STEAL_BOMBING_RUN_WEIGHTING", 1.00)
		tunables.set_float("SMUG_STEAL_BOMB_BASE_WEIGHTING", 1.00)
		tunables.set_float("SMUG_STEAL_BOMB_ROOF_WEIGHTING", 1.00)
		--tunables.set_float("SMUG_STEAL_CARGO_PLANE_WEIGHTING", 1.00)
		tunables.set_float("SMUG_STEAL_DOGFIGHT_WEIGHTING", 1.00)
		tunables.set_float("SMUG_STEAL_ESCORT_WEIGHTING", 1.00)
		tunables.set_float("SMUG_STEAL_INFILTRATION_WEIGHTING", 1.00)
		tunables.set_float("SMUG_STEAL_ROOF_ATTACK_WEIGHTING", 1.00)
		tunables.set_float("SMUG_STEAL_SPLASH_LANDING_WEIGHTING", 1.00)
		--tunables.set_float("SMUG_STEAL_STEAL_AIRCRAFT_WEIGHTING", 1.00)
		tunables.set_float("SMUG_STEAL_STUNT_PILOT_WEIGHTING", 1.00)
		tunables.set_float("SMUG_STEAL_THERMAL_SCOPE_WEIGHTING", 1.00)
	end
	
	if HangarAirSellMission then
		--if tunables.get_float("SMUG_SELL_AGILE_DELIVERY_WEIGHTING") ~= 0.00 then
		--	tunables.set_float("SMUG_SELL_AGILE_DELIVERY_WEIGHTING", 0.00)
		--end
		if tunables.get_float("SMUG_SELL_AIR_DELIVERY_WEIGHTING") ~= 0.00 then
			tunables.set_float("SMUG_SELL_AIR_DELIVERY_WEIGHTING", 0.00)
		end
		if tunables.get_float("SMUG_SELL_AIR_POLICE_WEIGHTING") ~= 0.00 then
			tunables.set_float("SMUG_SELL_AIR_POLICE_WEIGHTING", 0.00)
		end
		--if tunables.get_float("SMUG_SELL_BOMB_ROOF_WEIGHTING") ~= 0.00 then -- tunable not found
		--	tunables.set_float("SMUG_SELL_BOMB_ROOF_WEIGHTING", 0.00)
		--end
		if tunables.get_float("SMUG_SELL_CONTESTED_WEIGHTING") ~= 0.00 then
			tunables.set_float("SMUG_SELL_CONTESTED_WEIGHTING", 0.00)
		end
		if tunables.get_float("SMUG_SELL_FLYING_FORTRESS_WEIGHTING") ~= 0.00 then
			tunables.set_float("SMUG_SELL_FLYING_FORTRESS_WEIGHTING", 0.00)
		end
		--if tunables.get_float("SMUG_SELL_FLY_LOW_WEIGHTING") ~= 0.00 then
		--	tunables.set_float("SMUG_SELL_FLY_LOW_WEIGHTING", 0.00)
		--end
		if tunables.get_float("SMUG_SELL_HEAVY_LIFTING_WEIGHTING") ~= 0.00 then
			tunables.set_float("SMUG_SELL_HEAVY_LIFTING_WEIGHTING", 0.00)
		end
		--if tunables.get_float("SMUG_SELL_PRECISION_DELIVERY_WEIGHTING") ~= 0.00 then
		--	tunables.set_float("SMUG_SELL_PRECISION_DELIVERY_WEIGHTING", 0.00)
		--end
		if tunables.get_float("SMUG_SELL_UNDER_THE_RADAR_WEIGHTING") ~= 0.00 then
			tunables.set_float("SMUG_SELL_UNDER_THE_RADAR_WEIGHTING", 0.00)
		end
	else
		--tunables.set_float("SMUG_SELL_AGILE_DELIVERY_WEIGHTING", 1.00)
		tunables.set_float("SMUG_SELL_AIR_DELIVERY_WEIGHTING", 1.00)
		tunables.set_float("SMUG_SELL_AIR_POLICE_WEIGHTING", 1.00)
		--tunables.set_float("SMUG_SELL_BOMB_ROOF_WEIGHTING", 1.00) -- tunable not found
		tunables.set_float("SMUG_SELL_CONTESTED_WEIGHTING", 1.00)
		tunables.set_float("SMUG_SELL_FLYING_FORTRESS_WEIGHTING", 1.00)
		--tunables.set_float("SMUG_SELL_FLY_LOW_WEIGHTING", 1.00)
		tunables.set_float("SMUG_SELL_HEAVY_LIFTING_WEIGHTING", 1.00)
		--tunables.set_float("SMUG_SELL_PRECISION_DELIVERY_WEIGHTING", 1.00)
		tunables.set_float("SMUG_SELL_UNDER_THE_RADAR_WEIGHTING", 1.00)
	end
	
	if NightclubSellMission then
		--if tunables.get_bool("BB_SELL_MISSIONS_WEIGHTING_SINGLE_DROP") == false then
		--	tunables.set_bool("BB_SELL_MISSIONS_WEIGHTING_SINGLE_DROP", true)
		--end
		if tunables.get_bool("BB_SELL_MISSIONS_WEIGHTING_MULTI_DROP") == false then
			tunables.set_bool("BB_SELL_MISSIONS_WEIGHTING_MULTI_DROP", true)
		end
		if tunables.get_bool("BB_SELL_MISSIONS_WEIGHTING_HACK_DROP") == false then
			tunables.set_bool("BB_SELL_MISSIONS_WEIGHTING_HACK_DROP", true)
		end
		if tunables.get_bool("BB_SELL_MISSIONS_WEIGHTING_ROADBLOCK") == false then
			tunables.set_bool("BB_SELL_MISSIONS_WEIGHTING_ROADBLOCK", true)
		end
		if tunables.get_bool("BB_SELL_MISSIONS_WEIGHTING_PROTECT_BUYER") == false then
			tunables.set_bool("BB_SELL_MISSIONS_WEIGHTING_PROTECT_BUYER", true)
		end
		if tunables.get_bool("BB_SELL_MISSIONS_WEIGHTING_UNDERCOVER_COPS") == false then
			tunables.set_bool("BB_SELL_MISSIONS_WEIGHTING_UNDERCOVER_COPS", true)
		end
		if tunables.get_bool("BB_SELL_MISSIONS_WEIGHTING_OFFSHORE_TRANSFER") == false then
			tunables.set_bool("BB_SELL_MISSIONS_WEIGHTING_OFFSHORE_TRANSFER", true)
		end
		if tunables.get_bool("BB_SELL_MISSIONS_WEIGHTING_NOT_A_SCRATCH") == false then
			tunables.set_bool("BB_SELL_MISSIONS_WEIGHTING_NOT_A_SCRATCH", true)
		end
		if tunables.get_bool("BB_SELL_MISSIONS_WEIGHTING_FOLLOW_HELI") == false then
			tunables.set_bool("BB_SELL_MISSIONS_WEIGHTING_FOLLOW_HELI", true)
		end
		if tunables.get_bool("BB_SELL_MISSIONS_WEIGHTING_FIND_BUYER") == false then
			tunables.set_bool("BB_SELL_MISSIONS_WEIGHTING_FIND_BUYER", true)
		end
	else
		--tunables.set_bool("BB_SELL_MISSIONS_WEIGHTING_SINGLE_DROP", false)
		tunables.set_bool("BB_SELL_MISSIONS_WEIGHTING_MULTI_DROP", false)
		tunables.set_bool("BB_SELL_MISSIONS_WEIGHTING_HACK_DROP", false)
		tunables.set_bool("BB_SELL_MISSIONS_WEIGHTING_ROADBLOCK", false)
		tunables.set_bool("BB_SELL_MISSIONS_WEIGHTING_PROTECT_BUYER", false)
		tunables.set_bool("BB_SELL_MISSIONS_WEIGHTING_UNDERCOVER_COPS", false)
		tunables.set_bool("BB_SELL_MISSIONS_WEIGHTING_OFFSHORE_TRANSFER", false)
		tunables.set_bool("BB_SELL_MISSIONS_WEIGHTING_NOT_A_SCRATCH", false)
		tunables.set_bool("BB_SELL_MISSIONS_WEIGHTING_FOLLOW_HELI", false)
		tunables.set_bool("BB_SELL_MISSIONS_WEIGHTING_FIND_BUYER", false)
	end
end)

WarehouseStaffSourced = false
CEOSpecialItem = false
SpecialCargoSourceCooldown = false
VehicleCargoSourceCooldown = false
MCBusinessResupplyCost = false
MCBusinessSupplyDelay = false
BunkerResupplyCost = false
BunkerSupplyDelay = false
TriggerBunkerProduction = false
HangarStaffSourced = false
HangarCargoSourceCooldown = false
NightclubGoodsCapacity = false

script.register_looped("GoldenGets Resupply", function (script)
	if WarehouseStaffSourced then
		repeat
			for i = 12, 16 do
				stats.set_bool_masked("MPX_FIXERPSTAT_BOOL1", true, i)
				script:sleep(500) -- half second delay between each warehouse
			end
			script:sleep(969) -- add a delay to prevent transaction error or infinite 'transaction pending'
		until WarehouseCrates == 555 or WarehouseStaffSourced == false
	end
	
	if CEOSpecialItem then
		locals_v_set_int(SupportVersion, SCVSIl, 1)
	end
	
	if SpecialCargoSourceCooldown then
		if tunables.get_int("EXEC_BUY_COOLDOWN") ~= 0 then -- *(300000ms)*
			tunables.set_int("EXEC_BUY_COOLDOWN", 0)
		end
		if tunables.get_int("EXEC_BUY_FAIL_COOLDOWN") ~= 0 then -- *(off)*
			tunables.set_int("EXEC_BUY_FAIL_COOLDOWN", 0)
		end
	end
	
	if VehicleCargoSourceCooldown then
		if tunables.get_int("IMPEXP_STEAL_COOLDOWN") ~= 0 then -- *(180000ms)*
			tunables.set_int("IMPEXP_STEAL_COOLDOWN", 0)
		end
		if tunables.get_int("IMPEXP_STOCKPILING_COOLDOWN") ~= 0 then -- *(1800000ms)*
			tunables.set_int("IMPEXP_STOCKPILING_COOLDOWN", 0)
		end
	end
	
	if MCBusinessResupplyCost then
		tunables.set_int("BIKER_PURCHASE_SUPPLIES_COST_PER_SEGMENT", MCBusinessSupplyCost)
	end
	
	if MCBusinessSupplyDelay then
		if tunables.get_int("BIKER_PURCHASE_SUPPLIES_DELAY") ~= 0 then
			tunables.set_int("BIKER_PURCHASE_SUPPLIES_DELAY", 0)
		end
	end
	
	if BunkerResupplyCost then
		tunables.set_int("GR_PURCHASE_SUPPLIES_COST_PER_SEGMENT", BunkerSupplyCost)
	end
	
	if BunkerSupplyDelay then
		if tunables.get_int("GR_PURCHASE_SUPPLIES_DELAY") ~= 0 then
			tunables.set_int("GR_PURCHASE_SUPPLIES_DELAY", 0)
		end
	end
	
	if TriggerBunkerProduction then
		locals_v_set_int(SupportVersion, TTg + 6, 0)
		locals_v_set_int(SupportVersion, TTg, 1)
		script:sleep(1000)
	end
	
	if HangarStaffSourced then
		repeat
			stats.set_bool_masked("MPX_DLC22022PSTAT_BOOL3", true, 9)
			script:sleep(969) -- add a delay to prevent transaction error or infinite 'transaction pending'
		until HangarCrates == 50 or HangarStaffSourced == false
	end
	
	if HangarCargoSourceCooldown then
		if tunables.get_int("SMUG_STEAL_EASY_COOLDOWN_TIMER") ~= 0 then -- *(120000ms)*
			tunables.set_int("SMUG_STEAL_EASY_COOLDOWN_TIMER", 0)
		end
		if tunables.get_int("SMUG_STEAL_MED_COOLDOWN_TIMER") ~= 0 then -- *(180000ms)*
			tunables.set_int("SMUG_STEAL_MED_COOLDOWN_TIMER", 0)
		end
		if tunables.get_int("SMUG_STEAL_HARD_COOLDOWN_TIMER") ~= 0 then -- *(240000ms)*
			tunables.set_int("SMUG_STEAL_HARD_COOLDOWN_TIMER", 0)
		end
		if tunables.get_int("SMUG_STEAL_ADDITIONAL_CRATE_COOLDOWN_TIME") ~= 0 then -- *(60000ms)*
			tunables.set_int("SMUG_STEAL_ADDITIONAL_CRATE_COOLDOWN_TIME", 0)
		end
	end
	
	if NightclubGoodsCapacity then
		tunables.set_int("BB_BUSINESS_TOTAL_MAX_UNITS_CARGO", CargoandShipmentsCapacity)
		tunables.set_int("BB_BUSINESS_TOTAL_MAX_UNITS_WEAPONS", SportingGoodsCapacity)
		tunables.set_int("BB_BUSINESS_TOTAL_MAX_UNITS_COKE", SouthAmericaImportsCapacity)
		tunables.set_int("BB_BUSINESS_TOTAL_MAX_UNITS_METH", PharmaceuticalResearchCapacity)
		tunables.set_int("BB_BUSINESS_TOTAL_MAX_UNITS_WEED", OrganicProduceCapacity)
		tunables.set_int("BB_BUSINESS_TOTAL_MAX_UNITS_FORGED_DOCUMENTS", PrintingandCopyingCapacity)
		tunables.set_int("BB_BUSINESS_TOTAL_MAX_UNITS_COUNTERFEIT_CASH", CashCreationCapacity)
	end
end)

script.register_looped("GoldenGets WarehouseAuto", function (script)
    if WarehouseAuto then
        if locals_v_get_int(SupportVersion, GCS, 2) == 1 then -- Auto Sell Warehouse Special Cargo
            locals_v_set_int(SupportVersion, GCS, SCVMTl + 588, 1) -- crates to sell
            locals_v_set_int(SupportVersion, GCS, SCVMTl + 48, 0)
            locals_v_set_int(SupportVersion, GCS, SCVMTl + 577, 0)
            locals_v_set_int(SupportVersion, GCS, SCVMTl, 7) -- Special Cargo Sell Vehicle Type
            script:sleep(500)
            locals_v_set_int(SupportVersion, GCS, SCVISl, 99999)  
        end
        if locals_v_get_int(SupportVersion, ASS, 2) == 1 then
            script:sleep(500)
            locals_v_set_int(SupportVersion, ASS, SCVAl2, 1)
            script:sleep(200)
            locals_v_set_int(SupportVersion, ASS, SCVAl1, 1)
            script:sleep(200)
            locals_v_set_int(SupportVersion, ASS, SCVAl3, 3012)
            script:sleep(1000)
        end
        if locals_v_get_int(SupportVersion, GCB, 2) == 1 then -- Auto Source Warehouse Special Cargo
            locals_v_set_int(SupportVersion, GCB, SCVIBl1, 1)
            locals_v_set_int(SupportVersion, GCB, SCVIBl2, 111)
            locals_v_set_int(SupportVersion, GCB, SCVIBl3, 6)
            locals_v_set_int(SupportVersion, GCB, SCVIBl4, 4)
            gui.show_message("Your Warehouse is now Full!")
        end
        if locals_v_get_int(SupportVersion, GCS, 2) ~= 1 then  
            script:sleep(500)
            if locals_v_get_int(SupportVersion, AMW, 2) == 1 then
                SCRIPT.REQUEST_SCRIPT(ASS)
                SYSTEM.START_NEW_SCRIPT(ASS, 8344)
                SCRIPT.SET_SCRIPT_AS_NO_LONGER_NEEDED(ASS)
            end
        end
    end
    script:sleep(1000)
end)

SpecialCargoValue = false
SpecialCargoShipmentType = false
SpecialCargoSellCooldown = false
VehicleCargoPaymentPrice = false
VehicleCargoSellCooldown = false
MCBusinessProductMultiplier = false
MCBusinessShipmentType = false
MCBusinessShipmentType0 = false
BunkerValue = false
HangarCargoSellCooldown = false
NightclubGoodsValue = false
NightclubSellTonysCut = false

script.register_looped("GoldenGets Selling", function()
	if SpecialCargoValue then
		tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD1", CratesValue1)
		tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD2", CratesValue2)
		tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD3", CratesValue3)
		tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD4", CratesValue45)
		tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD5", CratesValue67)
		tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD6", CratesValue89)
		tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD7", CratesValue1014)
		tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD8", CratesValue1519)
		tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD9", CratesValue2024)
		tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD10", CratesValue2529)
		tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD11", CratesValue3034)
		tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD12", CratesValue3539)
		tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD13", CratesValue4044)
		tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD14", CratesValue4549)
		tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD15", CratesValue5059)
		tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD16", CratesValue6069)
		tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD17", CratesValue7079)
		tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD18", CratesValue8089)
		tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD19", CratesValue9099)
		tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD20", CratesValue100110)
		tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD21", CratesValue111)
	end
	
    if SpecialCargoShipmentType then
        if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat(GCS)) ~= 0 then
            if locals_v_get_int(SupportVersion, GCS, SCVMTl) ~= 12 then 
                gui.show_message("Special Cargo - Selling", "Sell with single Shipment/Tug, Boats")
                locals_v_set_int(SupportVersion, GCS, SCVMTl, 12) -- gb_contraband_sell.c	iVar0 = MISC::GET_RANDOM_INT_IN_RANGE(0, 14); --Local_545.f_7 = iVar0;
            end
        end
    end
	
	if SpecialCargoSellCooldown then
		if tunables.get_int("EXEC_SELL_COOLDOWN") ~= 0 then -- *(1800000ms)*
			tunables.set_int("EXEC_SELL_COOLDOWN", 0)
		end
		if tunables.get_int("EXEC_SELL_FAIL_COOLDOWN") ~= 0 then -- *(off)*
			tunables.set_int("EXEC_SELL_FAIL_COOLDOWN", 0)
		end
	end
	
	if VehicleCargoPaymentPrice then
		tunables.set_int("IMPEXP_SELL_BUYER1_OFFER_EASY", VehicleStandardRange)
		tunables.set_int("IMPEXP_SELL_BUYER1_OFFER_MED", VehicleMidRange)
		tunables.set_int("IMPEXP_SELL_BUYER1_OFFER_HARD", VehicleTopRange)
	end
	
	if VehicleCargoSellCooldown then
		if tunables.get_int("IMPEXP_SELL_COOLDOWN") ~= 0 then -- *(180000ms)*
			tunables.set_int("IMPEXP_SELL_COOLDOWN", 0)
		end
		if tunables.get_int("IMPEXP_SELL_1_CAR_COOLDOWN") ~= 0 then -- *(1200000ms)*
			tunables.set_int("IMPEXP_SELL_1_CAR_COOLDOWN", 0)
		end
		if tunables.get_int("IMPEXP_SELL_2_CAR_COOLDOWN") ~= 0 then -- *(1680000ms)*
			tunables.set_int("IMPEXP_SELL_2_CAR_COOLDOWN", 0)
		end
		if tunables.get_int("IMPEXP_SELL_3_CAR_COOLDOWN") ~= 0 then -- *(2340000ms)*
			tunables.set_int("IMPEXP_SELL_3_CAR_COOLDOWN", 0)
		end
		if tunables.get_int("IMPEXP_SELL_4_CAR_COOLDOWN") ~= 0 then -- *(2880000ms)*
			tunables.set_int("IMPEXP_SELL_4_CAR_COOLDOWN", 0)
		end
	end
	
	if MCBusinessProductMultiplier then
		tunables.set_float("BIKER_SELL_PRODUCT_LOCAL_MODIFIER", MCBusinessProductMultiplier1)
		tunables.set_float("BIKER_SELL_PRODUCT_FAR_MODIFIER", MCBusinessProductMultiplier2)
	end
	
	if MCBusinessShipmentType then
        if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat(GBCS)) ~= 0 then
            if locals_v_get_int(SupportVersion, GBCS, MCBSTl) == 0 then
                log.info("Single shipment type detected, auto change random shipment type.")
				random_value = math.random(1, 10)
                locals_v_set_int(SupportVersion, GBCS, MCBSTl, random_value)
            end
        end
	end
	
    if MCBusinessShipmentType0 then
        if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat(GBCS)) ~= 0 then
            if locals_v_get_int(SupportVersion, GBCS, MCBSTl) ~= 0 then
				gui.show_message("MC Business - Selling", "Sell with single Shipment/MTL, Pounder")
                locals_v_set_int(SupportVersion, GBCS, MCBSTl, 0) -- gb_biker_contraband_sell.c	iVar0 = MISC::GET_RANDOM_INT_IN_RANGE(0, 13); --Local_704.f_17 = randomIntInRange;
            end    
        end
    end
	
	if BunkerValue then
		tunables.set_int("GR_MANU_PRODUCT_VALUE", BunkerProduct)
		tunables.set_int("GR_MANU_PRODUCT_VALUE_EQUIPMENT_UPGRADE", BunkerEquipmentUpgrade)
		tunables.set_int("GR_MANU_PRODUCT_VALUE_STAFF_UPGRADE", BunkerStaffUpgrade)
	end
	
	Hangar_Sell_Rons_Cut = tunables.get_float("SMUG_SELL_RONS_CUT") -- *(0.025)*
	if HangarSellRonsCut then
		tunables.set_float("SMUG_SELL_RONS_CUT", 0)
	else
		tunables.set_float("SMUG_SELL_RONS_CUT", Hangar_Sell_Rons_Cut)
	end
	
	if HangarCargoSellCooldown then
		if tunables.get_int("SMUG_SELL_SELL_COOLDOWN_TIMER") ~= 0 then -- *(180000ms)*
			tunables.set_int("SMUG_SELL_SELL_COOLDOWN_TIMER", 0)
		end
	end
	
	if NightclubGoodsValue then
		tunables.set_int("BB_BUSINESS_VALUE_CARGO", CargoandShipmentsValue)
		tunables.set_int("BB_BUSINESS_VALUE_WEAPONS", SportingGoodsValue)
		tunables.set_int("BB_BUSINESS_VALUE_COKE", SouthAmericaImportsValue)
		tunables.set_int("BB_BUSINESS_VALUE_METH", PharmaceuticalResearchValue)
		tunables.set_int("BB_BUSINESS_VALUE_WEED", OrganicProduceValue)
		tunables.set_int("BB_BUSINESS_VALUE_FORGED_DOCUMENTS", PrintingandCopyingValue)
		tunables.set_int("BB_BUSINESS_VALUE_COUNTERFEIT_CASH", CashCreationValue)
	end
	
	Nightclub_Sell_Tony_Cut = tunables.get_float("BB_SELL_MISSIONS_TONYS_CUT") -- *(0.100)*
	if NightclubSellTonysCut then
		tunables.set_float("BB_SELL_MISSIONS_TONYS_CUT", 0)
	else
		tunables.set_float("BB_SELL_MISSIONS_TONYS_CUT", Nightclub_Sell_Tony_Cut)
	end
end)

------------------------------------

---------------
GoldenGetsMisc = GoldenGetsMenu:add_tab("Misc")
---------------

CashMultiplier = tunables.get_float("CASH_MULTIPLIER")
XPMultiplier = tunables.get_float("XP_MULTIPLIER")
TimeMultiplier = tunables.get_float("TIME_MULTIPLIER")
APMultiplier = tunables.get_float("AP_MULTIPLIER")
ArenaWheelAP = tunables.get_int("AW_ARENA_WAR_WHEEL_AP_HIGH_WIN")
ArenaWheelRP = tunables.get_int("AW_ARENA_WAR_WHEEL_RP_HIGH_WIN")
ArenaWheelCash = tunables.get_int("AW_ARENA_WAR_WHEEL_CASH_HIGH_WIN")
TaxiWork = tunables.get_float("XM22_TAXI_DRIVER_FARE_MULTIPLIER")
LSCarMeetFirst = tunables.get_float("TUNER_SPRINT_FIRST_TIME_BONUS_XP_MULTIPLIER")
LSCarMeetSprint = tunables.get_float("TUNER_SPRINT_RACE_PLACE_XP_MULTIPLIER")
LSCarMeetStreet = tunables.get_float("TUNER_STREET_RACE_PLACE_XP_MULTIPLIER")
LSCarMeetPursuit = tunables.get_float("TUNER_PURSUIT_RACE_PLACE_XP_MULTIPLIER")
LSCarMeetCheckpoint = tunables.get_float("TUNER_CHECKPOINT_RACE_PLACE_XP_MULTIPLIER")
LSCarMeetHeadtohead = tunables.get_float("TUNER_HEADTOHEAD_RACE_PLACE_XP_MULTIPLIER")
LSCarMeet = tunables.get_float("TUNER_CARCLUB_TIME_XP_MULTIPLIER")
LSCarMeetTrack = tunables.get_float("TUNER_CARCLUB_VISITS_STREAK_XP_MULTIPLIER")
LSCarMeetMerch = tunables.get_float("TUNER_MERCH_PURCHASE_XP_MULTIPLIER")
LSCarMeetAll = tunables.get_float("TUNER_CARCLUB_TIME_XP_MULTIPLIER")

script.register_looped("get_GoldenGets Multiplier", function (script)
	CashMultiplier = tunables.get_float("CASH_MULTIPLIER")
	XPMultiplier = tunables.get_float("XP_MULTIPLIER")
	TimeMultiplier = tunables.get_float("TIME_MULTIPLIER")
	APMultiplier = tunables.get_float("AP_MULTIPLIER")
	ArenaWheelAP = tunables.get_int("AW_ARENA_WAR_WHEEL_AP_HIGH_WIN")
	ArenaWheelRP = tunables.get_int("AW_ARENA_WAR_WHEEL_RP_HIGH_WIN")
	ArenaWheelCash = tunables.get_int("AW_ARENA_WAR_WHEEL_CASH_HIGH_WIN")
	TaxiWork = tunables.get_float("XM22_TAXI_DRIVER_FARE_MULTIPLIER")
	LSCarMeetFirst = tunables.get_float("TUNER_SPRINT_FIRST_TIME_BONUS_XP_MULTIPLIER")
	LSCarMeetSprint = tunables.get_float("TUNER_SPRINT_RACE_PLACE_XP_MULTIPLIER")
	LSCarMeetStreet = tunables.get_float("TUNER_STREET_RACE_PLACE_XP_MULTIPLIER")
	LSCarMeetPursuit = tunables.get_float("TUNER_PURSUIT_RACE_PLACE_XP_MULTIPLIER")
	LSCarMeetCheckpoint = tunables.get_float("TUNER_CHECKPOINT_RACE_PLACE_XP_MULTIPLIER")
	LSCarMeetHeadtohead = tunables.get_float("TUNER_HEADTOHEAD_RACE_PLACE_XP_MULTIPLIER")
	LSCarMeet = tunables.get_float("TUNER_CARCLUB_TIME_XP_MULTIPLIER")
	LSCarMeetTrack = tunables.get_float("TUNER_CARCLUB_VISITS_STREAK_XP_MULTIPLIER")
	LSCarMeetMerch = tunables.get_float("TUNER_MERCH_PURCHASE_XP_MULTIPLIER")
	LSCarMeetAll = tunables.get_float("TUNER_CARCLUB_TIME_XP_MULTIPLIER")
	script:yield()
end)

GoldenGetsMisc:add_imgui(function()
	if ImGui.BeginTabBar("GoldenGets Misc Tab") then
		if ImGui.BeginTabItem("Misc") then
			if ImGui.Button("Bypass Daily Vehicle Sell Limit") then
				stats.set_int("MPPLY_VEHICLE_SELL_TIME", 0)
				stats.set_int("MPPLY_NUM_CARS_SOLD_TODAY", 0)
			end
			if ImGui.IsItemHovered() then
				ImGui.SetTooltip("Remove daily vehicle sell limited on ls custom")
			end
			
			if ImGui.Button("Claim LS Car Meet Prize Ride") then
				stats.set_bool("MPX_CARMEET_PV_CHLLGE_CMPLT", true)
				stats.set_bool("MPX_CARMEET_PV_CLMED", false)  
			end
			if ImGui.IsItemHovered() then
				ImGui.SetTooltip("Claim the prize ride ls car meet series race")
			end
			
			if ImGui.Button("Remove Self Bounty") then
				globals_v_set_int(SupportVersion, 1 + 2359296 + 5150 + 13, 2880000)
			end
			
			disabletransactionerror = ImGui.Checkbox("Disable Transaction error", disabletransactionerror) --??????,??????
			ImGui.EndTabItem()
		end
		
		if ImGui.BeginTabItem("Tunables") then
			if ImGui.Button("Default Vehicle Price##BinPriceVehicle") then
				-- Bin Price Vehicle
				tunables.set_int("AW_BUY_IT_NOW_PRICE_APOCALYPSE_BRUTUS", 1866655)
				tunables.set_int("AW_BUY_IT_NOW_PRICE_APOCALYPSE_CERBERUS", 2709210)
				tunables.set_int("AW_BUY_IT_NOW_PRICE_APOCALYPSE_IMPERATOR", 1599458)
				tunables.set_int("AW_BUY_IT_NOW_PRICE_APOCALYPSE_SCARAB", 2153403)
				tunables.set_int("AW_BUY_IT_NOW_PRICE_APOCALYPSE_ZR380", 1497048)
				tunables.set_int("AW_BUY_IT_NOW_PRICE_CONSUMERISM_BRUTUS", 1866655)
				tunables.set_int("AW_BUY_IT_NOW_PRICE_CONSUMERISM_CERBERUS", 2709210)
				tunables.set_int("AW_BUY_IT_NOW_PRICE_CONSUMERISM_IMPERATOR", 1599458)
				tunables.set_int("AW_BUY_IT_NOW_PRICE_CONSUMERISM_SCARAB", 2153403)
				tunables.set_int("AW_BUY_IT_NOW_PRICE_CONSUMERISM_ZR380", 1497048)
				tunables.set_int("AW_BUY_IT_NOW_PRICE_IMPALER", 331835)
				tunables.set_int("AW_BUY_IT_NOW_PRICE_SCIFI_BRUTUS", 1866655)
				tunables.set_int("AW_BUY_IT_NOW_PRICE_SCIFI_CERBERUS", 2709210)
				tunables.set_int("AW_BUY_IT_NOW_PRICE_SCIFI_IMPERATOR", 1599458)
				tunables.set_int("AW_BUY_IT_NOW_PRICE_SCIFI_SCARAB", 2153403)
				tunables.set_int("AW_BUY_IT_NOW_PRICE_SCIFI_ZR380", 1497048)
				
				tunables.set_int("AW_SALE_PRICE_BANDITO", 1590000)
				tunables.set_int("AW_SALE_PRICE_CLIQUE", 909000)
				tunables.set_int("AW_SALE_PRICE_DEVESTE", 1795000)
				tunables.set_int("AW_SALE_PRICE_DEVIANT", 512000)
				tunables.set_int("AW_SALE_PRICE_GTO", 1965000)
				--tunables.set_int("AW_SALE_PRICE_RCBANDITO", )
				tunables.set_int("AW_SALE_PRICE_SCHLAGEN", 1300000)
				tunables.set_int("AW_SALE_PRICE_TOROS", 498000)
				tunables.set_int("AW_SALE_PRICE_TULIP", 718000)
				tunables.set_int("AW_SALE_PRICE_VAMOS", 596000)
				
				tunables.set_int("BB_BUY_IT_NOW_PRICE_HIGH_END_VEHICLES_MAMMOTH_PATRIOT_STRETCH", 611800)
				tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP", 1190350)
				--tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP_LIVERY_1", )
				--tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP_LIVERY_2", )
				--tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP_LIVERY_3", )
				--tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP_LIVERY_4", )
				--tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP_LIVERY_5", )
				--tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP_LIVERY_6", )
				--tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP_LIVERY_7", )
				--tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP_LIVERY_8_NIGHTCLUB", )
				tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_FESTIVAL_BUS", 1842050)
				tunables.set_int("BB_BUY_IT_NOW_PRICE_WEAPONIZED_VEHICLES_DECLASSE_SCRAMJET", 4000000)
				tunables.set_int("BB_BUY_IT_NOW_PRICE_WEAPONIZED_VEHICLES_MAIBATSU_MULE_CUSTOM", 95760)
				tunables.set_int("BB_BUY_IT_NOW_PRICE_WEAPONIZED_VEHICLES_MTL_POUNDER_CUSTOM", 320530)
				tunables.set_int("BB_BUY_IT_NOW_PRICE_WEAPONIZED_VEHICLES_PEGASSI_OPPRESSOR_MK_II", 8000000)
				
				tunables.set_int("BOUNTY24_BIN_PRICE_CASTIGATOR", 1650000)
				tunables.set_int("BOUNTY24_BIN_PRICE_COQUETTE5", 1500000)
				tunables.set_int("BOUNTY24_BIN_PRICE_DOMINATOR10", 1550000)
				tunables.set_int("BOUNTY24_BIN_PRICE_ENVISAGE", 2472000)
				tunables.set_int("BOUNTY24_BIN_PRICE_EUROSX32", 1499000)
				tunables.set_int("BOUNTY24_BIN_PRICE_NIOBE", 1880000)
				tunables.set_int("BOUNTY24_BIN_PRICE_PARAGON3", 2010000)
				tunables.set_int("BOUNTY24_BIN_PRICE_PIPISTRELLO", 2950000)
				tunables.set_int("BOUNTY24_BIN_PRICE_PIZZABOY", 195000)
				tunables.set_int("BOUNTY24_BIN_PRICE_POLDOMINATOR10", 4950000)
				tunables.set_int("BOUNTY24_BIN_PRICE_POLDORADO", 5005000)
				tunables.set_int("BOUNTY24_BIN_PRICE_POLGREENWOOD", 4910000)
				tunables.set_int("BOUNTY24_BIN_PRICE_POLIMPALER5", 4720000)
				tunables.set_int("BOUNTY24_BIN_PRICE_POLIMPALER6", 4800000)
				tunables.set_int("BOUNTY24_BIN_PRICE_VORSCHLAGHAMMER", 1790000)
				tunables.set_int("BOUNTY24_BIN_PRICE_YOSEMITE1500", 1205000)
				
				tunables.set_int("CH_BIN_PRICE_ASBO", 408000)
				tunables.set_int("CH_BIN_PRICE_BOXVILLE", 398000)
				tunables.set_int("CH_BIN_PRICE_BURRITO2", 598500)
				tunables.set_int("CH_BIN_PRICE_EVERON", 1475000)
				tunables.set_int("CH_BIN_PRICE_FIRETRUCK", 3295000)
				tunables.set_int("CH_BIN_PRICE_FURIA", 2740000)
				tunables.set_int("CH_BIN_PRICE_KANJO", 580000)
				tunables.set_int("CH_BIN_PRICE_KOMODA", 1700000)
				tunables.set_int("CH_BIN_PRICE_OUTLAW", 1268000)
				tunables.set_int("CH_BIN_PRICE_RETINUE2", 1620000)
				tunables.set_int("CH_BIN_PRICE_STOCKADE", 2240000)
				tunables.set_int("CH_BIN_PRICE_STRYDER", 670000)
				tunables.set_int("CH_BIN_PRICE_SUGOI", 1224000)
				tunables.set_int("CH_BIN_PRICE_SULTAN2", 1718000)
				tunables.set_int("CH_BIN_PRICE_VAGRANT", 2214000)
				tunables.set_int("CH_BIN_PRICE_YOSEMITE2", 1308000)
				tunables.set_int("CH_BIN_PRICE_ZHABA", 2400000)
				
				tunables.set_int("CH_SALE_PRICE_BLAZER2", 62000)
				tunables.set_int("CH_SALE_PRICE_IMORGEN", 2165000)
				tunables.set_int("CH_SALE_PRICE_LGUARD", 865000)
				tunables.set_int("CH_SALE_PRICE_MINITANK", 2275000)
				tunables.set_int("CH_SALE_PRICE_REBLA", 1175000)
				tunables.set_int("CH_SALE_PRICE_VSTR", 1285000)
				
				tunables.set_int("FIXER_BIN_PRICE_ASTRON", 1580000)
				tunables.set_int("FIXER_BIN_PRICE_BALLER7", 890000)
				tunables.set_int("FIXER_BIN_PRICE_BUFFALO4", 2150000)
				tunables.set_int("FIXER_BIN_PRICE_CHAMPION", 3750000)
				tunables.set_int("FIXER_BIN_PRICE_CINQUEMILA", 1740000)
				tunables.set_int("FIXER_BIN_PRICE_COMET7", 1797000)
				tunables.set_int("FIXER_BIN_PRICE_DEITY", 1845000)
				tunables.set_int("FIXER_BIN_PRICE_GRANGER2", 2000000)
				tunables.set_int("FIXER_BIN_PRICE_IGNUS", 2765000)
				tunables.set_int("FIXER_BIN_PRICE_IWAGEN", 1720000)
				tunables.set_int("FIXER_BIN_PRICE_JUBILEE", 1650000)
				tunables.set_int("FIXER_BIN_PRICE_PATRIOT3", 1710000)
				tunables.set_int("FIXER_BIN_PRICE_REEVER", 1900000)
				tunables.set_int("FIXER_BIN_PRICE_SHINOBI", 2480500)
				tunables.set_int("FIXER_BIN_PRICE_ZENO", 2820000)
				
				--tunables.set_int("GEN9_SALE_PRICE_ARBITERGT", )
				--tunables.set_int("GEN9_SALE_PRICE_ASTRON2", )
				--tunables.set_int("GEN9_SALE_PRICE_CYCLONE2", )
				--tunables.set_int("GEN9_SALE_PRICE_IGNUS2", )
				--tunables.set_int("GEN9_SALE_PRICE_S95", )
				
				tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_AKULA", 4500000)
				tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_BARRAGE", 2121350)
				tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_CHERNOBOG", 1500000)
				tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_DELUXO", 5750000)
				tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_KHANJALI", 3850350)
				tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_RCV", 3125500)
				tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_STROMBERG", 2500000)
				tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_THRUSTER", 2500000)
				tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_VOLATOL", 3724000)
				tunables.set_int("H2_VEHICLES_PRICE_190Z", 900000)
				tunables.set_int("H2_VEHICLES_PRICE_AUTARCH", 1955000)
				tunables.set_int("H2_VEHICLES_PRICE_AVENGER", 3450000)
				tunables.set_int("H2_VEHICLES_PRICE_COMET_GT", 1145000)
				tunables.set_int("H2_VEHICLES_PRICE_COMET_SAFARI", 710000)
				tunables.set_int("H2_VEHICLES_PRICE_GT500", 785000)
				tunables.set_int("H2_VEHICLES_PRICE_HERMES", 535000)
				tunables.set_int("H2_VEHICLES_PRICE_HUSTLER", 625000)
				tunables.set_int("H2_VEHICLES_PRICE_KAMACHO", 345000)
				tunables.set_int("H2_VEHICLES_PRICE_NEON", 1500000)
				tunables.set_int("H2_VEHICLES_PRICE_PARIAH", 1420000)
				tunables.set_int("H2_VEHICLES_PRICE_RAIDEN", 1375000)
				tunables.set_int("H2_VEHICLES_PRICE_REVOLTER", 1610000)
				tunables.set_int("H2_VEHICLES_PRICE_RIATA", 380000)
				tunables.set_int("H2_VEHICLES_PRICE_SAVESTRA", 990000)
				tunables.set_int("H2_VEHICLES_PRICE_SC1", 1603000)
				tunables.set_int("H2_VEHICLES_PRICE_SENTINEL_CLASSIC", 650000)
				tunables.set_int("H2_VEHICLES_PRICE_STREITER", 500000)
				tunables.set_int("H2_VEHICLES_PRICE_VISERIS", 875000)
				tunables.set_int("H2_VEHICLES_PRICE_YOSEMITE", 485000)
				
				tunables.set_int("HESIT_VEHICLE_PRICE_BENEFACTOR_SCHAFTER", 65000)
				tunables.set_int("HESIT_VEHICLE_PRICE_BRAVADO_GRESLEY", 29000)
				tunables.set_int("HESIT_VEHICLE_PRICE_BRAVADO_RUMPO", 13000)
				tunables.set_int("HESIT_VEHICLE_PRICE_CANIS_SEMINOLE", 30000)
				tunables.set_int("HESIT_VEHICLE_PRICE_CHEVAL_SURGE", 38000)
				tunables.set_int("HESIT_VEHICLE_PRICE_DUNDREARY_LANDSTALKER", 58000)
				tunables.set_int("HESIT_VEHICLE_PRICE_OCELOT_JACKAL", 60000)
				tunables.set_int("HESIT_VEHICLE_PRICE_PRINCIPLE_NEMESIS", 12000)
				tunables.set_int("HESIT_VEHICLE_PRICE_UBERMACHT_ORACLE", 82000)
				
				tunables.set_int("IH_BIN_PRICE_ALKONOST", 4350000)
				tunables.set_int("IH_BIN_PRICE_ANNIHILATOR2", 3870000)
				tunables.set_int("IH_BIN_PRICE_BRIOSO2", 610000)
				tunables.set_int("IH_BIN_PRICE_DINGHY5", 1850000)
				tunables.set_int("IH_BIN_PRICE_ITALIRSX", 3465000)
				tunables.set_int("IH_BIN_PRICE_LONGFIN", 2125000)
				tunables.set_int("IH_BIN_PRICE_MANCHEZ2", 225000)
				tunables.set_int("IH_BIN_PRICE_PATROLBOAT", 2955000)
				tunables.set_int("IH_BIN_PRICE_SLAMTRUCK", 1310000)
				tunables.set_int("IH_BIN_PRICE_SQUADDIE", 1130000)
				tunables.set_int("IH_BIN_PRICE_TOREADOR", 4250000)
				tunables.set_int("IH_BIN_PRICE_VERUS", 192000)
				tunables.set_int("IH_BIN_PRICE_VETIR", 1630000)
				tunables.set_int("IH_BIN_PRICE_VETO", 895000)
				tunables.set_int("IH_BIN_PRICE_VETO2", 995000)
				tunables.set_int("IH_BIN_PRICE_WEEVIL", 870000)
				tunables.set_int("IH_BIN_PRICE_WINKY", 1100000)
				
				tunables.set_int("IMPEXP_DIABLOUS_BASE_PRICE", 169000)
				tunables.set_int("IMPEXP_ELEGY_BASE_PRICE", 95000)
				tunables.set_int("IMPEXP_FCR_BASE_PRICE", 135000)
				tunables.set_int("IMPEXP_ITALIGTB_BASE_PRICE", 1189000)
				tunables.set_int("IMPEXP_NERO_BASE_PRICE", 1440000)
				tunables.set_int("IMPEXP_SPECTER_BASE_PRICE", 599000)
				
				tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_ALPHAZ1", 2121350)
				tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_BOMBUSHKA", 4750000)
				tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_HOWARD_NX25", 1296750)
				tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_HUNTER", 4123000)
				tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_MOGUL", 3125500)
				tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_NAGASAKI_HAVOK", 2300900)
				tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_P45_NOKOTA", 2653350)
				tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_PEGASSI_ULTRALIGHT", 665000)
				tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_PYRO", 4455500)
				tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_ROGUE", 1596000)
				tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_STARLING", 3657500)
				tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_TULA", 4100000)
				tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_V65_MOLOTOK", 4788000)
				tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_WESTERN_SEABREEZE", 1130500)
				
				tunables.set_int("SU22_BIN_PRICE_CONADA", 2450000)
				tunables.set_int("SU22_BIN_PRICE_CORSITA", 1795000)
				tunables.set_int("SU22_BIN_PRICE_DRAUGUR", 1870000)
				tunables.set_int("SU22_BIN_PRICE_GREENWOOD", 1465000)
				tunables.set_int("SU22_BIN_PRICE_KANJOSJ", 1370000)
				tunables.set_int("SU22_BIN_PRICE_LM87", 2915000)
				tunables.set_int("SU22_BIN_PRICE_OMNISEGT", 1795000)
				tunables.set_int("SU22_BIN_PRICE_POSTLUDE", 1310000)
				tunables.set_int("SU22_BIN_PRICE_RHINEHART", 1598000)
				tunables.set_int("SU22_BIN_PRICE_RUINER4", 1320000)
				tunables.set_int("SU22_BIN_PRICE_SM722", 2115000)
				tunables.set_int("SU22_BIN_PRICE_TENF", 1675000)
				tunables.set_int("SU22_BIN_PRICE_TORERO2", 2890000)
				tunables.set_int("SU22_BIN_PRICE_VIGERO2", 1947000)
				
				tunables.set_int("SU23_BIN_PRICE_BRIGHAM", 1049300)
				tunables.set_int("SU23_BIN_PRICE_BUFFALO5", 2140000)
				tunables.set_int("SU23_BIN_PRICE_CLIQUE2", 1205000)
				tunables.set_int("SU23_BIN_PRICE_CONADA2", 3385000)
				tunables.set_int("SU23_BIN_PRICE_COUREUR", 1990000)
				tunables.set_int("SU23_BIN_PRICE_GAUNTLET6", 1810000)
				tunables.set_int("SU23_BIN_PRICE_INDUCTOR", 50000)
				tunables.set_int("SU23_BIN_PRICE_INDUCTOR2", 50000)
				tunables.set_int("SU23_BIN_PRICE_L35", 1670000)
				tunables.set_int("SU23_BIN_PRICE_MONSTROCITI", 1485000)
				tunables.set_int("SU23_BIN_PRICE_RAIJU", 6855000)
				tunables.set_int("SU23_BIN_PRICE_RATEL", 1873000)
				tunables.set_int("SU23_BIN_PRICE_STINGERTT", 2380000)
				tunables.set_int("SU23_BIN_PRICE_STREAMER216", 2238000)
				
				tunables.set_int("SUM_SALE_PRICE_CLUB", 1280000)
				tunables.set_int("SUM_SALE_PRICE_COQUETTE4", 1510000)
				tunables.set_int("SUM_SALE_PRICE_DUKES3", 378000)
				--tunables.set_int("SUM_SALE_PRICE_GAUNTLET5", )
				--tunables.set_int("SUM_SALE_PRICE_GLENDALE2", )
				tunables.set_int("SUM_SALE_PRICE_LANDSTALKER2", 1220000)
				tunables.set_int("SUM_SALE_PRICE_MANANA", 10000)
				--tunables.set_int("SUM_SALE_PRICE_MANANA2", )
				tunables.set_int("SUM_SALE_PRICE_OPENWHEEL1", 3400000)
				tunables.set_int("SUM_SALE_PRICE_OPENWHEEL2", 2997000)
				tunables.set_int("SUM_SALE_PRICE_PENUMBRA2", 1380000)
				tunables.set_int("SUM_SALE_PRICE_PEYOTE", 38000)
				--tunables.set_int("SUM_SALE_PRICE_PEYOTE3", )
				tunables.set_int("SUM_SALE_PRICE_SEMINOLE2", 678000)
				tunables.set_int("SUM_SALE_PRICE_TIGON", 2310000)
				--tunables.set_int("SUM_SALE_PRICE_YOSEMITE3", )
				--tunables.set_int("SUM_SALE_PRICE_YOUGA3", )
				
				tunables.set_int("TUNER_BIN_PRICE_CALICO", 1995000)
				tunables.set_int("TUNER_BIN_PRICE_COMET6", 1878000)
				tunables.set_int("TUNER_BIN_PRICE_CYPHER", 1550000)
				tunables.set_int("TUNER_BIN_PRICE_DOMINATOR7", 1775000)
				tunables.set_int("TUNER_BIN_PRICE_DOMINATOR8", 1220000)
				tunables.set_int("TUNER_BIN_PRICE_EUROS", 1800000)
				tunables.set_int("TUNER_BIN_PRICE_FUTO2", 1590000)
				tunables.set_int("TUNER_BIN_PRICE_GROWLER", 1627000)
				tunables.set_int("TUNER_BIN_PRICE_JESTER4", 1970000)
				tunables.set_int("TUNER_BIN_PRICE_PREVION", 1490000)
				tunables.set_int("TUNER_BIN_PRICE_REMUS", 1370000)
				tunables.set_int("TUNER_BIN_PRICE_RT3000", 1715000)
				tunables.set_int("TUNER_BIN_PRICE_SULTAN3", 1789000)
				tunables.set_int("TUNER_BIN_PRICE_TAILGATER2", 1495000)
				tunables.set_int("TUNER_BIN_PRICE_VECTRE", 1785000)
				tunables.set_int("TUNER_BIN_PRICE_WARRENER2", 1260000)
				tunables.set_int("TUNER_BIN_PRICE_ZR350", 1615000)
				
				tunables.set_int("VC_SALE_PRICE_CARACARA_4X4", 875000)
				tunables.set_int("VC_SALE_PRICE_DRAFTER_8F", 718000)
				tunables.set_int("VC_SALE_PRICE_DYNASTY", 450000)
				tunables.set_int("VC_SALE_PRICE_EMERUS", 2750000)
				tunables.set_int("VC_SALE_PRICE_GASSER", 805000)
				tunables.set_int("VC_SALE_PRICE_GAUNTLET", 745000)
				tunables.set_int("VC_SALE_PRICE_GAUNTLET_CLASSIC", 615000)
				tunables.set_int("VC_SALE_PRICE_HELLION", 835000)
				tunables.set_int("VC_SALE_PRICE_JUGULAR", 1225000)
				tunables.set_int("VC_SALE_PRICE_KRIEGER", 2875000)
				tunables.set_int("VC_SALE_PRICE_LOCUST", 1625000)
				tunables.set_int("VC_SALE_PRICE_NEBULA", 797000)
				tunables.set_int("VC_SALE_PRICE_NEO", 1875000)
				tunables.set_int("VC_SALE_PRICE_NOVAK", 608000)
				tunables.set_int("VC_SALE_PRICE_PARAGON", 905000)
				tunables.set_int("VC_SALE_PRICE_RAMPANT_ROCKET", 925000)
				tunables.set_int("VC_SALE_PRICE_S80RR", 2575000)
				tunables.set_int("VC_SALE_PRICE_THRAX", 2325000)
				tunables.set_int("VC_SALE_PRICE_ZION_CLASSIC", 812000)
				tunables.set_int("VC_SALE_PRICE_ZORRUSSO", 1925000)
				
				tunables.set_int("XM22_BIN_PRICE_BOOR", 1280000)
				tunables.set_int("XM22_BIN_PRICE_BRICKADE2", 1450000)
				tunables.set_int("XM22_BIN_PRICE_BROADWAY", 925000)
				tunables.set_int("XM22_BIN_PRICE_ENTITY3", 2355000)
				tunables.set_int("XM22_BIN_PRICE_EUDORA", 1250000)
				tunables.set_int("XM22_BIN_PRICE_EVERON2", 1790000)
				tunables.set_int("XM22_BIN_PRICE_ISSI8", 1835000)
				tunables.set_int("XM22_BIN_PRICE_JOURNEY2", 790000)
				tunables.set_int("XM22_BIN_PRICE_PANTHERE", 2170000)
				tunables.set_int("XM22_BIN_PRICE_POWERSURGE", 1605000)
				tunables.set_int("XM22_BIN_PRICE_R300", 2075000)
				tunables.set_int("XM22_BIN_PRICE_SURFER3", 590000)
				tunables.set_int("XM22_BIN_PRICE_TAHOMA", 1500000)
				tunables.set_int("XM22_BIN_PRICE_TAXI", 650000)
				tunables.set_int("XM22_BIN_PRICE_TULIP2", 1658000)
				tunables.set_int("XM22_BIN_PRICE_VIRTUE", 2980000)
				
				tunables.set_int("XM23_BIN_PRICE_ALEUTIAN", 1835000)
				tunables.set_int("XM23_BIN_PRICE_ASTEROPE2", 459000)
				tunables.set_int("XM23_BIN_PRICE_BALLER8", 1715000)
				tunables.set_int("XM23_BIN_PRICE_BENSON2", 685000)
				tunables.set_int("XM23_BIN_PRICE_BOXVILLE6", 475000)
				tunables.set_int("XM23_BIN_PRICE_CAVALCADE3", 1665000)
				tunables.set_int("XM23_BIN_PRICE_DOMINATOR9", 2195000)
				tunables.set_int("XM23_BIN_PRICE_DORADO", 1375000)
				tunables.set_int("XM23_BIN_PRICE_FR36", 1610000)
				tunables.set_int("XM23_BIN_PRICE_IMPALER5", 1280000)
				tunables.set_int("XM23_BIN_PRICE_IMPALER6", 1465000)
				tunables.set_int("XM23_BIN_PRICE_POLGAUNTLET", 5420000)
				tunables.set_int("XM23_BIN_PRICE_POLICE4", 3950000)
				tunables.set_int("XM23_BIN_PRICE_POLICE5", 4690000)
				tunables.set_int("XM23_BIN_PRICE_RIOT", 4800000)
				tunables.set_int("XM23_BIN_PRICE_TERMINUS", 1877500)
				tunables.set_int("XM23_BIN_PRICE_TURISMO3", 2845000)
				tunables.set_int("XM23_BIN_PRICE_VIGERO3", 2295000)
				tunables.set_int("XM23_BIN_PRICE_VIVANITE", 1605000)
				
				-- Trade Price Vehicle
				tunables.set_int("AW_TRADE_PRICE_APOCALYPSE_BRUTUS", 1403500)
				tunables.set_int("AW_TRADE_PRICE_APOCALYPSE_CERBERUS", 2037000)
				tunables.set_int("AW_TRADE_PRICE_APOCALYPSE_IMPERATOR", 1202600)
				tunables.set_int("AW_TRADE_PRICE_APOCALYPSE_SCARAB", 1619100)
				tunables.set_int("AW_TRADE_PRICE_APOCALYPSE_ZR380", 1125600)
				tunables.set_int("AW_TRADE_PRICE_CONSUMERISM_BRUTUS", 1403500)
				tunables.set_int("AW_TRADE_PRICE_CONSUMERISM_CERBERUS", 2037000)
				tunables.set_int("AW_TRADE_PRICE_CONSUMERISM_IMPERATOR", 1202600)
				tunables.set_int("AW_TRADE_PRICE_CONSUMERISM_SCARAB", 1619100)
				tunables.set_int("AW_TRADE_PRICE_CONSUMERISM_ZR380", 1125600)
				tunables.set_int("AW_TRADE_PRICE_DOMINATOR", 26250)
				tunables.set_int("AW_TRADE_PRICE_GARGOYLE", 90000)
				tunables.set_int("AW_TRADE_PRICE_GLENDALE", 150000)
				tunables.set_int("AW_TRADE_PRICE_IMPALER", 249500)
				tunables.set_int("AW_TRADE_PRICE_ISSI", 270000)
				tunables.set_int("AW_TRADE_PRICE_RATLOADER", 28125)
				tunables.set_int("AW_TRADE_PRICE_SCIFI_BRUTUS", 1403500)
				tunables.set_int("AW_TRADE_PRICE_SCIFI_CERBERUS", 2037000)
				tunables.set_int("AW_TRADE_PRICE_SCIFI_IMPERATOR", 1202600)
				tunables.set_int("AW_TRADE_PRICE_SCIFI_SCARAB", 1619100)
				tunables.set_int("AW_TRADE_PRICE_SCIFI_ZR380", 1125600)
				tunables.set_int("AW_TRADE_PRICE_SLAMVAN", 37125)
				tunables.set_int("AW_UPGRADE_PRICE_APOCALYPSE_DOMINATOR", 792400)
				tunables.set_int("AW_UPGRADE_PRICE_APOCALYPSE_GARGOYLE", 888300)
				tunables.set_int("AW_UPGRADE_PRICE_APOCALYPSE_GLENDALE", 1126300)
				tunables.set_int("AW_UPGRADE_PRICE_APOCALYPSE_IMPALER", 846650)
				tunables.set_int("AW_UPGRADE_PRICE_APOCALYPSE_ISSI", 762300)
				tunables.set_int("AW_UPGRADE_PRICE_APOCALYPSE_RATLOADER", 1071612)
				tunables.set_int("AW_UPGRADE_PRICE_APOCALYPSE_SLAMVAN", 925312)
				tunables.set_int("AW_UPGRADE_PRICE_CONSUMERISM_DOMINATOR", 792400)
				tunables.set_int("AW_UPGRADE_PRICE_CONSUMERISM_GARGOYLE", 888300)
				tunables.set_int("AW_UPGRADE_PRICE_CONSUMERISM_GLENDALE", 1126300)
				tunables.set_int("AW_UPGRADE_PRICE_CONSUMERISM_IMPALER", 846650)
				tunables.set_int("AW_UPGRADE_PRICE_CONSUMERISM_ISSI", 762300)
				tunables.set_int("AW_UPGRADE_PRICE_CONSUMERISM_RATLOADER", 1071612)
				tunables.set_int("AW_UPGRADE_PRICE_CONSUMERISM_SLAMVAN", 925312)
				tunables.set_int("AW_UPGRADE_PRICE_SCIFI_DOMINATOR", 792400)
				tunables.set_int("AW_UPGRADE_PRICE_SCIFI_GARGOYLE", 888300)
				tunables.set_int("AW_UPGRADE_PRICE_SCIFI_GLENDALE", 1126300)
				tunables.set_int("AW_UPGRADE_PRICE_SCIFI_IMPALER", 846650)
				tunables.set_int("AW_UPGRADE_PRICE_SCIFI_ISSI", 762300)
				tunables.set_int("AW_UPGRADE_PRICE_SCIFI_RATLOADER", 1071612)
				tunables.set_int("AW_UPGRADE_PRICE_SCIFI_SLAMVAN", 925312)
				
				tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_BEEJAY_XL", 27000)
				tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_BENEFACTOR_SERRANO", 60000)
				tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_BOLLOKAN_PRAIRIE", 25000)
				tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_CHARIOT_ROMERO_HEARSE", 31500)
				tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_EMPEROR_HABANERO", 42000)
				tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_FATHOM_FQ_2", 50000)
				tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_IMPONTE_RUINER", 10000)
				tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_KARIN_FUTO", 9000)
				tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_MAMMOTH_PATRIOT", 50000)
				tunables.set_int("BB_TRADE_PRICE_HIGH_END_VEHICLES_CANIS_FREECRAWLER", 597000)
				tunables.set_int("BB_TRADE_PRICE_HIGH_END_VEHICLES_ENUS_STAFFORD", 1272000)
				tunables.set_int("BB_TRADE_PRICE_HIGH_END_VEHICLES_MAMMOTH_PATRIOT_STRETCH", 460000)
				tunables.set_int("BB_TRADE_PRICE_HIGH_END_VEHICLES_OCELOT_SWINGER", 909000)
				tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP", 895000)
				--tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP_LIVERY_1", )
				--tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP_LIVERY_2", )
				--tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP_LIVERY_3", )
				--tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP_LIVERY_4", )
				--tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP_LIVERY_5", )
				--tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP_LIVERY_6", )
				--tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP_LIVERY_7", )
				--tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP_LIVERY_8_NIGHTCLUB", )
				tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_FESTIVAL_BUS", 1385000)
				tunables.set_int("BB_TRADE_PRICE_WEAPONIZED_VEHICLES_B_11_STRIKEFORCE", 3800000)
				--tunables.set_int("BB_TRADE_PRICE_WEAPONIZED_VEHICLES_DECLASSE_SCRAMJET", )
				tunables.set_int("BB_TRADE_PRICE_WEAPONIZED_VEHICLES_MAIBATSU_MULE_CUSTOM", 72000)
				tunables.set_int("BB_TRADE_PRICE_WEAPONIZED_VEHICLES_MTL_POUNDER_CUSTOM", 241000)
				tunables.set_int("BB_TRADE_PRICE_WEAPONIZED_VEHICLES_PEGASSI_HVY_MENACER", 1775000)
				tunables.set_int("BB_TRADE_PRICE_WEAPONIZED_VEHICLES_PEGASSI_OPPRESSOR_MK_II", 6000000)
				
				tunables.set_int("BOUNTY24_TRADE_PRICE_PIZZABOY", 146250)
				tunables.set_int("BOUNTY24_TRADE_PRICE_POLDOMINATOR10", 3712500)
				tunables.set_int("BOUNTY24_TRADE_PRICE_POLDORADO", 3753750)
				tunables.set_int("BOUNTY24_TRADE_PRICE_POLGREENWOOD", 3682500)
				tunables.set_int("BOUNTY24_TRADE_PRICE_POLIMPALER5", 3540000)
				tunables.set_int("BOUNTY24_TRADE_PRICE_POLIMPALER6", 3600000)
				
				tunables.set_int("CH_TRADE_PRICE_ASBO", 306000)
				tunables.set_int("CH_TRADE_PRICE_BOXVILLE", 298500)
				tunables.set_int("CH_TRADE_PRICE_BURRITO2", 450000)
				tunables.set_int("CH_TRADE_PRICE_DEFILER", 309000)
				tunables.set_int("CH_TRADE_PRICE_ELLIE", 423750)
				tunables.set_int("CH_TRADE_PRICE_EVERON", 1106250)
				tunables.set_int("CH_TRADE_PRICE_FIRETRUCK", 2471250)
				tunables.set_int("CH_TRADE_PRICE_FORMULA", 3515000)
				tunables.set_int("CH_TRADE_PRICE_FORMULA2", 3115000)
				tunables.set_int("CH_TRADE_PRICE_FURIA", 2055000)
				tunables.set_int("CH_TRADE_PRICE_GAUNTLET3", 461250)
				tunables.set_int("CH_TRADE_PRICE_JB7002", 735000)
				tunables.set_int("CH_TRADE_PRICE_JUGULAR", 918750)
				tunables.set_int("CH_TRADE_PRICE_KANJO", 435000)
				tunables.set_int("CH_TRADE_PRICE_KOMODA", 1275000)
				tunables.set_int("CH_TRADE_PRICE_MANCHEZ", 50250)
				tunables.set_int("CH_TRADE_PRICE_OUTLAW", 951000)
				tunables.set_int("CH_TRADE_PRICE_RETINUE2", 1215000)
				tunables.set_int("CH_TRADE_PRICE_SENTINAL3", 487500)
				tunables.set_int("CH_TRADE_PRICE_STOCKADE", 1680000)
				tunables.set_int("CH_TRADE_PRICE_STRYDER", 502500)
				tunables.set_int("CH_TRADE_PRICE_SUGOI", 918000)
				tunables.set_int("CH_TRADE_PRICE_SULTAN2", 1288500)
				tunables.set_int("CH_TRADE_PRICE_VAGRANT", 1660500)
				tunables.set_int("CH_TRADE_PRICE_YOSEMITE2", 981000)
				tunables.set_int("CH_TRADE_PRICE_ZHABA", 1800000)
				
				tunables.set_int("FIXER_TRADE_PRICE_BALLER7", 667500)
				tunables.set_int("FIXER_TRADE_PRICE_BUFFALO4", 1612500)
				tunables.set_int("FIXER_TRADE_PRICE_CHAMPION", 2812500)
				tunables.set_int("FIXER_TRADE_PRICE_DEITY", 1383750)
				tunables.set_int("FIXER_TRADE_PRICE_GRANGER2", 1500000)
				--tunables.set_int("FIXER_TRADE_PRICE_ITALIGTB2", )
				tunables.set_int("FIXER_TRADE_PRICE_JUBILEE", 1237500)
				tunables.set_int("FIXER_TRADE_PRICE_PATRIOT3", 1282500)
				
				tunables.set_int("H2_VEHICLES_TRADE_PRICE_AKULA", 3375000)
				tunables.set_int("H2_VEHICLES_TRADE_PRICE_BARRAGE", 1595000)
				tunables.set_int("H2_VEHICLES_TRADE_PRICE_CHERNOBOG", 1125000)
				tunables.set_int("H2_VEHICLES_TRADE_PRICE_DELUXO", 4312500)
				tunables.set_int("H2_VEHICLES_TRADE_PRICE_KHANJALI", 2895000)
				tunables.set_int("H2_VEHICLES_TRADE_PRICE_RCV", 2350000)
				tunables.set_int("H2_VEHICLES_TRADE_PRICE_STROMBERG", 1875000)
				tunables.set_int("H2_VEHICLES_TRADE_PRICE_THRUSTER", 1875000)
				tunables.set_int("H2_VEHICLES_TRADE_PRICE_VOLATOL", 2800000)
				
				tunables.set_int("IH_TRADE_PRICE_ALKONOST", 3262500)
				tunables.set_int("IH_TRADE_PRICE_ANNIHILATOR2", 2902500)
				tunables.set_int("IH_TRADE_PRICE_BRIOSO2", 457500)
				tunables.set_int("IH_TRADE_PRICE_ITALIRSX", 2598750)
				tunables.set_int("IH_TRADE_PRICE_LONGFIN", 1593750)
				tunables.set_int("IH_TRADE_PRICE_PATROLBOAT", 2216250)
				tunables.set_int("IH_TRADE_PRICE_VETIR", 1222500)
				tunables.set_int("IH_TRADE_PRICE_WEEVIL", 652500)
				tunables.set_int("IH_TRADE_PRICE_WINKY", 825000)
				
				tunables.set_int("SMUG_VEHICLES_CARS_TRADE_PRICE_COIL_CYCLONE", 1323000)
				tunables.set_int("SMUG_VEHICLES_CARS_TRADE_PRICE_DEWBAUCHEE_RAPIDGT_CLASSIC", 885000)
				tunables.set_int("SMUG_VEHICLES_CARS_TRADE_PRICE_GROTTI_VIGILANTE", 3750000)
				tunables.set_int("SMUG_VEHICLES_CARS_TRADE_PRICE_GROTTI_VISIONE", 2250000)
				tunables.set_int("SMUG_VEHICLES_CARS_TRADE_PRICE_VAPID_RETINUE", 615000)
				tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_ALPHAZ1", 1595000)
				tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_BOMBUSHKA", 3562500)
				tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_HOWARD_NX25", 975000)
				tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_HUNTER", 3100000)
				tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_MOGUL", 2350000)
				tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_NAGASAKI_HAVOK", 1730000)
				tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_P45_NOKOTA", 1995000)
				tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_P996_LAZER", 6500000)
				tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_PEGASSI_ULTRALIGHT", 500000)
				tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_PYRO", 3350000)
				tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_ROGUE", 1200000)
				tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_STARLING", 2750000)
				tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_TULA", 3075000)
				tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_V65_MOLOTOK", 3600000)
				tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_WESTERN_SEABREEZE", 850000)
				
				tunables.set_int("SU22_TRADE_PRICE_CONADA", 1837500)
				tunables.set_int("SU22_TRADE_PRICE_DRAUGUR", 1402500)
				tunables.set_int("SU22_TRADE_PRICE_GREENWOOD", 1098750)
				tunables.set_int("SU22_TRADE_PRICE_KANJOSJ", 1027500)
				tunables.set_int("SU22_TRADE_PRICE_POSTLUDE", 982500)
				
				tunables.set_int("SU23_TRADE_PRICE_MANCHEZ2", 168750)
				tunables.set_int("SU23_TRADE_PRICE_RAIJU", 5141250)
				tunables.set_int("SU23_TRADE_PRICE_SQUADDIE", 847500)
				
				tunables.set_int("TUNER_TRADE_PRICE_CALICO", 1496250)
				tunables.set_int("TUNER_TRADE_PRICE_COMET6", 1408500)
				tunables.set_int("TUNER_TRADE_PRICE_CYPHER", 1162500)
				tunables.set_int("TUNER_TRADE_PRICE_DOMINATOR7", 1331250)
				tunables.set_int("TUNER_TRADE_PRICE_DOMINATOR8", 915000)
				tunables.set_int("TUNER_TRADE_PRICE_EUROS", 1350000)
				tunables.set_int("TUNER_TRADE_PRICE_FUTO2", 1192500)
				tunables.set_int("TUNER_TRADE_PRICE_GROWLER", 1220250)
				tunables.set_int("TUNER_TRADE_PRICE_JESTER4", 1477500)
				tunables.set_int("TUNER_TRADE_PRICE_PREVION", 1117500)
				tunables.set_int("TUNER_TRADE_PRICE_REMUS", 1027500)
				tunables.set_int("TUNER_TRADE_PRICE_RT3000", 1286250)
				tunables.set_int("TUNER_TRADE_PRICE_SULTAN3", 1341750)
				tunables.set_int("TUNER_TRADE_PRICE_TAILGATER2", 1121250)
				tunables.set_int("TUNER_TRADE_PRICE_VECTRE", 1338750)
				tunables.set_int("TUNER_TRADE_PRICE_WARRENER2", 945000)
				tunables.set_int("TUNER_TRADE_PRICE_ZR350", 1211250)
				
				tunables.set_int("XM22_TRADE_PRICE_EVERON2", 1342500)
				tunables.set_int("XM22_TRADE_PRICE_HOTRING", 622500)
				tunables.set_int("XM22_TRADE_PRICE_JOURNEY2", 592500)
				tunables.set_int("XM22_TRADE_PRICE_SURFER3", 442500)
				tunables.set_int("XM22_TRADE_PRICE_TAXI", 487500)
				tunables.set_int("XM22_TRADE_PRICE_VIRTUE", 2235000)
				
				tunables.set_int("XM23_TRADE_PRICE_BENSON2", 513750)
				tunables.set_int("XM23_TRADE_PRICE_BOXVILLE6", 356250)
				tunables.set_int("XM23_TRADE_PRICE_POLGAUNTLET", 4065000)
				tunables.set_int("XM23_TRADE_PRICE_POLICE4", 2962500)
				tunables.set_int("XM23_TRADE_PRICE_POLICE5", 3517500)
				tunables.set_int("XM23_TRADE_PRICE_RIOT", 3600000)
			end
			if ImGui.IsItemHovered() then
				ImGui.SetTooltip("Default price of some vehicles")
			end
			ImGui.SameLine()
			if ImGui.Button("Free Vehicle Price##TradePriceVehicle") then
				-- Bin Price Vehicle
				tunables.set_int("AW_BUY_IT_NOW_PRICE_APOCALYPSE_BRUTUS", 0)
				tunables.set_int("AW_BUY_IT_NOW_PRICE_APOCALYPSE_CERBERUS", 0)
				tunables.set_int("AW_BUY_IT_NOW_PRICE_APOCALYPSE_IMPERATOR", 0)
				tunables.set_int("AW_BUY_IT_NOW_PRICE_APOCALYPSE_SCARAB", 0)
				tunables.set_int("AW_BUY_IT_NOW_PRICE_APOCALYPSE_ZR380", 0)
				tunables.set_int("AW_BUY_IT_NOW_PRICE_CONSUMERISM_BRUTUS", 0)
				tunables.set_int("AW_BUY_IT_NOW_PRICE_CONSUMERISM_CERBERUS", 0)
				tunables.set_int("AW_BUY_IT_NOW_PRICE_CONSUMERISM_IMPERATOR", 0)
				tunables.set_int("AW_BUY_IT_NOW_PRICE_CONSUMERISM_SCARAB", 0)
				tunables.set_int("AW_BUY_IT_NOW_PRICE_CONSUMERISM_ZR380", 0)
				tunables.set_int("AW_BUY_IT_NOW_PRICE_IMPALER", 0)
				tunables.set_int("AW_BUY_IT_NOW_PRICE_SCIFI_BRUTUS", 0)
				tunables.set_int("AW_BUY_IT_NOW_PRICE_SCIFI_CERBERUS", 0)
				tunables.set_int("AW_BUY_IT_NOW_PRICE_SCIFI_IMPERATOR", 0)
				tunables.set_int("AW_BUY_IT_NOW_PRICE_SCIFI_SCARAB", 0)
				tunables.set_int("AW_BUY_IT_NOW_PRICE_SCIFI_ZR380", 0)
				
				tunables.set_int("AW_SALE_PRICE_BANDITO", 0)
				tunables.set_int("AW_SALE_PRICE_CLIQUE", 0)
				tunables.set_int("AW_SALE_PRICE_DEVESTE", 0)
				tunables.set_int("AW_SALE_PRICE_DEVIANT", 0)
				tunables.set_int("AW_SALE_PRICE_GTO", 0)
				--tunables.set_int("AW_SALE_PRICE_RCBANDITO", 0)
				tunables.set_int("AW_SALE_PRICE_SCHLAGEN", 0)
				tunables.set_int("AW_SALE_PRICE_TOROS", 0)
				tunables.set_int("AW_SALE_PRICE_TULIP", 0)
				tunables.set_int("AW_SALE_PRICE_VAMOS", 0)
				
				tunables.set_int("BB_BUY_IT_NOW_PRICE_HIGH_END_VEHICLES_MAMMOTH_PATRIOT_STRETCH", 0)
				tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP", 0)
				--tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP_LIVERY_1", 0)
				--tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP_LIVERY_2", 0)
				--tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP_LIVERY_3", 0)
				--tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP_LIVERY_4", 0)
				--tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP_LIVERY_5", 0)
				--tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP_LIVERY_6", 0)
				--tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP_LIVERY_7", 0)
				--tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP_LIVERY_8_NIGHTCLUB", 0)
				tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_FESTIVAL_BUS", 0)
				tunables.set_int("BB_BUY_IT_NOW_PRICE_WEAPONIZED_VEHICLES_DECLASSE_SCRAMJET", 0)
				tunables.set_int("BB_BUY_IT_NOW_PRICE_WEAPONIZED_VEHICLES_MAIBATSU_MULE_CUSTOM", 0)
				tunables.set_int("BB_BUY_IT_NOW_PRICE_WEAPONIZED_VEHICLES_MTL_POUNDER_CUSTOM", 0)
				tunables.set_int("BB_BUY_IT_NOW_PRICE_WEAPONIZED_VEHICLES_PEGASSI_OPPRESSOR_MK_II", 0)
				
				tunables.set_int("BOUNTY24_BIN_PRICE_CASTIGATOR", 0)
				tunables.set_int("BOUNTY24_BIN_PRICE_COQUETTE5", 0)
				tunables.set_int("BOUNTY24_BIN_PRICE_DOMINATOR10", 0)
				tunables.set_int("BOUNTY24_BIN_PRICE_ENVISAGE", 0)
				tunables.set_int("BOUNTY24_BIN_PRICE_EUROSX32", 0)
				tunables.set_int("BOUNTY24_BIN_PRICE_NIOBE", 0)
				tunables.set_int("BOUNTY24_BIN_PRICE_PARAGON3", 0)
				tunables.set_int("BOUNTY24_BIN_PRICE_PIPISTRELLO", 0)
				tunables.set_int("BOUNTY24_BIN_PRICE_PIZZABOY", 0)
				tunables.set_int("BOUNTY24_BIN_PRICE_POLDOMINATOR10", 0)
				tunables.set_int("BOUNTY24_BIN_PRICE_POLDORADO", 0)
				tunables.set_int("BOUNTY24_BIN_PRICE_POLGREENWOOD", 0)
				tunables.set_int("BOUNTY24_BIN_PRICE_POLIMPALER5", 0)
				tunables.set_int("BOUNTY24_BIN_PRICE_POLIMPALER6", 0)
				tunables.set_int("BOUNTY24_BIN_PRICE_VORSCHLAGHAMMER", 0)
				tunables.set_int("BOUNTY24_BIN_PRICE_YOSEMITE1500", 0)
				
				tunables.set_int("CH_BIN_PRICE_ASBO", 0)
				tunables.set_int("CH_BIN_PRICE_BOXVILLE", 0)
				tunables.set_int("CH_BIN_PRICE_BURRITO2", 0)
				tunables.set_int("CH_BIN_PRICE_EVERON", 0)
				tunables.set_int("CH_BIN_PRICE_FIRETRUCK", 0)
				tunables.set_int("CH_BIN_PRICE_FURIA", 0)
				tunables.set_int("CH_BIN_PRICE_KANJO", 0)
				tunables.set_int("CH_BIN_PRICE_KOMODA", 0)
				tunables.set_int("CH_BIN_PRICE_OUTLAW", 0)
				tunables.set_int("CH_BIN_PRICE_RETINUE2", 0)
				tunables.set_int("CH_BIN_PRICE_STOCKADE", 0)
				tunables.set_int("CH_BIN_PRICE_STRYDER", 0)
				tunables.set_int("CH_BIN_PRICE_SUGOI", 0)
				tunables.set_int("CH_BIN_PRICE_SULTAN2", 0)
				tunables.set_int("CH_BIN_PRICE_VAGRANT", 0)
				tunables.set_int("CH_BIN_PRICE_YOSEMITE2", 0)
				tunables.set_int("CH_BIN_PRICE_ZHABA", 0)
				
				tunables.set_int("CH_SALE_PRICE_BLAZER2", 0)
				tunables.set_int("CH_SALE_PRICE_IMORGEN", 0)
				tunables.set_int("CH_SALE_PRICE_LGUARD", 0)
				tunables.set_int("CH_SALE_PRICE_MINITANK", 0)
				tunables.set_int("CH_SALE_PRICE_REBLA", 0)
				tunables.set_int("CH_SALE_PRICE_VSTR", 0)
				
				tunables.set_int("FIXER_BIN_PRICE_ASTRON", 0)
				tunables.set_int("FIXER_BIN_PRICE_BALLER7", 0)
				tunables.set_int("FIXER_BIN_PRICE_BUFFALO4", 0)
				tunables.set_int("FIXER_BIN_PRICE_CHAMPION", 0)
				tunables.set_int("FIXER_BIN_PRICE_CINQUEMILA", 0)
				tunables.set_int("FIXER_BIN_PRICE_COMET7", 0)
				tunables.set_int("FIXER_BIN_PRICE_DEITY", 0)
				tunables.set_int("FIXER_BIN_PRICE_GRANGER2", 0)
				tunables.set_int("FIXER_BIN_PRICE_IGNUS", 0)
				tunables.set_int("FIXER_BIN_PRICE_IWAGEN", 0)
				tunables.set_int("FIXER_BIN_PRICE_JUBILEE", 0)
				tunables.set_int("FIXER_BIN_PRICE_PATRIOT3", 0)
				tunables.set_int("FIXER_BIN_PRICE_REEVER", 0)
				tunables.set_int("FIXER_BIN_PRICE_SHINOBI", 0)
				tunables.set_int("FIXER_BIN_PRICE_ZENO", 0)
				
				--tunables.set_int("GEN9_SALE_PRICE_ARBITERGT", 0)
				--tunables.set_int("GEN9_SALE_PRICE_ASTRON2", 0)
				--tunables.set_int("GEN9_SALE_PRICE_CYCLONE2", 0)
				--tunables.set_int("GEN9_SALE_PRICE_IGNUS2", 0)
				--tunables.set_int("GEN9_SALE_PRICE_S95", 0)
				
				tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_AKULA", 0)
				tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_BARRAGE", 0)
				tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_CHERNOBOG", 0)
				tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_DELUXO", 0)
				tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_KHANJALI", 0)
				tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_RCV", 0)
				tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_STROMBERG", 0)
				tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_THRUSTER", 0)
				tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_VOLATOL", 0)
				tunables.set_int("H2_VEHICLES_PRICE_190Z", 0)
				tunables.set_int("H2_VEHICLES_PRICE_AUTARCH", 0)
				tunables.set_int("H2_VEHICLES_PRICE_AVENGER", 0)
				tunables.set_int("H2_VEHICLES_PRICE_COMET_GT", 0)
				tunables.set_int("H2_VEHICLES_PRICE_COMET_SAFARI", 0)
				tunables.set_int("H2_VEHICLES_PRICE_GT500", 0)
				tunables.set_int("H2_VEHICLES_PRICE_HERMES", 0)
				tunables.set_int("H2_VEHICLES_PRICE_HUSTLER", 0)
				tunables.set_int("H2_VEHICLES_PRICE_KAMACHO", 0)
				tunables.set_int("H2_VEHICLES_PRICE_NEON", 0)
				tunables.set_int("H2_VEHICLES_PRICE_PARIAH", 0)
				tunables.set_int("H2_VEHICLES_PRICE_RAIDEN", 0)
				tunables.set_int("H2_VEHICLES_PRICE_REVOLTER", 0)
				tunables.set_int("H2_VEHICLES_PRICE_RIATA", 0)
				tunables.set_int("H2_VEHICLES_PRICE_SAVESTRA", 0)
				tunables.set_int("H2_VEHICLES_PRICE_SC1", 0)
				tunables.set_int("H2_VEHICLES_PRICE_SENTINEL_CLASSIC", 0)
				tunables.set_int("H2_VEHICLES_PRICE_STREITER", 0)
				tunables.set_int("H2_VEHICLES_PRICE_VISERIS", 0)
				tunables.set_int("H2_VEHICLES_PRICE_YOSEMITE", 0)
				
				tunables.set_int("HESIT_VEHICLE_PRICE_BENEFACTOR_SCHAFTER", 0)
				tunables.set_int("HESIT_VEHICLE_PRICE_BRAVADO_GRESLEY", 0)
				tunables.set_int("HESIT_VEHICLE_PRICE_BRAVADO_RUMPO", 0)
				tunables.set_int("HESIT_VEHICLE_PRICE_CANIS_SEMINOLE", 0)
				tunables.set_int("HESIT_VEHICLE_PRICE_CHEVAL_SURGE", 0)
				tunables.set_int("HESIT_VEHICLE_PRICE_DUNDREARY_LANDSTALKER", 0)
				tunables.set_int("HESIT_VEHICLE_PRICE_OCELOT_JACKAL", 0)
				tunables.set_int("HESIT_VEHICLE_PRICE_PRINCIPLE_NEMESIS", 0)
				tunables.set_int("HESIT_VEHICLE_PRICE_UBERMACHT_ORACLE", 0)
				
				tunables.set_int("IH_BIN_PRICE_ALKONOST", 0)
				tunables.set_int("IH_BIN_PRICE_ANNIHILATOR2", 0)
				tunables.set_int("IH_BIN_PRICE_BRIOSO2", 0)
				tunables.set_int("IH_BIN_PRICE_DINGHY5", 0)
				tunables.set_int("IH_BIN_PRICE_ITALIRSX", 0)
				tunables.set_int("IH_BIN_PRICE_LONGFIN", 0)
				tunables.set_int("IH_BIN_PRICE_MANCHEZ2", 0)
				tunables.set_int("IH_BIN_PRICE_PATROLBOAT", 0)
				tunables.set_int("IH_BIN_PRICE_SLAMTRUCK", 0)
				tunables.set_int("IH_BIN_PRICE_SQUADDIE", 0)
				tunables.set_int("IH_BIN_PRICE_TOREADOR", 0)
				tunables.set_int("IH_BIN_PRICE_VERUS", 0)
				tunables.set_int("IH_BIN_PRICE_VETIR", 0)
				tunables.set_int("IH_BIN_PRICE_VETO", 0)
				tunables.set_int("IH_BIN_PRICE_VETO2", 0)
				tunables.set_int("IH_BIN_PRICE_WEEVIL", 0)
				tunables.set_int("IH_BIN_PRICE_WINKY", 0)
				
				tunables.set_int("IMPEXP_DIABLOUS_BASE_PRICE", 0)
				tunables.set_int("IMPEXP_ELEGY_BASE_PRICE", 0)
				tunables.set_int("IMPEXP_FCR_BASE_PRICE", 0)
				tunables.set_int("IMPEXP_ITALIGTB_BASE_PRICE", 0)
				tunables.set_int("IMPEXP_NERO_BASE_PRICE", 0)
				tunables.set_int("IMPEXP_SPECTER_BASE_PRICE", 0)
				
				tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_ALPHAZ1", 0)
				tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_BOMBUSHKA", 0)
				tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_HOWARD_NX25", 0)
				tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_HUNTER", 0)
				tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_MOGUL", 0)
				tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_NAGASAKI_HAVOK", 0)
				tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_P45_NOKOTA", 0)
				tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_PEGASSI_ULTRALIGHT", 0)
				tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_PYRO", 0)
				tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_ROGUE", 0)
				tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_STARLING", 0)
				tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_TULA", 0)
				tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_V65_MOLOTOK", 0)
				tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_WESTERN_SEABREEZE", 0)
				
				tunables.set_int("SU22_BIN_PRICE_CONADA", 0)
				tunables.set_int("SU22_BIN_PRICE_CORSITA", 0)
				tunables.set_int("SU22_BIN_PRICE_DRAUGUR", 0)
				tunables.set_int("SU22_BIN_PRICE_GREENWOOD", 0)
				tunables.set_int("SU22_BIN_PRICE_KANJOSJ", 0)
				tunables.set_int("SU22_BIN_PRICE_LM87", 0)
				tunables.set_int("SU22_BIN_PRICE_OMNISEGT", 0)
				tunables.set_int("SU22_BIN_PRICE_POSTLUDE", 0)
				tunables.set_int("SU22_BIN_PRICE_RHINEHART", 0)
				tunables.set_int("SU22_BIN_PRICE_RUINER4", 0)
				tunables.set_int("SU22_BIN_PRICE_SM722", 0)
				tunables.set_int("SU22_BIN_PRICE_TENF", 0)
				tunables.set_int("SU22_BIN_PRICE_TORERO2", 0)
				tunables.set_int("SU22_BIN_PRICE_VIGERO2", 0)
				
				tunables.set_int("SU23_BIN_PRICE_BRIGHAM", 0)
				tunables.set_int("SU23_BIN_PRICE_BUFFALO5", 0)
				tunables.set_int("SU23_BIN_PRICE_CLIQUE2", 0)
				tunables.set_int("SU23_BIN_PRICE_CONADA2", 0)
				tunables.set_int("SU23_BIN_PRICE_COUREUR", 0)
				tunables.set_int("SU23_BIN_PRICE_GAUNTLET6", 0)
				tunables.set_int("SU23_BIN_PRICE_INDUCTOR", 0)
				tunables.set_int("SU23_BIN_PRICE_INDUCTOR2", 0)
				tunables.set_int("SU23_BIN_PRICE_L35", 0)
				tunables.set_int("SU23_BIN_PRICE_MONSTROCITI", 0)
				tunables.set_int("SU23_BIN_PRICE_RAIJU", 0)
				tunables.set_int("SU23_BIN_PRICE_RATEL", 0)
				tunables.set_int("SU23_BIN_PRICE_STINGERTT", 0)
				tunables.set_int("SU23_BIN_PRICE_STREAMER216", 0)
				
				tunables.set_int("SUM_SALE_PRICE_CLUB", 0)
				tunables.set_int("SUM_SALE_PRICE_COQUETTE4", 0)
				tunables.set_int("SUM_SALE_PRICE_DUKES3", 0)
				--tunables.set_int("SUM_SALE_PRICE_GAUNTLET5", 0)
				--tunables.set_int("SUM_SALE_PRICE_GLENDALE2", 0)
				tunables.set_int("SUM_SALE_PRICE_LANDSTALKER2", 0)
				tunables.set_int("SUM_SALE_PRICE_MANANA", 0)
				--tunables.set_int("SUM_SALE_PRICE_MANANA2", 0)
				tunables.set_int("SUM_SALE_PRICE_OPENWHEEL1", 0)
				tunables.set_int("SUM_SALE_PRICE_OPENWHEEL2", 0)
				tunables.set_int("SUM_SALE_PRICE_PENUMBRA2", 0)
				tunables.set_int("SUM_SALE_PRICE_PEYOTE", 0)
				--tunables.set_int("SUM_SALE_PRICE_PEYOTE3", 0)
				tunables.set_int("SUM_SALE_PRICE_SEMINOLE2", 0)
				tunables.set_int("SUM_SALE_PRICE_TIGON", 0)
				--tunables.set_int("SUM_SALE_PRICE_YOSEMITE3", 0)
				--tunables.set_int("SUM_SALE_PRICE_YOUGA3", 0)
				
				tunables.set_int("TUNER_BIN_PRICE_CALICO", 0)
				tunables.set_int("TUNER_BIN_PRICE_COMET6", 0)
				tunables.set_int("TUNER_BIN_PRICE_CYPHER", 0)
				tunables.set_int("TUNER_BIN_PRICE_DOMINATOR7", 0)
				tunables.set_int("TUNER_BIN_PRICE_DOMINATOR8", 0)
				tunables.set_int("TUNER_BIN_PRICE_EUROS", 0)
				tunables.set_int("TUNER_BIN_PRICE_FUTO2", 0)
				tunables.set_int("TUNER_BIN_PRICE_GROWLER", 0)
				tunables.set_int("TUNER_BIN_PRICE_JESTER4", 0)
				tunables.set_int("TUNER_BIN_PRICE_PREVION", 0)
				tunables.set_int("TUNER_BIN_PRICE_REMUS", 0)
				tunables.set_int("TUNER_BIN_PRICE_RT3000", 0)
				tunables.set_int("TUNER_BIN_PRICE_SULTAN3", 0)
				tunables.set_int("TUNER_BIN_PRICE_TAILGATER2", 0)
				tunables.set_int("TUNER_BIN_PRICE_VECTRE", 0)
				tunables.set_int("TUNER_BIN_PRICE_WARRENER2", 0)
				tunables.set_int("TUNER_BIN_PRICE_ZR350", 0)
				
				tunables.set_int("VC_SALE_PRICE_CARACARA_4X4", 0)
				tunables.set_int("VC_SALE_PRICE_DRAFTER_8F", 0)
				tunables.set_int("VC_SALE_PRICE_DYNASTY", 0)
				tunables.set_int("VC_SALE_PRICE_EMERUS", 0)
				tunables.set_int("VC_SALE_PRICE_GASSER", 0)
				tunables.set_int("VC_SALE_PRICE_GAUNTLET", 0)
				tunables.set_int("VC_SALE_PRICE_GAUNTLET_CLASSIC", 0)
				tunables.set_int("VC_SALE_PRICE_HELLION", 0)
				tunables.set_int("VC_SALE_PRICE_JUGULAR", 0)
				tunables.set_int("VC_SALE_PRICE_KRIEGER", 0)
				tunables.set_int("VC_SALE_PRICE_LOCUST", 0)
				tunables.set_int("VC_SALE_PRICE_NEBULA", 0)
				tunables.set_int("VC_SALE_PRICE_NEO", 0)
				tunables.set_int("VC_SALE_PRICE_NOVAK", 0)
				tunables.set_int("VC_SALE_PRICE_PARAGON", 0)
				tunables.set_int("VC_SALE_PRICE_RAMPANT_ROCKET", 0)
				tunables.set_int("VC_SALE_PRICE_S80RR", 0)
				tunables.set_int("VC_SALE_PRICE_THRAX", 0)
				tunables.set_int("VC_SALE_PRICE_ZION_CLASSIC", 0)
				tunables.set_int("VC_SALE_PRICE_ZORRUSSO", 0)
				
				tunables.set_int("XM22_BIN_PRICE_BOOR", 0)
				tunables.set_int("XM22_BIN_PRICE_BRICKADE2", 0)
				tunables.set_int("XM22_BIN_PRICE_BROADWAY", 0)
				tunables.set_int("XM22_BIN_PRICE_ENTITY3", 0)
				tunables.set_int("XM22_BIN_PRICE_EUDORA", 0)
				tunables.set_int("XM22_BIN_PRICE_EVERON2", 0)
				tunables.set_int("XM22_BIN_PRICE_ISSI8", 0)
				tunables.set_int("XM22_BIN_PRICE_JOURNEY2", 0)
				tunables.set_int("XM22_BIN_PRICE_PANTHERE", 0)
				tunables.set_int("XM22_BIN_PRICE_POWERSURGE", 0)
				tunables.set_int("XM22_BIN_PRICE_R300", 0)
				tunables.set_int("XM22_BIN_PRICE_SURFER3", 0)
				tunables.set_int("XM22_BIN_PRICE_TAHOMA", 0)
				tunables.set_int("XM22_BIN_PRICE_TAXI", 0)
				tunables.set_int("XM22_BIN_PRICE_TULIP2", 0)
				tunables.set_int("XM22_BIN_PRICE_VIRTUE", 0)
				
				tunables.set_int("XM23_BIN_PRICE_ALEUTIAN", 0)
				tunables.set_int("XM23_BIN_PRICE_ASTEROPE2", 0)
				tunables.set_int("XM23_BIN_PRICE_BALLER8", 0)
				tunables.set_int("XM23_BIN_PRICE_BENSON2", 0)
				tunables.set_int("XM23_BIN_PRICE_BOXVILLE6", 0)
				tunables.set_int("XM23_BIN_PRICE_CAVALCADE3", 0)
				tunables.set_int("XM23_BIN_PRICE_DOMINATOR9", 0)
				tunables.set_int("XM23_BIN_PRICE_DORADO", 0)
				tunables.set_int("XM23_BIN_PRICE_FR36", 0)
				tunables.set_int("XM23_BIN_PRICE_IMPALER5", 0)
				tunables.set_int("XM23_BIN_PRICE_IMPALER6", 0)
				tunables.set_int("XM23_BIN_PRICE_POLGAUNTLET", 0)
				tunables.set_int("XM23_BIN_PRICE_POLICE4", 0)
				tunables.set_int("XM23_BIN_PRICE_POLICE5", 0)
				tunables.set_int("XM23_BIN_PRICE_RIOT", 0)
				tunables.set_int("XM23_BIN_PRICE_TERMINUS", 0)
				tunables.set_int("XM23_BIN_PRICE_TURISMO3", 0)
				tunables.set_int("XM23_BIN_PRICE_VIGERO3", 0)
				tunables.set_int("XM23_BIN_PRICE_VIVANITE", 0)
				
				-- Trade Price Vehicle
				tunables.set_int("AW_TRADE_PRICE_APOCALYPSE_BRUTUS", 0)
				tunables.set_int("AW_TRADE_PRICE_APOCALYPSE_CERBERUS", 0)
				tunables.set_int("AW_TRADE_PRICE_APOCALYPSE_IMPERATOR", 0)
				tunables.set_int("AW_TRADE_PRICE_APOCALYPSE_SCARAB", 0)
				tunables.set_int("AW_TRADE_PRICE_APOCALYPSE_ZR380", 0)
				tunables.set_int("AW_TRADE_PRICE_CONSUMERISM_BRUTUS", 0)
				tunables.set_int("AW_TRADE_PRICE_CONSUMERISM_CERBERUS", 0)
				tunables.set_int("AW_TRADE_PRICE_CONSUMERISM_IMPERATOR", 0)
				tunables.set_int("AW_TRADE_PRICE_CONSUMERISM_SCARAB", 0)
				tunables.set_int("AW_TRADE_PRICE_CONSUMERISM_ZR380", 0)
				tunables.set_int("AW_TRADE_PRICE_DOMINATOR", 0)
				tunables.set_int("AW_TRADE_PRICE_GARGOYLE", 0)
				tunables.set_int("AW_TRADE_PRICE_GLENDALE", 0)
				tunables.set_int("AW_TRADE_PRICE_IMPALER", 0)
				tunables.set_int("AW_TRADE_PRICE_ISSI", 0)
				tunables.set_int("AW_TRADE_PRICE_RATLOADER", 0)
				tunables.set_int("AW_TRADE_PRICE_SCIFI_BRUTUS", 0)
				tunables.set_int("AW_TRADE_PRICE_SCIFI_CERBERUS", 0)
				tunables.set_int("AW_TRADE_PRICE_SCIFI_IMPERATOR", 0)
				tunables.set_int("AW_TRADE_PRICE_SCIFI_SCARAB", 0)
				tunables.set_int("AW_TRADE_PRICE_SCIFI_ZR380", 0)
				tunables.set_int("AW_TRADE_PRICE_SLAMVAN", 0)
				tunables.set_int("AW_UPGRADE_PRICE_APOCALYPSE_DOMINATOR", 0)
				tunables.set_int("AW_UPGRADE_PRICE_APOCALYPSE_GARGOYLE", 0)
				tunables.set_int("AW_UPGRADE_PRICE_APOCALYPSE_GLENDALE", 0)
				tunables.set_int("AW_UPGRADE_PRICE_APOCALYPSE_IMPALER", 0)
				tunables.set_int("AW_UPGRADE_PRICE_APOCALYPSE_ISSI", 0)
				tunables.set_int("AW_UPGRADE_PRICE_APOCALYPSE_RATLOADER", 0)
				tunables.set_int("AW_UPGRADE_PRICE_APOCALYPSE_SLAMVAN", 0)
				tunables.set_int("AW_UPGRADE_PRICE_CONSUMERISM_DOMINATOR", 0)
				tunables.set_int("AW_UPGRADE_PRICE_CONSUMERISM_GARGOYLE", 0)
				tunables.set_int("AW_UPGRADE_PRICE_CONSUMERISM_GLENDALE", 0)
				tunables.set_int("AW_UPGRADE_PRICE_CONSUMERISM_IMPALER", 0)
				tunables.set_int("AW_UPGRADE_PRICE_CONSUMERISM_ISSI", 0)
				tunables.set_int("AW_UPGRADE_PRICE_CONSUMERISM_RATLOADER", 0)
				tunables.set_int("AW_UPGRADE_PRICE_CONSUMERISM_SLAMVAN", 0)
				tunables.set_int("AW_UPGRADE_PRICE_SCIFI_DOMINATOR", 0)
				tunables.set_int("AW_UPGRADE_PRICE_SCIFI_GARGOYLE", 0)
				tunables.set_int("AW_UPGRADE_PRICE_SCIFI_GLENDALE", 0)
				tunables.set_int("AW_UPGRADE_PRICE_SCIFI_IMPALER", 0)
				tunables.set_int("AW_UPGRADE_PRICE_SCIFI_ISSI", 0)
				tunables.set_int("AW_UPGRADE_PRICE_SCIFI_RATLOADER", 0)
				tunables.set_int("AW_UPGRADE_PRICE_SCIFI_SLAMVAN", 0)
				
				tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_BEEJAY_XL", 0)
				tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_BENEFACTOR_SERRANO", 0)
				tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_BOLLOKAN_PRAIRIE", 0)
				tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_CHARIOT_ROMERO_HEARSE", 0)
				tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_EMPEROR_HABANERO", 0)
				tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_FATHOM_FQ_2", 0)
				tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_IMPONTE_RUINER", 0)
				tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_KARIN_FUTO", 0)
				tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_MAMMOTH_PATRIOT", 0)
				tunables.set_int("BB_TRADE_PRICE_HIGH_END_VEHICLES_CANIS_FREECRAWLER", 0)
				tunables.set_int("BB_TRADE_PRICE_HIGH_END_VEHICLES_ENUS_STAFFORD", 0)
				tunables.set_int("BB_TRADE_PRICE_HIGH_END_VEHICLES_MAMMOTH_PATRIOT_STRETCH", 0)
				tunables.set_int("BB_TRADE_PRICE_HIGH_END_VEHICLES_OCELOT_SWINGER", 0)
				tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP", 0)
				--tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP_LIVERY_1", 0)
				--tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP_LIVERY_2", 0)
				--tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP_LIVERY_3", 0)
				--tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP_LIVERY_4", 0)
				--tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP_LIVERY_5", 0)
				--tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP_LIVERY_6", 0)
				--tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP_LIVERY_7", 0)
				--tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP_LIVERY_8_NIGHTCLUB", 0)
				tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_FESTIVAL_BUS", 0)
				tunables.set_int("BB_TRADE_PRICE_WEAPONIZED_VEHICLES_B_11_STRIKEFORCE", 0)
				--tunables.set_int("BB_TRADE_PRICE_WEAPONIZED_VEHICLES_DECLASSE_SCRAMJET", 0)
				tunables.set_int("BB_TRADE_PRICE_WEAPONIZED_VEHICLES_MAIBATSU_MULE_CUSTOM", 0)
				tunables.set_int("BB_TRADE_PRICE_WEAPONIZED_VEHICLES_MTL_POUNDER_CUSTOM", 0)
				tunables.set_int("BB_TRADE_PRICE_WEAPONIZED_VEHICLES_PEGASSI_HVY_MENACER", 0)
				tunables.set_int("BB_TRADE_PRICE_WEAPONIZED_VEHICLES_PEGASSI_OPPRESSOR_MK_II", 0)
				
				tunables.set_int("BOUNTY24_TRADE_PRICE_PIZZABOY", 0)
				tunables.set_int("BOUNTY24_TRADE_PRICE_POLDOMINATOR10", 0)
				tunables.set_int("BOUNTY24_TRADE_PRICE_POLDORADO", 0)
				tunables.set_int("BOUNTY24_TRADE_PRICE_POLGREENWOOD", 0)
				tunables.set_int("BOUNTY24_TRADE_PRICE_POLIMPALER5", 0)
				tunables.set_int("BOUNTY24_TRADE_PRICE_POLIMPALER6", 0)
				
				tunables.set_int("CH_TRADE_PRICE_ASBO", 0)
				tunables.set_int("CH_TRADE_PRICE_BOXVILLE", 0)
				tunables.set_int("CH_TRADE_PRICE_BURRITO2", 0)
				tunables.set_int("CH_TRADE_PRICE_DEFILER", 0)
				tunables.set_int("CH_TRADE_PRICE_ELLIE", 0)
				tunables.set_int("CH_TRADE_PRICE_EVERON", 0)
				tunables.set_int("CH_TRADE_PRICE_FIRETRUCK", 0)
				tunables.set_int("CH_TRADE_PRICE_FORMULA", 0)
				tunables.set_int("CH_TRADE_PRICE_FORMULA2", 0)
				tunables.set_int("CH_TRADE_PRICE_FURIA", 0)
				tunables.set_int("CH_TRADE_PRICE_GAUNTLET3", 0)
				tunables.set_int("CH_TRADE_PRICE_JB7002", 0)
				tunables.set_int("CH_TRADE_PRICE_JUGULAR", 0)
				tunables.set_int("CH_TRADE_PRICE_KANJO", 0)
				tunables.set_int("CH_TRADE_PRICE_KOMODA", 0)
				tunables.set_int("CH_TRADE_PRICE_MANCHEZ", 0)
				tunables.set_int("CH_TRADE_PRICE_OUTLAW", 0)
				tunables.set_int("CH_TRADE_PRICE_RETINUE2", 0)
				tunables.set_int("CH_TRADE_PRICE_SENTINAL3", 0)
				tunables.set_int("CH_TRADE_PRICE_STOCKADE", 0)
				tunables.set_int("CH_TRADE_PRICE_STRYDER", 0)
				tunables.set_int("CH_TRADE_PRICE_SUGOI", 0)
				tunables.set_int("CH_TRADE_PRICE_SULTAN2", 0)
				tunables.set_int("CH_TRADE_PRICE_VAGRANT", 0)
				tunables.set_int("CH_TRADE_PRICE_YOSEMITE2", 0)
				tunables.set_int("CH_TRADE_PRICE_ZHABA", 0)
				
				tunables.set_int("FIXER_TRADE_PRICE_BALLER7", 0)
				tunables.set_int("FIXER_TRADE_PRICE_BUFFALO4", 0)
				tunables.set_int("FIXER_TRADE_PRICE_CHAMPION", 0)
				tunables.set_int("FIXER_TRADE_PRICE_DEITY", 0)
				tunables.set_int("FIXER_TRADE_PRICE_GRANGER2", 0)
				--tunables.set_int("FIXER_TRADE_PRICE_ITALIGTB2", 0)
				tunables.set_int("FIXER_TRADE_PRICE_JUBILEE", 0)
				tunables.set_int("FIXER_TRADE_PRICE_PATRIOT3", 0)
				
				tunables.set_int("H2_VEHICLES_TRADE_PRICE_AKULA", 0)
				tunables.set_int("H2_VEHICLES_TRADE_PRICE_BARRAGE", 0)
				tunables.set_int("H2_VEHICLES_TRADE_PRICE_CHERNOBOG", 0)
				tunables.set_int("H2_VEHICLES_TRADE_PRICE_DELUXO", 0)
				tunables.set_int("H2_VEHICLES_TRADE_PRICE_KHANJALI", 0)
				tunables.set_int("H2_VEHICLES_TRADE_PRICE_RCV", 0)
				tunables.set_int("H2_VEHICLES_TRADE_PRICE_STROMBERG", 0)
				tunables.set_int("H2_VEHICLES_TRADE_PRICE_THRUSTER", 0)
				tunables.set_int("H2_VEHICLES_TRADE_PRICE_VOLATOL", 0)
				
				tunables.set_int("IH_TRADE_PRICE_ALKONOST", 0)
				tunables.set_int("IH_TRADE_PRICE_ANNIHILATOR2", 0)
				tunables.set_int("IH_TRADE_PRICE_BRIOSO2", 0)
				tunables.set_int("IH_TRADE_PRICE_ITALIRSX", 0)
				tunables.set_int("IH_TRADE_PRICE_LONGFIN", 0)
				tunables.set_int("IH_TRADE_PRICE_PATROLBOAT", 0)
				tunables.set_int("IH_TRADE_PRICE_VETIR", 0)
				tunables.set_int("IH_TRADE_PRICE_WEEVIL", 0)
				tunables.set_int("IH_TRADE_PRICE_WINKY", 0)
				
				tunables.set_int("SMUG_VEHICLES_CARS_TRADE_PRICE_COIL_CYCLONE", 0)
				tunables.set_int("SMUG_VEHICLES_CARS_TRADE_PRICE_DEWBAUCHEE_RAPIDGT_CLASSIC", 0)
				tunables.set_int("SMUG_VEHICLES_CARS_TRADE_PRICE_GROTTI_VIGILANTE", 0)
				tunables.set_int("SMUG_VEHICLES_CARS_TRADE_PRICE_GROTTI_VISIONE", 0)
				tunables.set_int("SMUG_VEHICLES_CARS_TRADE_PRICE_VAPID_RETINUE", 0)
				tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_ALPHAZ1", 0)
				tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_BOMBUSHKA", 0)
				tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_HOWARD_NX25", 0)
				tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_HUNTER", 0)
				tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_MOGUL", 0)
				tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_NAGASAKI_HAVOK", 0)
				tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_P45_NOKOTA", 0)
				tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_P996_LAZER", 0)
				tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_PEGASSI_ULTRALIGHT", 0)
				tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_PYRO", 0)
				tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_ROGUE", 0)
				tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_STARLING", 0)
				tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_TULA", 0)
				tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_V65_MOLOTOK", 0)
				tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_WESTERN_SEABREEZE", 0)
				
				tunables.set_int("SU22_TRADE_PRICE_CONADA", 0)
				tunables.set_int("SU22_TRADE_PRICE_DRAUGUR", 0)
				tunables.set_int("SU22_TRADE_PRICE_GREENWOOD", 0)
				tunables.set_int("SU22_TRADE_PRICE_KANJOSJ", 0)
				tunables.set_int("SU22_TRADE_PRICE_POSTLUDE", 0)
				
				tunables.set_int("SU23_TRADE_PRICE_MANCHEZ2", 0)
				tunables.set_int("SU23_TRADE_PRICE_RAIJU", 0)
				tunables.set_int("SU23_TRADE_PRICE_SQUADDIE", 0)
				
				tunables.set_int("TUNER_TRADE_PRICE_CALICO", 0)
				tunables.set_int("TUNER_TRADE_PRICE_COMET6", 0)
				tunables.set_int("TUNER_TRADE_PRICE_CYPHER", 0)
				tunables.set_int("TUNER_TRADE_PRICE_DOMINATOR7", 0)
				tunables.set_int("TUNER_TRADE_PRICE_DOMINATOR8", 0)
				tunables.set_int("TUNER_TRADE_PRICE_EUROS", 0)
				tunables.set_int("TUNER_TRADE_PRICE_FUTO2", 0)
				tunables.set_int("TUNER_TRADE_PRICE_GROWLER", 0)
				tunables.set_int("TUNER_TRADE_PRICE_JESTER4", 0)
				tunables.set_int("TUNER_TRADE_PRICE_PREVION", 0)
				tunables.set_int("TUNER_TRADE_PRICE_REMUS", 0)
				tunables.set_int("TUNER_TRADE_PRICE_RT3000", 0)
				tunables.set_int("TUNER_TRADE_PRICE_SULTAN3", 0)
				tunables.set_int("TUNER_TRADE_PRICE_TAILGATER2", 0)
				tunables.set_int("TUNER_TRADE_PRICE_VECTRE", 0)
				tunables.set_int("TUNER_TRADE_PRICE_WARRENER2", 0)
				tunables.set_int("TUNER_TRADE_PRICE_ZR350", 0)
				
				tunables.set_int("XM22_TRADE_PRICE_EVERON2", 0)
				tunables.set_int("XM22_TRADE_PRICE_HOTRING", 0)
				tunables.set_int("XM22_TRADE_PRICE_JOURNEY2", 0)
				tunables.set_int("XM22_TRADE_PRICE_SURFER3", 0)
				tunables.set_int("XM22_TRADE_PRICE_TAXI", 0)
				tunables.set_int("XM22_TRADE_PRICE_VIRTUE", 0)
				
				tunables.set_int("XM23_TRADE_PRICE_BENSON2", 0)
				tunables.set_int("XM23_TRADE_PRICE_BOXVILLE6", 0)
				tunables.set_int("XM23_TRADE_PRICE_POLGAUNTLET", 0)
				tunables.set_int("XM23_TRADE_PRICE_POLICE4", 0)
				tunables.set_int("XM23_TRADE_PRICE_POLICE5", 0)
				tunables.set_int("XM23_TRADE_PRICE_RIOT", 0)
			end
			if ImGui.IsItemHovered() then
				ImGui.SetTooltip("Free sale of some vehicles")
			end
			
			EnableVehicle = ImGui.Checkbox("Enable Removed Website Vehicles", EnableVehicle)
			if ImGui.IsItemHovered() then
				ImGui.SetTooltip("Displaying some vehicle purchases that have been removed from the website")
			end
			--ImGui.SameLine()
			--EnableVehicle2 = ImGui.Checkbox("Enable Removed Vehicles", EnableVehicle2) -- don't know this list function
			
			stonehatchetrampage = ImGui.Checkbox("Infinite Stone Hatchet's Power", stonehatchetrampage)
			
			TunableMultplier, drag = ImGui.Checkbox("> Multiplier##TunableMultplier", TunableMultplier)
			if ImGui.IsItemHovered() then
				ImGui.SetTooltip("Toggle to expand for customize a multiplier")
			end
			if TunableMultplier then
				CashMultiplier, drag = ImGui.DragFloat("Cash##CashMultiplier", CashMultiplier, 0.10, 0.00, 1000.00, "%.2f")
				if drag then
					CashMultiplier = math.min(math.max(CashMultiplier, 0.00), 1000.00)
				end
				XPMultiplier, drag = ImGui.DragFloat("XP##XPMultiplier", XPMultiplier, 0.10, 0.00, 1000.00, "%.2f")
				if drag then
					XPMultiplier = math.min(math.max(XPMultiplier, 0.00), 1000.00)
				end
				TimeMultiplier, drag = ImGui.DragFloat("Time##TimeMultiplier", TimeMultiplier, 0.10, 0.00, 1000.00, "%.2f")
				if drag then
					TimeMultiplier = math.min(math.max(TimeMultiplier, 0.00), 1000.00)
				end
				APMultiplier, drag = ImGui.DragFloat("AP##APMultiplier", APMultiplier, 0.10, 0.00, 1000.00, "%.2f")
				if drag then
					APMultiplier = math.min(math.max(APMultiplier, 0.00), 1000.00)
				end
				ArenaWheelAP, drag = ImGui.DragInt("Arena Wheel AP##ArenaWheelAP", ArenaWheelAP, 50, 0, 500000)
				if drag then
					ArenaWheelAP = math.min(math.max(ArenaWheelAP, 0.00), 1000000)
				end
				ArenaWheelRP, drag = ImGui.DragInt("Arena Wheel RP##ArenaWheelRP", ArenaWheelRP, 500, 0, 500000)
				if drag then
					ArenaWheelRP = math.min(math.max(ArenaWheelRP, 0.00), 1000000)
				end
				ArenaWheelCash, drag = ImGui.DragInt("Arena Wheel Cash##ArenaWheelCash", ArenaWheelCash, 2000, 0, 20000)
				if drag then
					ArenaWheelCash = math.min(math.max(ArenaWheelCash, 0.00), 40000)
				end
				TaxiWork, drag = ImGui.DragFloat("Taxi Work##TaxiWork", TaxiWork, 0.10, 0.00, 1000.00, "%.2f")
				if drag then
					TaxiWork = math.min(math.max(TaxiWork, 0.00), 1000.00)
				end
				if not LSCarMeetAllMultiplier then
					--LSCarMeetFirst, drag = ImGui.DragFloat("LS Car Meet First Time##LSCarMeetFirst", LSCarMeetFirst, 0.10, 0.00, 99999.00, "%.2f")
					--if drag then
					--	LSCarMeetFirst = math.min(math.max(LSCarMeetFirst, 0.00), 99999.00)
					--end
					LSCarMeetSprint, drag = ImGui.DragFloat("Sprint Race##LSCarMeetSprint", LSCarMeetSprint, 0.10, 0.00, 99999.00, "%.2f")
					if drag then
						LSCarMeetSprint = math.min(math.max(LSCarMeetSprint, 0.00), 99999.00)
					end
					LSCarMeetStreet, drag = ImGui.DragFloat("Street Race##LSCarMeetStreet", LSCarMeetStreet, 0.10, 0.00, 99999.00, "%.2f")
					if drag then
						LSCarMeetStreet = math.min(math.max(LSCarMeetStreet, 0.00), 99999.00)
					end
					LSCarMeetPursuit, drag = ImGui.DragFloat("Pursuit Race##LSCarMeetPursuit", LSCarMeetPursuit, 0.10, 0.00, 99999.00, "%.2f")
					if drag then
						LSCarMeetPursuit = math.min(math.max(LSCarMeetPursuit, 0.00), 99999.00)
					end
					LSCarMeetCheckpoint, drag = ImGui.DragFloat("Scramble##LSCarMeetCheckpoint", LSCarMeetCheckpoint, 0.10, 0.00, 99999.00, "%.2f")
					if drag then
						LSCarMeetCheckpoint = math.min(math.max(LSCarMeetCheckpoint, 0.00), 99999.00)
					end
					LSCarMeetHeadtohead, drag = ImGui.DragFloat("Head to Head##LSCarMeetHeadtohead", LSCarMeetHeadtohead, 0.10, 0.00, 99999.00, "%.2f")
					if drag then
						LSCarMeetHeadtohead = math.min(math.max(LSCarMeetHeadtohead, 0.00), 99999.00)
					end
					LSCarMeet, drag = ImGui.DragFloat("LS Car Meet##LSCarMeet", LSCarMeet, 0.10, 0.00, 99999.00, "%.2f")
					if drag then
						LSCarMeet = math.min(math.max(LSCarMeet, 0.00), 99999.00)
					end
					LSCarMeetTrack, drag = ImGui.DragFloat("LS Car Meet's Track##LSCarMeetTrack", LSCarMeetTrack, 0.10, 0.00, 99999.00, "%.2f")
					if drag then
						LSCarMeetTrack = math.min(math.max(LSCarMeetTrack, 0.00), 99999.00)
					end
					--LSCarMeetMerch, drag = ImGui.DragFloat("LS Car Meet Buy Merchandise##LSCarMeetMerch", LSCarMeetMerch, 0.10, 0.00, 99999.00, "%.2f")
					--if drag then
					--	LSCarMeetMerch = math.min(math.max(LSCarMeetMerch, 0.00), 99999.00)
					--end
				end
				LSCarMeetAllMultiplier, drag = ImGui.Checkbox("> LS Car Meet All Multiplier##LSCarMeetAllMultiplier", LSCarMeetAllMultiplier)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Toggle to expand for customize a ls car meet all multiplier.\nThis option will change all ls carmeet xp multipliers")
				end
				if LSCarMeetAllMultiplier then
					LSCarMeetAll, drag = ImGui.DragFloat("LS Car Meet All##LSCarMeetAll", LSCarMeetAll, 0.10, 0.00, 99999.00, "%.2f")
					if drag then
						LSCarMeetAll = math.min(math.max(LSCarMeetAll, 0.00), 99999.00)
					end
				end
			end
			
			--MaxBetLimit = ImGui.Checkbox("Remove Bet Limit Challenge##MaxBetLimit", MaxBetLimit) -- may not work
			--if ImGui.IsItemHovered() then
			--	ImGui.SetTooltip("Removed bet limit for multiplayer challenge. Not work for casino chip gambling")
			--end
			
			ImGui.EndTabItem()
		end
		ImGui.EndTabBar()
	end
end)

disabletransactionerror = false
taxiservice1 = false
taxiservice2 = false

script.register_looped("GoldenGets Misc", function(script)
	if disabletransactionerror then --????????
		if globals.set_int(BTEg1 + 6) == 4 or 20 then
			globals.set_int(BTEg1, 0) -- shop_controller.c	if (Global_4536677)    HUD::SET_WARNING_MESSAGE_WITH_HEADER("CTALERT_A" /*Alert*/, func_1372(Global_4536683), instructionalKey, 0, false, -1, 0, 0, true, 0);
			globals.set_int(BTEg2, 0) -- shop_controller.c	HUD::BEGIN_TEXT_COMMAND_THEFEED_POST("CTALERT_F_1" /*Rockstar game servers could not process this transaction. Please try again and check ~HUD_COLOUR_SOCIAL_CLUB~www.rockstargames.com/support~s~ for information about current issues, outages, or scheduled maintenance periods.*/);
			globals.set_int(BTEg3, 0) -- shop_controller.c	HUD::BEGIN_TEXT_COMMAND_THEFEED_POST("CTALERT_F_1" /*Rockstar game servers could not process this transaction. Please try again and check ~HUD_COLOUR_SOCIAL_CLUB~www.rockstargames.com/support~s~ for information about current issues, outages, or scheduled maintenance periods.*/);
		end
	end
	
    if  taxiservice1 then
    local psgcrd = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(HUD.GET_BLIP_INFO_ID_ENTITY_INDEX(HUD.GET_CLOSEST_BLIP_INFO_ID(280)), 0, 6, 0)
    if HUD.DOES_BLIP_EXIST(HUD.GET_CLOSEST_BLIP_INFO_ID(280)) then
        if psgcrd.x ~= 0 then
            log.info("????")
            script:sleep(500)
            PED.SET_PED_COORDS_KEEP_VEHICLE(PLAYER.PLAYER_PED_ID(), psgcrd.x, psgcrd.y, psgcrd.z, false, false, false, false)
            script:sleep(1000)
            PAD.SET_CONTROL_VALUE_NEXT_FRAME(0, 86, 1)
            log.info("???????")
            local pedtable = entities.get_all_peds_as_handles()
            for _, peds in pairs(pedtable) do
                local selfpos = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), true)
                local ped_pos = ENTITY.GET_ENTITY_COORDS(peds, false)
                if calcDistance(selfpos, ped_pos) <= 15 and peds ~= PLAYER.PLAYER_PED_ID() and ped then 
                    PED.SET_PED_MOVE_RATE_OVERRIDE(ped, 50.0)
                end
            end
            while HUD.DOES_BLIP_EXIST(HUD.GET_CLOSEST_BLIP_INFO_ID(280)) do
                script:yield()
            end
            log.info("?????")
            script:sleep(500)
            command.call("objectivetp",{}) --??Yimmenu??????????
            log.info("??????")
            delms = math.random(taximina, taximaxa)
            log.info(delms.."?????????????")
            script:sleep(delms)
		end
	else
	end
end

    if  taxiservice2 then
        local psgcrd = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(HUD.GET_BLIP_INFO_ID_ENTITY_INDEX(HUD.GET_CLOSEST_BLIP_INFO_ID(280)), 0, 6, 0)
        if HUD.DOES_BLIP_EXIST(HUD.GET_CLOSEST_BLIP_INFO_ID(280)) then
            if psgcrd.x ~= 0 then
                log.info("????,??????.??Shift???????")
                script:sleep(500)
                local ped = PLAYER.PLAYER_PED_ID()
                local vehicle = PED.GET_VEHICLE_PED_IS_IN(ped, true)
                local vehselfisin = ENTITY.GET_ENTITY_MODEL(vehicle)
                local psgcrd = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(HUD.GET_BLIP_INFO_ID_ENTITY_INDEX(HUD.GET_CLOSEST_BLIP_INFO_ID(280)), 0, 6, 0)
                PED.SET_DRIVER_ABILITY(ped, 1.0)
                PED.SET_DRIVER_AGGRESSIVENESS(ped, 0.6)
                PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
                TASK.TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
                TASK.TASK_VEHICLE_DRIVE_TO_COORD(ped, vehicle, psgcrd.x, psgcrd.y, psgcrd.z, 200, 1, vehselfisin, 787004, 5.0, 1.0) 
                script:sleep(1500)
                while calcDistance(ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), true), ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(HUD.GET_BLIP_INFO_ID_ENTITY_INDEX(HUD.GET_CLOSEST_BLIP_INFO_ID(280)), 0, 6, 0)) >= 15 and not ENTITY.IS_ENTITY_STATIC(PED.GET_VEHICLE_PED_IS_IN(PLAYER.PLAYER_PED_ID(), true), true) do
                    if PAD.IS_CONTROL_PRESSED(0, 352)  then --??Shift
                        PED.SET_PED_COORDS_KEEP_VEHICLE(PLAYER.PLAYER_PED_ID(), psgcrd.x, psgcrd.y, psgcrd.z, false, false, false, false)
                        script:sleep(1500)
                        PAD.SET_CONTROL_VALUE_NEXT_FRAME(0, 86, 1)
                    end
                    script:yield()
                end
                script:sleep(1500)
                PAD.SET_CONTROL_VALUE_NEXT_FRAME(0, 86, 1)
                while HUD.DOES_BLIP_EXIST(HUD.GET_CLOSEST_BLIP_INFO_ID(280)) do
                    if PAD.IS_CONTROL_PRESSED(0, 352)  then --??Shift
                        PED.SET_PED_COORDS_KEEP_VEHICLE(PLAYER.PLAYER_PED_ID(), psgcrd.x, psgcrd.y, psgcrd.z, false, false, false, false)
                        script:sleep(1500)
                        PAD.SET_CONTROL_VALUE_NEXT_FRAME(0, 86, 1)
                    end
                    script:yield()
                end
                log.info("?????")
                script:sleep(1500)
                objcrd = HUD.GET_BLIP_COORDS(HUD.GET_FIRST_BLIP_INFO_ID(1))

                local vehselfisin = ENTITY.GET_ENTITY_MODEL(vehicle)
                local ped = PLAYER.PLAYER_PED_ID()
                local vehicle = PED.GET_VEHICLE_PED_IS_IN(ped, true)
                local psgcrd = ENTITY.GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS(HUD.GET_BLIP_INFO_ID_ENTITY_INDEX(HUD.GET_CLOSEST_BLIP_INFO_ID(280)), 0, 6, 0)
                PED.SET_DRIVER_ABILITY(ped, 1.0)
                PED.SET_DRIVER_AGGRESSIVENESS(ped, 0.6)
                PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
                TASK.TASK_SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(ped, true)
                TASK.TASK_VEHICLE_DRIVE_TO_COORD(ped, vehicle, objcrd.x, objcrd.y, objcrd.z, 200, 1, vehselfisin, 787004, 5.0, 1.0) 
                script:sleep(1500)
                log.info("???????????,??shift???????")
                while calcDistance(ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), true), HUD.GET_BLIP_COORDS(HUD.GET_FIRST_BLIP_INFO_ID(1))) >= 15 and not ENTITY.IS_ENTITY_STATIC(PED.GET_VEHICLE_PED_IS_IN(PLAYER.PLAYER_PED_ID(), true)) do
                    if PAD.IS_CONTROL_PRESSED(0, 352)  then --??Shift
                        command.call("objectivetp",{}) --??Yimmenu??????????
                    end
                    script:yield()
                end
                if HUD.DOES_BLIP_EXIST(HUD.GET_FIRST_BLIP_INFO_ID(1)) then
                    log.info("?????????????,???????")
                    command.call("objectivetp",{}) --??Yimmenu??????????
                end
                delms = math.random(taximina, taximaxa)
                log.info(delms.."?????????????")
                script:sleep(delms)
			end
		else
		end
	end
end)

EnableVehicle = false
EnableVehicle2 = false
stonehatchetrampage = false
TunableMultplier = false
LSCarMeetAllMultiplier = false
MaxBetLimit = false

script.register_looped("GoldenGets Multiplier", function()
	if EnableVehicle then
		if tunables.get_bool("ENABLE_VEHICLE_AKUMA") == false then
			tunables.set_bool("ENABLE_VEHICLE_AKUMA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ALEUTIAN") == false then
			tunables.set_bool("ENABLE_VEHICLE_ALEUTIAN", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ALKONOST") == false then
			tunables.set_bool("ENABLE_VEHICLE_ALKONOST", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ALPHA") == false then
			tunables.set_bool("ENABLE_VEHICLE_ALPHA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ANNIHILATOR2") == false then
			tunables.set_bool("ENABLE_VEHICLE_ANNIHILATOR2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ASBO") == false then
			tunables.set_bool("ENABLE_VEHICLE_ASBO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ASEA") == false then
			tunables.set_bool("ENABLE_VEHICLE_ASEA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ASTEROPE") == false then
			tunables.set_bool("ENABLE_VEHICLE_ASTEROPE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ASTEROPE2") == false then
			tunables.set_bool("ENABLE_VEHICLE_ASTEROPE2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ASTRON") == false then
			tunables.set_bool("ENABLE_VEHICLE_ASTRON", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BALLER2") == false then
			tunables.set_bool("ENABLE_VEHICLE_BALLER2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BALLER3") == false then
			tunables.set_bool("ENABLE_VEHICLE_BALLER3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BALLER4") == false then
			tunables.set_bool("ENABLE_VEHICLE_BALLER4", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BALLER5") == false then
			tunables.set_bool("ENABLE_VEHICLE_BALLER5", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BALLER6") == false then
			tunables.set_bool("ENABLE_VEHICLE_BALLER6", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BALLER7") == false then
			tunables.set_bool("ENABLE_VEHICLE_BALLER7", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BALLER") == false then
			tunables.set_bool("ENABLE_VEHICLE_BALLER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BALLER8") == false then
			tunables.set_bool("ENABLE_VEHICLE_BALLER8", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BANDITO") == false then
			tunables.set_bool("ENABLE_VEHICLE_BANDITO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BATI2") == false then
			tunables.set_bool("ENABLE_VEHICLE_BATI2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BENSON2") == false then
			tunables.set_bool("ENABLE_VEHICLE_BENSON2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BESTIAGTS") == false then
			tunables.set_bool("ENABLE_VEHICLE_BESTIAGTS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BFINJECTION") == false then
			tunables.set_bool("ENABLE_VEHICLE_BFINJECTION", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BIFTA") == false then
			tunables.set_bool("ENABLE_VEHICLE_BIFTA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BJXL") == false then
			tunables.set_bool("ENABLE_VEHICLE_BJXL", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BLADE") == false then
			tunables.set_bool("ENABLE_VEHICLE_BLADE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BLAZER2") == false then
			tunables.set_bool("ENABLE_VEHICLE_BLAZER2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BLAZER") == false then
			tunables.set_bool("ENABLE_VEHICLE_BLAZER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BLAZER3") == false then
			tunables.set_bool("ENABLE_VEHICLE_BLAZER3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BODHI2") == false then
			tunables.set_bool("ENABLE_VEHICLE_BODHI2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BOOR") == false then
			tunables.set_bool("ENABLE_VEHICLE_BOOR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BOXVILLE") == false then
			tunables.set_bool("ENABLE_VEHICLE_BOXVILLE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BOXVILLE6") == false then
			tunables.set_bool("ENABLE_VEHICLE_BOXVILLE6", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BRAWLER") == false then
			tunables.set_bool("ENABLE_VEHICLE_BRAWLER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BRICKADE2") == false then
			tunables.set_bool("ENABLE_VEHICLE_BRICKADE2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BRIGHAM") == false then
			tunables.set_bool("ENABLE_VEHICLE_BRIGHAM", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BRIOSO2") == false then
			tunables.set_bool("ENABLE_VEHICLE_BRIOSO2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BRIOSO3") == false then
			tunables.set_bool("ENABLE_VEHICLE_BRIOSO3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BROADWAY") == false then
			tunables.set_bool("ENABLE_VEHICLE_BROADWAY", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BTYPE2") == false then
			tunables.set_bool("ENABLE_VEHICLE_BTYPE2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BTYPE") == false then
			tunables.set_bool("ENABLE_VEHICLE_BTYPE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BTYPE3") == false then
			tunables.set_bool("ENABLE_VEHICLE_BTYPE3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BUFFALO") == false then
			tunables.set_bool("ENABLE_VEHICLE_BUFFALO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BUFFALO2") == false then
			tunables.set_bool("ENABLE_VEHICLE_BUFFALO2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BUFFALO4") == false then
			tunables.set_bool("ENABLE_VEHICLE_BUFFALO4", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BUFFALO5") == false then
			tunables.set_bool("ENABLE_VEHICLE_BUFFALO5", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BULLET") == false then
			tunables.set_bool("ENABLE_VEHICLE_BULLET", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BURRITO2") == false then
			tunables.set_bool("ENABLE_VEHICLE_BURRITO2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CALICO") == false then
			tunables.set_bool("ENABLE_VEHICLE_CALICO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CARACARA2") == false then
			tunables.set_bool("ENABLE_VEHICLE_CARACARA2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CARBONIZZARE") == false then
			tunables.set_bool("ENABLE_VEHICLE_CARBONIZZARE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CASTIGATOR") == false then
			tunables.set_bool("ENABLE_VEHICLE_CASTIGATOR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CAVALCADE") == false then
			tunables.set_bool("ENABLE_VEHICLE_CAVALCADE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CAVALCADE2") == false then
			tunables.set_bool("ENABLE_VEHICLE_CAVALCADE2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CAVALCADE3") == false then
			tunables.set_bool("ENABLE_VEHICLE_CAVALCADE3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CHAMPION") == false then
			tunables.set_bool("ENABLE_VEHICLE_CHAMPION", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CHEETAH") == false then
			tunables.set_bool("ENABLE_VEHICLE_CHEETAH", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CINQUEMILA") == false then
			tunables.set_bool("ENABLE_VEHICLE_CINQUEMILA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CLIQUE") == false then
			tunables.set_bool("ENABLE_VEHICLE_CLIQUE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CLIQUE2") == false then
			tunables.set_bool("ENABLE_VEHICLE_CLIQUE2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COG55") == false then
			tunables.set_bool("ENABLE_VEHICLE_COG55", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COG552") == false then
			tunables.set_bool("ENABLE_VEHICLE_COG552", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COGCABRIO") == false then
			tunables.set_bool("ENABLE_VEHICLE_COGCABRIO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COGNOSCENTI") == false then
			tunables.set_bool("ENABLE_VEHICLE_COGNOSCENTI", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COGNOSCENTI2") == false then
			tunables.set_bool("ENABLE_VEHICLE_COGNOSCENTI2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COMET6") == false then
			tunables.set_bool("ENABLE_VEHICLE_COMET6", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COMET7") == false then
			tunables.set_bool("ENABLE_VEHICLE_COMET7", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CONADA") == false then
			tunables.set_bool("ENABLE_VEHICLE_CONADA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CONADA2") == false then
			tunables.set_bool("ENABLE_VEHICLE_CONADA2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COQUETTE") == false then
			tunables.set_bool("ENABLE_VEHICLE_COQUETTE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COQUETTE2") == false then
			tunables.set_bool("ENABLE_VEHICLE_COQUETTE2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COQUETTE3") == false then
			tunables.set_bool("ENABLE_VEHICLE_COQUETTE3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COQUETTE5") == false then
			tunables.set_bool("ENABLE_VEHICLE_COQUETTE5", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CORSITA") == false then
			tunables.set_bool("ENABLE_VEHICLE_CORSITA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COUREUR") == false then
			tunables.set_bool("ENABLE_VEHICLE_COUREUR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CYPHER") == false then
			tunables.set_bool("ENABLE_VEHICLE_CYPHER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DEITY") == false then
			tunables.set_bool("ENABLE_VEHICLE_DEITY", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DEVESTE") == false then
			tunables.set_bool("ENABLE_VEHICLE_DEVESTE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DEVIANT") == false then
			tunables.set_bool("ENABLE_VEHICLE_DEVIANT", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DILETTANTE") == false then
			tunables.set_bool("ENABLE_VEHICLE_DILETTANTE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DINGY5") == false then
			tunables.set_bool("ENABLE_VEHICLE_DINGY5", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DOMINATOR7") == false then
			tunables.set_bool("ENABLE_VEHICLE_DOMINATOR7", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DOMINATOR8") == false then
			tunables.set_bool("ENABLE_VEHICLE_DOMINATOR8", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DOMINATOR9") == false then
			tunables.set_bool("ENABLE_VEHICLE_DOMINATOR9", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DOMINATOR10") == false then
			tunables.set_bool("ENABLE_VEHICLE_DOMINATOR10", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DORADO") == false then
			tunables.set_bool("ENABLE_VEHICLE_DORADO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DOUBLE") == false then
			tunables.set_bool("ENABLE_VEHICLE_DOUBLE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DRAFTER") == false then
			tunables.set_bool("ENABLE_VEHICLE_DRAFTER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DRAUGUR") == false then
			tunables.set_bool("ENABLE_VEHICLE_DRAUGUR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DUNE") == false then
			tunables.set_bool("ENABLE_VEHICLE_DUNE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DYNASTY") == false then
			tunables.set_bool("ENABLE_VEHICLE_DYNASTY", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_EMERUS") == false then
			tunables.set_bool("ENABLE_VEHICLE_EMERUS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ENDURO") == false then
			tunables.set_bool("ENABLE_VEHICLE_ENDURO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ENTITY3") == false then
			tunables.set_bool("ENABLE_VEHICLE_ENTITY3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ENTITYXF") == false then
			tunables.set_bool("ENABLE_VEHICLE_ENTITYXF", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ENVISAGE") == false then
			tunables.set_bool("ENABLE_VEHICLE_ENVISAGE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_EUDORA") == false then
			tunables.set_bool("ENABLE_VEHICLE_EUDORA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_EUROS") == false then
			tunables.set_bool("ENABLE_VEHICLE_EUROS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_EUROSX32") == false then
			tunables.set_bool("ENABLE_VEHICLE_EUROSX32", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_EVERON") == false then
			tunables.set_bool("ENABLE_VEHICLE_EVERON", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_EVERON2") == false then
			tunables.set_bool("ENABLE_VEHICLE_EVERON2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_EXEMPLAR") == false then
			tunables.set_bool("ENABLE_VEHICLE_EXEMPLAR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_F620") == false then
			tunables.set_bool("ENABLE_VEHICLE_F620", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FAGGIO2") == false then
			tunables.set_bool("ENABLE_VEHICLE_FAGGIO2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FELON") == false then
			tunables.set_bool("ENABLE_VEHICLE_FELON", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FELON2") == false then
			tunables.set_bool("ENABLE_VEHICLE_FELON2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FELTZER2") == false then
			tunables.set_bool("ENABLE_VEHICLE_FELTZER2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FELTZER3") == false then
			tunables.set_bool("ENABLE_VEHICLE_FELTZER3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FIRETRUCK") == false then
			tunables.set_bool("ENABLE_VEHICLE_FIRETRUCK", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FMJ") == false then
			tunables.set_bool("ENABLE_VEHICLE_FMJ", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FORMULA") == false then
			tunables.set_bool("ENABLE_VEHICLE_FORMULA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FORMULA2") == false then
			tunables.set_bool("ENABLE_VEHICLE_FORMULA2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FORMULA2_PODIUM") == false then
			tunables.set_bool("ENABLE_VEHICLE_FORMULA2_PODIUM", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FORMULA_PODIUM") == false then
			tunables.set_bool("ENABLE_VEHICLE_FORMULA_PODIUM", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FQ2") == false then
			tunables.set_bool("ENABLE_VEHICLE_FQ2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FR36") == false then
			tunables.set_bool("ENABLE_VEHICLE_FR36", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FUGITIVE") == false then
			tunables.set_bool("ENABLE_VEHICLE_FUGITIVE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FURIA") == false then
			tunables.set_bool("ENABLE_VEHICLE_FURIA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FUROREGT") == false then
			tunables.set_bool("ENABLE_VEHICLE_FUROREGT", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FUSILADE") == false then
			tunables.set_bool("ENABLE_VEHICLE_FUSILADE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FUTO") == false then
			tunables.set_bool("ENABLE_VEHICLE_FUTO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FUTO2") == false then
			tunables.set_bool("ENABLE_VEHICLE_FUTO2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_GAUNTLET") == false then
			tunables.set_bool("ENABLE_VEHICLE_GAUNTLET", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_GAUNTLET3") == false then
			tunables.set_bool("ENABLE_VEHICLE_GAUNTLET3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_GAUNTLET4") == false then
			tunables.set_bool("ENABLE_VEHICLE_GAUNTLET4", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_GAUNTLET6") == false then
			tunables.set_bool("ENABLE_VEHICLE_GAUNTLET6", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_GRANGER") == false then
			tunables.set_bool("ENABLE_VEHICLE_GRANGER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_GRANGER2") == false then
			tunables.set_bool("ENABLE_VEHICLE_GRANGER2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_GREENWOOD") == false then
			tunables.set_bool("ENABLE_VEHICLE_GREENWOOD", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_GRESLEY") == false then
			tunables.set_bool("ENABLE_VEHICLE_GRESLEY", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_GROWLER") == false then
			tunables.set_bool("ENABLE_VEHICLE_GROWLER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_HABANERO") == false then
			tunables.set_bool("ENABLE_VEHICLE_HABANERO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_HAKUCHOU") == false then
			tunables.set_bool("ENABLE_VEHICLE_HAKUCHOU", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_HELLION") == false then
			tunables.set_bool("ENABLE_VEHICLE_HELLION", true)
		end
		--if tunables.get_bool("ENABLE_VEHICLE_HELP_IELAUNCH") == false then -- Tunable 0x3804281701 not found.
		--	tunables.set_bool("ENABLE_VEHICLE_HELP_IELAUNCH", true)
		--end
		if tunables.get_bool("ENABLE_VEHICLE_HEXER") == false then
			tunables.set_bool("ENABLE_VEHICLE_HEXER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_IGNUS") == false then
			tunables.set_bool("ENABLE_VEHICLE_IGNUS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_IMORGEN") == false then
			tunables.set_bool("ENABLE_VEHICLE_IMORGEN", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_IMPALER5") == false then
			tunables.set_bool("ENABLE_VEHICLE_IMPALER5", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_IMPALER6") == false then
			tunables.set_bool("ENABLE_VEHICLE_IMPALER6", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_INDUCTOR") == false then
			tunables.set_bool("ENABLE_VEHICLE_INDUCTOR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_INFERNUS") == false then
			tunables.set_bool("ENABLE_VEHICLE_INFERNUS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_INGOT") == false then
			tunables.set_bool("ENABLE_VEHICLE_INGOT", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_INNOVATION") == false then
			tunables.set_bool("ENABLE_VEHICLE_INNOVATION", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_INTRUDER") == false then
			tunables.set_bool("ENABLE_VEHICLE_INTRUDER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ISSI2") == false then
			tunables.set_bool("ENABLE_VEHICLE_ISSI2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ISSI7") == false then
			tunables.set_bool("ENABLE_VEHICLE_ISSI7", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ISSI8") == false then
			tunables.set_bool("ENABLE_VEHICLE_ISSI8", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ITALIGTO") == false then
			tunables.set_bool("ENABLE_VEHICLE_ITALIGTO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ITALIRSX") == false then
			tunables.set_bool("ENABLE_VEHICLE_ITALIRSX", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_IWAGEN") == false then
			tunables.set_bool("ENABLE_VEHICLE_IWAGEN", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_JACKAL") == false then
			tunables.set_bool("ENABLE_VEHICLE_JACKAL", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_JB700") == false then
			tunables.set_bool("ENABLE_VEHICLE_JB700", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_JB7002") == false then
			tunables.set_bool("ENABLE_VEHICLE_JB7002", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_JESTER") == false then
			tunables.set_bool("ENABLE_VEHICLE_JESTER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_JESTER2") == false then
			tunables.set_bool("ENABLE_VEHICLE_JESTER2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_JESTER4") == false then
			tunables.set_bool("ENABLE_VEHICLE_JESTER4", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_JOURNEY2") == false then
			tunables.set_bool("ENABLE_VEHICLE_JOURNEY2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_JUBILEE") == false then
			tunables.set_bool("ENABLE_VEHICLE_JUBILEE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_JUGULAR") == false then
			tunables.set_bool("ENABLE_VEHICLE_JUGULAR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_KALAHARI") == false then
			tunables.set_bool("ENABLE_VEHICLE_KALAHARI", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_KANJO") == false then
			tunables.set_bool("ENABLE_VEHICLE_KANJO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_KANJOSJ") == false then
			tunables.set_bool("ENABLE_VEHICLE_KANJOSJ", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_KOMODA") == false then
			tunables.set_bool("ENABLE_VEHICLE_KOMODA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_KRIEGER") == false then
			tunables.set_bool("ENABLE_VEHICLE_KRIEGER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_L35") == false then
			tunables.set_bool("ENABLE_VEHICLE_L35", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_LANDSTALKER") == false then
			tunables.set_bool("ENABLE_VEHICLE_LANDSTALKER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_LGUARD") == false then
			tunables.set_bool("ENABLE_VEHICLE_LGUARD", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_LM87") == false then
			tunables.set_bool("ENABLE_VEHICLE_LM87", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_LOCUST") == false then
			tunables.set_bool("ENABLE_VEHICLE_LOCUST", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_LONGFIN") == false then
			tunables.set_bool("ENABLE_VEHICLE_LONGFIN", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_MAMBA") == false then
			tunables.set_bool("ENABLE_VEHICLE_MAMBA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_MANCHEZ2") == false then
			tunables.set_bool("ENABLE_VEHICLE_MANCHEZ2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_MASSACRO") == false then
			tunables.set_bool("ENABLE_VEHICLE_MASSACRO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_MASSACRO2") == false then
			tunables.set_bool("ENABLE_VEHICLE_MASSACRO2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_MESA3") == false then
			tunables.set_bool("ENABLE_VEHICLE_MESA3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_MINITANK") == false then
			tunables.set_bool("ENABLE_VEHICLE_MINITANK", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_MODEL_CZ1") == false then
			tunables.set_bool("ENABLE_VEHICLE_MODEL_CZ1", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_MONROE") == false then
			tunables.set_bool("ENABLE_VEHICLE_MONROE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_MONSTER") == false then
			tunables.set_bool("ENABLE_VEHICLE_MONSTER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_MONSTROCITI") == false then
			tunables.set_bool("ENABLE_VEHICLE_MONSTROCITI", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_NEBULA") == false then
			tunables.set_bool("ENABLE_VEHICLE_NEBULA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_NEMESIS") == false then
			tunables.set_bool("ENABLE_VEHICLE_NEMESIS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_NEO") == false then
			tunables.set_bool("ENABLE_VEHICLE_NEO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_NINEF") == false then
			tunables.set_bool("ENABLE_VEHICLE_NINEF", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_NINEF2") == false then
			tunables.set_bool("ENABLE_VEHICLE_NINEF2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_NIOBE") == false then
			tunables.set_bool("ENABLE_VEHICLE_NIOBE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_NOVAK") == false then
			tunables.set_bool("ENABLE_VEHICLE_NOVAK", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_OMNISEGT") == false then
			tunables.set_bool("ENABLE_VEHICLE_OMNISEGT", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ORACLE") == false then
			tunables.set_bool("ENABLE_VEHICLE_ORACLE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ORACLE2") == false then
			tunables.set_bool("ENABLE_VEHICLE_ORACLE2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_OUTLAW") == false then
			tunables.set_bool("ENABLE_VEHICLE_OUTLAW", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PANTHERE") == false then
			tunables.set_bool("ENABLE_VEHICLE_PANTHERE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PARAGON") == false then
			tunables.set_bool("ENABLE_VEHICLE_PARAGON", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PARAGON3") == false then
			tunables.set_bool("ENABLE_VEHICLE_PARAGON3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PATRIOT") == false then
			tunables.set_bool("ENABLE_VEHICLE_PATRIOT", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PATRIOT3") == false then
			tunables.set_bool("ENABLE_VEHICLE_PATRIOT3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PATROLBOAT") == false then
			tunables.set_bool("ENABLE_VEHICLE_PATROLBOAT", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PCJ") == false then
			tunables.set_bool("ENABLE_VEHICLE_PCJ", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PENUMBRA") == false then
			tunables.set_bool("ENABLE_VEHICLE_PENUMBRA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PEYOTE2") == false then
			tunables.set_bool("ENABLE_VEHICLE_PEYOTE2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PICADOR") == false then
			tunables.set_bool("ENABLE_VEHICLE_PICADOR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PIGALLE") == false then
			tunables.set_bool("ENABLE_VEHICLE_PIGALLE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PIPISTRELLO") == false then
			tunables.set_bool("ENABLE_VEHICLE_PIPISTRELLO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PIZZABOY") == false then
			tunables.set_bool("ENABLE_VEHICLE_PIZZABOY", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_POLDOMINATOR10") == false then
			tunables.set_bool("ENABLE_VEHICLE_POLDOMINATOR10", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_POLDORADO") == false then
			tunables.set_bool("ENABLE_VEHICLE_POLDORADO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_POLGAUNTLET") == false then
			tunables.set_bool("ENABLE_VEHICLE_POLGAUNTLET", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_POLGREENWOOD") == false then
			tunables.set_bool("ENABLE_VEHICLE_POLGREENWOOD", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_POLICE4") == false then
			tunables.set_bool("ENABLE_VEHICLE_POLICE4", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_POLICE5") == false then
			tunables.set_bool("ENABLE_VEHICLE_POLICE5", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_POLIMPALER5") == false then
			tunables.set_bool("ENABLE_VEHICLE_POLIMPALER5", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_POLIMPALER6") == false then
			tunables.set_bool("ENABLE_VEHICLE_POLIMPALER6", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_POSTLUDE") == false then
			tunables.set_bool("ENABLE_VEHICLE_POSTLUDE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_POWERSURGE") == false then
			tunables.set_bool("ENABLE_VEHICLE_POWERSURGE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PRAIRIE") == false then
			tunables.set_bool("ENABLE_VEHICLE_PRAIRIE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PRANGER") == false then
			tunables.set_bool("ENABLE_VEHICLE_PRANGER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PREMIER") == false then
			tunables.set_bool("ENABLE_VEHICLE_PREMIER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PREVION") == false then
			tunables.set_bool("ENABLE_VEHICLE_PREVION", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_R300") == false then
			tunables.set_bool("ENABLE_VEHICLE_R300", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RADI") == false then
			tunables.set_bool("ENABLE_VEHICLE_RADI", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RAIJU") == false then
			tunables.set_bool("ENABLE_VEHICLE_RAIJU", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RANCHERXL") == false then
			tunables.set_bool("ENABLE_VEHICLE_RANCHERXL", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RAPIDGT") == false then
			tunables.set_bool("ENABLE_VEHICLE_RAPIDGT", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RAPIDGT2") == false then
			tunables.set_bool("ENABLE_VEHICLE_RAPIDGT2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RATEL") == false then
			tunables.set_bool("ENABLE_VEHICLE_RATEL", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RATLOADER") == false then
			tunables.set_bool("ENABLE_VEHICLE_RATLOADER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_REBEL") == false then
			tunables.set_bool("ENABLE_VEHICLE_REBEL", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_REBEL2") == false then
			tunables.set_bool("ENABLE_VEHICLE_REBEL2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_REBLA") == false then
			tunables.set_bool("ENABLE_VEHICLE_REBLA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_REEVER") == false then
			tunables.set_bool("ENABLE_VEHICLE_REEVER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_REGINA") == false then
			tunables.set_bool("ENABLE_VEHICLE_REGINA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_REMUS") == false then
			tunables.set_bool("ENABLE_VEHICLE_REMUS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RETINUE2") == false then
			tunables.set_bool("ENABLE_VEHICLE_RETINUE2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RHINEHART") == false then
			tunables.set_bool("ENABLE_VEHICLE_RHINEHART", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RIOT") == false then
			tunables.set_bool("ENABLE_VEHICLE_RIOT", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ROCOTO") == false then
			tunables.set_bool("ENABLE_VEHICLE_ROCOTO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ROMERO") == false then
			tunables.set_bool("ENABLE_VEHICLE_ROMERO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RROCKET") == false then
			tunables.set_bool("ENABLE_VEHICLE_RROCKET", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RT3000") == false then
			tunables.set_bool("ENABLE_VEHICLE_RT3000", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RUFFIAN") == false then
			tunables.set_bool("ENABLE_VEHICLE_RUFFIAN", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RUINER") == false then
			tunables.set_bool("ENABLE_VEHICLE_RUINER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RUINER4") == false then
			tunables.set_bool("ENABLE_VEHICLE_RUINER4", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_S80") == false then
			tunables.set_bool("ENABLE_VEHICLE_S80", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SANCHEZ") == false then
			tunables.set_bool("ENABLE_VEHICLE_SANCHEZ", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SANCHEZ2") == false then
			tunables.set_bool("ENABLE_VEHICLE_SANCHEZ2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SANDKING2") == false then
			tunables.set_bool("ENABLE_VEHICLE_SANDKING2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SCHAFTER2") == false then
			tunables.set_bool("ENABLE_VEHICLE_SCHAFTER2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SCHAFTER4") == false then
			tunables.set_bool("ENABLE_VEHICLE_SCHAFTER4", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SCHAFTER6") == false then
			tunables.set_bool("ENABLE_VEHICLE_SCHAFTER6", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SCHLAGEN") == false then
			tunables.set_bool("ENABLE_VEHICLE_SCHLAGEN", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SCHWARZER") == false then
			tunables.set_bool("ENABLE_VEHICLE_SCHWARZER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SEMINOLE") == false then
			tunables.set_bool("ENABLE_VEHICLE_SEMINOLE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SENTINEL2") == false then
			tunables.set_bool("ENABLE_VEHICLE_SENTINEL2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SENTINEL4") == false then
			tunables.set_bool("ENABLE_VEHICLE_SENTINEL4", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SERRANO") == false then
			tunables.set_bool("ENABLE_VEHICLE_SERRANO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SEVEN70") == false then
			tunables.set_bool("ENABLE_VEHICLE_SEVEN70", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SHEAVA") == false then
			tunables.set_bool("ENABLE_VEHICLE_SHEAVA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SHINOBI") == false then
			tunables.set_bool("ENABLE_VEHICLE_SHINOBI", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SLAMTRUCK") == false then
			tunables.set_bool("ENABLE_VEHICLE_SLAMTRUCK", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SM722") == false then
			tunables.set_bool("ENABLE_VEHICLE_SM722", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SOVEREIGN") == false then
			tunables.set_bool("ENABLE_VEHICLE_SOVEREIGN", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SQUADDIE") == false then
			tunables.set_bool("ENABLE_VEHICLE_SQUADDIE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_STANIER") == false then
			tunables.set_bool("ENABLE_VEHICLE_STANIER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_STINGER") == false then
			tunables.set_bool("ENABLE_VEHICLE_STINGER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_STINGERGT") == false then
			tunables.set_bool("ENABLE_VEHICLE_STINGERGT", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_STINGERTT") == false then
			tunables.set_bool("ENABLE_VEHICLE_STINGERTT", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_STOCKADE") == false then
			tunables.set_bool("ENABLE_VEHICLE_STOCKADE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_STRATUM") == false then
			tunables.set_bool("ENABLE_VEHICLE_STRATUM", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_STREAMER216") == false then
			tunables.set_bool("ENABLE_VEHICLE_STREAMER216", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_STRYDER") == false then
			tunables.set_bool("ENABLE_VEHICLE_STRYDER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SUGOI") == false then
			tunables.set_bool("ENABLE_VEHICLE_SUGOI", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SULTAN2") == false then
			tunables.set_bool("ENABLE_VEHICLE_SULTAN2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SULTAN3") == false then
			tunables.set_bool("ENABLE_VEHICLE_SULTAN3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SUPERD") == false then
			tunables.set_bool("ENABLE_VEHICLE_SUPERD", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SURANO") == false then
			tunables.set_bool("ENABLE_VEHICLE_SURANO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SURFER3") == false then
			tunables.set_bool("ENABLE_VEHICLE_SURFER3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SURGE") == false then
			tunables.set_bool("ENABLE_VEHICLE_SURGE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TAHOMA") == false then
			tunables.set_bool("ENABLE_VEHICLE_TAHOMA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TAILGATER") == false then
			tunables.set_bool("ENABLE_VEHICLE_TAILGATER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TAILGATER2") == false then
			tunables.set_bool("ENABLE_VEHICLE_TAILGATER2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TAMPA") == false then
			tunables.set_bool("ENABLE_VEHICLE_TAMPA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TAXI") == false then
			tunables.set_bool("ENABLE_VEHICLE_TAXI", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TENF") == false then
			tunables.set_bool("ENABLE_VEHICLE_TENF", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TENF2") == false then
			tunables.set_bool("ENABLE_VEHICLE_TENF2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TERMINUS") == false then
			tunables.set_bool("ENABLE_VEHICLE_TERMINUS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_THRAX") == false then
			tunables.set_bool("ENABLE_VEHICLE_THRAX", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_THRUST") == false then
			tunables.set_bool("ENABLE_VEHICLE_THRUST", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TOREADOR") == false then
			tunables.set_bool("ENABLE_VEHICLE_TOREADOR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TORERO2") == false then
			tunables.set_bool("ENABLE_VEHICLE_TORERO2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TOROS") == false then
			tunables.set_bool("ENABLE_VEHICLE_TOROS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TULIP") == false then
			tunables.set_bool("ENABLE_VEHICLE_TULIP", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TULIP2") == false then
			tunables.set_bool("ENABLE_VEHICLE_TULIP2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TURISMO3") == false then
			tunables.set_bool("ENABLE_VEHICLE_TURISMO3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VACCA") == false then
			tunables.set_bool("ENABLE_VEHICLE_VACCA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VADER") == false then
			tunables.set_bool("ENABLE_VEHICLE_VADER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VAGRANT") == false then
			tunables.set_bool("ENABLE_VEHICLE_VAGRANT", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VAMOS") == false then
			tunables.set_bool("ENABLE_VEHICLE_VAMOS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VECTRE") == false then
			tunables.set_bool("ENABLE_VEHICLE_VECTRE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VERLIERER2") == false then
			tunables.set_bool("ENABLE_VEHICLE_VERLIERER2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VERUS") == false then
			tunables.set_bool("ENABLE_VEHICLE_VERUS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VETIR") == false then
			tunables.set_bool("ENABLE_VEHICLE_VETIR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VETO") == false then
			tunables.set_bool("ENABLE_VEHICLE_VETO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VETO2") == false then
			tunables.set_bool("ENABLE_VEHICLE_VETO2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VIGERO2") == false then
			tunables.set_bool("ENABLE_VEHICLE_VIGERO2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VIGERO") == false then
			tunables.set_bool("ENABLE_VEHICLE_VIGERO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VIGERO3") == false then
			tunables.set_bool("ENABLE_VEHICLE_VIGERO3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VINDICATOR") == false then
			tunables.set_bool("ENABLE_VEHICLE_VINDICATOR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VIRTUE") == false then
			tunables.set_bool("ENABLE_VEHICLE_VIRTUE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VIVANITE") == false then
			tunables.set_bool("ENABLE_VEHICLE_VIVANITE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VOLTIC") == false then
			tunables.set_bool("ENABLE_VEHICLE_VOLTIC", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VORSCHLAGHAMMER") == false then
			tunables.set_bool("ENABLE_VEHICLE_VORSCHLAGHAMMER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VSTR") == false then
			tunables.set_bool("ENABLE_VEHICLE_VSTR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_WARRENER") == false then
			tunables.set_bool("ENABLE_VEHICLE_WARRENER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_WARRENER2") == false then
			tunables.set_bool("ENABLE_VEHICLE_WARRENER2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_WASHINGTON") == false then
			tunables.set_bool("ENABLE_VEHICLE_WASHINGTON", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_WEEVIL") == false then
			tunables.set_bool("ENABLE_VEHICLE_WEEVIL", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_WEEVIL2") == false then
			tunables.set_bool("ENABLE_VEHICLE_WEEVIL2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_WINKY") == false then
			tunables.set_bool("ENABLE_VEHICLE_WINKY", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_XLS") == false then
			tunables.set_bool("ENABLE_VEHICLE_XLS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_XLS2") == false then
			tunables.set_bool("ENABLE_VEHICLE_XLS2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_YOSEMITE2") == false then
			tunables.set_bool("ENABLE_VEHICLE_YOSEMITE2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_YOSEMITE1500") == false then
			tunables.set_bool("ENABLE_VEHICLE_YOSEMITE1500", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ZENO") == false then
			tunables.set_bool("ENABLE_VEHICLE_ZENO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ZHABA") == false then
			tunables.set_bool("ENABLE_VEHICLE_ZHABA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ZION") == false then
			tunables.set_bool("ENABLE_VEHICLE_ZION", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ZION2") == false then
			tunables.set_bool("ENABLE_VEHICLE_ZION2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ZION3") == false then
			tunables.set_bool("ENABLE_VEHICLE_ZION3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ZORRUSSO") == false then
			tunables.set_bool("ENABLE_VEHICLE_ZORRUSSO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ZR350") == false then
			tunables.set_bool("ENABLE_VEHICLE_ZR350", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ZTYPE") == false then
			tunables.set_bool("ENABLE_VEHICLE_ZTYPE", true)
		end
		if tunables.get_bool("ENABLE_VEH_CLUB") == false then
			tunables.set_bool("ENABLE_VEH_CLUB", true)
		end
		if tunables.get_bool("ENABLE_VEH_COQUETTE4") == false then
			tunables.set_bool("ENABLE_VEH_COQUETTE4", true)
		end
		if tunables.get_bool("ENABLE_VEH_DUKES3") == false then
			tunables.set_bool("ENABLE_VEH_DUKES3", true)
		end
		if tunables.get_bool("ENABLE_VEH_GAUNTLET5") == false then
			tunables.set_bool("ENABLE_VEH_GAUNTLET5", true)
		end
		if tunables.get_bool("ENABLE_VEH_GLENDALE2") == false then
			tunables.set_bool("ENABLE_VEH_GLENDALE2", true)
		end
		if tunables.get_bool("ENABLE_VEH_LANDSTALKER2") == false then
			tunables.set_bool("ENABLE_VEH_LANDSTALKER2", true)
		end
		if tunables.get_bool("ENABLE_VEH_MANANA2") == false then
			tunables.set_bool("ENABLE_VEH_MANANA2", true)
		end
		if tunables.get_bool("ENABLE_VEH_OPENWHEEL1") == false then
			tunables.set_bool("ENABLE_VEH_OPENWHEEL1", true)
		end
		if tunables.get_bool("ENABLE_VEH_OPENWHEEL2") == false then
			tunables.set_bool("ENABLE_VEH_OPENWHEEL2", true)
		end
		if tunables.get_bool("ENABLE_VEH_PENUMBRA2") == false then
			tunables.set_bool("ENABLE_VEH_PENUMBRA2", true)
		end
		if tunables.get_bool("ENABLE_VEH_PEYOTE3") == false then
			tunables.set_bool("ENABLE_VEH_PEYOTE3", true)
		end
		if tunables.get_bool("ENABLE_VEH_POLGREENWOOD") == false then
			tunables.set_bool("ENABLE_VEH_POLGREENWOOD", true)
		end
		if tunables.get_bool("ENABLE_VEH_SEMINOLE2") == false then
			tunables.set_bool("ENABLE_VEH_SEMINOLE2", true)
		end
		if tunables.get_bool("ENABLE_VEH_TIGON") == false then
			tunables.set_bool("ENABLE_VEH_TIGON", true)
		end
		if tunables.get_bool("ENABLE_VEH_YOSEMITE3") == false then
			tunables.set_bool("ENABLE_VEH_YOSEMITE3", true)
		end
		if tunables.get_bool("ENABLE_VEH_YOUGA3") == false then
			tunables.set_bool("ENABLE_VEH_YOUGA3", true)
		end
	--else
	--	tunables.set_bool("ENABLE_VEHICLE_AKUMA", false)
	--	tunables.set_bool("ENABLE_VEHICLE_ALEUTIAN", false)
	--	tunables.set_bool("ENABLE_VEHICLE_ALKONOST", false)
	--	tunables.set_bool("ENABLE_VEHICLE_ALPHA", false)
	--	tunables.set_bool("ENABLE_VEHICLE_ANNIHILATOR2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_ASBO", false)
	--	tunables.set_bool("ENABLE_VEHICLE_ASEA", false)
	--	tunables.set_bool("ENABLE_VEHICLE_ASTEROPE", false)
	--	tunables.set_bool("ENABLE_VEHICLE_ASTEROPE2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_ASTRON", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BALLER2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BALLER3", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BALLER4", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BALLER5", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BALLER6", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BALLER7", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BALLER", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BALLER8", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BANDITO", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BATI2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BENSON2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BESTIAGTS", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BFINJECTION", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BIFTA", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BJXL", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BLADE", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BLAZER2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BLAZER", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BLAZER3", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BODHI2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BOOR", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BOXVILLE", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BOXVILLE6", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BRAWLER", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BRICKADE2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BRIGHAM", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BRIOSO2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BRIOSO3", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BROADWAY", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BTYPE2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BTYPE", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BTYPE3", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BUFFALO", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BUFFALO2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BUFFALO4", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BUFFALO5", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BULLET", false)
	--	tunables.set_bool("ENABLE_VEHICLE_BURRITO2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_CALICO", false)
	--	tunables.set_bool("ENABLE_VEHICLE_CARACARA2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_CARBONIZZARE", false)
	--	tunables.set_bool("ENABLE_VEHICLE_CASTIGATOR", false)
	--	tunables.set_bool("ENABLE_VEHICLE_CAVALCADE", false)
	--	tunables.set_bool("ENABLE_VEHICLE_CAVALCADE2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_CAVALCADE3", false)
	--	tunables.set_bool("ENABLE_VEHICLE_CHAMPION", false)
	--	tunables.set_bool("ENABLE_VEHICLE_CHEETAH", false)
	--	tunables.set_bool("ENABLE_VEHICLE_CINQUEMILA", false)
	--	tunables.set_bool("ENABLE_VEHICLE_CLIQUE", false)
	--	tunables.set_bool("ENABLE_VEHICLE_CLIQUE2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_COG55", false)
	--	tunables.set_bool("ENABLE_VEHICLE_COG552", false)
	--	tunables.set_bool("ENABLE_VEHICLE_COGCABRIO", false)
	--	tunables.set_bool("ENABLE_VEHICLE_COGNOSCENTI", false)
	--	tunables.set_bool("ENABLE_VEHICLE_COGNOSCENTI2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_COMET6", false)
	--	tunables.set_bool("ENABLE_VEHICLE_COMET7", false)
	--	tunables.set_bool("ENABLE_VEHICLE_CONADA", false)
	--	tunables.set_bool("ENABLE_VEHICLE_CONADA2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_COQUETTE", false)
	--	tunables.set_bool("ENABLE_VEHICLE_COQUETTE2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_COQUETTE3", false)
	--	tunables.set_bool("ENABLE_VEHICLE_COQUETTE5", false)
	--	tunables.set_bool("ENABLE_VEHICLE_CORSITA", false)
	--	tunables.set_bool("ENABLE_VEHICLE_COUREUR", false)
	--	tunables.set_bool("ENABLE_VEHICLE_CYPHER", false)
	--	tunables.set_bool("ENABLE_VEHICLE_DEITY", false)
	--	tunables.set_bool("ENABLE_VEHICLE_DEVESTE", false)
	--	tunables.set_bool("ENABLE_VEHICLE_DEVIANT", false)
	--	tunables.set_bool("ENABLE_VEHICLE_DILETTANTE", false)
	--	tunables.set_bool("ENABLE_VEHICLE_DINGY5", false)
	--	tunables.set_bool("ENABLE_VEHICLE_DOMINATOR7", false)
	--	tunables.set_bool("ENABLE_VEHICLE_DOMINATOR8", false)
	--	tunables.set_bool("ENABLE_VEHICLE_DOMINATOR9", false)
	--	tunables.set_bool("ENABLE_VEHICLE_DOMINATOR10", false)
	--	tunables.set_bool("ENABLE_VEHICLE_DORADO", false)
	--	tunables.set_bool("ENABLE_VEHICLE_DOUBLE", false)
	--	tunables.set_bool("ENABLE_VEHICLE_DRAFTER", false)
	--	tunables.set_bool("ENABLE_VEHICLE_DRAUGUR", false)
	--	tunables.set_bool("ENABLE_VEHICLE_DUNE", false)
	--	tunables.set_bool("ENABLE_VEHICLE_DYNASTY", false)
	--	tunables.set_bool("ENABLE_VEHICLE_EMERUS", false)
	--	tunables.set_bool("ENABLE_VEHICLE_ENDURO", false)
	--	tunables.set_bool("ENABLE_VEHICLE_ENTITY3", false)
	--	tunables.set_bool("ENABLE_VEHICLE_ENTITYXF", false)
	--	tunables.set_bool("ENABLE_VEHICLE_ENVISAGE", false)
	--	tunables.set_bool("ENABLE_VEHICLE_EUDORA", false)
	--	tunables.set_bool("ENABLE_VEHICLE_EUROS", false)
	--	tunables.set_bool("ENABLE_VEHICLE_EUROSX32", false)
	--	tunables.set_bool("ENABLE_VEHICLE_EVERON", false)
	--	tunables.set_bool("ENABLE_VEHICLE_EVERON2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_EXEMPLAR", false)
	--	tunables.set_bool("ENABLE_VEHICLE_F620", false)
	--	tunables.set_bool("ENABLE_VEHICLE_FAGGIO2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_FELON", false)
	--	tunables.set_bool("ENABLE_VEHICLE_FELON2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_FELTZER2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_FELTZER3", false)
	--	tunables.set_bool("ENABLE_VEHICLE_FIRETRUCK", false)
	--	tunables.set_bool("ENABLE_VEHICLE_FMJ", false)
	--	tunables.set_bool("ENABLE_VEHICLE_FORMULA", false)
	--	tunables.set_bool("ENABLE_VEHICLE_FORMULA2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_FORMULA2_PODIUM", false)
	--	tunables.set_bool("ENABLE_VEHICLE_FORMULA_PODIUM", false)
	--	tunables.set_bool("ENABLE_VEHICLE_FQ2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_FR36", false)
	--	tunables.set_bool("ENABLE_VEHICLE_FUGITIVE", false)
	--	tunables.set_bool("ENABLE_VEHICLE_FURIA", false)
	--	tunables.set_bool("ENABLE_VEHICLE_FUROREGT", false)
	--	tunables.set_bool("ENABLE_VEHICLE_FUSILADE", false)
	--	tunables.set_bool("ENABLE_VEHICLE_FUTO", false)
	--	tunables.set_bool("ENABLE_VEHICLE_FUTO2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_GAUNTLET", false)
	--	tunables.set_bool("ENABLE_VEHICLE_GAUNTLET3", false)
	--	tunables.set_bool("ENABLE_VEHICLE_GAUNTLET4", false)
	--	tunables.set_bool("ENABLE_VEHICLE_GAUNTLET6", false)
	--	tunables.set_bool("ENABLE_VEHICLE_GRANGER", false)
	--	tunables.set_bool("ENABLE_VEHICLE_GRANGER2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_GREENWOOD", false)
	--	tunables.set_bool("ENABLE_VEHICLE_GRESLEY", false)
	--	tunables.set_bool("ENABLE_VEHICLE_GROWLER", false)
	--	tunables.set_bool("ENABLE_VEHICLE_HABANERO", false)
	--	tunables.set_bool("ENABLE_VEHICLE_HAKUCHOU", false)
	--	tunables.set_bool("ENABLE_VEHICLE_HELLION", false)
	--	--tunables.set_bool("ENABLE_VEHICLE_HELP_IELAUNCH", false) -- Tunable 0x3804281701 not found.
	--	tunables.set_bool("ENABLE_VEHICLE_HEXER", false)
	--	tunables.set_bool("ENABLE_VEHICLE_IGNUS", false)
	--	tunables.set_bool("ENABLE_VEHICLE_IMORGEN", false)
	--	tunables.set_bool("ENABLE_VEHICLE_IMPALER5", false)
	--	tunables.set_bool("ENABLE_VEHICLE_IMPALER6", false)
	--	tunables.set_bool("ENABLE_VEHICLE_INDUCTOR", false)
	--	tunables.set_bool("ENABLE_VEHICLE_INFERNUS", false)
	--	tunables.set_bool("ENABLE_VEHICLE_INGOT", false)
	--	tunables.set_bool("ENABLE_VEHICLE_INNOVATION", false)
	--	tunables.set_bool("ENABLE_VEHICLE_INTRUDER", false)
	--	tunables.set_bool("ENABLE_VEHICLE_ISSI2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_ISSI7", false)
	--	tunables.set_bool("ENABLE_VEHICLE_ISSI8", false)
	--	tunables.set_bool("ENABLE_VEHICLE_ITALIGTO", false)
	--	tunables.set_bool("ENABLE_VEHICLE_ITALIRSX", false)
	--	tunables.set_bool("ENABLE_VEHICLE_IWAGEN", false)
	--	tunables.set_bool("ENABLE_VEHICLE_JACKAL", false)
	--	tunables.set_bool("ENABLE_VEHICLE_JB700", false)
	--	tunables.set_bool("ENABLE_VEHICLE_JB7002", false)
	--	tunables.set_bool("ENABLE_VEHICLE_JESTER", false)
	--	tunables.set_bool("ENABLE_VEHICLE_JESTER2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_JESTER4", false)
	--	tunables.set_bool("ENABLE_VEHICLE_JOURNEY2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_JUBILEE", false)
	--	tunables.set_bool("ENABLE_VEHICLE_JUGULAR", false)
	--	tunables.set_bool("ENABLE_VEHICLE_KALAHARI", false)
	--	tunables.set_bool("ENABLE_VEHICLE_KANJO", false)
	--	tunables.set_bool("ENABLE_VEHICLE_KANJOSJ", false)
	--	tunables.set_bool("ENABLE_VEHICLE_KOMODA", false)
	--	tunables.set_bool("ENABLE_VEHICLE_KRIEGER", false)
	--	tunables.set_bool("ENABLE_VEHICLE_L35", false)
	--	tunables.set_bool("ENABLE_VEHICLE_LANDSTALKER", false)
	--	tunables.set_bool("ENABLE_VEHICLE_LGUARD", false)
	--	tunables.set_bool("ENABLE_VEHICLE_LM87", false)
	--	tunables.set_bool("ENABLE_VEHICLE_LOCUST", false)
	--	tunables.set_bool("ENABLE_VEHICLE_LONGFIN", false)
	--	tunables.set_bool("ENABLE_VEHICLE_MAMBA", false)
	--	tunables.set_bool("ENABLE_VEHICLE_MANCHEZ2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_MASSACRO", false)
	--	tunables.set_bool("ENABLE_VEHICLE_MASSACRO2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_MESA3", false)
	--	tunables.set_bool("ENABLE_VEHICLE_MINITANK", false)
	--	tunables.set_bool("ENABLE_VEHICLE_MODEL_CZ1", false)
	--	tunables.set_bool("ENABLE_VEHICLE_MONROE", false)
	--	tunables.set_bool("ENABLE_VEHICLE_MONSTER", false)
	--	tunables.set_bool("ENABLE_VEHICLE_MONSTROCITI", false)
	--	tunables.set_bool("ENABLE_VEHICLE_NEBULA", false)
	--	tunables.set_bool("ENABLE_VEHICLE_NEMESIS", false)
	--	tunables.set_bool("ENABLE_VEHICLE_NEO", false)
	--	tunables.set_bool("ENABLE_VEHICLE_NINEF", false)
	--	tunables.set_bool("ENABLE_VEHICLE_NINEF2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_NIOBE", false)
	--	tunables.set_bool("ENABLE_VEHICLE_NOVAK", false)
	--	tunables.set_bool("ENABLE_VEHICLE_OMNISEGT", false)
	--	tunables.set_bool("ENABLE_VEHICLE_ORACLE", false)
	--	tunables.set_bool("ENABLE_VEHICLE_ORACLE2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_OUTLAW", false)
	--	tunables.set_bool("ENABLE_VEHICLE_PANTHERE", false)
	--	tunables.set_bool("ENABLE_VEHICLE_PARAGON", false)
	--	tunables.set_bool("ENABLE_VEHICLE_PARAGON3", false)
	--	tunables.set_bool("ENABLE_VEHICLE_PATRIOT", false)
	--	tunables.set_bool("ENABLE_VEHICLE_PATRIOT3", false)
	--	tunables.set_bool("ENABLE_VEHICLE_PATROLBOAT", false)
	--	tunables.set_bool("ENABLE_VEHICLE_PCJ", false)
	--	tunables.set_bool("ENABLE_VEHICLE_PENUMBRA", false)
	--	tunables.set_bool("ENABLE_VEHICLE_PEYOTE2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_PICADOR", false)
	--	tunables.set_bool("ENABLE_VEHICLE_PIGALLE", false)
	--	tunables.set_bool("ENABLE_VEHICLE_PIPISTRELLO", false)
	--	tunables.set_bool("ENABLE_VEHICLE_PIZZABOY", false)
	--	tunables.set_bool("ENABLE_VEHICLE_POLDOMINATOR10", false)
	--	tunables.set_bool("ENABLE_VEHICLE_POLDORADO", false)
	--	tunables.set_bool("ENABLE_VEHICLE_POLGAUNTLET", false)
	--	tunables.set_bool("ENABLE_VEHICLE_POLGREENWOOD", false)
	--	tunables.set_bool("ENABLE_VEHICLE_POLICE4", false)
	--	tunables.set_bool("ENABLE_VEHICLE_POLICE5", false)
	--	tunables.set_bool("ENABLE_VEHICLE_POLIMPALER5", false)
	--	tunables.set_bool("ENABLE_VEHICLE_POLIMPALER6", false)
	--	tunables.set_bool("ENABLE_VEHICLE_POSTLUDE", false)
	--	tunables.set_bool("ENABLE_VEHICLE_POWERSURGE", false)
	--	tunables.set_bool("ENABLE_VEHICLE_PRAIRIE", false)
	--	tunables.set_bool("ENABLE_VEHICLE_PRANGER", false)
	--	tunables.set_bool("ENABLE_VEHICLE_PREMIER", false)
	--	tunables.set_bool("ENABLE_VEHICLE_PREVION", false)
	--	tunables.set_bool("ENABLE_VEHICLE_R300", false)
	--	tunables.set_bool("ENABLE_VEHICLE_RADI", false)
	--	tunables.set_bool("ENABLE_VEHICLE_RAIJU", false)
	--	tunables.set_bool("ENABLE_VEHICLE_RANCHERXL", false)
	--	tunables.set_bool("ENABLE_VEHICLE_RAPIDGT", false)
	--	tunables.set_bool("ENABLE_VEHICLE_RAPIDGT2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_RATEL", false)
	--	tunables.set_bool("ENABLE_VEHICLE_RATLOADER", false)
	--	tunables.set_bool("ENABLE_VEHICLE_REBEL", false)
	--	tunables.set_bool("ENABLE_VEHICLE_REBEL2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_REBLA", false)
	--	tunables.set_bool("ENABLE_VEHICLE_REEVER", false)
	--	tunables.set_bool("ENABLE_VEHICLE_REGINA", false)
	--	tunables.set_bool("ENABLE_VEHICLE_REMUS", false)
	--	tunables.set_bool("ENABLE_VEHICLE_RETINUE2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_RHINEHART", false)
	--	tunables.set_bool("ENABLE_VEHICLE_RIOT", false)
	--	tunables.set_bool("ENABLE_VEHICLE_ROCOTO", false)
	--	tunables.set_bool("ENABLE_VEHICLE_ROMERO", false)
	--	tunables.set_bool("ENABLE_VEHICLE_RROCKET", false)
	--	tunables.set_bool("ENABLE_VEHICLE_RT3000", false)
	--	tunables.set_bool("ENABLE_VEHICLE_RUFFIAN", false)
	--	tunables.set_bool("ENABLE_VEHICLE_RUINER", false)
	--	tunables.set_bool("ENABLE_VEHICLE_RUINER4", false)
	--	tunables.set_bool("ENABLE_VEHICLE_S80", false)
	--	tunables.set_bool("ENABLE_VEHICLE_SANCHEZ", false)
	--	tunables.set_bool("ENABLE_VEHICLE_SANCHEZ2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_SANDKING2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_SCHAFTER2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_SCHAFTER4", false)
	--	tunables.set_bool("ENABLE_VEHICLE_SCHAFTER6", false)
	--	tunables.set_bool("ENABLE_VEHICLE_SCHLAGEN", false)
	--	tunables.set_bool("ENABLE_VEHICLE_SCHWARZER", false)
	--	tunables.set_bool("ENABLE_VEHICLE_SEMINOLE", false)
	--	tunables.set_bool("ENABLE_VEHICLE_SENTINEL2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_SENTINEL4", false)
	--	tunables.set_bool("ENABLE_VEHICLE_SERRANO", false)
	--	tunables.set_bool("ENABLE_VEHICLE_SEVEN70", false)
	--	tunables.set_bool("ENABLE_VEHICLE_SHEAVA", false)
	--	tunables.set_bool("ENABLE_VEHICLE_SHINOBI", false)
	--	tunables.set_bool("ENABLE_VEHICLE_SLAMTRUCK", false)
	--	tunables.set_bool("ENABLE_VEHICLE_SM722", false)
	--	tunables.set_bool("ENABLE_VEHICLE_SOVEREIGN", false)
	--	tunables.set_bool("ENABLE_VEHICLE_SQUADDIE", false)
	--	tunables.set_bool("ENABLE_VEHICLE_STANIER", false)
	--	tunables.set_bool("ENABLE_VEHICLE_STINGER", false)
	--	tunables.set_bool("ENABLE_VEHICLE_STINGERGT", false)
	--	tunables.set_bool("ENABLE_VEHICLE_STINGERTT", false)
	--	tunables.set_bool("ENABLE_VEHICLE_STOCKADE", false)
	--	tunables.set_bool("ENABLE_VEHICLE_STRATUM", false)
	--	tunables.set_bool("ENABLE_VEHICLE_STREAMER216", false)
	--	tunables.set_bool("ENABLE_VEHICLE_STRYDER", false)
	--	tunables.set_bool("ENABLE_VEHICLE_SUGOI", false)
	--	tunables.set_bool("ENABLE_VEHICLE_SULTAN2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_SULTAN3", false)
	--	tunables.set_bool("ENABLE_VEHICLE_SUPERD", false)
	--	tunables.set_bool("ENABLE_VEHICLE_SURANO", false)
	--	tunables.set_bool("ENABLE_VEHICLE_SURFER3", false)
	--	tunables.set_bool("ENABLE_VEHICLE_SURGE", false)
	--	tunables.set_bool("ENABLE_VEHICLE_TAHOMA", false)
	--	tunables.set_bool("ENABLE_VEHICLE_TAILGATER", false)
	--	tunables.set_bool("ENABLE_VEHICLE_TAILGATER2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_TAMPA", false)
	--	tunables.set_bool("ENABLE_VEHICLE_TAXI", false)
	--	tunables.set_bool("ENABLE_VEHICLE_TENF", false)
	--	tunables.set_bool("ENABLE_VEHICLE_TENF2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_TERMINUS", false)
	--	tunables.set_bool("ENABLE_VEHICLE_THRAX", false)
	--	tunables.set_bool("ENABLE_VEHICLE_THRUST", false)
	--	tunables.set_bool("ENABLE_VEHICLE_TOREADOR", false)
	--	tunables.set_bool("ENABLE_VEHICLE_TORERO2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_TOROS", false)
	--	tunables.set_bool("ENABLE_VEHICLE_TULIP", false)
	--	tunables.set_bool("ENABLE_VEHICLE_TULIP2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_TURISMO3", false)
	--	tunables.set_bool("ENABLE_VEHICLE_VACCA", false)
	--	tunables.set_bool("ENABLE_VEHICLE_VADER", false)
	--	tunables.set_bool("ENABLE_VEHICLE_VAGRANT", false)
	--	tunables.set_bool("ENABLE_VEHICLE_VAMOS", false)
	--	tunables.set_bool("ENABLE_VEHICLE_VECTRE", false)
	--	tunables.set_bool("ENABLE_VEHICLE_VERLIERER2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_VERUS", false)
	--	tunables.set_bool("ENABLE_VEHICLE_VETIR", false)
	--	tunables.set_bool("ENABLE_VEHICLE_VETO", false)
	--	tunables.set_bool("ENABLE_VEHICLE_VETO2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_VIGERO2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_VIGERO", false)
	--	tunables.set_bool("ENABLE_VEHICLE_VIGERO3", false)
	--	tunables.set_bool("ENABLE_VEHICLE_VINDICATOR", false)
	--	tunables.set_bool("ENABLE_VEHICLE_VIRTUE", false)
	--	tunables.set_bool("ENABLE_VEHICLE_VIVANITE", false)
	--	tunables.set_bool("ENABLE_VEHICLE_VOLTIC", false)
	--	tunables.set_bool("ENABLE_VEHICLE_VORSCHLAGHAMMER", false)
	--	tunables.set_bool("ENABLE_VEHICLE_VSTR", false)
	--	tunables.set_bool("ENABLE_VEHICLE_WARRENER", false)
	--	tunables.set_bool("ENABLE_VEHICLE_WARRENER2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_WASHINGTON", false)
	--	tunables.set_bool("ENABLE_VEHICLE_WEEVIL", false)
	--	tunables.set_bool("ENABLE_VEHICLE_WEEVIL2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_WINKY", false)
	--	tunables.set_bool("ENABLE_VEHICLE_XLS", false)
	--	tunables.set_bool("ENABLE_VEHICLE_XLS2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_YOSEMITE2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_YOSEMITE1500", false)
	--	tunables.set_bool("ENABLE_VEHICLE_ZENO", false)
	--	tunables.set_bool("ENABLE_VEHICLE_ZHABA", false)
	--	tunables.set_bool("ENABLE_VEHICLE_ZION", false)
	--	tunables.set_bool("ENABLE_VEHICLE_ZION2", false)
	--	tunables.set_bool("ENABLE_VEHICLE_ZION3", false)
	--	tunables.set_bool("ENABLE_VEHICLE_ZORRUSSO", false)
	--	tunables.set_bool("ENABLE_VEHICLE_ZR350", false)
	--	tunables.set_bool("ENABLE_VEHICLE_ZTYPE", false)
	--	tunables.set_bool("ENABLE_VEH_CLUB", false)
	--	tunables.set_bool("ENABLE_VEH_COQUETTE4", false)
	--	tunables.set_bool("ENABLE_VEH_DUKES3", false)
	--	tunables.set_bool("ENABLE_VEH_GAUNTLET5", false)
	--	tunables.set_bool("ENABLE_VEH_GLENDALE2", false)
	--	tunables.set_bool("ENABLE_VEH_LANDSTALKER2", false)
	--	tunables.set_bool("ENABLE_VEH_MANANA2", false)
	--	tunables.set_bool("ENABLE_VEH_OPENWHEEL1", false)
	--	tunables.set_bool("ENABLE_VEH_OPENWHEEL2", false)
	--	tunables.set_bool("ENABLE_VEH_PENUMBRA2", false)
	--	tunables.set_bool("ENABLE_VEH_PEYOTE3", false)
	--	tunables.set_bool("ENABLE_VEH_POLGREENWOOD", false)
	--	tunables.set_bool("ENABLE_VEH_SEMINOLE2", false)
	--	tunables.set_bool("ENABLE_VEH_TIGON", false)
	--	tunables.set_bool("ENABLE_VEH_YOSEMITE3", false)
	--	tunables.set_bool("ENABLE_VEH_YOUGA3", false)
	end
	
	if EnableVehicle2 then
		if tunables.get_bool("ENABLE_LOWRIDER2_VIRGO3") == false then
			tunables.set_bool("ENABLE_LOWRIDER2_VIRGO3", true)
		end
		if tunables.get_bool("ENABLE_LOWRIDER2_SLAMVAN") == false then
			tunables.set_bool("ENABLE_LOWRIDER2_SLAMVAN", true)
		end
		if tunables.get_bool("ENABLE_BIKER_DEFILER") == false then
			tunables.set_bool("ENABLE_BIKER_DEFILER", true)
		end
		if tunables.get_bool("ENABLE_BIKER_RATBIKE") == false then
			tunables.set_bool("ENABLE_BIKER_RATBIKE", true)
		end
		if tunables.get_bool("ENABLE_IE_VOLTIC2") == false then
			tunables.set_bool("ENABLE_IE_VOLTIC2", true)
		end
		if tunables.get_bool("ENABLE_IE_TEMPESTA") == false then
			tunables.set_bool("ENABLE_IE_TEMPESTA", true)
		end
		--if tunables.get_bool("ENABLE_XA2") == false then -- null tunable
		--	tunables.set_bool("ENABLE_XA2", true)
		--end
		if tunables.get_bool("ENABLE_NIGHTSHARK") == false then
			tunables.set_bool("ENABLE_NIGHTSHARK", true)
		end
		if tunables.get_bool("ENABLE_ULTRALIGHT") == false then
			tunables.set_bool("ENABLE_ULTRALIGHT", true)
		end
		if tunables.get_bool("ENABLE_LAZER") == false then
			tunables.set_bool("ENABLE_LAZER", true)
		end
		if tunables.get_bool("ENABLE_DELUXO") == false then
			tunables.set_bool("ENABLE_DELUXO", true)
		end
		if tunables.get_bool("ENABLE_KAMACHO") == false then
			tunables.set_bool("ENABLE_KAMACHO", true)
		end
		if tunables.get_bool("ENABLE_HOTRING") == false then
			tunables.set_bool("ENABLE_HOTRING", true)
		end
		if tunables.get_bool("ENABLE_JESTER3") == false then
			tunables.set_bool("ENABLE_JESTER3", true)
		end
		if tunables.get_bool("ENABLE_TERBYTE") == false then
			tunables.set_bool("ENABLE_TERBYTE", true)
		end
		if tunables.get_bool("ENABLE_HABANERO") == false then
			tunables.set_bool("ENABLE_HABANERO", true)
		end
	end
	
    if stonehatchetrampage then
        tunables.set_int("BB_HATCHET_RAMPAGE_DURATION_MAX", 99999) -- Duration
        tunables.set_int("BB_HATCHET_RAMPAGE_DURATION_EXTENSION", 99999) -- Added Duration per Kill
        tunables.set_int("BB_HATCHET_RAMPAGE_COOLDOWN", 0) -- Cooldown
        tunables.set_float("BB_HATCHET_RAMPAGE_DAMAGE_RECIEVED", 99999) -- Weapon Defense
        tunables.set_float("BB_HATCHET_RAMPAGE_HEALTH_REGEN_RATE", 99999) -- Health Recharge Multiplier
        tunables.set_float("BB_HATCHET_RAMPAGE_HEALTH_REGEN_MAX", 99999) -- Health Recharge Limit
    else
        tunables.set_int("BB_HATCHET_RAMPAGE_DURATION_MAX", 12000) -- Duration
        tunables.set_int("BB_HATCHET_RAMPAGE_DURATION_EXTENSION", 6000) -- Added Duration per Kill
        tunables.set_int("BB_HATCHET_RAMPAGE_COOLDOWN", 60000) -- Cooldown
        tunables.set_float("BB_HATCHET_RAMPAGE_DAMAGE_RECIEVED", 0.5) -- Weapon Defense
        tunables.set_float("BB_HATCHET_RAMPAGE_HEALTH_REGEN_RATE", 2) -- Health Recharge Multiplier
        tunables.set_float("BB_HATCHET_RAMPAGE_HEALTH_REGEN_MAX", 1) -- Health Recharge Limit
    end
	
	if TunableMultplier then
		tunables.set_float("CASH_MULTIPLIER", CashMultiplier)
		tunables.set_float("XP_MULTIPLIER", XPMultiplier)
		tunables.set_float("TIME_MULTIPLIER", TimeMultiplier)
		tunables.set_float("AP_MULTIPLIER", APMultiplier)
		tunables.set_int("AW_ARENA_WAR_WHEEL_AP_LOW_WIN", ArenaWheelAP)
		tunables.set_int("AW_ARENA_WAR_WHEEL_AP_MED_WIN", ArenaWheelAP)
		tunables.set_int("AW_ARENA_WAR_WHEEL_AP_HIGH_WIN", ArenaWheelAP)
		tunables.set_int("AW_FREE_ARENA_WAR_WHEEL_AP_LOW_WIN", ArenaWheelAP)
		tunables.set_int("AW_FREE_ARENA_WAR_WHEEL_AP_MED_WIN", ArenaWheelAP)
		tunables.set_int("AW_FREE_ARENA_WAR_WHEEL_AP_HIGH_WIN", ArenaWheelAP)
		tunables.set_int("AW_ARENA_WAR_WHEEL_RP_LOW_WIN", ArenaWheelRP)
		tunables.set_int("AW_ARENA_WAR_WHEEL_RP_MED_WIN", ArenaWheelRP)
		tunables.set_int("AW_ARENA_WAR_WHEEL_RP_HIGH_WIN", ArenaWheelRP)
		tunables.set_int("AW_FREE_ARENA_WAR_WHEEL_RP_LOW_WIN", ArenaWheelRP)
		tunables.set_int("AW_FREE_ARENA_WAR_WHEEL_RP_MED_WIN", ArenaWheelRP)
		tunables.set_int("AW_FREE_ARENA_WAR_WHEEL_RP_HIGH_WIN", ArenaWheelRP)
		tunables.set_int("AW_ARENA_WAR_WHEEL_CASH_LOW_WIN", ArenaWheelCash)
		tunables.set_int("AW_ARENA_WAR_WHEEL_CASH_MED_WIN", ArenaWheelCash)
		tunables.set_int("AW_ARENA_WAR_WHEEL_CASH_HIGH_WIN", ArenaWheelCash)
		tunables.set_int("AW_FREE_ARENA_WAR_WHEEL_CASH_LOW_WIN", ArenaWheelCash)
		tunables.set_int("AW_FREE_ARENA_WAR_WHEEL_CASH_MED_WIN", ArenaWheelCash)
		tunables.set_int("AW_FREE_ARENA_WAR_WHEEL_CASH_HIGH_WIN", ArenaWheelCash)
		tunables.set_float("XM22_TAXI_DRIVER_FARE_MULTIPLIER", TaxiWork)
		tunables.set_float("TUNER_SPRINT_FIRST_TIME_BONUS_XP_MULTIPLIER", LSCarMeetFirst)
		tunables.set_float("TUNER_SPRINT_RACE_PLACE_XP_MULTIPLIER", LSCarMeetSprint)
		tunables.set_float("TUNER_STREET_RACE_PLACE_XP_MULTIPLIER", LSCarMeetStreet)
		tunables.set_float("TUNER_PURSUIT_RACE_PLACE_XP_MULTIPLIER", LSCarMeetPursuit)
		tunables.set_float("TUNER_CHECKPOINT_RACE_PLACE_XP_MULTIPLIER", LSCarMeetCheckpoint)
		tunables.set_float("TUNER_HEADTOHEAD_RACE_PLACE_XP_MULTIPLIER", LSCarMeetHeadtohead)
		tunables.set_float("TUNER_CARCLUB_TIME_XP_MULTIPLIER", LSCarMeet)
		tunables.set_float("TUNER_SANDBOX_TIME_XP_MULTIPLIER", LSCarMeetTrack)
		tunables.set_float("TUNER_MERCH_PURCHASE_XP_MULTIPLIER", LSCarMeetMerch)
	end
	
	if LSCarMeetAllMultiplier then
		tunables.set_float("TUNER_SPRINT_FIRST_TIME_BONUS_XP_MULTIPLIER", LSCarMeetAll) -- 1
		tunables.set_float("TUNER_STREET_FIRST_TIME_BONUS_XP_MULTIPLIER", LSCarMeetAll)
		tunables.set_float("TUNER_PURSUIT_FIRST_TIME_BONUS_XP_MULTIPLIER", LSCarMeetAll)
		tunables.set_float("TUNER_MOD_FIRST_TIME_BONUS_XP_MULTIPLIER", LSCarMeetAll)
		tunables.set_float("TUNER_SANDBOX_TEST_FIRST_TIME_BONUS_XP_MULTIPLIER", LSCarMeetAll)
		tunables.set_float("TUNER_TIMETRIAL_FIRST_TIME_BONUS_XP_MULTIPLIER", LSCarMeetAll)
		tunables.set_float("TUNER_CHECKPOINT_FIRST_TIME_BONUS_XP_MULTIPLIER", LSCarMeetAll)
		tunables.set_float("TUNER_HEADTOHEAD_FIRST_TIME_BONUS_XP_MULTIPLIER", LSCarMeetAll)
		tunables.set_float("TUNER_PRIVATE_INSTANCE_FIRST_TIME_BONUS_XP_MULTIPLIER", LSCarMeetAll)
		tunables.set_float("TUNER_CARCLUB_FIRST_TIME_DAILY_XP_MULTIPLIER", LSCarMeetAll)
		tunables.set_float("TUNER_CARCLUB_PV_FIRST_TIME_DAILY_XP_MULTIPLIER", LSCarMeetAll)
		tunables.set_float("TUNER_SPRINT_FIRST_TIME_DAILY_XP_MULTIPLIER", LSCarMeetAll)
		tunables.set_float("TUNER_STREET_FIRST_TIME_DAILY_XP_MULTIPLIER", LSCarMeetAll)
		tunables.set_float("TUNER_PURSUIT_FIRST_TIME_DAILY_XP_MULTIPLIER", LSCarMeetAll)
		tunables.set_float("TUNER_MOD_FIRST_TIME_DAILY_XP_MULTIPLIER", LSCarMeetAll)
		tunables.set_float("TUNER_SANDBOX_TEST_FIRST_TIME_DAILY_XP_MULTIPLIERER", LSCarMeetAll)
		tunables.set_float("TUNER_SANDBOX_PV_FIRST_TIME_DAILY_XP_MULTIPLIER", LSCarMeetAll)
		tunables.set_float("TUNER_TIMETRIAL_FIRST_TIME_DAILY_XP_MULTIPLIER", LSCarMeetAll)
		tunables.set_float("TUNER_CHECKPOINT_FIRST_TIME_DAILY_XP_MULTIPLIER", LSCarMeetAll)
		tunables.set_float("TUNER_HEADTOHEAD_FIRST_TIME_DAILY_XP_MULTIPLIER", LSCarMeetAll)
		tunables.set_float("TUNER_PRIVATE_INSTANCE_FIRST_TIME_DAILY_XP_MULTIPLIER", LSCarMeetAll)
		tunables.set_float("TUNER_SPRINT_RACE_PLACE_XP_MULTIPLIER", LSCarMeetAll)
		tunables.set_float("TUNER_STREET_RACE_PLACE_XP_MULTIPLIER", LSCarMeetAll)
		tunables.set_float("TUNER_PURSUIT_RACE_PLACE_XP_MULTIPLIER", LSCarMeetAll)
		tunables.set_float("TUNER_CHECKPOINT_RACE_PLACE_XP_MULTIPLIER", LSCarMeetAll)
		tunables.set_float("TUNER_HEADTOHEAD_RACE_PLACE_XP_MULTIPLIER", LSCarMeetAll)
		tunables.set_float("TUNER_CARCLUB_VISITS_STREAK_XP_MULTIPLIER", LSCarMeetAll)
		tunables.set_float("TUNER_CARCLUB_TIME_XP_MULTIPLIER", LSCarMeetAll)
		tunables.set_float("TUNER_SANDBOX_TIME_XP_MULTIPLIER", LSCarMeetAll)
		tunables.set_float("TUNER_MERCH_PURCHASE_XP_MULTIPLIER", LSCarMeetAll) -- 30
		tunables.set_float("TUNER_CARCLUB_TIME_XP_MERCH_MULTIPLIER", LSCarMeetAll) -- 41
		tunables.set_float("TUNER_SANDBOX_TIME_XP_MERCH_MULTIPLIER", LSCarMeetAll) -- 42
	end
	
	if MaxBetLimit then
		tunables.set_float("MIN_BET_LIMIT", 0)
		tunables.set_float("MAX_BET_LIMIT", INT_MAX)
	else
		tunables.set_float("MIN_BET_LIMIT", 100.000)
		tunables.set_float("MAX_BET_LIMIT", 1000.000)
	end
end)

------------------------------------

Reports = GoldenGetsMisc:add_tab("Reports")

Reports:add_text("Griefing:" .. stats.get_int("MPPLY_GRIEFING"))
Reports:add_text("Exploiting:" .. stats.get_int("MPPLY_EXPLOITS"))
Reports:add_text("Abusing Bugs:" .. stats.get_int("MPPLY_GAME_EXPLOITS"))
Reports:add_text("Annoying People In Text:" .. stats.get_int("MPPLY_TC_ANNOYINGME"))
Reports:add_text("Hate Speech In Text:" .. stats.get_int("MPPLY_TC_HATE"))
Reports:add_text("Annoying People In Voice:" .. stats.get_int("MPPLY_VC_ANNOYINGME"))
Reports:add_text("Hate Speech In Voice:" .. stats.get_int("MPPLY_VC_HATE"))
Reports:add_text("Offensive Language:" .. stats.get_int("MPPLY_OFFENSIVE_LANGUAGE"))
Reports:add_text("Offensive Tagplate:" .. stats.get_int("MPPLY_OFFENSIVE_TAGPLATE"))
Reports:add_text("Offensive Content:" .. stats.get_int("MPPLY_OFFENSIVE_UGC"))
Reports:add_text("Bad Crew Name:" .. stats.get_int("MPPLY_BAD_CREW_NAME"))
Reports:add_text("Bad Crew Motto:" .. stats.get_int("MPPLY_BAD_CREW_MOTTO"))
Reports:add_text("Bad Crew Status:" .. stats.get_int("MPPLY_BAD_CREW_STATUS"))
Reports:add_text("Bad Crew Emblem:" .. stats.get_int("MPPLY_BAD_CREW_EMBLEM"))
Reports:add_separator()
Reports:add_text("Now onto your commends:")
Reports:add_separator()
Reports:add_text("Friendly:" .. stats.get_int("MPPLY_FRIENDLY"))
Reports:add_text("Helpful:" .. stats.get_int("MPPLY_HELPFUL"))
