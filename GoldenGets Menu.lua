SupportBuild = "3337"
SupportVersion = "1.69"
GoldenGetsMenuVersion = "1.3"

------------------------------------ Launch Menu

GoldenGetsMenu = gui.get_tab("GoldenGets Menu")
gui.show_message("GoldenGets Menu v"..GoldenGetsMenuVersion.." | "..SupportVersion.."-"..SupportBuild.."","is Successfully launched!")

------------------------------------ Build Compatibility

CurrentBuild = memory.scan_pattern("8B C3 33 D2 C6 44 24 20"):add(0x24):rip()
CurrentBuild_string = CurrentBuild:get_string()
BuildStatus = 0

if CurrentBuild:get_string() ~= SupportBuild then
    BuildStatus = 0 -- Failed to find some patterns for GTA5 (Note: Found game version 1.69-3351 but this YimMenu version is for game version 1.69-3337)
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

function globals_b_set_int(SupportBuild_string, intglobal, intglobalvalue)
    if tostring(SupportBuild_string) == CurrentBuild_string or BuildStatus == 5 then
        globals.set_int(intglobal, intglobalvalue)
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

function globals_b_set_float(SupportBuild_string, floatglobal, floatgloballvalue)
    if tostring(SupportBuild_string) == CurrentBuild_string or BuildStatus == 5 then
        globals.set_float(floatglobal, floatgloballvalue)
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

function locals_b_set_int(SupportBuild_string, scriptname, intlocal, intlocalvalue)
    if tostring(SupportBuild_string) == CurrentBuild_string or BuildStatus == 5 then
        locals.set_int(scriptname, intlocal, intlocalvalue)
    else
        log.warning("Unable to run, unsupported Build version (b"..SupportBuild_string.."). Current Build version is (b"..CurrentBuild_string..")")
    end
end

function locals_b_get_float(SupportBuild_string, scriptname, floatlocal)
    if tostring(SupportBuild_string) == CurrentBuild_string or BuildStatus == 5 then
        return locals.get_float(scriptname, floatlocal)
    else
        log.warning("Unable to read data, unsupported Build version (b"..SupportBuild_string.."). Current Build version is (b"..CurrentBuild_string..")")
    end
end

function locals_b_set_float(SupportBuild_string, scriptname, floatlocal, floatlocalvalue)
    if tostring(SupportBuild_string) == CurrentBuild_string or BuildStatus == 5 then
        locals.set_float(scriptname, floatlocal, floatlocalvalue)
    else
        log.warning("Unable to run, unsupported Build version (b"..SupportBuild_string.."). Current Build version is (b"..CurrentBuild_string..")")
    end
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

function globals_v_get_int(SupportVersion, intglobal)
    if tostring(SupportVersion) == CurrentVersion_string or VersionStatus == 5 then
        return globals.get_int(intglobal)
    else
        log.warning("Unable to read data, unsupported Online version (v"..SupportVersion.."). Current Online version is (v"..CurrentVersion_string..")")
    end
end

function globals_v_set_int(SupportVersion, intglobal, intglobalvalue)
    if tostring(SupportVersion) == CurrentVersion_string or VersionStatus == 5 then
        globals.set_int(intglobal, intglobalvalue)
    else
        log.warning("Unable to run, unsupported Online version (v"..SupportVersion.."). Current Online version is (v"..CurrentVersion_string..")")
    end
end

function globals_v_get_float(SupportVersion, floatglobal)
    if tostring(SupportVersion) == CurrentVersion_string or VersionStatus == 5 then
        return globals.get_float(floatglobal)
    else
        log.warning("Unable to read data, unsupported Online version (v"..SupportVersion.."). Current Online version is (v"..CurrentVersion_string..")")
    end
end

function globals_v_set_float(SupportVersion, floatglobal, floatgloballvalue)
    if tostring(SupportVersion) == CurrentVersion_string or VersionStatus == 5 then
        globals.set_float(floatglobal, floatgloballvalue)
    else
        log.warning("Unable to run, unsupported Online version (v"..SupportVersion.."). Current Online version is (v"..CurrentVersion_string..")")
    end
end

function locals_v_get_int(SupportVersion, scriptname, intlocal)
    if tostring(SupportVersion) == CurrentVersion_string or VersionStatus == 5 then
        return locals.get_int(scriptname, intlocal)
    else
        log.warning("Unable to read data, unsupported Online version (v"..SupportVersion.."). Current Online version is (v"..CurrentVersion_string..")")
    end
end

function locals_v_set_int(SupportVersion, scriptname, intlocal, intlocalvalue)
    if tostring(SupportVersion) == CurrentVersion_string or VersionStatus == 5 then
        locals.set_int(scriptname, intlocal, intlocalvalue)
    else
        log.warning("Unable to run, unsupported Online version (v"..SupportVersion.."). Current Online version is (v"..CurrentVersion_string..")")
    end
end

function locals_v_get_float(SupportVersion, scriptname, floatlocal)
    if tostring(SupportVersion) == CurrentVersion_string or VersionStatus == 5 then
        return locals.get_float(scriptname, floatlocal)
    else
        log.warning("Unable to read data, unsupported Online version (v"..SupportVersion.."). Current Online version is (v"..CurrentVersion_string..")")
    end
end

function locals_v_set_float(SupportVersion, scriptname, floatlocal, floatlocalvalue)
    if tostring(SupportVersion) == CurrentVersion_string or VersionStatus == 5 then
        locals.set_float(scriptname, floatlocal, floatlocalvalue)
    else
        log.warning("Unable to run, unsupported Online version (v"..SupportVersion.."). Current Online version is (v"..CurrentVersion_string..")")
    end
end

------------------------------------ Stat Manipulation (Note: no effect on update version)

--function stats_get_packed_stat_bool(packedindex)
--    stats.get_packed_stat_bool(packedindex)
--end
--
--function stats_set_packed_stat_bool(packedindex, packedvalue)
--    stats.set_packed_stat_bool(packedindex, packedvalue)
--end
--
--function stats_get_bool_masked(maskedstat, maskedindex)
--    stats.get_bool_masked(maskedstat, maskedindex)
--end
--
--function stats_set_bool_masked(maskedstat, maskedindex, maskedvalue)
--    stats.set_bool_masked(maskedstat, maskedvalue, maskedindex)
--end

------------------------------------ Network Session Compatibility

NetworkSessionStatus = 0

if NETWORK.NETWORK_IS_SESSION_STARTED() then
    NetworkSessionStatus = 1
else
    NetworkSessionStatus = 0
end

function NETWORK_SESSION_STARTED()
    if ForceOnlineFeatures then
        return true
    else
        return NETWORK.NETWORK_IS_SESSION_STARTED()
    end
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
XMg     = FMg + 1 						-- xp multiplier 			    	   		// Tunable: XP_MULTIPLIER
APg     = FMg + 31084 					-- agency payout 			    	   		// Tunable: FIXER_FINALE_LEADER_CASH_REWARD
ACKg    = FMg + 31036 					-- agency cooldown killer       	   		// Tunable: FIXER_STORY_COOLDOWN_POSIX"
ASPg1   = FMg + 30338 + 1 				-- auto shop payout 1 		    	   		// Tunable: TUNER_ROBBERY_LEADER_CASH_REWARD0
ASPg2   = FMg + 30338 + 8 				-- auto shop payout 2 		    	   		// Tunable: TUNER_ROBBERY_LEADER_CASH_REWARD7
ASFg    = FMg + 30334 					-- auto shop fee  			    	   		// Tunable: TUNER_ROBBERY_CONTACT_FEE
ASCKg   = FMg + 30357 					-- auto shop cooldown  		    	   		// Tunable: TUNER_ROBBERY_COOLDOWN_TIME
ACg1    = 1928958 + 1 + 1 				-- apartment player 1 cut
ACg2    = 1928958 + 1 + 2 				-- apartment player 2 cut
ACg3    = 1928958 + 1 + 3 				-- apartment player 3 cut
ACg4    = 1928958 + 1 + 4 				-- apartment player 4 cut
ACg5    = 1930926 + 3008 + 1 			-- local apartment player 1 cut
ACFg1   = 1930926 + 192
ACFg2   = 1930926 + 190
AUAJg1  = FMg + 9101 					-- apartment unlock all jobs 1  	   		// Tunable: ROOT_ID_HASH_THE_FLECCA_JOB
AUAJg2  = FMg + 9106 					-- apartment unlock all jobs 2  	   		// Tunable: ROOT_ID_HASH_THE_PRISON_BREAK
AUAJg3  = FMg + 9113 					-- apartment unlock all jobs 3  	   		// Tunable: ROOT_ID_HASH_THE_HUMANE_LABS_RAID
AUAJg4  = FMg + 9119 					-- apartment unlock all jobs 4  	   		// Tunable: ROOT_ID_HASH_SERIES_A_FUNDING
AUAJg5  = FMg + 9125 					-- apartment unlock all jobs 5  	   		// Tunable: ROOT_ID_HASH_THE_PACIFIC_STANDARD_JOB
CPCg1   = 1971648 + 831 + 56 + 1 		-- cayo perico player 1 cut
CPCg2   = 1971648 + 831 + 56 + 2 		-- cayo perico player 2 cut
CPCg3   = 1971648 + 831 + 56 + 3		-- cayo perico player 3 cut
CPCg4   = 1971648 + 831 + 56 + 4 		-- cayo perico player 4 cut
GCg     = 2685444 + 6639 				-- global cut 						   		// Guide:   fVar1 = (fVar1 * (fVar2 / 100f));
CPBg    = FMg + 29211 					-- cayo perico bag  				   		// Tunable: HEIST_BAG_MAX_CAPACITY
DCCg1   = 1964849 + 1497 + 736 + 92 + 1 -- diamond casino player 1 cut
DCCg2   = 1964849 + 1497 + 736 + 92 + 2 -- diamond casino player 2 cut
DCCg3   = 1964849 + 1497 + 736 + 92 + 3 -- diamond casino player 3 cut
DCCg4   = 1964849 + 1497 + 736 + 92 + 4 -- diamond casino player 4 cut
DCg1    = 1960755 + 812 + 50 + 1        -- doomsday player 1 cut
DCg2    = 1960755 + 812 + 50 + 2        -- doomsday player 2 cut
DCg3    = 1960755 + 812 + 50 + 3        -- doomsday player 3 cut
DCg4    = 1960755 + 812 + 50 + 4        -- doomsday player 4 cut
SYRTg   = FMg + 33023 					-- salvage yard robbery type 		   		// Tunable: SALV23_VEHICLE_ROBBERY_0
SYCKg   = FMg + 33027                   -- salvage yard can keep 			   		// Tunable: SALV23_VEHICLE_ROBBERY_CAN_KEEP_0
SYVTg   = FMg + 33031                   -- salvage yard vehicle type    	   		// Tunable: SALV23_VEHICLE_ROBBERY_ID_0
SYVVg   = FMg + 33035                   -- salvage yard vehicle value   	   		// Tunable: SALV23_VEHICLE_ROBBERY_VALUE_0
SYWCg   = FMg + 33054                   -- salvage yard weekly cooldown 	   		// Tunable: SALV23_VEH_ROBBERY_WEEK_ID
SYCg1   = FMg + 33064                   -- salvage yard cooldown 			   		// Tunable: SALV23_VEH_ROB_COOLDOWN_TIME
SYCg2   = FMg + 33065                   -- salvage yard cooldown 			   		// Tunable: SALV23_CFR_COOLDOWN_TIME
SYCPg   = FMg + 33075                   -- salvage yard claim price 		   		// Tunable: SALV23_VEHICLE_CLAIM_PRICE
SYCPDg  = FMg + 33076                   -- salvage yard claim price discount   		// Tunable: SALV23_VEHICLE_CLAIM_PRICE_FORGERY_DISCOUNT
SYSMg   = FMg + 33043                   -- salvage yard salvage multiplier     		// Tunable: SALV23_VEHICLE_SALVAGE_VALUE_MULTIPLIER
SYSPg   = FMg + 34961                   -- salvage yard setup price 		   		// Tunable: 71522671
CMACLg1 = FMg + 26534                   -- casino master acquire chips limit 1 		// Tunable: VC_CASINO_CHIP_MAX_BUY
CMACLg2 = FMg + 26535                   -- casino master acquire chips limit 2 		// Tunable: VC_CASINO_CHIP_MAX_BUY_PENTHOUSE
HCVPg   = FMg + 22492                   -- hangar cargo vip payout 			   		// Tunable: SMUG_SELL_PRICE_PER_CRATE_MIXED
HCVRCg  = FMg + 22475                   -- hangar cargo vip ron's cut 		   		// Tunable: SMUG_SELL_RONS_CUT
CRg     = 2707357 + 36 					-- cash remover 					   		// Guide:   VEH_WHS_RP_A
NHCNSg  = FMg + 23969 					-- nightclub helper cargo n shipments  		// Tunable: BB_BUSINESS_BASIC_VALUE_CARGO
NHSGg   = FMg + 23963 					-- nightclub helper sporting goods 	   		// Tunable: BB_BUSINESS_BASIC_VALUE_WEAPONS
NHSAIg  = FMg + 23964 					-- nightclub helper s.a. imports 	   		// Tunable: BB_BUSINESS_BASIC_VALUE_COKE
NHPRg   = FMg + 23965 					-- nightclub helper pharmaceutical reseacrh // Tunable: BB_BUSINESS_BASIC_VALUE_METH
NHOPg   = FMg + 23966 					-- nightclub helper organic produce 		// Tunable: BB_BUSINESS_BASIC_VALUE_WEED
NHPNCg  = FMg + 23967 					-- nightclub helper printing n copying 		// Tunable: BB_BUSINESS_BASIC_VALUE_FORGED_DOCUMENTS
NHCCg   = FMg + 23968 					-- nightclub helper cash creation 			// Tunable: BB_BUSINESS_BASIC_VALUE_COUNTERFEIT_CASH
NHCKg1  = FMg + 24026 					-- nightclub helper cooldown killer 1 		// Tunable: BB_CLUB_MANAGEMENT_CLUB_MANAGEMENT_MISSION_COOLDOWN
NHCKg2  = FMg + 24067 					-- nightclub helper cooldown killer 2 		// Tunable: BB_SELL_MISSIONS_MISSION_COOLDOWN
NHCKg3  = FMg + 24068					-- nightclub helper cooldown killer 3 		// Tunable: BB_SELL_MISSIONS_DELIVERY_VEHICLE_COOLDOWN_AFTER_SELL_MISSION
CSg1    = 1575035 						-- change session (type) 1 					// Guide:   NETWORK::UGC_SET_USING_OFFLINE_CONTENT(false);
CSg2    = 1574589 						-- change session (switch) 2 				// Guide:   MP_POST_MATCH_TRANSITION_SCENE
CSg3    = 1574589 + 2 					-- change session (quit) 3 					// Guide:   MP_POST_MATCH_TRANSITION_SCENE
SCVPg   = FMg + 15732 					-- special cargo vip price 					// Tunable: EXEC_CONTRABAND_SALE_VALUE_THRESHOLD1
SCVBCg  = FMg + 15499 					-- special cargo vip buy cooldown  			// Tunable: EXEC_BUY_COOLDOWN
SCVScg  = FMg + 15500 					-- special cargo vip sell cooldown 			// Tunable: EXEC_SELL_COOLDOWN
BTEg1   = 4537455 						-- bypass transaction error 1
BTEg2   = 4537456 						-- bypass transaction error 2
BTEg3   = 4537457 						-- bypass transaction error 3
CLg     = 1964419 						-- cheap loop 								// Guide:   MPPLY_CASINO_MEM_BONUS
TTg     = 4537311 						-- trigger transaction
NLSCg   = FMg + 23680 					-- night loop safe capacity  				// Tunable: NIGHTCLUBMAXSAFEVALUE
NLISg   = FMg + 23657 					-- night loop income start 	 				// Tunable: NIGHTCLUBINCOMEUPTOPOP5
NLIEg   = FMg + 23676 					-- night loop income end	 				// Tunable: NIGHTCLUBINCOMEUPTOPOP100
ORg     = 1962237 						-- orbital refund 							// Guide:   ORB_CAN_QUIT1
AUg     = 4543384 + 1 					-- achievements unlocker 					// Guide:   PLAYER::HAS_ACHIEVEMENT_BEEN_PASSED(iParam0) && iParam1 == 1
CUg     = 2708057 						-- collectibles unlocker					// Guide:   cellphone_badger
AFo     = CUg + 209 					-- action figures offset
LDOo    = CUg + 593 					-- ld organics offset
PCo     = CUg + 210 					-- plating cards offset
SJo     = CUg + 211 					-- signal jammers offset
So      = CUg + 600 					-- snowmen offset
MPo     = CUg + 494 					-- movie props offset
JOLo    = CUg + 591 					-- jack o lanterns offset
SCCg    = FMg + 18919 					-- sex changer change appearance cooldown	// Tunable: CHARACTER_APPEARANCE_COOLDOWN
BUCg1   = FMg + 21264 					-- bunker unlocker cooldown 1				// Tunable: GR_RESEARCH_CAPACITY
BUCg2   = FMg + 21265 					-- bunker unlocker cooldown 2 				// Tunable: GR_RESEARCH_PRODUCTION_TIME
BUCg3   = FMg + 21266 					-- bunker unlocker cooldown 3 				// Tunable: GR_RESEARCH_UPGRADE_EQUIPMENT_REDUCTION_TIME
BUCg4   = FMg + 21267 					-- bunker unlocker cooldown 4 				// Tunable: GR_RESEARCH_UPGRADE_STAFF_REDUCTION_TIME
BUAg1   = FMg + 21268 					-- bunker unlocker additional 1 			// Tunable: GR_RESEARCH_MATERIAL_PRODUCT_COST
BUAg2   = FMg + 21269 					-- bunker unlocker additional 2 			// Tunable: GR_RESEARCH_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION
LSCMMg1 = FMg + 30958 					-- ls car meet multiplier 1 				// Tunable: TUNER_SPRINT_FIRST_TIME_BONUS_XP_MULTIPLIER
LSCMMg2 = FMg + 30987 					-- ls car meet multiplier 2 				// Tunable: TUNER_MERCH_PURCHASE_XP_MULTIPLIER
GSIg    = 1663174 						-- get supplies instantly 					// Guide:   OR_PSUP_DEL
GVLg    = 2652592 + 2671 + 1 			-- gun van location 						// Guide:   NETWORK::NETWORK_GET_NUM_PARTICIPANTS()
GVWSg   = FMg + 33273 					-- modify gun van weapon slot 				// Tunable: XM22_GUN_VAN_SLOT_WEAPON_TYPE_0
GVTSg   = FMg + 33295 					-- modify gun van throwable slot 1 			// Tunable: XM22_GUN_VAN_SLOT_THROWABLE_TYPE_0
GVWDg   = FMg + 33284 					-- modify gun van weapon slot 1 discount	// Tunable: XM22_GUN_VAN_SLOT_WEAPON_DISCOUNT_0
GVTDg   = FMg + 33299 					-- modify gun van throwable discount		// Tunable: XM22_GUN_VAN_SLOT_THROWABLE_DISCOUNT_0
GVADg   = FMg + 33303 					-- modify gun van armor discount 			// Tunable: XM22_GUN_VAN_SLOT_ARMOUR_DISCOUNT_0
GVSg    = FMg + 33309 					-- modify gun van skins for knife and bat 	// Tunable: 1490225691
EVg1    = FMg + 14700 					-- enable vehicles 1						// Tunable: ENABLE_LOWRIDER2_VIRGO3
EVg2    = FMg + 14705 					-- enable vehicles 2 						// Tunable: ENABLE_LOWRIDER2_SLAMVAN
EVg3    = FMg + 17352 					-- enable vehicles 3						// Tunable: ENABLE_BIKER_DEFILER
EVg4    = FMg + 17373 					-- enable vehicles 4						// Tunable: ENABLE_BIKER_RATBIKE
EVg5    = FMg + 18938 					-- enable vehicles 5						// Tunable: ENABLE_IE_VOLTIC2
EVg6    = FMg + 18962 					-- enable vehicles 6 						// Tunable: ENABLE_IE_TEMPESTA
EVg7    = FMg + 20828 					-- enable vehicles 7 						// Tunable: ENABLE_XA2
EVg8    = FMg + 20833 					-- enable vehicles 8 						// Tunable: ENABLE_NIGHTSHARK
EVg9    = FMg + 21598 					-- enable vehicles 9						// Tunable: ENABLE_ULTRALIGHT
EVg10   = FMg + 21617 					-- enable vehicles 10 						// Tunable: ENABLE_LAZER
EVg11   = FMg + 22540 					-- enable vehicles 11 						// Tunable: ENABLE_DELUXO
EVg12   = FMg + 22567 					-- enable vehicles 12 						// Tunable: ENABLE_KAMACHO
EVg13   = FMg + 23715 					-- enable vehicles 13 						// Tunable: ENABLE_HOTRING
EVg14   = FMg + 23730 					-- enable vehicles 14 						// Tunable: ENABLE_JESTER3
EVg15   = FMg + 23777 					-- enable vehicles 15 						// Tunable: ENABLE_TERBYTE
EVg16   = FMg + 23799 					-- enable vehicles 16 						// Tunable: ENABLE_HABANERO
EVg17   = FMg + 25366 					-- enable vehicles 17 						// Tunable: ENABLE_VEHICLE_TOROS
EVg18   = FMg + 25397 					-- enable vehicles 18 						// Tunable: ENABLE_VEHICLE_PARAGON
EVg19   = FMg + 26329 					-- enable vehicles 19 						// Tunable: ENABLE_VEHICLE_DEVESTE
EVg20   = FMg + 26330 					-- enable vehicles 20 						// Tunable: ENABLE_VEHICLE_VAMOS
EVg21   = FMg + 28169 					-- enable vehicles 21 						// Tunable: ENABLE_VEHICLE_FORMULA_PODIUM
EVg22   = FMg + 28191 					-- enable vehicles 22 						// Tunable: ENABLE_VEHICLE_BLAZER2
EVg23   = FMg + 28193 					-- enable vehicles 23 						// Tunable: ENABLE_VEHICLE_FORMULA
EVg24   = FMg + 28196 					-- enable vehicles 24 						// Tunable: ENABLE_VEHICLE_FORMULA2
EVg25   = FMg + 28201 					-- enable vehicles 25 						// Tunable: ENABLE_VEHICLE_IMORGEN
EVg26   = FMg + 28203 					-- enable vehicles 26 						// Tunable: ENABLE_VEHICLE_VSTR
EVg27   = FMg + 29156 					-- enable vehicles 27 						// Tunable: ENABLE_VEH_TIGON
EVg28   = FMg + 29162 					-- enable vehicles 28 						// Tunable: ENABLE_VEH_GAUNTLET5
EVg29   = FMg + 28828 					-- enable vehicles 29 						// Tunable: ENABLE_VEH_GLENDALE2
EVg30   = FMg + 28835 					-- enable vehicles 30 						// Tunable: ENABLE_VEH_DUKES3
EVg31   = FMg + 29589 					-- enable vehicles 31 						// Tunable: ENABLE_VEHICLE_TOREADOR
EVg32   = FMg + 29605 					-- enable vehicles 32 						// Tunable: ENABLE_VEHICLE_VERUS
EVg33   = FMg + 30305 					-- enable vehicles 33 						// Tunable: ENABLE_VEHICLE_TAILGATER2
EVg34   = FMg + 30321 					-- enable vehicles 34 						// Tunable: ENABLE_VEHICLE_COMET6
EVg35   = FMg + 31212 					-- enable vehicles 35 						// Tunable: ENABLE_VEHICLE_CHAMPION
EVg36   = FMg + 31226 					-- enable vehicles 36 						// Tunable: ENABLE_VEHICLE_BALLER7
EVg37   = FMg + 32412 					-- enable vehicles 37 						// Tunable: ENABLE_VEHICLE_OMNISEGT
EVg38   = FMg + 32430 					-- enable vehicles 38 						// Tunable: ENABLE_VEHICLE_SENTINEL4
EVg39   = FMg + 33374 					-- enable vehicles 39 						// Tunable: ENABLE_VEHICLE_ENTITY3
EVg40   = FMg + 33389 					-- enable vehicles 40 						// Tunable: ENABLE_VEHICLE_BOOR
EVg41   = FMg + 35172 					-- enable vehicles 41 						// Tunable: ENABLE_VEHICLE_FR36
EVg42   = FMg + 35191 					-- enable vehicles 42 						// Tunable: ENABLE_VEHICLE_BENSON2
EVg43   = FMg + 35405 					-- enable vehicles 43 						// Tunable: ENABLE_VEHICLE_YOSEMITE1500
EVg44   = FMg + 34323 					-- enable vehicles 44 						// Tunable: ENABLE_VEHICLE_EXEMPLAR
EVg45   = FMg + 34599 					-- enable vehicles 45 						// Tunable: ENABLE_VEHICLE_MONSTER
EVg46   = FMg + 34605 					-- enable vehicles 46 						// Tunable: ENABLE_VEHICLE_L35
EVg47   = FMg + 34617 					-- enable vehicles 47 						// Tunable: ENABLE_VEHICLE_BRIGHAM
EDVBg   = 2707347 						-- enable dripfeed vehicles bypass
EDVg1   = FMg + 35629 					-- enable dripfeed vehicles 1 				// Tunable: ENABLE_VEHICLE_ENVISAGE
EDVg2   = FMg + 35643 					-- enable dripfeed vehicles 2 				// Tunable: ENABLE_VEHICLE_PIZZABOY

--Locals--

FMCSHl   = 3236  		    -- fm_mission_controller script host 	  	   // Guide: MP_Reduce_Score_For_Emitters_Scene
FMC20SHl = 19376 		    -- fm_mission_controller_2020 script host 	   // Guide: bVar0 = NETWORK::NETWORK_IS_HOST_OF_THIS_SCRIPT();
AIFl1    = 38397 			-- agency instant finish 1 (outdated)
AIFl2    = 39772 			-- agency instant finish 2 (outdated)
ASRBl    = 383 			    -- auto shop reload board
ASIFl1   = 50150 + 1  	    -- auto shop instant finish 1
ASIFl2   = 50150 + 1770 + 1 -- auto shop finish 2
AIFl3    = 19746  		    -- apartment instant finish 1
AIFl4    = 28365 + 1 		-- apartment instant finish 2
AIFl5    = 31621 + 69 		-- apartment instant finish 3
AFHl     = 11778 + 24 		-- apartment fleeca hack
AFDl     = 10069 + 11 		-- apartment fleeca drill
CPRSl    = 1546 			-- cayo perico reload screen
CPFHl    = 24880 			-- cayo perico fingerprint hack			 	   // Guide: practice
CPPCCl   = 30939 + 3		-- cayo perico plasma cutter cut 			   // Guide: Overheat_Loop
CPSTCl   = 29700 			-- cayo perico drainage pipe cut			   // Guide: UT_WELD_PROMPT
CPIFl1   = 50150 			-- cayo perico instant finish 1
CPIFl2   = 50150 + 1770 + 1 -- cayo perico instant finish 2
DCRBl    = 185 			    -- diamond casino reload board
DCAl     = 10255 		    -- diamond casino autograbber 			 	   // Guide: DLC_HEIST_MINIGAME_PAC_CASH_GRAB_SCENE
DCASl    = 10255 + 14 	    -- diamond casino autograbber speed
DCFHl    = 53019 		    -- diamond casino fingerprint hack		 	   // Guide: DLC_HEIST_MINIGAME_PAC_CASH_GRAB_SCENE
DCKHl    = 54085 		    -- diamond casino keypad hack
DCDVDl1  = 10109 + 7 	    -- diamond casino drill vault door 1 	 	   // Guide: DLC_HEIST_MINIGAME_FLEECA_DRILLING_SCENE
DCDVDl2  = 10109 + 37 	    -- diamond casino drill vault door 2
DDBHl    = 1514 			-- doomsday data breaches hack
DDSHl    = 1271 + 135 		-- doomsday doomsday scenario hack
DIFl1    = 19746	 		-- doomsday instant finish 1
DIFl2    = 19746 + 1741 	-- doomsday instant finish 2
DIFl3    = 27489 + 859 + 18 -- doomsday instant finish 3
DIFl4    = 31621 + 69 		-- doomsday instant finish 4
DIFl5    = 31621 + 97 		-- doomsday instant finish 5
SYRSl    = 512 				-- salvage yard reload screen
BCISl    = 1211 + 774 		-- bunker crash instant sell	// Local_1211.f_774
CMBJCl   = 116 				-- casino master bjackjack cards
CMBJDl   = 846 				-- casino master bjackjack decks
CMBJPTl  = 1776 			-- casino master bjackjack player's table
CMBJPTSl = 8 				-- casino master bjackjack player's table size
CMGLPl1  = 280 + 14 		-- casino master lucky wheel win state
CMGLPl2  = 280 + 45 		-- casino master lucky wheel prize state
CMPTl    = 749 				-- casino master poker table
CMPTSl   = 9 				-- casino master poker table size
CMPCl    = 116				-- casino master poker cards
CMPCDl   = 168 				-- casino master poker current deck
CMPACl   = 1038 			-- casino master poker anti cheat
CMPACDl  = 799 				-- casino master poker anti cheat deck
CMPDSl   = 55 				-- casino master poker deck size
CMRMTl   = 124 				-- casino master roulette master table
CMROTl   = 1357				-- casino master roulette outcomes table
CMRBTl   = 153 				-- casino master roulette ball table
CMSRRTl  = 1348 			-- casino master slots random results table
HCVISl1  = 1934 + 1078 		-- hangar cargo vip instant sell 1 			   // Guide: SMOT_HLPDROP2
HCVISl2  = 1934 + 768 		-- hangar cargo vip instant sell 2			   // Guide: MP_MISSION_COUNTDOWN_SOUNDSET
SCVAl1   = 741 				-- special cargo vip appsecuroserv 1 		   // Guide: MP_WH_SELL
SCVAl2   = 742 				-- special cargo vip appsecuroserv 2 		   // Guide: MP_WH_SELL
SCVAl3   = 560 				-- special cargo vip appsecuroserv 3 		   // Guide: MP_WH_SELL
SCVAl4   = 1138 			-- special cargo vip additional 1
SCVAl5   = 598 				-- special cargo vip additional 2
SCVAl6   = 1127 			-- special cargo vip additional 3
SCVMTl   = 545 + 7 			-- special cargo vip mission type	// Local_545.f_7
SCVISl   = 545 + 1 			-- special cargo vip instant sell	// Local_545.f_1
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
	
	-- GoldenGetsMenu Scripts --
	
	AMP 		= "am_mp_peds"
	GBCS 		= "gb_biker_contraband_sell"
	FCALS 		= "fm_content_acid_lab_sell"
	
	-- GoldenGetsMenu Globals 1.69 --
	
	--SCSMg 	= FMg + 15624			-- Special Cargo Sell Mission global
	--VCSMg 	= FMg + 19100			-- Vehicle Cargo Source Mission global 						// Tunable: IMPEXP_DISABLE_PARKED_CAR											// int *(false)* 		
	--VCPPSRg 	= FMg + 19170 + 2	 	-- Vehicle Cargo Payment Price Standard Range global
	--VCPPMRg 	= FMg + 19170 + 1	 	-- Vehicle Cargo Payment Price Mid Range global
	--VCPPTRg 	= FMg + 19170		 	-- Vehicle Cargo Payment Price Top Range global
	--MCBSDg 	= FMg + 18764		 	-- Motorcycle Club Business Supply Delay global 			// Tunable: BIKER_PURCHASE_SUPPLIES_DELAY										// int *(600ms)*
	--MCBRCg 	= FMg + 18763			-- Motorcycle Club Business Resupply Cost global
	--MCBSMg 	= FMg + 18874 			-- Motorcycle Club Business Sales Multiplier global
	--MCBSg 	= FMg + 18356		 	-- Motorcycle Club Business Sell global
	--BRCPT 	= FMg + 21249			-- Bunker Resupply Cost & Produce Time
	--BSDg 		= FMg + 21274			-- Bunker Supply Delay global 								// Tunable: GR_PURCHASE_SUPPLIES_DELAY											// int *(600ms)*
	--HASMg 	= FMg + 22472			-- Hangar Air Sell Mission global
	--ASg 		= FMg + 28751			-- Arcade Safe global
	--NGg 		= FMg + 23948			-- Nightclub Goods global
	--NSTCg 	= FMg + 24074			-- Nightclub Sell Tony's Cut global
	--NSMg 		= FMg + 24047			-- Nightclub Sell Mission global 							// Tunable: BB_SELL_MISSIONS_WEIGHTING_SINGLE_DROP
	--ASCCVC 	= FMg + 30421		 	-- Auto Shop Customer Cars Vehicle Cooldown					// Tunable: TUNER_AUTO_SHOP_CLIENT_VEH_SPAWN_COOLDOWN_POSIX_TIME				// int *(2880ms)*
	--ASCCET 	= FMg + 30427		 	-- Auto Shop Customer Cars Extra Time						// Tunable: TUNER_AUTO_SHOP_STAFF_DELIVERY_TIME_SEC								// int *(600ms)*
	ASCCC 	= 1561590376 --FMg + 31869			-- Auto Shop Customer Cars % Chance							// Tunable: 
	--ASCC2LC = FMg + 30423		 		-- Auto Shop Customer Cars 2 Lifts Cooldown					// Tunable: TUNER_AUTO_SHOP_CLIENT_VEH_SPAWN_COOLDOWN_POSIX_TIME_MULTIPLIER		// float *(0.500)*
	--ASCCDP 	= FMg + 30428			-- Auto Shop Customer Cars Delivery Payout					// Tunable: TUNER_AUTO_SHOP_STAFF_DELIVERY_BONUS_LOW
	--ASCCDDP = FMg + 30428 + 3	 		-- Auto Shop Customer Cars Displayed Delivery Payout		// Tunable: TUNER_CLIENT_VEHICLE_DELIVERY_LOW_PAYMENT							// int *(20000)*
	
	--VIPWCg 	= FMg + 13059 			-- VIP Work Cooldown global 								// Tunable: GB_COOLDOWN_UNTIL_NEXT_BOSS_WORK									// int *(300000ms)*
	--MCWCg 	= FMg + 18571 			-- MC Club Work Cooldown global 							                                                  								// int *(180000ms)*
	--CEOVCg 	= FMg + 12813 			-- CEO Vehicle Cooldown global 								// Tunable: GB_CALL_VEHICLE_COOLDOWN              								// int *(120000ms)*
	--VCSCg 	= FMg + 19077 			-- Vehicle Cargo Source Cooldown global 					// Tunable: IMPEXP_STEAL_COOLDOWN                 								// int *(180000ms)*
	--VCSCg1 	= FMg + 19153 			-- Vehicle Cargo Sell Cooldown global 1 					// Tunable: IMPEXP_SELL_COOLDOWN                  								// int *(180000ms)*
	--VCSCg2 	= FMg + 19432 			-- Vehicle Cargo Sell Cooldown global 2 					                                                  								// int_1 *(1200000ms)*
	--HCSCg 	= FMg + 22433 			-- Hangar Cargo Source Cooldown global 						// Tunable: SMUG_STEAL_EASY_COOLDOWN_TIMER        								// int_1 *(120000ms)*
	--HCSCg1 	= FMg + 22474 			-- Hangar Cargo Sell Cooldown global 						                                                  								// int *(180000ms)*
	--NSTCg 	= FMg + 31914 			-- Nightclub Source Truck Cooldown global 					                                                  								// int *(960000ms)*
	--NEMGCg 	= FMg + 31892 			-- Nightclub Export Mixed Goods Cooldown global				// Tunable: EXPORT_CARGO_LAUNCH_CD_TIME											// int *(2880ms)*
	--NTCg 		= FMg + 31882 			-- Nightclub Troublemaker Cooldown global 																									// int *(50%)*
	--TBJCg	 	= FMg + 24208 			-- Terrorbyte Between Jobs Cooldown global 					// Tunable: BB_HACKER_WORK_CLIENT_WORK_GLOBAL_COOLDOWN                  		// int *(300000ms)*
	--TRIPCg 	= FMg + 24209 			-- Terrorbyte Robbery in Progress Cooldown global 			// Tunable: BB_HACKER_WORK_CLIENT_WORK_COOLDOWN_BANK_JOB                		// int *(1800000ms)*
	--TDSCg1 	= FMg + 24210 			-- Terrorbyte Data Sweep Cooldown global 					// Tunable: BB_HACKER_WORK_CLIENT_WORK_COOLDOWN_DATA_HACK               		// int *(1800000ms)*
	--TTDCg	 	= FMg + 24211 			-- Terrorbyte Targeted Data Cooldown global 				// Tunable: BB_HACKER_WORK_CLIENT_WORK_COOLDOWN_INFILTRATION            		// int *(1800000ms)*
	--TDSCg2 	= FMg + 24212 			-- Terrorbyte Diamond Shopping Cooldown global 				// Tunable: BB_HACKER_WORK_CLIENT_WORK_COOLDOWN_JEWEL_STORE_GRAB        		// int *(1800000ms)*
	--???								--															// Tunable: BB_HACKER_WORK_HACKER_CHALLENGE_COOLDOWN_GLOBAL_COOLDOWN    		// int *(180000ms)*
	--TCPCg	 	= FMg + 24214 			-- Terrorbyte Collectors Pieces Cooldown global 			// Tunable: BB_HACKER_WORK_HACKER_CHALLENGE_COOLDOWN_SECURITY_VANS				// int *(600000ms)*										-- https://www.unknowncheats.me/forum/3496393-post32.html
	--TDBCg	 	= FMg + 24215 			-- Terrorbyte Deal Breaker Cooldown global 					// Tunable: BB_HACKER_WORK_HACKER_CHALLENGE_COOLDOWN_TARGET_PURSUIT				// int *(600000ms)*										-- https://www.unknowncheats.me/forum/3496393-post32.html
	--MBRWCg 	= FMg + 26794 			-- Mrs Baker Request Work Cooldown global 					// Tunable: VC_WORK_REQUEST_COOLDOWN                                    		// int *(180000ms)*
	--ASCCg 	= FMg + 31038 			-- Agency Security Contract Cooldown global					// Tunable: FIXER_SECURITY_CONTRACT_COOLDOWN_TIME								// int *(300000ms)*
	--APHACg 	= FMg + 31118 			-- Agency Payphone Hit Assassination Cooldown global		// Tunable: REQUEST_FRANKLIN_PAYPHONE_HIT_COOLDOWN								// int *(600000ms)*
	
	--LWCg1 	= FMg + 26746 			-- lucky wheel cooldown global 1 																								-- https://www.unknowncheats.me/forum/3531489-post51.html
	--LWCg2 	= FMg + 26747 			-- lucky wheel cooldown global 2 																								-- https://www.unknowncheats.me/forum/3531489-post51.html
	
	--SHRg 		= FMg + 24836 			-- Stone Hatchet Rampage global
	
	-- GoldenGetsMenu Locals 1.69 --
	
	SCSIl 	= 1942640				-- Special Cargo Special Item local
	SCUCl 	= 1942486				-- Special Cargo Unique Cargo local
	SCISCAl = 545 + 595				-- Special Cargo Instant Sell Crates Amount local	// Local_545.f_595
	MCBSTl 	= 704 + 17			 	-- Motorcycle Club Business Shipment Type local
	MCBISl 	= 704 + 122				-- Motorcycle Club Business Instant Sell local
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
	
	-- GoldenGetsMenu Global Variables --
	
	INT_MAX_TIME = 2000000000 -- max time integer value
	INT_MAX_TIME2 = 9999999 -- max time integer value 2
	INT_MAX_TIME3 = 99999 -- max time integer value 3
	
------------------------------------

        function SET_PACKED_INT_TUNABLE_GLOBAL(start_hash, end_hash, value)
            for i = tunables.set_in(start_hash), tunables.set_in(end_hash) do
                globals.set_int(FMg + i, value)
            end
        end

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

function IS_HELP_MSG_DISPLAYED(label) -- Credit goes to @jerry1234508 on Discord
    HUD.BEGIN_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED(label)
    return HUD.END_TEXT_COMMAND_IS_THIS_HELP_MESSAGE_BEING_DISPLAYED(0)
end

------------------------------------

WalletValue = 0
WalletValue = math.min(transactionManager:GetWalletBalance(), WalletValue)
BankValue = 0
BankValue = math.min(transactionManager:GetBankBalance(), BankValue)

CEOCash = tunables.get_int("EXEC_VIP2_BODYGUARD_WAGE_CAP")
CEORP = tunables.get_int("EXEC_VIP2_PROXIMITY_RP_BONUS")
AssociateWages = tunables.get_int("GB_WAGES_AMOUNT")

GoldenGetsMenu:add_imgui(function()
    if ImGui.Button("Switch CEO/President") then
		if NETWORK.NETWORK_IS_HOST() then
			local PlayerCharacter = stats.get_int("MPPLY_LAST_MP_CHAR") --????ID
			--playerOrganizationTypeRaw: {Global_1886967[PLAYER::PLAYER_ID() /*609*/].f_10.f_429}  GLOBAL  
			--playerOrganizationType: {('1886967', '*609', '10', '429', '1')}  GLOBAL  global + (pid *pidmultiplier) + offset + offset + offset (values: 0 = CEO and 1 = MOTORCYCLE CLUB) 
			if locals_b_get_int(SupportBuild, 1887305 + PlayerCharacter*609 + 10 + 430 + 1) == 0 then --1886967+PlayerCharacter*609+10+429+1 = 0 ?CEO =1??????
				locals_v_set_int(SupportBuild, 1887305 + PlayerCharacter*609 + 10 + 430 + 1, 1)
				gui.show_message("Switch as a President","Become a President of your own Motorcycle Club")
			else
				if locals_b_get_int(SupportBuild, 1887305 + PlayerCharacter*609 + 10 + 430 + 1) == 1 then
					locals_v_set_int(SupportBuild, 1887305 + PlayerCharacter*609 + 10 + 430 + 1, 0)
					gui.show_message("Switch as a CEO","Become a CEO of your own Organization")
				else
					gui.show_message("You are Not the Boss","You Must Register as a CEO or President")
				end
			end
		else
			gui.show_error("GoldenGets Menu - Error","You are not a host in session")
		end
	end
    if ImGui.IsItemHovered() then	
        ImGui.SetTooltip("May not work in public session")
    end
	--ImGui.SameLine()
	--AutoCEOPresident = ImGui.Checkbox("Auto CEO/President##AutoCEOPresident", AutoCEOPresident)
	--if ImGui.IsItemHovered() then
	--	ImGui.SetTooltip("Detects the cases that you should become a CEO/MC\nto start some heist/mission, make you one of it.")
	--end
	--
	--BecomeBoss = ImGui.Checkbox("> Become a Boss##BecomeBoss", BecomeBoss)
	--if ImGui.IsItemHovered() then
	--	ImGui.SetTooltip("Toggle to expand for customize a become a boss")
	--end
	--if BecomeBoss then
	--	BossLimit = ImGui.Checkbox("Disable Boss Limit##BossLimit", BossLimit)
	--	if ImGui.IsItemHovered() then
	--		ImGui.SetTooltip("While disable boss limits in the session")
	--	end
	--	CEOCash, drag = ImGui.DragInt("CEO Cash##CEOCash", CEOCash, 100, 10000, 100000)
	--	--if drag then
	--	--	tunables.set_int("VC_CASINO_CHIP_MAX_BUY", CEOCash)
	--	--end
	--	if ImGui.IsItemHovered() then
	--		ImGui.SetTooltip("CEO wage cap")
	--	end
	--	CEORP, drag = ImGui.DragInt("CEO RP##CEORP", CEORP, 100, 200, 100000)
	--	--if drag then
	--	--	tunables.set_int("VC_CASINO_CHIP_MAX_BUY", CEORP)
	--	--end
	--	if ImGui.IsItemHovered() then
	--		ImGui.SetTooltip("CEO Associate RP gain they have to\nbe in your proximity to gain RP.")
	--	end
	--	AssociateWages, drag = ImGui.DragInt("Associate Wages##AssociateWages", AssociateWages, 100, 10000, 100000)
	--	--if drag then
	--	--	tunables.set_int("VC_CASINO_CHIP_MAX_BUY", AssociateWages)
	--	--end
	--	if ImGui.IsItemHovered() then
	--		ImGui.SetTooltip("Controls how much your associates get paid")
	--	end
	--	AssociateWagesTime = ImGui.Checkbox("Disable Associate Wages Time##AssociateWagesTime", AssociateWagesTime)
	--	if ImGui.IsItemHovered() then
	--		ImGui.SetTooltip("Time between pays")
	--	end
	--	AssociateWagesRadius = ImGui.Checkbox("Extend Distance Wages##AssociateWagesRadius", AssociateWagesRadius)
	--	if ImGui.IsItemHovered() then
	--		ImGui.SetTooltip("Your associate has to be in that\nradius to get RP and cash")
	--	end
	--	AssociateWagesIdle = ImGui.Checkbox("Extend Idle Wages##AssociateWagesIdle", AssociateWagesIdle)
	--	if ImGui.IsItemHovered() then
	--		ImGui.SetTooltip("They stop getting paid if they stay\nidle for over this amount of time")
	--	end
	--end
	
	ImGui.SeparatorText("Device Access")
	
	if ImGui.Button("Start Internet##Device") then
		script.run_in_fiber(function (script)
			start_script('appInternet', 4592, script)
		end)
	end
	ImGui.SameLine()
	if NETWORK_SESSION_STARTED() then
		if ImGui.Button("Start Arcade Laptop##Device") then
			script.run_in_fiber(function (script)
				start_script('appArcadeBusiness', 4592, script)
			end)
		end
		if ImGui.IsItemHovered() then
			ImGui.SetTooltip("Must be in your arcade interior. If there is a bug, press 'Start Internet'")
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
	
			globals_v_set_float(SupportVersion, "fm_mission_controller_2020", 30939 + 3, 100) --3274 ????????
	
			if locals_v_get_int(SupportVersion, "fm_mission_controller_2020", 30914) == 3 then --?????? --Input_Code_Enter_Correct
				locals_v_set_int(SupportVersion, "fm_mission_controller_2020", 30915, 2) --3274 --???????
				globals_v_set_float(SupportVersion, "fm_mission_controller_2020", 30915 + 1 + 1, locals_v_get_int(SupportVersion, "fm_mission_controller_2020", 30915 + 1 + 1 + 1)) --3274 --???????????
				globals_v_set_float(SupportVersion, "fm_mission_controller_2020", 30915 + 1 + 1 + 2, locals_v_get_int(SupportVersion, "fm_mission_controller_2020", 30915 + 1 + 1 + 1 + 2)) --3274 --???????????
				globals_v_set_float(SupportVersion, "fm_mission_controller_2020", 30915 + 1 + 1 + 4, locals_v_get_int(SupportVersion, "fm_mission_controller_2020", 30915 + 1 + 1 + 1 + 4)) --3274 --???????????
				PAD.SET_CONTROL_VALUE_NEXT_FRAME(2, 237, 1.0) --????
			end
		
			local_H4_hack_v = locals_v_get_int(SupportVersion, "fm_mission_controller_2020", local_H4_hack) --???finger clone
			if (local_H4_hack_v & (1 << 0)) == 0 then
				local_H4_hack_v = local_H4_hack_v ~ (1 << 0)
				locals_v_set_int(SupportVersion, "fm_mission_controller_2020", local_H4_hack, local_H4_hack_v)
			end
		end
				
		if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_mission_controller")) ~= 0 then --????
			globals_v_set_float(SupportVersion, "fm_mission_controller", 10069 + 11, 1) --3274 ??????
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
		--if NETWORK_SESSION_STARTED() then
			if ImGui.BeginTabItem("Funds") then
				if NETWORK_SESSION_STARTED() then
					ImGui.Text("$Wallet: " .. transactionManager:GetWalletBalance())
					
					if ImGui.Button("Deposit All Money To $Bank") then
						character = transactionManager:GetCharacter()
						wallet = transactionManager:GetWalletBalance()
						NETSHOPPING.NET_GAMESERVER_TRANSFER_WALLET_TO_BANK(character, wallet)
					end
					
					WalletValue = ImGui.DragInt("##WalletValue", WalletValue, 1, 0, transactionManager:GetWalletBalance())
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
					
					BankValue = ImGui.DragInt("##BankValue", BankValue, 1, 0, transactionManager:GetBankBalance())
					if ImGui.Button("Withdraw Amount") then
						character = transactionManager:GetCharacter()
						NETSHOPPING.NET_GAMESERVER_TRANSFER_BANK_TO_WALLET(character, BankValue)
					end
				else
					ImGui.Text("\nUnavailable in Single Player.\n\n")
				end
				ImGui.EndTabItem()
			end
			
			if ImGui.BeginTabItem("Screen") then
				if NETWORK_SESSION_STARTED() then
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("You must register as a boss, otherwise some mission will not work. If you get a\nblackscreen on exterior, go to Settings > Debug > Misc > 'Remove Black Screen'")
					end
					
					if ImGui.Button("Start Master Control Terminal##Computer") then
						script.run_in_fiber(function (script)
							start_script('appArcadeBusinessHub', 1424, script)
						end)
					end
					
					if ImGui.TreeNode("CEO Business Screen") then
						if ImGui.Button("Start Securo Serv Computer##Computer") then
							script.run_in_fiber(function (script)
								start_script('appSecuroServ', 1424, script)
							end)
						end
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Must be in your ceo office interior. It will damage the screen if you buy a warehouse")
						end
						
						if ImGui.Button("Start Vehicle Cargo Desktop##Computer") then
							script.run_in_fiber(function (script)
								start_script('appImportExport', 1424, script)
							end)
						end
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Must be in your vehicle warehouse interior")
						end
						
						ImGui.Separator()
						
						ImGui.TreePop()
					end
					
					if ImGui.TreeNode("MC Business Screen") then
						if ImGui.Button("Start Clubhouse Desktop##Computer") then
							script.run_in_fiber(function (script)
								globals.set_int(1962105)
								start_script('appBikerBusiness', 4592, script)
							end)
						end
						
						if ImGui.Button("Start Cocaine Lockup Desktop##Computer") then
							script.run_in_fiber(function (script)
								globals.set_int(global_computer_type, 8)
								start_script('appBikerBusiness', 4592, script)
							end)
						end
						
						if ImGui.Button("Start Methamphetamine Lab Desktop##Computer") then
							script.run_in_fiber(function (script)
								globals.set_int(global_computer_type, 6)
								start_script('appBikerBusiness', 4592, script)
							end)
						end
						
						if ImGui.Button("Start Weed Farm Desktop##Computer") then
							script.run_in_fiber(function (script)
								globals.set_int(global_computer_type, 7)
								start_script('appBikerBusiness', 4592, script)
							end)
						end
						
						if ImGui.Button("Start Counterfeit Cash Factory Desktop##Computer") then
							script.run_in_fiber(function (script)
								globals.set_int(global_computer_type, 9)
								start_script('appBikerBusiness', 4592, script)
							end)
						end
						
						if ImGui.Button("Start Document Forgery Desktop##Computer") then
							script.run_in_fiber(function (script)
								globals.set_int(global_computer_type, 10)
								start_script('appBikerBusiness', 4592, script)
							end)
						end
						
						ImGui.Separator()
						
						ImGui.TreePop()
					end
					
					if ImGui.Button("Start Bunker Desktop##Computer") then
						script.run_in_fiber(function (script)
							start_script('appBunkerBusiness', 1424, script)
						end)
					end
					
					if ImGui.Button("Start Hangar Computer##Computer") then
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
				--if NETWORK_SESSION_STARTED() then
					All_Cooldowns = AllCooldowns
					AllCooldowns = ImGui.Checkbox("All Cooldowns##AllCooldowns", AllCooldowns)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Enable/Disable all 'Cooldowns'")
					end
					if AllCooldowns ~= All_Cooldowns then
						AllJobCooldowns = AllCooldowns
						VIPMCWorkChallengeCooldown = AllCooldowns
						VIPMCWorkChallengeDuration = AllCooldowns
						MCBikerBarMissionCooldown = AllCooldowns
						TerrorbyteClientJobCooldown = AllCooldowns
						TerrorbyteClientJobDuration = AllCooldowns
						CasinoWorkCooldown = AllCooldowns
						AgencyCooldown = AllCooldowns
						DaxWorkCooldown = AllCooldowns
						DispatchWorkCooldown = AllCooldowns
						AllBusinessCooldowns = AllCooldowns
						SpecialCargoCooldown = AllCooldowns
						SpecialCargoSourceCooldown = AllCooldowns
						SpecialCargoSellCooldown = AllCooldowns
						SpecialCargoGlobalSignal = AllCooldowns
						SpecialCargoDuration = AllCooldowns
						VehicleCargoCooldown = AllCooldowns
						VehicleCargoSourceCooldown = AllCooldowns
						VehicleCargoSellCooldown = AllCooldowns
						VehicleCargoGlobalSignal = AllCooldowns
						VehicleCargoDuration = AllCooldowns
						MCBusinessGlobalSignal = AllCooldowns
						MCBusinessDuration = AllCooldowns
						BunkerGlobalSignal = AllCooldowns
						BunkerDuration = AllCooldowns
						HangarCargoCooldown = AllCooldowns
						HangarCargoSourceCooldown = AllCooldowns
						HangarCargoSellCooldown = AllCooldowns
						HangarCargoGlobalSignal = AllCooldowns
						HangarCargoDuration = AllCooldowns
						NightclubCooldown = AllCooldowns
						NightclubGlobalSignal = AllCooldowns
						NightclubDuration = AllCooldowns
						AllOtherCooldowns = AllCooldowns
						RequestVehicleCooldown = AllCooldowns
						ServiceVehiclesCooldown = AllCooldowns
						CEOAbilitiesCooldown = AllCooldowns
						CEOVehiclesCooldown = AllCooldowns
						ArenaWheelCooldown = AllCooldowns
						SpinLuckyWheelCooldown = AllCooldowns
						AllMiscCooldowns = AllCooldowns
						MCClientVehicleCooldown = AllCooldowns
						BunkerExcessWeaponCooldown = AllCooldowns
						NightclubTroublemakerCooldown = AllCooldowns
						AutoShopClientVehicleCooldown = AllCooldowns
						AllCooldowns31 = true
					else
						AllCooldowns31 = false
					end
					if not AllCooldowns31 then
						AllCooldowns = AllJobCooldowns
						and VIPMCWorkChallengeCooldown
						and VIPMCWorkChallengeDuration
						and MCBikerBarMissionCooldown
						and TerrorbyteClientJobCooldown
						and TerrorbyteClientJobDuration
						and CasinoWorkCooldown
						and AgencyCooldown
						and DaxWorkCooldown
						and DispatchWorkCooldown
						and AllBusinessCooldowns
						and SpecialCargoCooldown
						and SpecialCargoSourceCooldown
						and SpecialCargoSellCooldown
						and SpecialCargoGlobalSignal
						and SpecialCargoDuration
						and VehicleCargoCooldown
						and VehicleCargoSourceCooldown
						and VehicleCargoSellCooldown
						and VehicleCargoGlobalSignal
						and VehicleCargoDuration
						and MCBusinessGlobalSignal
						and MCBusinessDuration
						and BunkerGlobalSignal
						and BunkerDuration
						and HangarCargoCooldown
						and HangarCargoSourceCooldown
						and HangarCargoSellCooldown
						and HangarCargoGlobalSignal
						and HangarCargoDuration
						and NightclubCooldown
						and NightclubGlobalSignal
						and NightclubDuration
						and AllOtherCooldowns
						and RequestVehicleCooldown
						and ServiceVehiclesCooldown
						and CEOAbilitiesCooldown
						and CEOVehiclesCooldown
						and ArenaWheelCooldown
						and SpinLuckyWheelCooldown
						and AllMiscCooldowns
						and MCClientVehicleCooldown
						and BunkerExcessWeaponCooldown
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
						VIPMCWorkChallengeDuration = AllJobCooldowns
						MCBikerBarMissionCooldown = AllJobCooldowns
						TerrorbyteClientJobCooldown = AllJobCooldowns
						TerrorbyteClientJobDuration = AllJobCooldowns
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
						and	VIPMCWorkChallengeDuration
						and MCBikerBarMissionCooldown
						and TerrorbyteClientJobCooldown
						and TerrorbyteClientJobDuration
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
						ImGui.SameLine() ImGui.Dummy(79, 1) ImGui.SameLine()
						VIPMCWorkChallengeDuration = ImGui.Checkbox("Extend Timers##VIPMCWorkChallengeDuration", VIPMCWorkChallengeDuration)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Long duration vip/mc work and challenge on interaction menu")
						end
						
						MCBikerBarMissionCooldown = ImGui.Checkbox("MC Biker Bar Mission##MCBikerBarMissionCooldown", MCBikerBarMissionCooldown)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Remove short cooldown clubhouse mission")
						end
						
						TerrorbyteClientJobCooldown = ImGui.Checkbox("Terrorbyte Client Job##TerrorbyteClientJobCooldown", TerrorbyteClientJobCooldown)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Remove cooldown terrorbyte client jobs mission")
						end
						ImGui.SameLine() ImGui.Dummy(110, 1) ImGui.SameLine()
						TerrorbyteClientJobDuration = ImGui.Checkbox("Extend Timers##TerrorbyteClientJobDuration", TerrorbyteClientJobDuration)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Long duration terrorbyte client jobs mission")
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
						SpecialCargoGlobalSignal = AllBusinessCooldowns
						SpecialCargoDuration = AllBusinessCooldowns
						VehicleCargoCooldown = AllBusinessCooldowns
						VehicleCargoSourceCooldown = AllBusinessCooldowns
						VehicleCargoSellCooldown = AllBusinessCooldowns
						VehicleCargoGlobalSignal = AllBusinessCooldowns
						VehicleCargoDuration = AllBusinessCooldowns
						MCBusinessGlobalSignal = AllBusinessCooldowns
						MCBusinessDuration = AllBusinessCooldowns
						BunkerGlobalSignal = AllBusinessCooldowns
						BunkerDuration = AllBusinessCooldowns
						HangarCargoCooldown = AllBusinessCooldowns
						HangarCargoSourceCooldown = AllBusinessCooldowns
						HangarCargoSellCooldown = AllBusinessCooldowns
						HangarCargoGlobalSignal = AllBusinessCooldowns
						HangarCargoDuration = AllBusinessCooldowns
						NightclubCooldown = AllBusinessCooldowns
						NightclubGlobalSignal = AllBusinessCooldowns
						NightclubDuration = AllBusinessCooldowns
						AllBusinessCooldowns28 = true
					else
						AllBusinessCooldowns28 = false
					end
					if not AllBusinessCooldowns28 then
						AllBusinessCooldowns = SpecialCargoCooldown
						and SpecialCargoSourceCooldown
						and SpecialCargoSellCooldown
						and SpecialCargoGlobalSignal
						and SpecialCargoDuration
						and VehicleCargoCooldown
						and VehicleCargoSourceCooldown
						and VehicleCargoSellCooldown
						and VehicleCargoGlobalSignal
						and VehicleCargoDuration
						and MCBusinessGlobalSignal
						and MCBusinessDuration
						and BunkerGlobalSignal
						and BunkerDuration
						and HangarCargoCooldown
						and HangarCargoSourceCooldown
						and HangarCargoSellCooldown
						and HangarCargoGlobalSignal
						and HangarCargoDuration
						and NightclubCooldown
						and NightclubGlobalSignal
						and NightclubDuration
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
						ImGui.SameLine() ImGui.Dummy(-9, 1) ImGui.SameLine()
						SpecialCargoGlobalSignal = ImGui.Checkbox("Extend Global Signal##SpecialCargoGlobalSignal", SpecialCargoGlobalSignal)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Long global signal duration source/sell warehouse crates")
						end
						
						ImGui.SameLine()
						SpecialCargoDuration = ImGui.Checkbox("Extend Timers##SpecialCargoDuration", SpecialCargoDuration)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Long duration source/sell and defend warehouse crates")
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
						ImGui.SameLine() ImGui.Dummy(-10, 1) ImGui.SameLine()
						VehicleCargoGlobalSignal = ImGui.Checkbox("Extend Global Signal##VehicleCargoGlobalSignal", VehicleCargoGlobalSignal)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Long global signal duration import/export vehicle cargo")
						end
						ImGui.SameLine()
						VehicleCargoDuration = ImGui.Checkbox("Extend Timers##VehicleCargoDuration", VehicleCargoDuration)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Long duration import/export vehicle cargo")
						end
						ImGui.Dummy(21, 1) ImGui.SameLine()
						ImGui.Text("MC Business")
						ImGui.SameLine() ImGui.Dummy(-5, 1) ImGui.SameLine()
						MCBusinessGlobalSignal = ImGui.Checkbox("Extend Global Signal##MCBusinessGlobalSignal", MCBusinessGlobalSignal)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Long global signal duration steal/sell mc business supply")
						end
						ImGui.SameLine() ImGui.Dummy(-9, 1) ImGui.SameLine()
						MCBusinessDuration = ImGui.Checkbox("Extend Timers##MCBusinessDuration", MCBusinessDuration)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Long duration steal/sell mc business supply")
						end
						ImGui.Dummy(21, 1) ImGui.SameLine()
						ImGui.Text("Bunker")
						ImGui.SameLine() ImGui.Dummy(29, 1) ImGui.SameLine()
						BunkerGlobalSignal = ImGui.Checkbox("Extend Global Signal##BunkerGlobalSignal", BunkerGlobalSignal)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Long global signal duration steal/sell bunker supply")
						end
						ImGui.SameLine() ImGui.Dummy(-9, 1) ImGui.SameLine()
						BunkerDuration = ImGui.Checkbox("Extend Timers##BunkerDuration", BunkerDuration)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Long duration steal/sell bunker supply")
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
						ImGui.SameLine() ImGui.Dummy(-9, 1) ImGui.SameLine()
						HangarCargoGlobalSignal = ImGui.Checkbox("Extend Global Signal##HangarCargoGlobalSignal", HangarCargoGlobalSignal)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Long global signal duration source/sell hangar crates")
						end
						ImGui.SameLine()
						HangarCargoDuration = ImGui.Checkbox("Extend Timers##HangarCargoDuration", HangarCargoDuration)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Long duration source/sell hangar crates")
						end
						
						NightclubCooldown = ImGui.Checkbox("Nightclub##NightclubCooldown", NightclubCooldown)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Remove cooldown promote club and source/sell goods")
						end
						ImGui.SameLine() ImGui.Dummy(16, 1) ImGui.SameLine()
						NightclubGlobalSignal = ImGui.Checkbox("Extend Global Signal##NightclubGlobalSignal", NightclubGlobalSignal)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Long global signal duration promote club and source/sell goods")
						end
						ImGui.SameLine()
						NightclubDuration = ImGui.Checkbox("Extend Timers##NightclubDuration", NightclubDuration)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Long duration promote club and source/sell goods")
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
						ArenaWheelCooldown = AllOtherCooldowns
						SpinLuckyWheelCooldown = AllOtherCooldowns
						AllOtherCooldowns6 = true
					else
						AllOtherCooldowns6 = false
					end
					if not AllOtherCooldowns6 then
						AllOtherCooldowns = RequestVehicleCooldown
						and ServiceVehiclesCooldown
						and CEOAbilitiesCooldown
						and CEOVehiclesCooldown
						and ArenaWheelCooldown
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
						ImGui.SameLine() ImGui.Dummy(14, 1) ImGui.SameLine()
						CEOVehiclesCooldown = ImGui.Checkbox("CEO Vehicles##CEOVehiclesCooldown", CEOVehiclesCooldown)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Remove short cooldown after request a ceo vehicles on interaction menu")
						end
						
						ArenaWheelCooldown = ImGui.Checkbox("Arena Wheel##ArenaWheelCooldown", ArenaWheelCooldown)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Remove short cooldown after spin arena wheel spectate")
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
						BunkerExcessWeaponCooldown = AllMiscCooldowns
						NightclubTroublemakerCooldown = AllMiscCooldowns
						AutoShopClientVehicleCooldown = AllMiscCooldowns
						AllMiscCooldowns4 = true
					else
						AllMiscCooldowns4 = false
					end
					if not AllMiscCooldowns4 then
						AllMiscCooldowns = MCClientVehicleCooldown
						and BunkerExcessWeaponCooldown
						and NightclubTroublemakerCooldown
						and AutoShopClientVehicleCooldown
					end
					ImGui.SameLine()
					if ImGui.TreeNode("Misc Cooldowns") then
						MCClientVehicleCooldown = ImGui.Checkbox("MC Client Vehicle##MCClientVehicleCooldown", MCClientVehicleCooldown)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Mc client is vehicle always come")
						end
						
						BunkerExcessWeaponCooldown = ImGui.Checkbox("Bunker Deliver Ammunation##BunkerExcessWeaponCooldown", BunkerExcessWeaponCooldown)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Bunker excess weapon parts is always ready")
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
				--else
				--	ImGui.Text("\nUnavailable in Single Player.\n\n")
				--end
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
			
			ForceOnlineFeatures = ImGui.Checkbox("Force Online Features##ForceOnlineFeatures", ForceOnlineFeatures)
			if ImGui.IsItemHovered() then
				ImGui.SetTooltip("Shows online features that 'Unavailable in Single Player.'")
			end
			
			ForceUnsupportedVersion = ImGui.Checkbox("Force Unsupported Version##ForceUnsupportedVersion", ForceUnsupportedVersion)
			if ImGui.IsItemHovered() then
				ImGui.SetTooltip("Enable some disabled features that are outdated")
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

AutoCEOPresident = false
RemoveAllCCTV = false

BossLimit = false
BossLimit_Toggle = 0
AssociateWagesTime = false
AssociateWagesTime_Toggle = 0
AssociateWagesRadius = false
AssociateWagesRadius_Toggle = 0
AssociateWagesIdle = false
AssociateWagesIdle_Toggle = 0

script.register_looped("GoldenGets Menu", function (script)
	if AutoCEOPresident then
		if not NETWORK_SESSION_STARTED() then
			return
		end
		local CEOLabels = {
			"HIP_HELP_BBOSS",
			"HIP_HELP_BBOSS2",
			"HPBOARD_REG",
			"HPBOARD_REGB",
			"HT_NOT_BOSS",
			"HUB_PC_BLCK",
			"NHPG_HELP_BBOSS",
			"OFF_COMP_REG",
			"TRUCK_PC_BLCK",
			"TUN_HELP_BBOSS",
			"BUNK_PC_BLCK",
			"CH_FINALE_REG",
			"CH_PREP_REG",
			"CH_SETUP_REG",
			"FHQ_PC_BLCK",
			"HANG_PC_BLCK",
			"HFBOARD_REG",
			"HIBOARD_REG",
			"HIBOARD_REGB",
			"MP_OFF_LAP_1",
			"MP_OFF_LAP_PC",
			"OFF_COMP_REG",
			"ARC_PC_BLCK",
			"ARC_HT_0",
			"ARC_HT_0B",
			"ACID_SLL_HLP2",
			"HRBOARD_REG",
			"HRBOARD_REGB",
		}
		for _, label in pairs(CEOLabels) do
			if IS_HELP_MSG_DISPLAYED(label) then
				if players.get_boss(PLAYER.PLAYER_ID()) == -1 then
					STATS.START_BEING_BOSS(stats.get_int("MPPLY_LAST_MP_CHAR"))
				end
				if players.get_org_type(PLAYER.PLAYER_ID()) == 1 then
					STATS.START_BEING_GOON(stats.get_int("MPPLY_LAST_MP_CHAR"))
				end
				gui.show_message("Seems like you need to be a CEO. So, made you become CEO.")
			end
		end
		local MCLabels = {
			"CLBHBKRREG",
			"ARC_HT_1",
			"ARC_HT_1B",
		}
		for _, label in pairs(MCLabels) do
			if IS_HELP_MSG_DISPLAYED(label) then
				if players.get_boss(PLAYER.PLAYER_ID()) == -1 then
					STATS.START_BEING_BOSS(stats.get_int("MPPLY_LAST_MP_CHAR"))
				end
				if players.get_org_type(PLAYER.PLAYER_ID()) == 1 then
					STATS.START_BEING_GOON(stats.get_int("MPPLY_LAST_MP_CHAR"))
				end
				gui.show_message("Seems like you need to be a MC President. So, made you become MC President.")
			end
		end
	end
	
	if not BecomeBoss then
		CEOCash = tunables.get_int("EXEC_VIP2_BODYGUARD_WAGE_CAP")
		CEORP = tunables.get_int("EXEC_VIP2_PROXIMITY_RP_BONUS")
		AssociateWages = tunables.get_int("GB_WAGES_AMOUNT")
	end
	if BecomeBoss then
		if BossLimit then
			--if BossLimit_Toggle == 0 then
				if tunables.get_int("GB_NUMBER_OF_BOSSES_IN_SESSION") ~= 32 then
					tunables.set_int("GB_NUMBER_OF_BOSSES_IN_SESSION", 32)
				end
			--end
			BossLimit_Toggle = 1
		else
			if BossLimit_Toggle == 1 then
				tunables.set_int("GB_NUMBER_OF_BOSSES_IN_SESSION", 10)
				BossLimit_Toggle = 0
			end
		end
		if tunables.get_int("EXEC_VIP2_BODYGUARD_WAGE_CAP") ~= CEOCash then
			tunables.set_int("EXEC_VIP2_BODYGUARD_WAGE_CAP", CEOCash)
		end
		if tunables.get_int("EXEC_VIP2_PROXIMITY_RP_BONUS") ~= CEORP then
			tunables.set_int("EXEC_VIP2_PROXIMITY_RP_BONUS", CEORP)
		end
		if tunables.get_int("GB_WAGES_AMOUNT") ~= AssociateWages then
			tunables.set_int("GB_WAGES_AMOUNT", AssociateWages)
		end
		if AssociateWagesTime then
			--if AssociateWagesTime_Toggle == 0 then
				if tunables.get_int("GB_WAGES_FREQUENCY") ~= 0 then
					tunables.set_int("GB_WAGES_FREQUENCY", 0)
				end
			--end
			AssociateWagesTime_Toggle = 1
		else
			if AssociateWagesTime_Toggle == 1 then
				tunables.set_int("GB_WAGES_FREQUENCY", 900000)
				AssociateWagesTime_Toggle = 0
			end
		end
		if AssociateWagesRadius then
			--if AssociateWagesRadius_Toggle == 0 then
				if tunables.get_int("GB_WAGE_STOP_IDLE_DISTANCE") ~= INT_MAX then
					tunables.set_int("GB_WAGE_STOP_IDLE_DISTANCE", INT_MAX)
				end
			--end
			AssociateWagesRadius_Toggle = 1
		else
			if AssociateWagesRadius_Toggle == 1 then
				tunables.set_int("GB_WAGE_STOP_IDLE_DISTANCE", 5)
				AssociateWagesRadius_Toggle = 0
			end
		end
		if AssociateWagesIdle then
			--if AssociateWagesIdle_Toggle == 0 then
				if tunables.get_int("GB_WAGE_STOP_IDLE_TIME") ~= INT_MAX_TIME then
					tunables.set_int("GB_WAGE_STOP_IDLE_TIME", INT_MAX_TIME)
				end
			--end
			AssociateWagesIdle_Toggle = 1
		else
			if AssociateWagesIdle_Toggle == 1 then
				tunables.set_int("GB_WAGE_STOP_IDLE_TIME", 900000)
				AssociateWagesIdle_Toggle = 0
			end
		end
	end
	
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
VIPMCWorkChallengeCooldown_Toggle = 0
VIPMCWorkChallengeDuration = false
VIPMCWorkChallengeDuration_Toggle = 0
MCBikerBarMissionCooldown = false
MCBikerBarMissionCooldown_Toggle = 0
TerrorbyteClientJobCooldown = false
TerrorbyteClientJobCooldown_Toggle = 0
TerrorbyteClientJobDuration = false
TerrorbyteClientJobDuration_Toggle = 0
CasinoWorkCooldown = false
CasinoWorkCooldown_Toggle = 0
AgencyCooldown = false
AgencyCooldown_Toggle = 0
DaxWorkCooldown = false
DaxWorkCooldown_Toggle = 0
DispatchWorkCooldown = false
DispatchWorkCooldown_Toggle = 0

AllBusinessCooldowns = false
SpecialCargoCooldown = false
SpecialCargoCooldown_Toggle = 0
SpecialCargoGlobalSignal = false
SpecialCargoGlobalSignal_Toggle = 0
SpecialCargoDuration = false
SpecialCargoDuration_Toggle = 0
VehicleCargoCooldown = false
VehicleCargoCooldown_Toggle = 0
VehicleCargoGlobalSignal = false
VehicleCargoGlobalSignal_Toggle = 0
VehicleCargoDuration = false
VehicleCargoDuration_Toggle = 0
MCBusinessGlobalSignal = false
MCBusinessGlobalSignal_Toggle = 0
MCBusinessDuration = false
MCBusinessDuration_Toggle = 0
BunkerGlobalSignal = false
BunkerGlobalSignal_Toggle = 0
BunkerDuration = false
BunkerDuration_Toggle = 0
HangarCargoCooldown = false
HangarCargoCooldown_Toggle = 0
HangarCargoGlobalSignal = false
HangarCargoGlobalSignal_Toggle = 0
HangarCargoDuration = false
HangarCargoDuration_Toggle = 0
NightclubCooldown = false
NightclubCooldown_Toggle = 0
NightclubGlobalSignal = false
NightclubGlobalSignal_Toggle = 0
NightclubDuration = false
NightclubDuration_Toggle = 0

AllOtherCooldowns = false
RequestVehicleCooldown = false
RequestVehicleCooldown_Toggle = 0
ServiceVehiclesCooldown = false
ServiceVehiclesCooldown_Toggle = 0
CEOAbilitiesCooldown = false
CEOAbilitiesCooldown_Toggle = 0
CEOVehiclesCooldown = false
CEOVehiclesCooldown_Toggle = 0
ArenaWheelCooldown = false
ArenaWheelCooldown_Toggle = 0
SpinLuckyWheelCooldown = false
SpinLuckyWheelCooldown_Toggle = 0

AllMiscCooldowns = false
MCClientVehicleCooldown = false
MCClientVehicleCooldown_Toggle = 0
BunkerExcessWeaponCooldown = false
BunkerExcessWeaponCooldown_Toggle = 0
NightclubTroublemakerCooldown = false
NightclubTroublemakerCooldown_Toggle = 0
AutoShopClientVehicleCooldown = false
AutoShopClientVehicleCooldown_Toggle = 0

script.register_looped("GoldenGets Cooldowns", function()
	if VIPMCWorkChallengeCooldown then
		--if VIPMCWorkChallengeCooldown_Toggle == 0 then
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
			if tunables.get_int("GB_SIGHTSEER_COOLDOWN") ~= 0 then -- *(600000ms)*
				tunables.set_int("GB_SIGHTSEER_COOLDOWN", 0)
			end
			if tunables.get_int("GB_HUNTBOSS_COOLDOWN") ~= 0 then -- *(600000ms)*
				tunables.set_int("GB_HUNTBOSS_COOLDOWN", 0)
			end
			if tunables.get_int("GB_YACHTATTACK_COOLDOWN") ~= 0 then -- *(3600000ms)*
				tunables.set_int("GB_YACHTATTACK_COOLDOWN", 0)
			end
			if tunables.get_int("GB_CARJACKING_COOLDOWN") ~= 0 then -- *(600000ms)*
				tunables.set_int("GB_CARJACKING_COOLDOWN", 0)
			end
			if tunables.get_int("GB_FINDERS_KEEPERS_COOLDOWN") ~= 0 then -- *(600000ms)*
				tunables.set_int("GB_FINDERS_KEEPERS_COOLDOWN", 0)
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
			if tunables.get_int("GB_SMASHANDGRAB_STORE_COOLDOWN") ~= 0 then -- *(120000ms)*
				tunables.set_int("GB_SMASHANDGRAB_STORE_COOLDOWN", 0)
			end
			if tunables.get_int("GB_SMASHANDGRAB_COOLDOWN") ~= 0 then -- *(600000ms)*
				tunables.set_int("GB_SMASHANDGRAB_COOLDOWN", 0)
			end
			if tunables.get_int("EXEC_AIRFREIGHT_DISCONNECT_COOLDOWN") ~= 0 then -- *(30000ms)*
				tunables.set_int("EXEC_AIRFREIGHT_DISCONNECT_COOLDOWN", 0)
			end
			if tunables.get_int("EXEC_AIRFREIGHT_COOLDOWN") ~= 0 then -- *(600000ms)*
				tunables.set_int("EXEC_AIRFREIGHT_COOLDOWN", 0)
			end
			if tunables.get_int("EXEC_FGOODS_DISCONNECT_COOLDOWN") ~= 0 then -- *(30000ms)*
				tunables.set_int("EXEC_FGOODS_DISCONNECT_COOLDOWN", 0)
			end
			if tunables.get_int("EXEC_FGOODS_COOLDOWN") ~= 0 then -- *(600000ms)*
				tunables.set_int("EXEC_FGOODS_COOLDOWN", 0)
			end
			if tunables.get_int("EXEC_HEADHUNTER_COOLDOWN") ~= 0 then -- *(600000ms)*
				tunables.set_int("EXEC_HEADHUNTER_COOLDOWN", 0)
			end
			if tunables.get_int("EXEC_CASHING_COOLDOWN") ~= 0 then -- *(600000ms)*
				tunables.set_int("EXEC_CASHING_COOLDOWN", 0)
			end
			if tunables.get_int("EXEC_SALVAGE_COOLDOWN") ~= 0 then -- *(600000ms)*
				tunables.set_int("EXEC_SALVAGE_COOLDOWN", 0)
			end
			--if tunables.get_int("EXEC_DESTROY_CONTRABAND_RATE_LIMITER_COOLDOWN") ~= 0 then -- *(2880ms)*
			--	tunables.set_int("EXEC_DESTROY_CONTRABAND_RATE_LIMITER_COOLDOWN", 0)
			--end
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
		--end
		VIPMCWorkChallengeCooldown_Toggle = 1
	else
		if VIPMCWorkChallengeCooldown_Toggle == 1 then
			tunables.set_int("GB_COOLDOWN_UNTIL_NEXT_BOSS_WORK", 300000)
			tunables.set_int("GB_COOLDOWN_UNTIL_NEXT_BOSS_CHALLENGE", 180000)
			tunables.set_int("GB_BECOME_BOSS_COOLDOWN", 43200)
			tunables.set_int("GB_ASSAULT_COOLDOWN", 1200000)
			tunables.set_int("GB_BELLY_COOLDOWN", 600000)
			tunables.set_int("GB_BOSSVSBOSSDM_COOLDOWN", 1800000)
			tunables.set_int("GB_SIGHTSEER_COOLDOWN", 600000)
			tunables.set_int("GB_HUNTBOSS_COOLDOWN", 600000)
			tunables.set_int("GB_YACHTATTACK_COOLDOWN", 3600000)
			tunables.set_int("GB_CARJACKING_COOLDOWN", 600000)
			tunables.set_int("GB_FINDERS_KEEPERS_COOLDOWN", 600000)
			tunables.set_int("GB_MOSTWANTED_COOLDOWN", 600000)
			tunables.set_int("GB_POINTTOPOINT_COOLDOWN", 600000)
			tunables.set_int("GB_PROTECTIONRACKET_COOLDOWN", 600000)
			tunables.set_int("GB_SMASHANDGRAB_STORE_COOLDOWN", 120000)
			tunables.set_int("GB_SMASHANDGRAB_COOLDOWN", 600000)
			tunables.set_int("EXEC_AIRFREIGHT_DISCONNECT_COOLDOWN", 30000)
			tunables.set_int("EXEC_AIRFREIGHT_COOLDOWN", 600000)
			tunables.set_int("EXEC_FGOODS_DISCONNECT_COOLDOWN", 30000)
			tunables.set_int("EXEC_FGOODS_COOLDOWN", 600000)
			tunables.set_int("EXEC_HEADHUNTER_COOLDOWN", 600000)
			tunables.set_int("EXEC_CASHING_COOLDOWN", 600000)
			tunables.set_int("EXEC_SALVAGE_COOLDOWN", 600000)
			--tunables.set_int("EXEC_DESTROY_CONTRABAND_RATE_LIMITER_COOLDOWN", 2880)
			tunables.set_int("IMPEXP_PLOWED_COOLDOWN", 3600000)
			tunables.set_int("IMPEXP_FULLY_LOADED_COOLDOWN", 3600000)
			tunables.set_int("IMPEXP_AMPHIBIOUS_ASSAULT_COOLDOWN", 1800000)
			tunables.set_int("IMPEXP_TRANSPORTER_COOLDOWN", 1800000)
			tunables.set_int("IMPEXP_FORTIFIED_COOLDOWN", 1800000)
			tunables.set_int("IMPEXP_VELOCITY_COOLDOWN", 1800000)
			tunables.set_int("IMPEXP_RAMPED_UP_COOLDOWN", 3600000)
			tunables.set_int("IMPEXP_STOCKPILING_COOLDOWN", 1800000)
			tunables.set_int("BIKER_CLUB_WORK_COOLDOWN_GLOBAL", 180000)
			--tunables.set_int("BIKER_CHALLENGES_COOLDOWN_GLOBAL", 0) -- null tunable
			--tunables.set_int("BIKER_CHALLENGES_COOLDOWN_SPECIFIC", 0) -- null tunable
			--tunables.set_int("BIKER_DEATHMATCH_COOLDOWN", 0) -- null tunable
			--tunables.set_int("BIKER_JOUST_COOLDOWN", 0) -- null tunable
			tunables.set_int("BIKER_STAND_YOUR_GROUND_COOLDOWN", 180000)
			--tunables.set_int("BIKER_CAGED_IN_COOLDOWN", 0) -- null tunable
			--stats.set_int("MPPLY_VIPGAMEPLAYDISABLEDTIMER", 0)
			VIPMCWorkChallengeCooldown_Toggle = 1
		end
	end
	
	if VIPMCWorkChallengeDuration then
		--if VIPMCWorkChallengeDuration_Toggle == 0 then
			if tunables.get_int("GB_ASSAULT_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("GB_ASSAULT_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("GB_BELLY_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("GB_BELLY_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("GB_BOSSVSBOSSDM_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("GB_BOSSVSBOSSDM_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("GB_SIGHTSEER_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("GB_SIGHTSEER_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("GB_HUNTBOSS_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("GB_HUNTBOSS_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("GB_YACHTATTACK_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("GB_YACHTATTACK_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("GB_CARJACKING_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("GB_CARJACKING_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("GB_FINDERS_KEEPERS_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("GB_FINDERS_KEEPERS_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("GB_MOSTWANTED_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("GB_MOSTWANTED_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("GB_POINTTOPOINT_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("GB_POINTTOPOINT_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("GB_POINTTOPOINT_DESTINATION_SELECT_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("GB_POINTTOPOINT_DESTINATION_SELECT_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("GB_PROTECTIONR_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("GB_PROTECTIONR_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("GB_SMASHANDGRAB_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("GB_SMASHANDGRAB_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("EXEC_AIRFREIGHT_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("EXEC_AIRFREIGHT_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("EXEC_FGOODS_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("EXEC_FGOODS_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("EXEC_HEADHUNTER_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("EXEC_HEADHUNTER_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("EXEC_CASHING_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("EXEC_CASHING_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("EXEC_SALVAGE_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("EXEC_SALVAGE_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("IMPEXP_MOVING_CAR_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("IMPEXP_MOVING_CAR_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("IMPEXP_PLOWED_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("IMPEXP_PLOWED_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("IMPEXP_FULLY_LOADED_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("IMPEXP_FULLY_LOADED_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("IMPEXP_AMPHIBIOUS_ASSAULT_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("IMPEXP_AMPHIBIOUS_ASSAULT_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("IMPEXP_TRANSPORTER_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("IMPEXP_TRANSPORTER_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("IMPEXP_FORTIFIED_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("IMPEXP_FORTIFIED_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("IMPEXP_VELOCITY_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("IMPEXP_VELOCITY_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("IMPEXP_RAMPED_UP_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("IMPEXP_RAMPED_UP_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("IMPEXP_STOCKPILING_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("IMPEXP_STOCKPILING_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("BIKER_GUNRUNNING_TIME_LIMIT") ~= INT_MAX_TIME2 then
				tunables.set_int("BIKER_GUNRUNNING_TIME_LIMIT", INT_MAX_TIME2)
			end
			if tunables.get_int("BIKER_POW_TIME_LIMIT") ~= INT_MAX_TIME2 then
				tunables.set_int("BIKER_POW_TIME_LIMIT", INT_MAX_TIME2)
			end
			if tunables.get_int("BIKER_GUNS_FOR_HIRE_GOTO_TIME_LIMIT") ~= INT_MAX_TIME2 then
				tunables.set_int("BIKER_GUNS_FOR_HIRE_GOTO_TIME_LIMIT", INT_MAX_TIME2)
			end
			if tunables.get_int("BIKER_GUNS_FOR_HIRE_DEFEND_TIME_LIMIT") ~= INT_MAX_TIME2 then
				tunables.set_int("BIKER_GUNS_FOR_HIRE_DEFEND_TIME_LIMIT", INT_MAX_TIME2)
			end
			if tunables.get_int("BIKER_BY_THE_POUND_TIME_LIMIT") ~= INT_MAX_TIME2 then
				tunables.set_int("BIKER_BY_THE_POUND_TIME_LIMIT", INT_MAX_TIME2)
			end
			if tunables.get_int("BIKER_WEAPON_OF_CHOICE_TIME_LIMIT") ~= INT_MAX_TIME2 then
				tunables.set_int("BIKER_WEAPON_OF_CHOICE_TIME_LIMIT", INT_MAX_TIME2)
			end
			if tunables.get_int("BIKER_NINE_TENTHS_TIME_LIMIT") ~= INT_MAX_TIME2 then
				tunables.set_int("BIKER_NINE_TENTHS_TIME_LIMIT", INT_MAX_TIME2)
			end
			if tunables.get_int("BIKER_CRACKED_TIME_LIMIT") ~= INT_MAX_TIME2 then
				tunables.set_int("BIKER_CRACKED_TIME_LIMIT", INT_MAX_TIME2)
			end
			if tunables.get_int("BIKER_JAILBREAK_TIME_LIMIT") ~= INT_MAX_TIME2 then
				tunables.set_int("BIKER_JAILBREAK_TIME_LIMIT", INT_MAX_TIME2)
			end
			if tunables.get_int("BIKER_FRAGILE_GOODS_TIME_LIMIT") ~= INT_MAX_TIME2 then
				tunables.set_int("BIKER_FRAGILE_GOODS_TIME_LIMIT", INT_MAX_TIME2)
			end
			if tunables.get_int("BIKER_OUTRIDER_TIME_LIMIT") ~= INT_MAX_TIME2 then
				tunables.set_int("BIKER_OUTRIDER_TIME_LIMIT", INT_MAX_TIME2)
			end
			if tunables.get_int("BIKER_TORCHED_TIME_LIMIT") ~= INT_MAX_TIME2 then
				tunables.set_int("BIKER_TORCHED_TIME_LIMIT", INT_MAX_TIME2)
			end
			if tunables.get_int("BIKER_DEATHMATCH_TIME_LIMIT") ~= INT_MAX_TIME2 then
				tunables.set_int("BIKER_DEATHMATCH_TIME_LIMIT", INT_MAX_TIME2)
			end
			if tunables.get_int("BIKER_JOUST_TIME_LIMIT") ~= INT_MAX_TIME2 then
				tunables.set_int("BIKER_JOUST_TIME_LIMIT", INT_MAX_TIME2)
			end
			if tunables.get_int("BIKER_STAND_YOUR_GROUND_TIME_LIMIT") ~= INT_MAX_TIME2 then
				tunables.set_int("BIKER_STAND_YOUR_GROUND_TIME_LIMIT", INT_MAX_TIME2)
			end
			if tunables.get_int("BIKER_CAGED_IN_TIME_LIMIT") ~= INT_MAX_TIME2 then
				tunables.set_int("BIKER_CAGED_IN_TIME_LIMIT", INT_MAX_TIME2)
			end
			if tunables.get_int("BIKER_ON_THE_RUN_TIME_LIMIT") ~= INT_MAX_TIME2 then
				tunables.set_int("BIKER_ON_THE_RUN_TIME_LIMIT", INT_MAX_TIME2)
			end
			if tunables.get_int("BIKER_RACE_TIME_LIMIT") ~= INT_MAX_TIME2 then
				tunables.set_int("BIKER_RACE_TIME_LIMIT", INT_MAX_TIME2)
			end
			if tunables.get_int("BIKER_RIPPIN_TIME_LIMIT") ~= INT_MAX_TIME2 then
				tunables.set_int("BIKER_RIPPIN_TIME_LIMIT", INT_MAX_TIME2)
			end
			if tunables.get_int("BIKER_HIT_AND_RIDE_TIME_LIMIT") ~= INT_MAX_TIME2 then
				tunables.set_int("BIKER_HIT_AND_RIDE_TIME_LIMIT", INT_MAX_TIME2)
			end
			if tunables.get_int("BIKER_WHEELIE_TIME_LIMIT") ~= INT_MAX_TIME2 then
				tunables.set_int("BIKER_WHEELIE_TIME_LIMIT", INT_MAX_TIME2)
			end
			if tunables.get_int("BIKER_MISCHIEF_TIME_LIMIT") ~= INT_MAX_TIME2 then
				tunables.set_int("BIKER_MISCHIEF_TIME_LIMIT", INT_MAX_TIME2)
			end
			if tunables.get_int("BIKER_SEARCH_AND_DESTROY_TIME_LIMIT") ~= INT_MAX_TIME2 then
				tunables.set_int("BIKER_SEARCH_AND_DESTROY_TIME_LIMIT", INT_MAX_TIME2)
			end
			if tunables.get_int("MISSIONENDTIME_BJ") ~= INT_MAX_TIME2 then
				tunables.set_int("MISSIONENDTIME_BJ", INT_MAX_TIME2)
			end
			if tunables.get_int("MISSIONENDTIME_CONTACT") ~= INT_MAX_TIME2 then
				tunables.set_int("MISSIONENDTIME_CONTACT", INT_MAX_TIME2)
			end
			if tunables.get_int("MISSIONENDTIME_CORONA") ~= INT_MAX_TIME2 then
				tunables.set_int("MISSIONENDTIME_CORONA", INT_MAX_TIME2)
			end
			if tunables.get_int("MISSIONENDTIME_CTF") ~= INT_MAX_TIME2 then
				tunables.set_int("MISSIONENDTIME_CTF", INT_MAX_TIME2)
			end
			if tunables.get_int("MISSIONENDTIME_DEFAULT") ~= INT_MAX_TIME2 then
				tunables.set_int("MISSIONENDTIME_DEFAULT", INT_MAX_TIME2)
			end
			if tunables.get_int("MISSIONENDTIME_DM") ~= INT_MAX_TIME2 then
				tunables.set_int("MISSIONENDTIME_DM", INT_MAX_TIME2)
			end
			if tunables.get_int("MISSIONENDTIME_FLOWMISSION") ~= INT_MAX_TIME2 then
				tunables.set_int("MISSIONENDTIME_FLOWMISSION", INT_MAX_TIME2)
			end
			if tunables.get_int("MISSIONENDTIME_HEIST") ~= INT_MAX_TIME2 then
				tunables.set_int("MISSIONENDTIME_HEIST", INT_MAX_TIME2)
			end
			if tunables.get_int("MISSIONENDTIME_HEISTPLANNING") ~= INT_MAX_TIME2 then
				tunables.set_int("MISSIONENDTIME_HEISTPLANNING", INT_MAX_TIME2)
			end
			if tunables.get_int("MISSIONENDTIME_LTS") ~= INT_MAX_TIME2 then
				tunables.set_int("MISSIONENDTIME_LTS", INT_MAX_TIME2)
			end
			if tunables.get_int("MISSIONENDTIME_MISSIONDEFAULT") ~= INT_MAX_TIME2 then
				tunables.set_int("MISSIONENDTIME_MISSIONDEFAULT", INT_MAX_TIME2)
			end
			if tunables.get_int("MISSIONENDTIME_NEWVS") ~= INT_MAX_TIME2 then
				tunables.set_int("MISSIONENDTIME_NEWVS", INT_MAX_TIME2)
			end
			if tunables.get_int("MISSIONENDTIME_RACE") ~= INT_MAX_TIME2 then
				tunables.set_int("MISSIONENDTIME_RACE", INT_MAX_TIME2)
			end
			if tunables.get_int("MISSIONENDTIME_RACE_MOD") ~= INT_MAX_TIME2 then
				tunables.set_int("MISSIONENDTIME_RACE_MOD", INT_MAX_TIME2)
			end
			if tunables.get_int("MISSIONENDTIME_RANDOM") ~= INT_MAX_TIME2 then
				tunables.set_int("MISSIONENDTIME_RANDOM", INT_MAX_TIME2)
			end
			if tunables.get_int("MISSIONENDTIME_SURVIVAL") ~= INT_MAX_TIME2 then
				tunables.set_int("MISSIONENDTIME_SURVIVAL", INT_MAX_TIME2)
			end
			if tunables.get_int("MISSIONENDTIME_VS") ~= INT_MAX_TIME2 then
				tunables.set_int("MISSIONENDTIME_VS", INT_MAX_TIME2)
			end
		--end
		VIPMCWorkChallengeDuration_Toggle = 1
	else
		if VIPMCWorkChallengeDuration_Toggle == 1 then
			tunables.set_int("GB_ASSAULT_TIME_LIMIT", 1800000)
			tunables.set_int("GB_BELLY_TIME_LIMIT", 1200000)
			tunables.set_int("GB_BOSSVSBOSSDM_TIME_LIMIT", 1200000)
			tunables.set_int("GB_SIGHTSEER_TIME_LIMIT", 900000)
			tunables.set_int("GB_HUNTBOSS_TIME_LIMIT", 600000)
			tunables.set_int("GB_YACHTATTACK_TIME_LIMIT", 600000)
			tunables.set_int("GB_CARJACKING_TIME_LIMIT", 600000)
			tunables.set_int("GB_FINDERS_KEEPERS_TIME_LIMIT", 600000)
			tunables.set_int("GB_MOSTWANTED_TIME_LIMIT", 600000)
			tunables.set_int("GB_POINTTOPOINT_TIME_LIMIT", 600000)
			tunables.set_int("GB_POINTTOPOINT_DESTINATION_SELECT_TIME_LIMIT", 60000)
			tunables.set_int("GB_PROTECTIONR_TIME_LIMIT", 600000)
			tunables.set_int("GB_SMASHANDGRAB_TIME_LIMIT", 600000)
			tunables.set_int("EXEC_AIRFREIGHT_TIME_LIMIT", 1200000)
			tunables.set_int("EXEC_FGOODS_TIME_LIMIT", 1200000)
			tunables.set_int("EXEC_HEADHUNTER_TIME_LIMIT", 900000)
			tunables.set_int("EXEC_CASHING_TIME_LIMIT", 600000)
			tunables.set_int("EXEC_SALVAGE_TIME_LIMIT", 600000)
			tunables.set_int("IMPEXP_MOVING_CAR_TIME_LIMIT", 900000)
			tunables.set_int("IMPEXP_PLOWED_TIME_LIMIT", 900000)
			tunables.set_int("IMPEXP_FULLY_LOADED_TIME_LIMIT", 1200000)
			tunables.set_int("IMPEXP_AMPHIBIOUS_ASSAULT_TIME_LIMIT", 900000)
			tunables.set_int("IMPEXP_TRANSPORTER_TIME_LIMIT", 900000)
			tunables.set_int("IMPEXP_FORTIFIED_TIME_LIMIT", 600000)
			tunables.set_int("IMPEXP_VELOCITY_TIME_LIMIT", 600000)
			tunables.set_int("IMPEXP_RAMPED_UP_TIME_LIMIT", 1200000)
			tunables.set_int("IMPEXP_STOCKPILING_TIME_LIMIT", 600000)
			tunables.set_int("BIKER_GUNRUNNING_TIME_LIMIT", 1800)
			tunables.set_int("BIKER_POW_TIME_LIMIT", 1800)
			tunables.set_int("BIKER_GUNS_FOR_HIRE_GOTO_TIME_LIMIT", 900)
			tunables.set_int("BIKER_GUNS_FOR_HIRE_DEFEND_TIME_LIMIT", 300)
			tunables.set_int("BIKER_BY_THE_POUND_TIME_LIMIT", 1800)
			tunables.set_int("BIKER_WEAPON_OF_CHOICE_TIME_LIMIT", 900)
			tunables.set_int("BIKER_NINE_TENTHS_TIME_LIMIT", 1800)
			tunables.set_int("BIKER_CRACKED_TIME_LIMIT", 1800)
			tunables.set_int("BIKER_JAILBREAK_TIME_LIMIT", 1800)
			tunables.set_int("BIKER_FRAGILE_GOODS_TIME_LIMIT", 900)
			tunables.set_int("BIKER_OUTRIDER_TIME_LIMIT", 1800)
			tunables.set_int("BIKER_TORCHED_TIME_LIMIT", 900)
			tunables.set_int("BIKER_DEATHMATCH_TIME_LIMIT", 1200)
			tunables.set_int("BIKER_JOUST_TIME_LIMIT", 1200)
			tunables.set_int("BIKER_STAND_YOUR_GROUND_TIME_LIMIT", 1200)
			tunables.set_int("BIKER_CAGED_IN_TIME_LIMIT", 1200)
			tunables.set_int("BIKER_ON_THE_RUN_TIME_LIMIT", 600)
			tunables.set_int("BIKER_RACE_TIME_LIMIT", 300000)
			tunables.set_int("BIKER_RIPPIN_TIME_LIMIT", 300)
			tunables.set_int("BIKER_HIT_AND_RIDE_TIME_LIMIT", 600)
			tunables.set_int("BIKER_WHEELIE_TIME_LIMIT", 300)
			tunables.set_int("BIKER_MISCHIEF_TIME_LIMIT", 600)
			tunables.set_int("BIKER_SEARCH_AND_DESTROY_TIME_LIMIT", 600)
			tunables.set_int("MISSIONENDTIME_BJ", 1177)
			tunables.set_int("MISSIONENDTIME_CONTACT", 2084)
			tunables.set_int("MISSIONENDTIME_CORONA", 70)
			tunables.set_int("MISSIONENDTIME_CTF", 512)
			tunables.set_int("MISSIONENDTIME_DEFAULT", 835)
			tunables.set_int("MISSIONENDTIME_DM", 196)
			tunables.set_int("MISSIONENDTIME_FLOWMISSION", 2084)
			tunables.set_int("MISSIONENDTIME_HEIST", 2084)
			tunables.set_int("MISSIONENDTIME_HEISTPLANNING", 2084)
			tunables.set_int("MISSIONENDTIME_LTS", 132)
			tunables.set_int("MISSIONENDTIME_MISSIONDEFAULT", 2084)
			tunables.set_int("MISSIONENDTIME_NEWVS", 132)
			--tunables.set_int("MISSIONENDTIME_RACE", 0)
			tunables.set_int("MISSIONENDTIME_RACE_MOD", 60)
			tunables.set_int("MISSIONENDTIME_RANDOM", 2084)
			tunables.set_int("MISSIONENDTIME_SURVIVAL", 1397)
			tunables.set_int("MISSIONENDTIME_VS", 132)
			VIPMCWorkChallengeDuration_Toggle = 0
		end
	end
	
	if MCBikerBarMissionCooldown then
		--if MCBikerBarMissionCooldown_Toggle == 0 then
			if tunables.get_int("BIKER_CLUBHOUSE_COOLDOWN") ~= 0 then -- null tunable
				tunables.set_int("BIKER_CLUBHOUSE_COOLDOWN", 0)
			end
			if tunables.get_int("BIKER_RESUPPLY_MISSION_COOLDOWN") ~= 0 then -- *(48)*
				tunables.set_int("BIKER_RESUPPLY_MISSION_COOLDOWN", 0)
			end
			if stats.get_int("MPX_BIKER_BAR_RESUPPLY_CD_POSIX") ~= -1 then
				stats.set_int("MPX_BIKER_BAR_RESUPPLY_CD_POSIX", -1)
			end
		--end
		MCBikerBarMissionCooldown_Toggle = 1
	else
		if MCBikerBarMissionCooldown_Toggle == 1 then
			--tunables.set_int("BIKER_CLUBHOUSE_COOLDOWN", 0)
			tunables.set_int("BIKER_RESUPPLY_MISSION_COOLDOWN", 48)
			--stats.set_int("MPX_BIKER_BAR_RESUPPLY_CD_POSIX", 0)
			MCBikerBarMissionCooldown_Toggle = 0
		end
	end
	
	if TerrorbyteClientJobCooldown then
		--if TerrorbyteClientJobCooldown_Toggle == 0 then
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
		--end
		TerrorbyteClientJobCooldown_Toggle = 1
	else
		if TerrorbyteClientJobCooldown_Toggle == 1 then
			--tunables.set_int("BB_TERRORBYTE_MISSION_COOLDOWN_TIMER", 0)
			tunables.set_int("BB_HACKER_WORK_CLIENT_WORK_GLOBAL_COOLDOWN", 300000)
			tunables.set_int("BB_HACKER_WORK_CLIENT_WORK_COOLDOWN_BANK_JOB", 1800000)
			tunables.set_int("BB_HACKER_WORK_CLIENT_WORK_COOLDOWN_DATA_HACK", 1800000)
			tunables.set_int("BB_HACKER_WORK_CLIENT_WORK_COOLDOWN_INFILTRATION", 1800000)
			tunables.set_int("BB_HACKER_WORK_CLIENT_WORK_COOLDOWN_JEWEL_STORE_GRAB", 1800000)
			tunables.set_int("BB_HACKER_WORK_HACKER_CHALLENGE_COOLDOWN_GLOBAL_COOLDOWN", 180000)
			tunables.set_int("BB_HACKER_WORK_HACKER_CHALLENGE_COOLDOWN_SECURITY_VANS", 600000)
			tunables.set_int("BB_HACKER_WORK_HACKER_CHALLENGE_COOLDOWN_TARGET_PURSUIT", 600000)
			TerrorbyteClientJobCooldown_Toggle = 0
		end
	end
	
	if TerrorbyteClientJobDuration then
		--if TerrorbyteClientJobDuration_Toggle == 0 then
			if tunables.get_int("BB_HACKER_WORK_CLIENT_WORK_DURATION_BANK_JOB") ~= INT_MAX_TIME then
				tunables.set_int("BB_HACKER_WORK_CLIENT_WORK_DURATION_BANK_JOB", INT_MAX_TIME)
			end
			if tunables.get_int("BB_HACKER_WORK_CLIENT_WORK_DURATION_DATA_HACK") ~= INT_MAX_TIME then
				tunables.set_int("BB_HACKER_WORK_CLIENT_WORK_DURATION_DATA_HACK", INT_MAX_TIME)
			end
			if tunables.get_int("BB_HACKER_WORK_CLIENT_WORK_DURATION_INFILTRATION") ~= INT_MAX_TIME then
				tunables.set_int("BB_HACKER_WORK_CLIENT_WORK_DURATION_INFILTRATION", INT_MAX_TIME)
			end
			if tunables.get_int("BB_HACKER_WORK_CLIENT_WORK_DURATION_JEWEL_STORE_GRAB") ~= INT_MAX_TIME then
				tunables.set_int("BB_HACKER_WORK_CLIENT_WORK_DURATION_JEWEL_STORE_GRAB", INT_MAX_TIME)
			end
			if tunables.get_int("BB_HACKER_WORK_HACKER_CHALLENGE_DURATION_SECURITY_VANS") ~= INT_MAX_TIME then
				tunables.set_int("BB_HACKER_WORK_HACKER_CHALLENGE_DURATION_SECURITY_VANS", INT_MAX_TIME)
			end
			if tunables.get_int("BB_HACKER_WORK_HACKER_CHALLENGE_DURATION_TARGET_PURSUIT") ~= INT_MAX_TIME then
				tunables.set_int("BB_HACKER_WORK_HACKER_CHALLENGE_DURATION_TARGET_PURSUIT", INT_MAX_TIME)
			end
			--if tunables.get_int("BB_HACKER_WORK_CLIENT_WORK_DURATION_SURVEILLANCE") ~= INT_MAX_TIME then -- Tunable 0x759877135 not found.
			--	tunables.set_int("BB_HACKER_WORK_CLIENT_WORK_DURATION_SURVEILLANCE", INT_MAX_TIME)
			--end
		--end
		TerrorbyteClientJobDuration_Toggle = 1
	else
		if TerrorbyteClientJobDuration_Toggle == 1 then
			tunables.set_int("BB_HACKER_WORK_CLIENT_WORK_DURATION_BANK_JOB", 30)
			tunables.set_int("BB_HACKER_WORK_CLIENT_WORK_DURATION_DATA_HACK", 30)
			tunables.set_int("BB_HACKER_WORK_CLIENT_WORK_DURATION_INFILTRATION", 15)
			tunables.set_int("BB_HACKER_WORK_CLIENT_WORK_DURATION_JEWEL_STORE_GRAB", 30)
			tunables.set_int("BB_HACKER_WORK_HACKER_CHALLENGE_DURATION_SECURITY_VANS", 10)
			tunables.set_int("BB_HACKER_WORK_HACKER_CHALLENGE_DURATION_TARGET_PURSUIT", 10)
			--tunables.set_int("BB_HACKER_WORK_CLIENT_WORK_DURATION_SURVEILLANCE", 0) -- Tunable 0x759877135 not found.
			TerrorbyteClientJobDuration_Toggle = 0
		end
	end
	
	if CasinoWorkCooldown then
		--if CasinoWorkCooldown_Toggle == 0 then
			if tunables.get_int("VC_WORK_COOLDOWN") ~= 0 then -- *(36000ms)*
				tunables.set_int("VC_WORK_COOLDOWN", 0)
			end
			if tunables.get_int("VC_WORK_REQUEST_COOLDOWN") ~= 0 then -- *(180000ms)*
				tunables.set_int("VC_WORK_REQUEST_COOLDOWN", 0)
			end
		--end
		CasinoWorkCooldown_Toggle = 1
	else
		if CasinoWorkCooldown_Toggle == 1 then
			tunables.set_int("VC_WORK_COOLDOWN", 36000)
			tunables.set_int("VC_WORK_REQUEST_COOLDOWN", 180000)
			CasinoWorkCooldown_Toggle = 0
		end
	end
	
	if AgencyCooldown then
		--if AgencyCooldown_Toggle == 0 then
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
		--end
		AgencyCooldown_Toggle = 1
	else
		if AgencyCooldown_Toggle == 1 then
			tunables.set_int("FIXER_STORY_COOLDOWN_POSIX", 1800)
			tunables.set_int("FIXER_SECURITY_CONTRACT_COOLDOWN_TIME", 300000)
			tunables.set_int("FRANKLIN_SUPPLY_STASH_COOLDOWN", 600000)
			tunables.set_int("REQUEST_FRANKLIN_PAYPHONE_HIT_COOLDOWN", 600000)
			AgencyCooldown_Toggle = 0
		end
	end
	
	if DaxWorkCooldown then
		--if DaxWorkCooldown_Toggle == 0 then
			if stats.get_int("MPX_XM22JUGGALOWORKCDTIMER") ~= -1 then
				stats.set_int("MPX_XM22JUGGALOWORKCDTIMER", -1)
			end
			if tunables.get_int("JUGALLO_BOSS_WORK_COOLDOWN_TIME") ~= 0 then -- *(2880ms)*
				tunables.set_int("JUGALLO_BOSS_WORK_COOLDOWN_TIME", 0)
			end
		--end
		DaxWorkCooldown_Toggle = 1
	else
		if DaxWorkCooldown_Toggle == 1 then
			--stats.set_int("MPX_XM22JUGGALOWORKCDTIMER", 0)
			tunables.set_int("JUGALLO_BOSS_WORK_COOLDOWN_TIME", 2880)
			DaxWorkCooldown_Toggle = 0
		end
	end
	
	if DispatchWorkCooldown then
		--if DispatchWorkCooldown_Toggle == 0 then
			if locals_v_get_int(SupportVersion, DWCl) ~= 0 then
				locals_v_set_int(SupportVersion, DWCl, 0)
			end
			if stats.get_int("MPX_DISPATCH_WORK_CALL_CD") ~= 0 then
				stats.set_int("MPX_DISPATCH_WORK_CALL_CD", 0)
			end
			if stats.get_int("MPX_DISPATCH_WORK_REQUEST_CD") ~= 0 then
				stats.set_int("MPX_DISPATCH_WORK_REQUEST_CD", 0)
			end
		--end
		DispatchWorkCooldown_Toggle = 1
	else
		if DispatchWorkCooldown_Toggle == 1 then
			--locals_v_set_int(SupportVersion, DWCl, 0)
			--stats.set_int("MPX_DISPATCH_WORK_CALL_CD", 0)
			--stats.set_int("MPX_DISPATCH_WORK_REQUEST_CD", 0)
			DispatchWorkCooldown_Toggle = 0
		end
	end
	
	if SpecialCargoGlobalSignal then
		--if SpecialCargoGlobalSignal_Toggle == 0 then
			if tunables.get_int("EXEC_EASY_BUY_BLIP_DELAY") ~= INT_MAX_TIME then
				tunables.set_int("EXEC_EASY_BUY_BLIP_DELAY", INT_MAX_TIME)
			end
			if tunables.get_int("EXEC_MEDIUM_BUY_BLIP_DELAY") ~= INT_MAX_TIME then
				tunables.set_int("EXEC_MEDIUM_BUY_BLIP_DELAY", INT_MAX_TIME)
			end
			if tunables.get_int("EXEC_HARD_BUY_BLIP_DELAY") ~= INT_MAX_TIME then
				tunables.set_int("EXEC_HARD_BUY_BLIP_DELAY", INT_MAX_TIME)
			end
			if tunables.get_int("EXEC_EASY_SELL_BLIP_DELAY") ~= INT_MAX_TIME then
				tunables.set_int("EXEC_EASY_SELL_BLIP_DELAY", INT_MAX_TIME)
			end
			if tunables.get_int("EXEC_MEDIUM_SELL_BLIP_DELAY") ~= INT_MAX_TIME then
				tunables.set_int("EXEC_MEDIUM_SELL_BLIP_DELAY", INT_MAX_TIME)
			end
			if tunables.get_int("EXEC_HARD_SELL_BLIP_DELAY") ~= INT_MAX_TIME then
				tunables.set_int("EXEC_HARD_SELL_BLIP_DELAY", INT_MAX_TIME)
			end
			if tunables.get_int("EXEC_FGOODS_GANGCHASE_DELAY") ~= INT_MAX_TIME then
				tunables.set_int("EXEC_FGOODS_GANGCHASE_DELAY", INT_MAX_TIME)
			end
			if tunables.get_int("EXEC_FGOODS_GANGCHASE_WAVE_DELAY") ~= INT_MAX_TIME then
				tunables.set_int("EXEC_FGOODS_GANGCHASE_WAVE_DELAY", INT_MAX_TIME)
			end
			if tunables.get_int("EXEC_SALVAGE_REBREATHER_DELAY") ~= INT_MAX_TIME then
				tunables.set_int("EXEC_SALVAGE_REBREATHER_DELAY", INT_MAX_TIME)
			end
			--if tunables.get_int("EXEC_SALVAGE_INITIAL_REBREATHER_DELAY") ~= INT_MAX_TIME then -- Tunable 0x486618980 not found.
			--	tunables.set_int("EXEC_SALVAGE_INITIAL_REBREATHER_DELAY", INT_MAX_TIME)
			--end
			if tunables.get_int("EXEC_SELL_JAMMER_DELAY") ~= INT_MAX_TIME then
				tunables.set_int("EXEC_SELL_JAMMER_DELAY", INT_MAX_TIME)
			end
			if tunables.get_int("EXEC_UPGRADES_PLANE_JAMMER_RECHARGE_DELAY") ~= INT_MAX_TIME then
				tunables.set_int("EXEC_UPGRADES_PLANE_JAMMER_RECHARGE_DELAY", INT_MAX_TIME)
			end
		--end
		SpecialCargoGlobalSignal_Toggle = 1
	else
		if SpecialCargoGlobalSignal_Toggle == 1 then
			tunables.set_int("EXEC_EASY_BUY_BLIP_DELAY", 40000)
			tunables.set_int("EXEC_MEDIUM_BUY_BLIP_DELAY", 20000)
			tunables.set_int("EXEC_HARD_BUY_BLIP_DELAY", 5000)
			tunables.set_int("EXEC_EASY_SELL_BLIP_DELAY", 40000)
			tunables.set_int("EXEC_MEDIUM_SELL_BLIP_DELAY", 20000)
			tunables.set_int("EXEC_HARD_SELL_BLIP_DELAY", 5000)
			tunables.set_int("EXEC_FGOODS_GANGCHASE_DELAY", 20000)
			tunables.set_int("EXEC_FGOODS_GANGCHASE_WAVE_DELAY", 10000)
			tunables.set_int("EXEC_SALVAGE_REBREATHER_DELAY", 5000)
			--tunables.set_int("EXEC_SALVAGE_INITIAL_REBREATHER_DELAY", 0) -- Tunable 0x486618980 not found.
			tunables.set_int("EXEC_SELL_JAMMER_DELAY", 2500)
			tunables.set_int("EXEC_UPGRADES_PLANE_JAMMER_RECHARGE_DELAY", 2000)
			SpecialCargoGlobalSignal_Toggle = 0
		end
	end
	
	if SpecialCargoDuration then
		--if SpecialCargoDuration_Toggle == 0 then
			if tunables.get_int("EXEC_CONTRABAND_BUY_COLLECTION_EXPIRY") ~= INT_MAX_TIME then
				tunables.set_int("EXEC_CONTRABAND_BUY_COLLECTION_EXPIRY", INT_MAX_TIME)
			end
			if tunables.get_int("EXEC_CONTRABAND_BUY_DELIVERY_EXPIRY") ~= INT_MAX_TIME then
				tunables.set_int("EXEC_CONTRABAND_BUY_DELIVERY_EXPIRY", INT_MAX_TIME)
			end
			if tunables.get_int("EXEC_DEFEND_TIME_LOWER_THRESHOLD") ~= INT_MAX_TIME then
				tunables.set_int("EXEC_DEFEND_TIME_LOWER_THRESHOLD", INT_MAX_TIME)
			end
			if tunables.get_int("EXEC_DEFEND_TIME_UPPER_THRESHOLD") ~= INT_MAX_TIME then
				tunables.set_int("EXEC_DEFEND_TIME_UPPER_THRESHOLD", INT_MAX_TIME)
			end
			if tunables.get_int("EXEC_CONTRABAND_SELL_EXPIRY") ~= INT_MAX_TIME then
				tunables.set_int("EXEC_CONTRABAND_SELL_EXPIRY", INT_MAX_TIME)
			end
			if tunables.get_int("EXEC_SELL_JAMMER_DURATION") ~= INT_MAX_TIME then
				tunables.set_int("EXEC_SELL_JAMMER_DURATION", INT_MAX_TIME)
			end
			if tunables.get_int("EXEC_UPGRADES_PLANE_JAMMER_DURATION") ~= INT_MAX_TIME then
				tunables.set_int("EXEC_UPGRADES_PLANE_JAMMER_DURATION", INT_MAX_TIME)
			end
			if tunables.get_int("EXEC_DEFEND_GRACE_TIMER_TIER1") ~= INT_MAX_TIME then
				tunables.set_int("EXEC_DEFEND_GRACE_TIMER_TIER1", INT_MAX_TIME)
			end
			if tunables.get_int("EXEC_DEFEND_GRACE_TIMER_TIER2") ~= INT_MAX_TIME then
				tunables.set_int("EXEC_DEFEND_GRACE_TIMER_TIER2", INT_MAX_TIME)
			end
			if tunables.get_int("EXEC_DEFEND_GRACE_TIMER_TIER3") ~= INT_MAX_TIME then
				tunables.set_int("EXEC_DEFEND_GRACE_TIMER_TIER3", INT_MAX_TIME)
			end
			if tunables.get_int("EXEC_DEFEND_GRACE_TIMER_TIER4") ~= INT_MAX_TIME then
				tunables.set_int("EXEC_DEFEND_GRACE_TIMER_TIER4", INT_MAX_TIME)
			end
			if tunables.get_int("EXEC_DEFEND_GRACE_TIMER_TIER5") ~= INT_MAX_TIME then
				tunables.set_int("EXEC_DEFEND_GRACE_TIMER_TIER5", INT_MAX_TIME)
			end
			if tunables.get_int("EXEC_DEFEND_TIMER_UNDER_ATTACK") ~= INT_MAX_TIME then
				tunables.set_int("EXEC_DEFEND_TIMER_UNDER_ATTACK", INT_MAX_TIME)
			end
		--end
		SpecialCargoDuration_Toggle = 1
	else
		if SpecialCargoDuration_Toggle == 1 then
			tunables.set_int("EXEC_CONTRABAND_BUY_COLLECTION_EXPIRY", 900000)
			tunables.set_int("EXEC_CONTRABAND_BUY_DELIVERY_EXPIRY", 900000)
			tunables.set_int("EXEC_DEFEND_TIME_LOWER_THRESHOLD", 18000000)
			tunables.set_int("EXEC_DEFEND_TIME_UPPER_THRESHOLD", 36000000)
			tunables.set_int("EXEC_CONTRABAND_SELL_EXPIRY", 1800000)
			tunables.set_int("EXEC_SELL_JAMMER_DURATION", 20000)
			tunables.set_int("EXEC_UPGRADES_PLANE_JAMMER_DURATION", 30000)
			tunables.set_int("EXEC_DEFEND_GRACE_TIMER_TIER1", 120000)
			tunables.set_int("EXEC_DEFEND_GRACE_TIMER_TIER2", 96000)
			tunables.set_int("EXEC_DEFEND_GRACE_TIMER_TIER3", 72000)
			tunables.set_int("EXEC_DEFEND_GRACE_TIMER_TIER4", 60000)
			tunables.set_int("EXEC_DEFEND_GRACE_TIMER_TIER5", 45000)
			tunables.set_int("EXEC_DEFEND_TIMER_UNDER_ATTACK", 300000)
			SpecialCargoDuration_Toggle = 0
		end
	end
	
	if VehicleCargoGlobalSignal then
		--if VehicleCargoGlobalSignal_Toggle == 0 then
			if tunables.get_int("IMPEXP_STEAL_EASY_GLOBAL_SIGNAL") ~= INT_MAX_TIME then
				tunables.set_int("IMPEXP_STEAL_EASY_GLOBAL_SIGNAL", INT_MAX_TIME)
			end
			if tunables.get_int("IMPEXP_STEAL_MEDIUM_GLOBAL_SIGNAL") ~= INT_MAX_TIME then
				tunables.set_int("IMPEXP_STEAL_MEDIUM_GLOBAL_SIGNAL", INT_MAX_TIME)
			end
			if tunables.get_int("IMPEXP_STEAL_HARD_GLOBAL_SIGNAL") ~= INT_MAX_TIME then
				tunables.set_int("IMPEXP_STEAL_HARD_GLOBAL_SIGNAL", INT_MAX_TIME)
			end
		--end
		VehicleCargoGlobalSignal_Toggle = 1
	else
		if VehicleCargoGlobalSignal_Toggle == 1 then
			tunables.set_int("IMPEXP_STEAL_EASY_GLOBAL_SIGNAL", 20000)
			tunables.set_int("IMPEXP_STEAL_MEDIUM_GLOBAL_SIGNAL", 10000)
			tunables.set_int("IMPEXP_STEAL_HARD_GLOBAL_SIGNAL", 5000)
			VehicleCargoGlobalSignal_Toggle = 0
		end
	end
	
	if VehicleCargoDuration then
		--if VehicleCargoDuration_Toggle == 0 then
			if tunables.get_int("IMPEXP_STEAL_TAIL_VEHICLE_STUCK_TIME") ~= INT_MAX_TIME then
				tunables.set_int("IMPEXP_STEAL_TAIL_VEHICLE_STUCK_TIME", INT_MAX_TIME)
			end
			if tunables.get_int("IMPEXP_STEAL_TAIL_VEHICLE_JAMMED_TIME") ~= INT_MAX_TIME then
				tunables.set_int("IMPEXP_STEAL_TAIL_VEHICLE_JAMMED_TIME", INT_MAX_TIME)
			end
			if tunables.get_int("IMPEXP_STEAL_COLLECT_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("IMPEXP_STEAL_COLLECT_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("IMPEXP_STEAL_DELIVER_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("IMPEXP_STEAL_DELIVER_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("IMPEXP_BOMB_DEFUSE_ACTIVATION_TIME") ~= INT_MAX_TIME then
				tunables.set_int("IMPEXP_BOMB_DEFUSE_ACTIVATION_TIME", INT_MAX_TIME)
			end
			if tunables.get_int("IMPEXP_BOMB_DEFUSE_DETONATION_TIME") ~= INT_MAX_TIME then
				tunables.set_int("IMPEXP_BOMB_DEFUSE_DETONATION_TIME", INT_MAX_TIME)
			end
			if tunables.get_int("IMPEXP_SELL_MODDING_TIMER") ~= INT_MAX_TIME then
				tunables.set_int("IMPEXP_SELL_MODDING_TIMER", INT_MAX_TIME)
			end
			if tunables.get_int("IMPEXP_SELL_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("IMPEXP_SELL_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("IMPEXP_SELL_POST_MOD_TRANS_TIMEOUT") ~= INT_MAX_TIME then
				tunables.set_int("IMPEXP_SELL_POST_MOD_TRANS_TIMEOUT", INT_MAX_TIME)
			end
		--end
		VehicleCargoDuration_Toggle = 1
	else
		if VehicleCargoDuration_Toggle == 1 then
			tunables.set_int("IMPEXP_STEAL_TAIL_VEHICLE_STUCK_TIME", 10000)
			tunables.set_int("IMPEXP_STEAL_TAIL_VEHICLE_JAMMED_TIME", 15000)
			tunables.set_int("IMPEXP_STEAL_COLLECT_TIME_LIMIT", 1200000)
			tunables.set_int("IMPEXP_STEAL_DELIVER_TIME_LIMIT", 1200000)
			tunables.set_int("IMPEXP_BOMB_DEFUSE_ACTIVATION_TIME", 20000)
			tunables.set_int("IMPEXP_BOMB_DEFUSE_DETONATION_TIME", 10000)
			tunables.set_int("IMPEXP_SELL_MODDING_TIMER", 300000)
			tunables.set_int("IMPEXP_SELL_TIME_LIMIT", 900000)
			tunables.set_int("IMPEXP_SELL_POST_MOD_TRANS_TIMEOUT", 90000)
			VehicleCargoDuration_Toggle = 0
		end
	end
	
	if MCBusinessGlobalSignal then
		--if MCBusinessGlobalSignal_Toggle == 0 then
			if tunables.get_int("BIKER_GLOBAL_SIGNAL_EASY") ~= INT_MAX_TIME then
				tunables.set_int("BIKER_GLOBAL_SIGNAL_EASY", INT_MAX_TIME)
			end
			if tunables.get_int("BIKER_GLOBAL_SIGNAL_MEDIUM") ~= INT_MAX_TIME then
				tunables.set_int("BIKER_GLOBAL_SIGNAL_MEDIUM", INT_MAX_TIME)
			end
			if tunables.get_int("BIKER_GLOBAL_SIGNAL_HARD") ~= INT_MAX_TIME then
				tunables.set_int("BIKER_GLOBAL_SIGNAL_HARD", INT_MAX_TIME)
			end
		--end
		MCBusinessGlobalSignal_Toggle = 1
	else
		if MCBusinessGlobalSignal_Toggle == 1 then
			tunables.set_int("BIKER_GLOBAL_SIGNAL_EASY", 40000)
			tunables.set_int("BIKER_GLOBAL_SIGNAL_MEDIUM", 20000)
			tunables.set_int("BIKER_GLOBAL_SIGNAL_HARD", 5000)
			MCBusinessGlobalSignal_Toggle = 0
		end
	end
	
	if MCBusinessDuration then
		--if MCBusinessDuration_Toggle == 0 then
			if tunables.get_int("BIKER_RESUPPLY_DELIVERY_TIME") ~= INT_MAX_TIME2 then
				tunables.set_int("BIKER_RESUPPLY_DELIVERY_TIME", INT_MAX_TIME2)
			end
			if tunables.get_int("BIKER_SELL_CONVOY_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("BIKER_SELL_CONVOY_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("BIKER_SELL_TRASHMASTER_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("BIKER_SELL_TRASHMASTER_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("BIKER_SELL_PROVEN_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("BIKER_SELL_PROVEN_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("BIKER_SELL_FRIENDS_IN_NEED_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("BIKER_SELL_FRIENDS_IN_NEED_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("BIKER_SELL_BORDER_PATROL_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("BIKER_SELL_BORDER_PATROL_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("BIKER_SELL_HELICOPTER_DROP_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("BIKER_SELL_HELICOPTER_DROP_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("BIKER_SELL_POSTMAN_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("BIKER_SELL_POSTMAN_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("BIKER_SELL_AIR_DROP_AT_SEA_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("BIKER_SELL_AIR_DROP_AT_SEA_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("BIKER_SELL_STING_OP_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("BIKER_SELL_STING_OP_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("BIKER_SELL_BENSON_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("BIKER_SELL_BENSON_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("BIKER_SELL_BAG_DROP_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("BIKER_SELL_BAG_DROP_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("BIKER_SELL_RACE_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("BIKER_SELL_RACE_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("BIKER_SELL_CLUB_RUN_TIME_LIMIT") ~= INT_MAX_TIME then
				tunables.set_int("BIKER_SELL_CLUB_RUN_TIME_LIMIT", INT_MAX_TIME)
			end
			if tunables.get_int("BIKER_WEED_BASE_DEFEND_TIMER") ~= INT_MAX_TIME then
				tunables.set_int("BIKER_WEED_BASE_DEFEND_TIMER", INT_MAX_TIME)
			end
			if tunables.get_int("BIKER_WEED_UPGRADE_DEFEND_TIMER") ~= INT_MAX_TIME then
				tunables.set_int("BIKER_WEED_UPGRADE_DEFEND_TIMER", INT_MAX_TIME)
			end
			if tunables.get_int("BIKER_METH_BASE_DEFEND_TIMER") ~= INT_MAX_TIME then
				tunables.set_int("BIKER_METH_BASE_DEFEND_TIMER", INT_MAX_TIME)
			end
			if tunables.get_int("BIKER_METH_UPGRADE_DEFEND_TIMER") ~= INT_MAX_TIME then
				tunables.set_int("BIKER_METH_UPGRADE_DEFEND_TIMER", INT_MAX_TIME)
			end
			if tunables.get_int("BIKER_COCAINE_BASE_DEFEND_TIMER") ~= INT_MAX_TIME then
				tunables.set_int("BIKER_COCAINE_BASE_DEFEND_TIMER", INT_MAX_TIME)
			end
			if tunables.get_int("BIKER_COCAINE_UPGRADE_DEFEND_TIMER") ~= INT_MAX_TIME then
				tunables.set_int("BIKER_COCAINE_UPGRADE_DEFEND_TIMER", INT_MAX_TIME)
			end
			if tunables.get_int("BIKER_FAKEIDS_BASE_DEFEND_TIMER") ~= INT_MAX_TIME then
				tunables.set_int("BIKER_FAKEIDS_BASE_DEFEND_TIMER", INT_MAX_TIME)
			end
			if tunables.get_int("BIKER_FAKEIDS_UPGRADE_DEFEND_TIMER") ~= INT_MAX_TIME then
				tunables.set_int("BIKER_FAKEIDS_UPGRADE_DEFEND_TIMER", INT_MAX_TIME)
			end
			if tunables.get_int("BIKER_COUNTERCASH_BASE_DEFEND_TIMER") ~= INT_MAX_TIME then
				tunables.set_int("BIKER_COUNTERCASH_BASE_DEFEND_TIMER", INT_MAX_TIME)
			end
			if tunables.get_int("BIKER_COUNTERCASH_UPGRADE_DEFEND_TIMER") ~= INT_MAX_TIME then
				tunables.set_int("BIKER_COUNTERCASH_UPGRADE_DEFEND_TIMER", INT_MAX_TIME)
			end
			if tunables.get_int("BIKER_POW_BUDDY_DEATH_TIMER") ~= INT_MAX_TIME then
				tunables.set_int("BIKER_POW_BUDDY_DEATH_TIMER", INT_MAX_TIME)
			end
		--end
		MCBusinessDuration_Toggle = 1
	else
		if MCBusinessDuration_Toggle == 1 then
			tunables.set_int("BIKER_RESUPPLY_DELIVERY_TIME", 1200)
			tunables.set_int("BIKER_SELL_CONVOY_TIME_LIMIT", 1800000)
			tunables.set_int("BIKER_SELL_TRASHMASTER_TIME_LIMIT", 1800000)
			tunables.set_int("BIKER_SELL_PROVEN_TIME_LIMIT", 1800000)
			tunables.set_int("BIKER_SELL_FRIENDS_IN_NEED_TIME_LIMIT", 1800000)
			tunables.set_int("BIKER_SELL_BORDER_PATROL_TIME_LIMIT", 1800000)
			tunables.set_int("BIKER_SELL_HELICOPTER_DROP_TIME_LIMIT", 1800000)
			tunables.set_int("BIKER_SELL_POSTMAN_TIME_LIMIT", 1800000)
			tunables.set_int("BIKER_SELL_AIR_DROP_AT_SEA_TIME_LIMIT", 1800000)
			tunables.set_int("BIKER_SELL_STING_OP_TIME_LIMIT", 1800000)
			tunables.set_int("BIKER_SELL_BENSON_TIME_LIMIT", 1800000)
			tunables.set_int("BIKER_SELL_BAG_DROP_TIME_LIMIT", 1800000)
			tunables.set_int("BIKER_SELL_RACE_TIME_LIMIT", 1800000)
			tunables.set_int("BIKER_SELL_CLUB_RUN_TIME_LIMIT", 1800000)
			tunables.set_int("BIKER_WEED_BASE_DEFEND_TIMER", 21600)
			tunables.set_int("BIKER_WEED_UPGRADE_DEFEND_TIMER", 43200)
			tunables.set_int("BIKER_METH_BASE_DEFEND_TIMER", 14400)
			tunables.set_int("BIKER_METH_UPGRADE_DEFEND_TIMER", 28800)
			tunables.set_int("BIKER_COCAINE_BASE_DEFEND_TIMER", 10800)
			tunables.set_int("BIKER_COCAINE_UPGRADE_DEFEND_TIMER", 21600)
			tunables.set_int("BIKER_FAKEIDS_BASE_DEFEND_TIMER", 25200)
			tunables.set_int("BIKER_FAKEIDS_UPGRADE_DEFEND_TIMER", 50400)
			tunables.set_int("BIKER_COUNTERCASH_BASE_DEFEND_TIMER", 18000)
			tunables.set_int("BIKER_COUNTERCASH_UPGRADE_DEFEND_TIMER", 36000)
			tunables.set_int("BIKER_POW_BUDDY_DEATH_TIMER", 300000)
			MCBusinessDuration_Toggle = 0
		end
	end
	
	if BunkerGlobalSignal then
		--if BunkerGlobalSignal_Toggle == 0 then
			if tunables.get_int("GR_RESUPPLY_AND_SELL_EASY_GLOBAL_SIGNAL_TIME") ~= INT_MAX_TIME2 then
				tunables.set_int("GR_RESUPPLY_AND_SELL_EASY_GLOBAL_SIGNAL_TIME", INT_MAX_TIME2)
			end
			if tunables.get_int("GR_RESUPPLY_AND_SELL_MEDIUM_GLOBAL_SIGNAL_TIME") ~= INT_MAX_TIME2 then
				tunables.set_int("GR_RESUPPLY_AND_SELL_MEDIUM_GLOBAL_SIGNAL_TIME", INT_MAX_TIME2)
			end
			if tunables.get_int("GR_RESUPPLY_AND_SELL_HARD_GLOBAL_SIGNAL_TIME") ~= INT_MAX_TIME2 then
				tunables.set_int("GR_RESUPPLY_AND_SELL_HARD_GLOBAL_SIGNAL_TIME", INT_MAX_TIME2)
			end
		--end
		BunkerGlobalSignal_Toggle = 1
	else
		if BunkerGlobalSignal_Toggle == 1 then
			tunables.set_int("GR_RESUPPLY_AND_SELL_EASY_GLOBAL_SIGNAL_TIME", 40)
			tunables.set_int("GR_RESUPPLY_AND_SELL_MEDIUM_GLOBAL_SIGNAL_TIME", 20)
			tunables.set_int("GR_RESUPPLY_AND_SELL_HARD_GLOBAL_SIGNAL_TIME", 5)
			BunkerGlobalSignal_Toggle = 0
		end
	end
	
	if BunkerDuration then
		--if BunkerDuration_Toggle == 0 then
			--if tunables.get_int("GR_RESUPPLY_GENERAL_MISSION_TIME") ~= INT_MAX_TIME then -- Tunable 0x2216793185 not found.
			--	tunables.set_int("GR_RESUPPLY_GENERAL_MISSION_TIME", INT_MAX_TIME)
			--end
			if tunables.get_int("GR_SETUP_GENERAL_MISSION_TIME") ~= INT_MAX_TIME then
				tunables.set_int("GR_SETUP_GENERAL_MISSION_TIME", INT_MAX_TIME)
			end
			if tunables.get_int("GR_STEAL_APC_MISSION_TIME") ~= INT_MAX_TIME then
				tunables.set_int("GR_STEAL_APC_MISSION_TIME", INT_MAX_TIME)
			end
			if tunables.get_int("GR_STEAL_MINIGUNS_MISSION_TIME") ~= INT_MAX_TIME then
				tunables.set_int("GR_STEAL_MINIGUNS_MISSION_TIME", INT_MAX_TIME)
			end
			if tunables.get_int("GR_STEAL_RAILGUNS_MISSION_TIME") ~= INT_MAX_TIME then
				tunables.set_int("GR_STEAL_RAILGUNS_MISSION_TIME", INT_MAX_TIME)
			end
			if tunables.get_int("GR_STEAL_RHINO_MISSION_TIME") ~= INT_MAX_TIME then
				tunables.set_int("GR_STEAL_RHINO_MISSION_TIME", INT_MAX_TIME)
			end
			if tunables.get_int("GR_STEAL_TECHNICAL_MISSION_TIME") ~= INT_MAX_TIME then
				tunables.set_int("GR_STEAL_TECHNICAL_MISSION_TIME", INT_MAX_TIME)
			end
			if tunables.get_int("GR_STEAL_VAN_MISSION_TIME") ~= INT_MAX_TIME then
				tunables.set_int("GR_STEAL_VAN_MISSION_TIME", INT_MAX_TIME)
			end
			if tunables.get_int("GR_RIVAL_OPERATION_MISSION_TIME") ~= INT_MAX_TIME then
				tunables.set_int("GR_RIVAL_OPERATION_MISSION_TIME", INT_MAX_TIME)
			end
			if tunables.get_int("GR_ALTRUISTS_MISSION_TIME") ~= INT_MAX_TIME then
				tunables.set_int("GR_ALTRUISTS_MISSION_TIME", INT_MAX_TIME)
			end
			if tunables.get_int("GR_YACHT_SEARCH_MISSION_TIME") ~= INT_MAX_TIME then
				tunables.set_int("GR_YACHT_SEARCH_MISSION_TIME", INT_MAX_TIME)
			end
			if tunables.get_int("GR_DESTROY_TRUCKS_MISSION_TIME") ~= INT_MAX_TIME then
				tunables.set_int("GR_DESTROY_TRUCKS_MISSION_TIME", INT_MAX_TIME)
			end
			if tunables.get_int("GR_AMBUSHED_MISSION_TIME") ~= INT_MAX_TIME then
				tunables.set_int("GR_AMBUSHED_MISSION_TIME", INT_MAX_TIME)
			end
			if tunables.get_int("GR_DIVERSION_MISSION_TIME") ~= INT_MAX_TIME then
				tunables.set_int("GR_DIVERSION_MISSION_TIME", INT_MAX_TIME)
			end
			if tunables.get_int("GR_FLASHLIGHT_MISSION_TIME") ~= INT_MAX_TIME then
				tunables.set_int("GR_FLASHLIGHT_MISSION_TIME", INT_MAX_TIME)
			end
			if tunables.get_int("GR_FLY_SWATTER_MISSION_TIME") ~= INT_MAX_TIME then
				tunables.set_int("GR_FLY_SWATTER_MISSION_TIME", INT_MAX_TIME)
			end
			if tunables.get_int("GR_FOLLOW_THE_LEADER_MISSION_TIME") ~= INT_MAX_TIME2 then
				tunables.set_int("GR_FOLLOW_THE_LEADER_MISSION_TIME", INT_MAX_TIME2)
			end
			if tunables.get_int("GR_HILL_CLIMB_MISSION_TIME") ~= INT_MAX_TIME2 then
				tunables.set_int("GR_HILL_CLIMB_MISSION_TIME", INT_MAX_TIME2)
			end
			if tunables.get_int("GR_MOVE_WEAPONS_MISSION_TIME") ~= INT_MAX_TIME2 then
				tunables.set_int("GR_MOVE_WEAPONS_MISSION_TIME", INT_MAX_TIME2)
			end
			if tunables.get_int("GR_PHANTOM_MISSION_TIME") ~= INT_MAX_TIME2 then
				tunables.set_int("GR_PHANTOM_MISSION_TIME", INT_MAX_TIME2)
			end
			if tunables.get_int("GR_ROUGH_TERRAIN_MISSION_TIME") ~= INT_MAX_TIME2 then
				tunables.set_int("GR_ROUGH_TERRAIN_MISSION_TIME", INT_MAX_TIME2)
			end
			--if tunables.get_int("GR_MANU_BASE_DEFEND_TIMER") ~= INT_MAX_TIME then
			--	tunables.set_int("GR_MANU_BASE_DEFEND_TIMER", INT_MAX_TIME)
			--end
			--if tunables.get_int("GR_MANU_UPGRADE_DEFEND_TIMER") ~= INT_MAX_TIME then
			--	tunables.set_int("GR_MANU_UPGRADE_DEFEND_TIMER", INT_MAX_TIME)
			--end
			if tunables.get_int("GR_DEFEND_VALKYRIE_MISSION_TIME") ~= INT_MAX_TIME then
				tunables.set_int("GR_DEFEND_VALKYRIE_MISSION_TIME", INT_MAX_TIME)
			end
			if tunables.get_int("GR_DEFEND_DISARM_BOMBS_BOMB_DISARM_TIME") ~= INT_MAX_TIME2 then
				tunables.set_int("GR_DEFEND_DISARM_BOMBS_BOMB_DISARM_TIME", INT_MAX_TIME2)
			end
			if tunables.get_int("GR_DEFEND_DISARM_BOMBS_MISSION_TIME") ~= INT_MAX_TIME then
				tunables.set_int("GR_DEFEND_DISARM_BOMBS_MISSION_TIME", INT_MAX_TIME)
			end
		--end
		BunkerDuration_Toggle = 1
	else
		if BunkerDuration_Toggle == 1 then
			--tunables.set_int("GR_RESUPPLY_GENERAL_MISSION_TIME", 0) -- Tunable 0x2216793185 not found.
			tunables.set_int("GR_SETUP_GENERAL_MISSION_TIME", 1800000)
			tunables.set_int("GR_STEAL_APC_MISSION_TIME", 1800000)
			tunables.set_int("GR_STEAL_MINIGUNS_MISSION_TIME", 1800000)
			tunables.set_int("GR_STEAL_RAILGUNS_MISSION_TIME", 1800000)
			tunables.set_int("GR_STEAL_RHINO_MISSION_TIME", 1800000)
			tunables.set_int("GR_STEAL_TECHNICAL_MISSION_TIME", 1800000)
			tunables.set_int("GR_STEAL_VAN_MISSION_TIME", 1800000)
			tunables.set_int("GR_RIVAL_OPERATION_MISSION_TIME", 1800000)
			tunables.set_int("GR_ALTRUISTS_MISSION_TIME", 1800000)
			tunables.set_int("GR_YACHT_SEARCH_MISSION_TIME", 1800000)
			tunables.set_int("GR_DESTROY_TRUCKS_MISSION_TIME", 1800000)
			tunables.set_int("GR_AMBUSHED_MISSION_TIME", 1800000)
			tunables.set_int("GR_DIVERSION_MISSION_TIME", 1800000)
			tunables.set_int("GR_FLASHLIGHT_MISSION_TIME", 1800000)
			tunables.set_int("GR_FLY_SWATTER_MISSION_TIME", 1800000)
			tunables.set_int("GR_FOLLOW_THE_LEADER_MISSION_TIME", 900000)
			tunables.set_int("GR_HILL_CLIMB_MISSION_TIME", 900000)
			tunables.set_int("GR_MOVE_WEAPONS_MISSION_TIME", 900000)
			tunables.set_int("GR_PHANTOM_MISSION_TIME", 900000)
			tunables.set_int("GR_ROUGH_TERRAIN_MISSION_TIME", 900000)
			--tunables.set_int("GR_MANU_BASE_DEFEND_TIMER", 18000)
			--tunables.set_int("GR_MANU_UPGRADE_DEFEND_TIMER", 36000)
			tunables.set_int("GR_DEFEND_VALKYRIE_MISSION_TIME", 1800000)
			tunables.set_int("GR_DEFEND_DISARM_BOMBS_BOMB_DISARM_TIME", 300000)
			tunables.set_int("GR_DEFEND_DISARM_BOMBS_MISSION_TIME", 1800000)
			BunkerDuration_Toggle = 0
		end
	end
	
	if HangarCargoGlobalSignal then
		--if HangarCargoGlobalSignal_Toggle == 0 then
			if tunables.get_int("SMUG_STEAL_AND_SELL_EASY_GLOBAL_SIGNAL_TIME") ~= INT_MAX_TIME2 then
				tunables.set_int("SMUG_STEAL_AND_SELL_EASY_GLOBAL_SIGNAL_TIME", INT_MAX_TIME2)
			end
			if tunables.get_int("SMUG_STEAL_AND_SELL_MEDIUM_GLOBAL_SIGNAL_TIME") ~= INT_MAX_TIME2 then
				tunables.set_int("SMUG_STEAL_AND_SELL_MEDIUM_GLOBAL_SIGNAL_TIME", INT_MAX_TIME2)
			end
			if tunables.get_int("SMUG_STEAL_AND_SELL_HARD_GLOBAL_SIGNAL_TIME") ~= INT_MAX_TIME2 then
				tunables.set_int("SMUG_STEAL_AND_SELL_HARD_GLOBAL_SIGNAL_TIME", INT_MAX_TIME2)
			end
		--end
		HangarCargoGlobalSignal_Toggle = 1
	else
		if HangarCargoGlobalSignal_Toggle == 1 then
			tunables.set_int("SMUG_STEAL_AND_SELL_EASY_GLOBAL_SIGNAL_TIME", 30)
			tunables.set_int("SMUG_STEAL_AND_SELL_MEDIUM_GLOBAL_SIGNAL_TIME", 15)
			tunables.set_int("SMUG_STEAL_AND_SELL_HARD_GLOBAL_SIGNAL_TIME", 5)
			HangarCargoGlobalSignal_Toggle = 0
		end
	end
	
	if HangarCargoDuration then
		--if HangarCargoDuration_Toggle == 0 then
			if tunables.get_int("SMUG_SETUP_GENERAL_MISSION_TIME") ~= INT_MAX_TIME then
				tunables.set_int("SMUG_SETUP_GENERAL_MISSION_TIME", INT_MAX_TIME)
			end
			if tunables.get_int("SMUG_STEAL_BEACON_GRAB_MISSION_DURATION") ~= INT_MAX_TIME then
				tunables.set_int("SMUG_STEAL_BEACON_GRAB_MISSION_DURATION", INT_MAX_TIME)
			end
			if tunables.get_int("SMUG_STEAL_BLACKBOX_MISSION_DURATION") ~= INT_MAX_TIME then
				tunables.set_int("SMUG_STEAL_BLACKBOX_MISSION_DURATION", INT_MAX_TIME)
			end
			if tunables.get_int("SMUG_STEAL_BOMBING_RUN_MISSION_DURATION") ~= INT_MAX_TIME then
				tunables.set_int("SMUG_STEAL_BOMBING_RUN_MISSION_DURATION", INT_MAX_TIME)
			end
			if tunables.get_int("SMUG_STEAL_BOMB_BASE_MISSION_DURATION") ~= INT_MAX_TIME then
				tunables.set_int("SMUG_STEAL_BOMB_BASE_MISSION_DURATION", INT_MAX_TIME)
			end
			if tunables.get_int("SMUG_STEAL_BOMB_ROOF_MISSION_DURATION") ~= INT_MAX_TIME then
				tunables.set_int("SMUG_STEAL_BOMB_ROOF_MISSION_DURATION", INT_MAX_TIME)
			end
			if tunables.get_int("SMUG_STEAL_DOGFIGHT_MISSION_DURATION") ~= INT_MAX_TIME then
				tunables.set_int("SMUG_STEAL_DOGFIGHT_MISSION_DURATION", INT_MAX_TIME)
			end
			if tunables.get_int("SMUG_STEAL_ESCORT_MISSION_DURATION") ~= INT_MAX_TIME then
				tunables.set_int("SMUG_STEAL_ESCORT_MISSION_DURATION", INT_MAX_TIME)
			end
			if tunables.get_int("SMUG_STEAL_INFILTRATION_MISSION_DURATION") ~= INT_MAX_TIME then
				tunables.set_int("SMUG_STEAL_INFILTRATION_MISSION_DURATION", INT_MAX_TIME)
			end
			if tunables.get_int("SMUG_STEAL_ROOF_ATTACK_MISSION_DURATION") ~= INT_MAX_TIME then
				tunables.set_int("SMUG_STEAL_ROOF_ATTACK_MISSION_DURATION", INT_MAX_TIME)
			end
			if tunables.get_int("SMUG_STEAL_SPLASH_LANDING_MISSION_DURATION") ~= INT_MAX_TIME then
				tunables.set_int("SMUG_STEAL_SPLASH_LANDING_MISSION_DURATION", INT_MAX_TIME)
			end
			if tunables.get_int("SMUG_STEAL_STEAL_AIRCRAFT_MISSION_DURATION") ~= INT_MAX_TIME then
				tunables.set_int("SMUG_STEAL_STEAL_AIRCRAFT_MISSION_DURATION", INT_MAX_TIME)
			end
			if tunables.get_int("SMUG_STEAL_STUNT_PILOT_MISSION_DURATION") ~= INT_MAX_TIME then
				tunables.set_int("SMUG_STEAL_STUNT_PILOT_MISSION_DURATION", INT_MAX_TIME)
			end
			if tunables.get_int("SMUG_STEAL_THERMAL_SCOPE_MISSION_DURATION") ~= INT_MAX_TIME then
				tunables.set_int("SMUG_STEAL_THERMAL_SCOPE_MISSION_DURATION", INT_MAX_TIME)
			end
			if tunables.get_int("SMUG_STEAL_CARGO_PLANE_INTERCEPT_MISSION_DURATION") ~= INT_MAX_TIME then
				tunables.set_int("SMUG_STEAL_CARGO_PLANE_INTERCEPT_MISSION_DURATION", INT_MAX_TIME)
			end
			if tunables.get_int("SMUG_STEAL_CARGO_PLANE_DELIVER_MISSION_DURATION") ~= INT_MAX_TIME then
				tunables.set_int("SMUG_STEAL_CARGO_PLANE_DELIVER_MISSION_DURATION", INT_MAX_TIME)
			end
			if tunables.get_int("SMUG_SELL_AGILE_DELIVERY_MISSION_DURATION") ~= INT_MAX_TIME then
				tunables.set_int("SMUG_SELL_AGILE_DELIVERY_MISSION_DURATION", INT_MAX_TIME)
			end
			if tunables.get_int("SMUG_SELL_AIR_DELIVERY_MISSION_DURATION") ~= INT_MAX_TIME then
				tunables.set_int("SMUG_SELL_AIR_DELIVERY_MISSION_DURATION", INT_MAX_TIME)
			end
			if tunables.get_int("SMUG_SELL_AIR_POLICE_MISSION_DURATION") ~= INT_MAX_TIME then
				tunables.set_int("SMUG_SELL_AIR_POLICE_MISSION_DURATION", INT_MAX_TIME)
			end
			--if tunables.get_int("SMUG_SELL_BOMB_ROOF_MISSION_DURATION") ~= INT_MAX_TIME then -- tunable not found
			--	tunables.set_int("SMUG_SELL_BOMB_ROOF_MISSION_DURATION", INT_MAX_TIME)
			--end
			if tunables.get_int("SMUG_SELL_CONTESTED_MISSION_DURATION") ~= INT_MAX_TIME then
				tunables.set_int("SMUG_SELL_CONTESTED_MISSION_DURATION", INT_MAX_TIME)
			end
			if tunables.get_int("SMUG_SELL_FLYING_FORTRESS_MISSION_DURATION") ~= INT_MAX_TIME then
				tunables.set_int("SMUG_SELL_FLYING_FORTRESS_MISSION_DURATION", INT_MAX_TIME)
			end
			if tunables.get_int("SMUG_SELL_FLY_LOW_MISSION_DURATION") ~= INT_MAX_TIME then
				tunables.set_int("SMUG_SELL_FLY_LOW_MISSION_DURATION", INT_MAX_TIME)
			end
			if tunables.get_int("SMUG_SELL_HEAVY_LIFTING_MISSION_DURATION") ~= INT_MAX_TIME then
				tunables.set_int("SMUG_SELL_HEAVY_LIFTING_MISSION_DURATION", INT_MAX_TIME)
			end
			if tunables.get_int("SMUG_SELL_PRECISION_DELIVERY_MISSION_DURATION") ~= INT_MAX_TIME then
				tunables.set_int("SMUG_SELL_PRECISION_DELIVERY_MISSION_DURATION", INT_MAX_TIME)
			end
			if tunables.get_int("SMUG_SELL_UNDER_THE_RADAR_MISSION_DURATION") ~= INT_MAX_TIME then
				tunables.set_int("SMUG_SELL_UNDER_THE_RADAR_MISSION_DURATION", INT_MAX_TIME)
			end
		--end
		HangarCargoDuration_Toggle = 1
	else
		if HangarCargoDuration_Toggle == 1 then
			tunables.set_int("SMUG_SETUP_GENERAL_MISSION_TIME", 1800000)
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
			HangarCargoDuration_Toggle = 0
		end
	end
	
	if NightclubCooldown then
		--if NightclubCooldown_Toggle == 0 then
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
		--end
		NightclubCooldown_Toggle = 1
	else
		if NightclubCooldown_Toggle == 1 then
			tunables.set_int("BB_CLUB_MANAGEMENT_CLUB_MANAGEMENT_MISSION_COOLDOWN", 300000)
			tunables.set_int("BB_SELL_MISSIONS_MISSION_COOLDOWN", 300000)
			tunables.set_int("BB_SELL_MISSIONS_DELIVERY_VEHICLE_COOLDOWN_AFTER_SELL_MISSION", 300000)
			--stats.set_int("MPX_SOURCE_GOODS_CDTIMER", 0)
			--stats.set_int("MPX_SOURCE_RESEARCH_CDTIMER", 0)
			tunables.set_int("EXPORT_CARGO_LAUNCH_CD_TIME", 2880)
			tunables.set_int("NC_SOURCE_TRUCK_COOLDOWN", 960000)
			tunables.set_int("NIGHTCLUB_SOURCE_GOODS_CD_TIME", 1200)
			NightclubCooldown_Toggle = 0
		end
	end
	
	if NightclubGlobalSignal then
		--if NightclubGlobalSignal_Toggle == 0 then
			if tunables.get_int("BB_CLUB_MANAGEMENT_CLUB_MANAGEMENT_GLOBAL_SIGNAL_TIME") ~= INT_MAX_TIME then
				tunables.set_int("BB_CLUB_MANAGEMENT_CLUB_MANAGEMENT_GLOBAL_SIGNAL_TIME", INT_MAX_TIME)
			end
			if tunables.get_int("BB_SELL_MISSIONS_MISSION_GLOBAL_SIGNAL_TIME") ~= INT_MAX_TIME then
				tunables.set_int("BB_SELL_MISSIONS_MISSION_GLOBAL_SIGNAL_TIME", INT_MAX_TIME)
			end
		--end
		NightclubGlobalSignal_Toggle = 1
	else
		if NightclubGlobalSignal_Toggle == 1 then
			tunables.set_int("BB_CLUB_MANAGEMENT_CLUB_MANAGEMENT_GLOBAL_SIGNAL_TIME", 20000)
			tunables.set_int("BB_SELL_MISSIONS_MISSION_GLOBAL_SIGNAL_TIME", 20000)
			NightclubGlobalSignal_Toggle = 0
		end
	end
		
	if NightclubDuration then
		--if NightclubDuration_Toggle == 0 then
			if tunables.get_int("BB_SETUP_MISSIONS_DURATION") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_SETUP_MISSIONS_DURATION", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_NIGHTCLUB_MANAGEMENT_MISSIONS_DURATION_SUPPLY_RUN") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_NIGHTCLUB_MANAGEMENT_MISSIONS_DURATION_SUPPLY_RUN", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_NIGHTCLUB_MANAGEMENT_MISSIONS_DURATION_STOLEN_SUPPLIES") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_NIGHTCLUB_MANAGEMENT_MISSIONS_DURATION_STOLEN_SUPPLIES", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_NIGHTCLUB_MANAGEMENT_MISSIONS_DURATION_MUSCLE_OUT") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_NIGHTCLUB_MANAGEMENT_MISSIONS_DURATION_MUSCLE_OUT", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_NIGHTCLUB_MANAGEMENT_MISSIONS_DURATION_SNAPMATIC") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_NIGHTCLUB_MANAGEMENT_MISSIONS_DURATION_SNAPMATIC", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_NIGHTCLUB_MANAGEMENT_MISSIONS_DURATION_PRIVATE_TAXI") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_NIGHTCLUB_MANAGEMENT_MISSIONS_DURATION_PRIVATE_TAXI", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_NIGHTCLUB_MANAGEMENT_MISSIONS_DURATION_FLYER_PROMOTION") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_NIGHTCLUB_MANAGEMENT_MISSIONS_DURATION_FLYER_PROMOTION", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_NIGHTCLUB_MANAGEMENT_MISSIONS_DURATION_RIVAL_SUPPLY") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_NIGHTCLUB_MANAGEMENT_MISSIONS_DURATION_RIVAL_SUPPLY", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_NIGHTCLUB_MANAGEMENT_MISSIONS_DURATION_VIP_RESCUE") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_NIGHTCLUB_MANAGEMENT_MISSIONS_DURATION_VIP_RESCUE", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_NIGHTCLUB_MANAGEMENT_MISSIONS_DURATION_BLIMP_PROMOTION") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_NIGHTCLUB_MANAGEMENT_MISSIONS_DURATION_BLIMP_PROMOTION", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_NIGHTCLUB_MANAGEMENT_MISSIONS_DURATION_POSTER_PROMOTION") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_NIGHTCLUB_MANAGEMENT_MISSIONS_DURATION_POSTER_PROMOTION", INT_MAX_TIME3)
			end
			--if tunables.get_int("BB_NIGHTCLUB_MANAGEMENT_MISSIONS_DURATION_BOUNCER") ~= INT_MAX_TIME3 then -- Tunable 0x3630388450 not found.
			--	tunables.set_int("BB_NIGHTCLUB_MANAGEMENT_MISSIONS_DURATION_BOUNCER", INT_MAX_TIME3)
			--end
			if tunables.get_int("BB_SELL_MISSIONS_DURATION_SINGLE_DROP") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_SELL_MISSIONS_DURATION_SINGLE_DROP", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_SELL_MISSIONS_DURATION_MULTI_DROP") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_SELL_MISSIONS_DURATION_MULTI_DROP", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_SELL_MISSIONS_DURATION_HACK_DROP") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_SELL_MISSIONS_DURATION_HACK_DROP", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_SELL_MISSIONS_DURATION_ROADBLOCK") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_SELL_MISSIONS_DURATION_ROADBLOCK", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_SELL_MISSIONS_DURATION_PROTECT_BUYER") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_SELL_MISSIONS_DURATION_PROTECT_BUYER", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_SELL_MISSIONS_DURATION_UNDERCOVER_COPS") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_SELL_MISSIONS_DURATION_UNDERCOVER_COPS", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_SELL_MISSIONS_DURATION_OFFSHORE_TRANSFER") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_SELL_MISSIONS_DURATION_OFFSHORE_TRANSFER", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_SELL_MISSIONS_DURATION_NOT_A_SCRATCH") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_SELL_MISSIONS_DURATION_NOT_A_SCRATCH", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_SELL_MISSIONS_DURATION_FOLLOW_HELI") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_SELL_MISSIONS_DURATION_FOLLOW_HELI", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_SELL_MISSIONS_DURATION_FIND_BUYER") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_SELL_MISSIONS_DURATION_FIND_BUYER", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_BUSINESS_BATTLES_MISSIONS_DURATION_UNDER_GUARD") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_BUSINESS_BATTLES_MISSIONS_DURATION_UNDER_GUARD", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_BUSINESS_BATTLES_MISSIONS_DURATION_CARPARK_SEARCH") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_BUSINESS_BATTLES_MISSIONS_DURATION_CARPARK_SEARCH", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_BUSINESS_BATTLES_MISSIONS_DURATION_JOYRIDERS") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_BUSINESS_BATTLES_MISSIONS_DURATION_JOYRIDERS", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_BUSINESS_BATTLES_MISSIONS_DURATION_HAULAGE_II") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_BUSINESS_BATTLES_MISSIONS_DURATION_HAULAGE_II", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_BUSINESS_BATTLES_MISSIONS_DURATION_BREAK_IN") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_BUSINESS_BATTLES_MISSIONS_DURATION_BREAK_IN", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_BUSINESS_BATTLES_MISSIONS_DURATION_CAR_MEET_II") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_BUSINESS_BATTLES_MISSIONS_DURATION_CAR_MEET_II", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_BUSINESS_BATTLES_MISSIONS_DURATION_SHOWROOM") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_BUSINESS_BATTLES_MISSIONS_DURATION_SHOWROOM", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_BUSINESS_BATTLES_MISSIONS_DURATION_GANG_SHOOTOUT") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_BUSINESS_BATTLES_MISSIONS_DURATION_GANG_SHOOTOUT", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_BUSINESS_BATTLES_MISSIONS_DURATION_ASSASSINATE_TARGETS") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_BUSINESS_BATTLES_MISSIONS_DURATION_ASSASSINATE_TARGETS", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_BUSINESS_BATTLES_MISSIONS_DURATION_DROP_SITE") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_BUSINESS_BATTLES_MISSIONS_DURATION_DROP_SITE", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_DEFEND_MISSIONS_DURATION_POLICE_RAID") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_DEFEND_MISSIONS_DURATION_POLICE_RAID", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_DEFEND_MISSIONS_DURATION_RECOVER_PROPERTY") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_DEFEND_MISSIONS_DURATION_RECOVER_PROPERTY", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_PHONECALL_MISSIONS_DURATION_STOLEN_VINYLS") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_PHONECALL_MISSIONS_DURATION_STOLEN_VINYLS", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_PHONECALL_MISSIONS_DURATION_COLLECT_FRIENDS") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_PHONECALL_MISSIONS_DURATION_COLLECT_FRIENDS", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_PHONECALL_MISSIONS_DURATION_MUSIC_EQUIPMENT") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_PHONECALL_MISSIONS_DURATION_MUSIC_EQUIPMENT", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_PHONECALL_MISSIONS_DURATION_HOLD_UP") ~= INT_MAX_TIME3 then
				tunables.set_int("BB_PHONECALL_MISSIONS_DURATION_HOLD_UP", INT_MAX_TIME3)
			end
		--end
		NightclubDuration_Toggle = 1
	else
		if NightclubDuration_Toggle == 1 then
			tunables.set_int("BB_SETUP_MISSIONS_DURATION", 30)
			tunables.set_int("BB_NIGHTCLUB_MANAGEMENT_MISSIONS_DURATION_SUPPLY_RUN", 15)
			tunables.set_int("BB_NIGHTCLUB_MANAGEMENT_MISSIONS_DURATION_STOLEN_SUPPLIES", 20)
			tunables.set_int("BB_NIGHTCLUB_MANAGEMENT_MISSIONS_DURATION_MUSCLE_OUT", 20)
			tunables.set_int("BB_NIGHTCLUB_MANAGEMENT_MISSIONS_DURATION_SNAPMATIC", 20)
			tunables.set_int("BB_NIGHTCLUB_MANAGEMENT_MISSIONS_DURATION_PRIVATE_TAXI", 15)
			tunables.set_int("BB_NIGHTCLUB_MANAGEMENT_MISSIONS_DURATION_FLYER_PROMOTION", 20)
			tunables.set_int("BB_NIGHTCLUB_MANAGEMENT_MISSIONS_DURATION_RIVAL_SUPPLY", 20)
			tunables.set_int("BB_NIGHTCLUB_MANAGEMENT_MISSIONS_DURATION_VIP_RESCUE", 20)
			tunables.set_int("BB_NIGHTCLUB_MANAGEMENT_MISSIONS_DURATION_BLIMP_PROMOTION", 20)
			tunables.set_int("BB_NIGHTCLUB_MANAGEMENT_MISSIONS_DURATION_POSTER_PROMOTION", 20)
			--tunables.set_int("BB_NIGHTCLUB_MANAGEMENT_MISSIONS_DURATION_BOUNCER", 0) -- Tunable 0x3630388450 not found.
			tunables.set_int("BB_SELL_MISSIONS_DURATION_SINGLE_DROP", 10)
			tunables.set_int("BB_SELL_MISSIONS_DURATION_MULTI_DROP", 20)
			tunables.set_int("BB_SELL_MISSIONS_DURATION_HACK_DROP", 20)
			tunables.set_int("BB_SELL_MISSIONS_DURATION_ROADBLOCK", 20)
			tunables.set_int("BB_SELL_MISSIONS_DURATION_PROTECT_BUYER", 20)
			tunables.set_int("BB_SELL_MISSIONS_DURATION_UNDERCOVER_COPS", 20)
			tunables.set_int("BB_SELL_MISSIONS_DURATION_OFFSHORE_TRANSFER", 20)
			tunables.set_int("BB_SELL_MISSIONS_DURATION_NOT_A_SCRATCH", 20)
			tunables.set_int("BB_SELL_MISSIONS_DURATION_FOLLOW_HELI", 20)
			tunables.set_int("BB_SELL_MISSIONS_DURATION_FIND_BUYER", 20)
			tunables.set_int("BB_BUSINESS_BATTLES_MISSIONS_DURATION_UNDER_GUARD", 20)
			tunables.set_int("BB_BUSINESS_BATTLES_MISSIONS_DURATION_CARPARK_SEARCH", 20)
			tunables.set_int("BB_BUSINESS_BATTLES_MISSIONS_DURATION_JOYRIDERS", 20)
			tunables.set_int("BB_BUSINESS_BATTLES_MISSIONS_DURATION_HAULAGE_II", 20)
			tunables.set_int("BB_BUSINESS_BATTLES_MISSIONS_DURATION_BREAK_IN", 20)
			tunables.set_int("BB_BUSINESS_BATTLES_MISSIONS_DURATION_CAR_MEET_II", 20)
			tunables.set_int("BB_BUSINESS_BATTLES_MISSIONS_DURATION_SHOWROOM", 20)
			tunables.set_int("BB_BUSINESS_BATTLES_MISSIONS_DURATION_GANG_SHOOTOUT", 20)
			tunables.set_int("BB_BUSINESS_BATTLES_MISSIONS_DURATION_ASSASSINATE_TARGETS", 20)
			tunables.set_int("BB_BUSINESS_BATTLES_MISSIONS_DURATION_DROP_SITE", 20)
			tunables.set_int("BB_DEFEND_MISSIONS_DURATION_POLICE_RAID", 30)
			tunables.set_int("BB_DEFEND_MISSIONS_DURATION_RECOVER_PROPERTY", 30)
			tunables.set_int("BB_PHONECALL_MISSIONS_DURATION_STOLEN_VINYLS", 30)
			tunables.set_int("BB_PHONECALL_MISSIONS_DURATION_COLLECT_FRIENDS", 30)
			tunables.set_int("BB_PHONECALL_MISSIONS_DURATION_MUSIC_EQUIPMENT", 30)
			tunables.set_int("BB_PHONECALL_MISSIONS_DURATION_HOLD_UP", 30)
			NightclubDuration_Toggle = 0
		end
	end
	
	if RequestVehicleCooldown then
		--if RequestVehicleCooldown_Toggle == 0 then
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
		--end
		RequestVehicleCooldown_Toggle = 1
	else
		if RequestVehicleCooldown_Toggle == 1 then
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
			RequestVehicleCooldown_Toggle = 0
		end
	end
	
	if ServiceVehiclesCooldown then
		--if ServiceVehiclesCooldown_Toggle == 0 then
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
		--end
		ServiceVehiclesCooldown_Toggle = 1
	else
		if ServiceVehiclesCooldown_Toggle == 1 then
			tunables.set_int("GR_MOBILE_OPERATIONS_CENTRE_COOLDOWN_TIMER", 120000)
			tunables.set_int("H2_AVENGER_INTN_MENU_REQUEST_AVENGER_COOLDOWN", 120000)
			tunables.set_int("BB_TERRORBYTE_TERRORBYTE_COOLDOWN_TIMER", 120000)
			tunables.set_int("IH_MOON_POOL_COOLDOWN", 120000)
			tunables.set_int("ACID_LAB_REQUEST_COOLDOWN", 300000)
			ServiceVehiclesCooldown_Toggle = 0
		end
	end
	
	if CEOAbilitiesCooldown then
		--if CEOAbilitiesCooldown_Toggle == 0 then
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
		--end
		CEOAbilitiesCooldown_Toggle = 1
	else
		if CEOAbilitiesCooldown_Toggle == 1 then
			tunables.set_int("GB_DROP_BULLSHARK_COOLDOWN", 30000)
			tunables.set_int("GB_DROP_AMMO_COOLDOWN", 30000)
			tunables.set_int("GB_DROP_ARMOR_COOLDOWN", 30000)
			tunables.set_int("BALLISTICARMOURREQUESTCOOLDOWN", 900000)
			--tunables.set_int("GR_BALLISTIC_EQ_COOLDOWN_TIMER", 0)
			tunables.set_int("GB_GHOST_ORG_COOLDOWN", 600000)
			tunables.set_int("GB_BRIBE_AUTHORITIES_COOLDOWN", 600000)
			CEOAbilitiesCooldown_Toggle = 0
		end
	end
	
	if CEOVehiclesCooldown then
		--if CEOVehiclesCooldown_Toggle == 0 then
			if tunables.get_int("GB_CALL_VEHICLE_COOLDOWN") ~= 0 then -- *(120000ms)*
				tunables.set_int("GB_CALL_VEHICLE_COOLDOWN", 0)
			end
		--end
		CEOVehiclesCooldown_Toggle = 1
	else
		if CEOVehiclesCooldown_Toggle == 1 then
			tunables.set_int("GB_CALL_VEHICLE_COOLDOWN", 120000)
			CEOVehiclesCooldown_Toggle = 0
		end
	end
	
	if ArenaWheelCooldown then
		--if ArenaWheelCooldown_Toggle == 0 then
			if tunables.get_int("AW_ARENA_WAR_WHEEL_COOLDOWN") ~= 0 then -- *(10000ms)*
				tunables.set_int("AW_ARENA_WAR_WHEEL_COOLDOWN", 0)
			end
		--end
		ArenaWheelCooldown_Toggle = 1
	else
		if ArenaWheelCooldown_Toggle == 1 then
			tunables.set_int("AW_ARENA_WAR_WHEEL_COOLDOWN", 10000)
			ArenaWheelCooldown_Toggle = 0
		end
	end
	
	if SpinLuckyWheelCooldown then
		--if SpinLuckyWheelCooldown_Toggle == 0 then
			if stats.get_int("MPX_LUCKY_WHEEL_NUM_SPIN") ~= 0 then
				stats.set_int("MPX_LUCKY_WHEEL_NUM_SPIN", 0)
			end
			if tunables.get_int("VC_LUCKY_WHEEL_NUM_SPINS_PER_DAY") ~= 1 then
				tunables.set_int("VC_LUCKY_WHEEL_NUM_SPINS_PER_DAY", 1)
			end
			if tunables.get_int("VC_LUCKY_WHEEL_ADDITIONAL_SPINS_ENABLE") ~= 1 then
				tunables.set_int("VC_LUCKY_WHEEL_ADDITIONAL_SPINS_ENABLE", 1)
			end
		--end
		SpinLuckyWheelCooldown_Toggle = 1
	else
		if SpinLuckyWheelCooldown_Toggle == 1 then
			--stats.set_int("MPX_LUCKY_WHEEL_NUM_SPIN", 0)
			--tunables.set_int("VC_LUCKY_WHEEL_NUM_SPINS_PER_DAY", 0)
			--tunables.set_int("VC_LUCKY_WHEEL_ADDITIONAL_SPINS_ENABLE", 0)
			SpinLuckyWheelCooldown_Toggle = 0
		end
	end
	
	if MCClientVehicleCooldown then
		--if MCClientVehicleCooldown_Toggle == 0 then
			if tunables.get_int("BIKER_CLIENT_VEH_SPAWN_COOLDOWN_POSIX_TIME") ~= 0 then -- *(600ms)*
				tunables.set_int("BIKER_CLIENT_VEH_SPAWN_COOLDOWN_POSIX_TIME", 0)
			end
		--end
		MCClientVehicleCooldown_Toggle = 1
	else
		if MCClientVehicleCooldown_Toggle == 1 then
			tunables.set_int("BIKER_CLIENT_VEH_SPAWN_COOLDOWN_POSIX_TIME", 600)
			MCClientVehicleCooldown_Toggle = 0
		end
	end
	
	if BunkerExcessWeaponCooldown then
		--if BunkerExcessWeaponCooldown_Toggle == 0 then
			if tunables.get_int("BUNKER_VEHICLE_COOLDOWN_TIME") ~= 0 then -- *(120000ms)*
				tunables.set_int("BUNKER_VEHICLE_COOLDOWN_TIME", 0)
			end
		--end
		BunkerExcessWeaponCooldown_Toggle = 1
	else
		if BunkerExcessWeaponCooldown_Toggle == 1 then
			tunables.set_int("BUNKER_VEHICLE_COOLDOWN_TIME", 120000)
			BunkerExcessWeaponCooldown_Toggle = 0
		end
	end
	
	if NightclubTroublemakerCooldown then
		--if NightclubTroublemakerCooldown_Toggle == 0 then
			if tunables.get_int("NC_TROUBLEMAKER_CHANCE_IS_VIP_EVENT") ~= 0 then -- *(50%)*
				tunables.set_int("NC_TROUBLEMAKER_CHANCE_IS_VIP_EVENT", 0)
			end
		--end
		NightclubTroublemakerCooldown_Toggle = 1
	else
		if NightclubTroublemakerCooldown_Toggle == 1 then
			tunables.set_int("NC_TROUBLEMAKER_CHANCE_IS_VIP_EVENT", 50)
			NightclubTroublemakerCooldown_Toggle = 0
		end
	end
	
	if AutoShopClientVehicleCooldown then
		--if NightclubTroublemakerCooldown_Toggle == 0 then
			if tunables.get_int("TUNER_AUTO_SHOP_CLIENT_VEH_SPAWN_COOLDOWN_POSIX_TIME") ~= 0 then -- *(2880ms)*
				tunables.set_int("TUNER_AUTO_SHOP_CLIENT_VEH_SPAWN_COOLDOWN_POSIX_TIME", 0)
			end
		--end
		NightclubTroublemakerCooldown_Toggle = 1
	else
		if NightclubTroublemakerCooldown_Toggle == 1 then
			tunables.set_int("TUNER_AUTO_SHOP_CLIENT_VEH_SPAWN_COOLDOWN_POSIX_TIME", 2880)
			NightclubTroublemakerCooldown_Toggle = 0
		end
	end
end)

PhoneAnimations = false
restore_sp_funcs = false
ForceOnlineFeatures = false
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
		
		if ForceOnlineFeatures then
			NetworkSessionStatus = 1
		else
			NETWORK_SESSION_STARTED()
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

 -- Controls
SpecialCargoInstantCratesAmount = locals_v_get_int(SupportVersion, GCB, SCVIBl2)

 -- Resupply
Warehouse1 = stats.get_int("MPX_CONTOTALFORWHOUSE0")
Warehouse2 = stats.get_int("MPX_CONTOTALFORWHOUSE1")
Warehouse3 = stats.get_int("MPX_CONTOTALFORWHOUSE2")
Warehouse4 = stats.get_int("MPX_CONTOTALFORWHOUSE3")
Warehouse5 = stats.get_int("MPX_CONTOTALFORWHOUSE4")
WarehouseCrates = (Warehouse1 + Warehouse2 + Warehouse3 + Warehouse4 + Warehouse5)
SpecialCargoBuy = locals_v_get_int(SupportVersion, GCB, SCVIBl2)
selected_unique_cargo = locals.get_int(SCUCl)
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
AcidSupplyCost = tunables.get_int("ACID_LAB_PURCHASE_SUPPLIES_COST_PER_SEGMENT")
AcidBoostAmount = tunables.get_int("ACID_LAB_BOOST_AMOUNT")
AcidCapacity = tunables.get_int("ACID_LAB_PRODUCT_CAPACITY")

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
SpecialCargoSell = locals_v_get_int(SupportVersion, GCS, SCISCAl)
VehicleStandardRange = tunables.get_int("IMPEXP_SELL_BUYER1_OFFER_EASY")
VehicleMidRange = tunables.get_int("IMPEXP_SELL_BUYER1_OFFER_MED")
VehicleTopRange = tunables.get_int("IMPEXP_SELL_BUYER1_OFFER_HARD")
CocaineValue = tunables.get_int("BIKER_CRACK_PRODUCT_VALUE")
CocaineEquipmentUpgradeValue = tunables.get_int("BIKER_CRACK_PRODUCT_VALUE_EQUIPMENT_UPGRADE")
CocaineStaffUpgradeValue = tunables.get_int("BIKER_CRACK_PRODUCT_VALUE_STAFF_UPGRADE")
MethamphetamineValue = tunables.get_int("BIKER_METH_PRODUCT_VALUE")
MethamphetamineEquipmentUpgradeValue = tunables.get_int("BIKER_METH_PRODUCT_VALUE_EQUIPMENT_UPGRADE")
MethamphetamineStaffUpgradeValue = tunables.get_int("BIKER_METH_PRODUCT_VALUE_STAFF_UPGRADE")
WeedValue = tunables.get_int("BIKER_WEED_PRODUCT_VALUE")
WeedEquipmentUpgradeValue = tunables.get_int("BIKER_WEED_PRODUCT_VALUE_EQUIPMENT_UPGRADE")
WeedStaffUpgradeValue = tunables.get_int("BIKER_WEED_PRODUCT_VALUE_STAFF_UPGRADE")
CounterfeitCashValue = tunables.get_int("BIKER_COUNTERCASH_PRODUCT_VALUE")
CounterfeitCashEquipmentUpgradeValue = tunables.get_int("BIKER_COUNTERCASH_PRODUCT_VALUE_EQUIPMENT_UPGRADE")
CounterfeitCashStaffUpgradeValue = tunables.get_int("BIKER_COUNTERCASH_PRODUCT_VALUE_STAFF_UPGRADE")
DocumentForgeryValue = tunables.get_int("BIKER_FAKEIDS_PRODUCT_VALUE")
DocumentForgeryEquipmentUpgradeValue = tunables.get_int("BIKER_FAKEIDS_PRODUCT_VALUE_EQUIPMENT_UPGRADE")
DocumentForgeryStaffUpgradeValue = tunables.get_int("BIKER_FAKEIDS_PRODUCT_VALUE_STAFF_UPGRADE")
MCBusinessProductMultiplier1 = tunables.get_float("BIKER_SELL_PRODUCT_LOCAL_MODIFIER")
MCBusinessProductMultiplier2 = tunables.get_float("BIKER_SELL_PRODUCT_FAR_MODIFIER")
MCBusinessSell = locals_v_get_int(SupportVersion, GBCS, MCBISl)
BunkerValue = tunables.get_int("GR_MANU_PRODUCT_VALUE")
BunkerEquipmentUpgradeValue = tunables.get_int("GR_MANU_PRODUCT_VALUE_EQUIPMENT_UPGRADE")
BunkerStaffUpgradeValue = tunables.get_int("GR_MANU_PRODUCT_VALUE_STAFF_UPGRADE")
BunkerProductMultiplier1 = tunables.get_float("GR_SELL_PRODUCT_LOCAL_MODIFIER")
BunkerProductMultiplier2 = tunables.get_float("GR_SELL_PRODUCT_FAR_MODIFIER")
CargoandShipmentsValue = tunables.get_int("BB_BUSINESS_VALUE_CARGO")
SportingGoodsValue = tunables.get_int("BB_BUSINESS_VALUE_WEAPONS")
SouthAmericaImportsValue = tunables.get_int("BB_BUSINESS_VALUE_COKE")
PharmaceuticalResearchValue = tunables.get_int("BB_BUSINESS_VALUE_METH")
OrganicProduceValue = tunables.get_int("BB_BUSINESS_VALUE_WEED")
PrintingandCopyingValue = tunables.get_int("BB_BUSINESS_VALUE_FORGED_DOCUMENTS")
CashCreationValue = tunables.get_int("BB_BUSINESS_VALUE_COUNTERFEIT_CASH")
AcidValue = tunables.get_int("BIKER_ACID_PRODUCT_VALUE")
AcidEquipmentUpgradeValue = tunables.get_int("BIKER_ACID_PRODUCT_VALUE_EQUIPMENT_UPGRADE")

GoldenGetsBusiness:add_imgui(function()
	if NETWORK_SESSION_STARTED() then
		if ImGui.BeginTabBar("GoldenGets Business Tab") then
			if ImGui.BeginTabItem("Controls##Business") then
				Special_Cargo_Auto = SpecialCargoAuto
				SpecialCargoAuto = ImGui.Checkbox("Enable Special Cargo Auto##SpecialCargoAuto", SpecialCargoAuto)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Automatically fill your special cargo warehouse in one second\nor also sell crates. On the computer screen, select special\ncargo > source/sell cargo, select your warehouse")
				end
				if SpecialCargoAuto then
					if ImGui.Button("Start Master Control Terminal##SpecialCargoAuto") then
						script.run_in_fiber(function (script)
							start_script('appArcadeBusinessHub', 1424, script)
						end)
					end
					SpecialCargoInstantCratesAmount, drag = ImGui.DragInt("Instant Crates Amount##SpecialCargoInstantCratesAmount", SpecialCargoInstantCratesAmount, 1, 0, 111)
					--if drag then
					--	locals_v_set_int(SupportVersion, GCB, SCVIBl2, SpecialCargoInstantCratesAmount) -- Crates to Buy
					--	locals_v_set_int(SupportVersion, GCS, SCISCAl, SpecialCargoInstantCratesAmount) -- Crates to Sell
					--end
					Special_Cargo_Instant_Support = SpecialCargoInstantSupport
					SpecialCargoInstantSupport = ImGui.Checkbox("Special Cargo Instant Support##SpecialCargoInstantSupport", SpecialCargoInstantSupport)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("This will 'Disable Lupe's Mission', 'Remove Special\nCargo Cooldown', and 'Sell With One Shipment'")
					end
					if SpecialCargoInstantSupport ~= Special_Cargo_Instant_Support then
						DisableLupesMission = SpecialCargoInstantSupport
						SpecialCargoSourceCooldown = SpecialCargoInstantSupport
						SpecialCargoSellCooldown = SpecialCargoInstantSupport
						SpecialCargoShipmentType = SpecialCargoInstantSupport
						SpecialCargoInstantSupport4 = true
					else
						SpecialCargoInstantSupport4 = false
					end
					if not SpecialCargoInstantSupport4 then
						SpecialCargoInstantSupport = DisableLupesMission
						and SpecialCargoSourceCooldown
						and SpecialCargoSellCooldown
						and SpecialCargoShipmentType
					end
					
					ImGui.Separator()
					
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
				
				All_Business_Defend = AllBusinessDefend
				AllBusinessDefend = ImGui.Checkbox("All##AllBusinessDefend", AllBusinessDefend)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Enable/Disable all options for 'Defend Business'")
				end
				if AllBusinessDefend ~= All_Business_Defend then
					SpecialCargoDefend = AllBusinessDefend
					CocaineDefend = AllBusinessDefend
					MethamphetamineDefend = AllBusinessDefend
					WeedDefendBusiness = AllBusinessDefend
					CounterfeitCashDefend = AllBusinessDefend
					DocumentForgeryDefend = AllBusinessDefend
					BunkerDefend = AllBusinessDefend
					NightclubDefend = AllBusinessDefend
					AllBusinessDefend8 = true
				else
					AllBusinessDefend8 = false
				end
				if not AllBusinessDefend8 then
					AllBusinessDefend = SpecialCargoDefend
					and CocaineDefend
					and MethamphetamineDefend
					and WeedDefendBusiness
					and CounterfeitCashDefend
					and DocumentForgeryDefend
					and BunkerDefend
					and NightclubDefend
				end
				ImGui.SameLine()
				if ImGui.TreeNode("Defend Business") then
					SpecialCargoDefend = ImGui.Checkbox("Special Cargo Defend", SpecialCargoDefend)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Special cargo warehouse will not be raided if the product stock is full")
					end
					
					All_MC_Business_Defend_Business = AllMCBusinessDefend
					AllMCBusinessDefend = ImGui.Checkbox("All##AllMCBusinessDefend", AllMCBusinessDefend)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Enable/Disable all options for 'MC Business Defend'")
					end
					if AllMCBusinessDefend ~= All_MC_Business_Defend_Business then
						CocaineDefend = AllMCBusinessDefend
						MethamphetamineDefend = AllMCBusinessDefend
						WeedDefendBusiness = AllMCBusinessDefend
						CounterfeitCashDefend = AllMCBusinessDefend
						DocumentForgeryDefend = AllMCBusinessDefend
						AllMCBusinessDefend5 = true
					else
						AllMCBusinessDefend5 = false
					end
					if not AllMCBusinessDefend5 then
						AllMCBusinessDefend = CocaineDefend
						and MethamphetamineDefend
						and WeedDefendBusiness
						and CounterfeitCashDefend
						and DocumentForgeryDefend
					end
					ImGui.SameLine()
					if ImGui.TreeNode("MC Business Defend") then
						CocaineDefend = ImGui.Checkbox("Cocaine Defend", CocaineDefend)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Cocaine lockup will not be raided if the product stock is full")
						end
						
						MethamphetamineDefend = ImGui.Checkbox("Methamphetamine Defend", MethamphetamineDefend)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Methamphetamine lab will not be raided if the product stock is full")
						end
						
						WeedDefendBusiness = ImGui.Checkbox("Weed Defend", WeedDefendBusiness)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Weed farm will not be raided if the product stock is full")
						end
						
						CounterfeitCashDefend = ImGui.Checkbox("Counterfeit Cash Defend", CounterfeitCashDefend)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Counterfeit cash factory will not be raided if the product stock is full")
						end
						
						DocumentForgeryDefend = ImGui.Checkbox("Document Forgery Defend", DocumentForgeryDefend)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Document forgery office will not be raided if the product stock is full")
						end
						ImGui.TreePop()
					end
					
					BunkerDefend = ImGui.Checkbox("Bunker Defend", BunkerDefend)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Bunker will not be raided if the product stock is full")
					end
					
					NightclubDefend = ImGui.Checkbox("Nightclub Defend", NightclubDefend)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Nightclub will not be raided if the product stock is full")
					end
					
					ImGui.Separator()
					
					ImGui.TreePop()
				end
				
				All_Business_Auto_Resupply = AllBusinessAutoResupply
				AllBusinessAutoResupply = ImGui.Checkbox("All##AllBusinessAutoResupply", AllBusinessAutoResupply)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Enable/Disable all options for 'Auto-Fill Low Supplies'")
				end
				if AllBusinessAutoResupply ~= All_Business_Auto_Resupply then
					CocaineAutoResupply = AllBusinessAutoResupply
					MethamphetamineAutoResupply = AllBusinessAutoResupply
					WeedAutoResupply = AllBusinessAutoResupply
					CounterfeitCashAutoResupply = AllBusinessAutoResupply
					DocumentForgeryAutoResupply = AllBusinessAutoResupply
					BunkerAutoResupply = AllBusinessAutoResupply
					AcidLabAutoResupply = AllBusinessAutoResupply
					AllBusinessAutoResupply7 = true
				else
					AllBusinessAutoResupply7 = false
				end
				if not AllBusinessAutoResupply7 then
					AllBusinessAutoResupply = CocaineAutoResupply
					and MethamphetamineAutoResupply
					and WeedAutoResupply
					and CounterfeitCashAutoResupply
					and DocumentForgeryAutoResupply
					and BunkerAutoResupply
					and AcidLabAutoResupply
				end
				ImGui.SameLine()
				if ImGui.TreeNode("Auto-Fill Low Supplies") then
					All_Auto_Resupply = AllMCBusinessAutoResupply
					AllMCBusinessAutoResupply = ImGui.Checkbox("All##AllMCBusinessAutoResupply", AllMCBusinessAutoResupply)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Enable/Disable all options for 'MC Business Auto-Fill'")
					end
					if AllMCBusinessAutoResupply ~= All_Auto_Resupply then
						CocaineAutoResupply = AllMCBusinessAutoResupply
						MethamphetamineAutoResupply = AllMCBusinessAutoResupply
						WeedAutoResupply = AllMCBusinessAutoResupply
						CounterfeitCashAutoResupply = AllMCBusinessAutoResupply
						DocumentForgeryAutoResupply = AllMCBusinessAutoResupply
						AllMCBusinessAutoResupply5 = true
					else
						AllMCBusinessAutoResupply5 = false
					end
					if not AllMCBusinessAutoResupply5 then
						AllMCBusinessAutoResupply = CocaineAutoResupply 
						and MethamphetamineAutoResupply 
						and WeedAutoResupply
						and CounterfeitCashAutoResupply 
						and DocumentForgeryAutoResupply
					end
					ImGui.SameLine()
					if ImGui.TreeNode("MC Business Auto-Fill") then
						CocaineAutoResupply = ImGui.Checkbox("Cocaine Auto-Fill##CocaineAutoResupply", CocaineAutoResupply)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Auto refilling low cocaine supply. If unlimited resupply bug occurs, turn off and change session")
						end
						
						MethamphetamineAutoResupply = ImGui.Checkbox("Methamphetamine Auto-Fill##MethamphetamineAutoResupply", MethamphetamineAutoResupply)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Auto refilling low methamphetamine supply. If unlimited resupply bug occurs, turn off and change session")
						end
						
						WeedAutoResupply = ImGui.Checkbox("Weed Auto-Fill##WeedAutoResupply", WeedAutoResupply)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Auto refilling low weed supply. If unlimited resupply bug occurs, turn off and change session")
						end
						
						CounterfeitCashAutoResupply = ImGui.Checkbox("Counterfeit Cash Auto-Fill##CounterfeitCashAutoResupply", CounterfeitCashAutoResupply)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Auto refilling low counterfeit cash supply. I f unlimited resupply bug occurs, turn off and change session")
						end
						
						DocumentForgeryAutoResupply = ImGui.Checkbox("Document Forgery Auto-Fill##DocumentForgeryAutoResupply", DocumentForgeryAutoResupply)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Auto refilling low document forgery supply. If unlimited resupply bug occurs, turn off and change session")
						end
						
						ImGui.Separator()
						
						ImGui.TreePop()
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
				
				All_Business_Reduce_Production = AllBusinessReduceProduction
				AllBusinessReduceProduction = ImGui.Checkbox("All##AllBusinessReduceProduction", AllBusinessReduceProduction)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Enable/Disable all options for 'Reduce Production of Supply'")
				end
				if AllBusinessReduceProduction ~= All_Business_Reduce_Production then
					CocaineReduceProduction = AllBusinessReduceProduction
					MethamphetamineReduceProduction = AllBusinessReduceProduction
					WeedReduceProduction = AllBusinessReduceProduction
					CounterfeitCashReduceProduction = AllBusinessReduceProduction
					DocumentForgeryReduceProduction = AllBusinessReduceProduction
					BunkerReduceProduction = AllBusinessReduceProduction
					BunkerResearchReduceProduction = AllBusinessReduceProduction
					AcidLabReduceProduction = AllBusinessReduceProduction
					AllBusinessReduceProduction8 = true
				else
					AllBusinessReduceProduction8 = false
				end
				if not AllBusinessReduceProduction8 then
					AllBusinessReduceProduction = CocaineReduceProduction
					and MethamphetamineReduceProduction
					and WeedReduceProduction
					and CounterfeitCashReduceProduction
					and DocumentForgeryReduceProduction
					and BunkerReduceProduction
					and BunkerResearchReduceProduction
					and AcidLabReduceProduction
				end
				ImGui.SameLine()
				if ImGui.TreeNode("Reduce Production of Supply") then
					All_MC_Business_Reduce_Production = AllMCBusinessReduceProduction
					AllMCBusinessReduceProduction = ImGui.Checkbox("All##AllMCBusinessReduceProduction", AllMCBusinessReduceProduction)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Enable/Disable all options for 'MC Business Reduce'")
					end
					if AllMCBusinessReduceProduction ~= All_MC_Business_Reduce_Production then
						CocaineReduceProduction = AllMCBusinessReduceProduction
						MethamphetamineReduceProduction = AllMCBusinessReduceProduction
						WeedReduceProduction = AllMCBusinessReduceProduction
						CounterfeitCashReduceProduction = AllMCBusinessReduceProduction
						DocumentForgeryReduceProduction = AllMCBusinessReduceProduction
						AllMCBusinessReduceProduction5 = true
					else
						AllMCBusinessReduceProduction5 = false
					end
					if not AllMCBusinessReduceProduction5 then
						AllMCBusinessReduceProduction = CocaineReduceProduction
						and MethamphetamineReduceProduction
						and WeedReduceProduction
						and CounterfeitCashReduceProduction
						and DocumentForgeryReduceProduction
					end
					ImGui.SameLine()
					if ImGui.TreeNode("MC Business Reduce") then
						CocaineReduceProduction = ImGui.Checkbox("Cocaine Reduce##CocaineReduceProduction", CocaineReduceProduction)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Reducing multiple units of cocaine supply produced to just single unit")
						end
						
						MethamphetamineReduceProduction = ImGui.Checkbox("Methamphetamine Reduce##MethamphetamineReduceProduction", MethamphetamineReduceProduction)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Reducing multiple units of methamphetamine supply produced to just single unit")
						end
						
						WeedReduceProduction = ImGui.Checkbox("Weed Reduce##WeedReduceProduction", WeedReduceProduction)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Reducing multiple units of weed supply produced to just single unit")
						end
						
						CounterfeitCashReduceProduction = ImGui.Checkbox("Counterfeit Cash Reduce##CounterfeitCashReduceProduction", CounterfeitCashReduceProduction)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Reducing multiple units of counterfeit cash supply produced to just single unit")
						end
						
						DocumentForgeryReduceProduction = ImGui.Checkbox("Document Forgery Reduce##DocumentForgeryReduceProduction", DocumentForgeryReduceProduction)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Reducing multiple units of document forgery supply produced to just single unit")
						end
						
						ImGui.Separator()
						
						ImGui.TreePop()
					end
					
					BunkerReduceProduction = ImGui.Checkbox("Bunker Reduce##BunkerReduceProduction", BunkerReduceProduction)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Reducing multiple units of bunker supply produced to just single unit")
					end
					ImGui.SameLine()
					BunkerResearchReduceProduction = ImGui.Checkbox("Research Reduce##BunkerResearchReduceProduction", BunkerResearchReduceProduction)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Reducing multiple units of bunker research supply produced to just single unit")
					end
					
					AcidLabReduceProduction = ImGui.Checkbox("Acid Lab Reduce##AcidLabReduceProduction", AcidLabReduceProduction)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Reducing multiple units of acid lab supply produced to just single unit")
					end
					
					ImGui.Separator()
					
					ImGui.TreePop()
				end
				
				All_Business_Production_Cooldown = AllBusinessProductionCooldown
				AllBusinessProductionCooldown = ImGui.Checkbox("All##AllBusinessProductionCooldown", AllBusinessProductionCooldown)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Enable/Disable all options for 'Production Speed'")
				end
				if AllBusinessProductionCooldown ~= All_Business_Production_Cooldown then
					--CocaineProductionCooldown60s = AllBusinessProductionCooldown
					--MethamphetamineProductionCooldown60s = AllBusinessProductionCooldown
					--WeedProductionCooldown60s = AllBusinessProductionCooldown
					--CounterfeitCashProductionCooldown60s = AllBusinessProductionCooldown
					--DocumentForgeryProductionCooldown60s = AllBusinessProductionCooldown
					CocaineProductionCooldown5s = AllBusinessProductionCooldown
					MethamphetamineProductionCooldown5s = AllBusinessProductionCooldown
					WeedProductionCooldown5s = AllBusinessProductionCooldown
					CounterfeitCashProductionCooldown5s = AllBusinessProductionCooldown
					DocumentForgeryProductionCooldown5s = AllBusinessProductionCooldown
					--BunkerProductionCooldown60s = AllBusinessProductionCooldown
					BunkerProductionCooldown5s = AllBusinessProductionCooldown
					--BunkerResearchCooldown60s = AllBusinessProductionCooldown
					BunkerResearchCooldown5s = AllBusinessProductionCooldown
					--NightclubProductionCooldownx4 = AllBusinessProductionCooldown
					--NightclubProductionCooldownx10 = AllBusinessProductionCooldown
					--NightclubProductionCooldownx20 = AllBusinessProductionCooldown
					NightclubProductionCooldown5s = AllBusinessProductionCooldown
					--AcidLabProductionCooldown60s = AllBusinessProductionCooldown
					AcidLabProductionCooldown5s = AllBusinessProductionCooldown
					AllBusinessProductionCooldown20 = true
				else
					AllBusinessProductionCooldown20 = false
				end
				if not AllBusinessProductionCooldown20 then
					--AllBusinessProductionCooldown = CocaineProductionCooldown60s
					--and MethamphetamineProductionCooldown60s
					--and WeedProductionCooldown60s
					--and CounterfeitCashProductionCooldown60s
					--and DocumentForgeryProductionCooldown60s
					AllBusinessProductionCooldown = CocaineProductionCooldown5s
					and MethamphetamineProductionCooldown5s
					and WeedProductionCooldown5s
					and CounterfeitCashProductionCooldown5s
					and DocumentForgeryProductionCooldown5s
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
					--All_MC_Business_Production_Cooldown60s = AllMCBusinessProductionCooldown60s
					--AllMCBusinessProductionCooldown60s = ImGui.Checkbox("All##AllMCBusinessProductionCooldown60s", AllMCBusinessProductionCooldown60s)
					--if ImGui.IsItemHovered() then
					--	ImGui.SetTooltip("Enable/Disable all options for 'MC Business Production Speed60s'")
					--end
					--if AllMCBusinessProductionCooldown60s then
					--	AllMCBusinessProductionCooldown5s = false
					--end
					--if AllMCBusinessProductionCooldown60s ~= All_MC_Business_Production_Cooldown60s then
					--	CocaineProductionCooldown60s = AllMCBusinessProductionCooldown60s
					--	MethamphetamineProductionCooldown60s = AllMCBusinessProductionCooldown60s
					--	WeedProductionCooldown60s = AllMCBusinessProductionCooldown60s
					--	CounterfeitCashProductionCooldown60s = AllMCBusinessProductionCooldown60s
					--	DocumentForgeryProductionCooldown60s = AllMCBusinessProductionCooldown60s
					--	AllMCBusinessProductionCooldown60s5 = true
					--else
					--	AllMCBusinessProductionCooldown60s5 = false
					--end
					--if not AllMCBusinessProductionCooldown60s5 then
					--	AllMCBusinessProductionCooldown60s = CocaineProductionCooldown60s
					--	and MethamphetamineProductionCooldown60s
					--	and WeedProductionCooldown60s
					--	and CounterfeitCashProductionCooldown60s
					--	and DocumentForgeryProductionCooldown60s
					--end
					--ImGui.SameLine()
					All_MC_Business_Production_Cooldown5s = AllMCBusinessProductionCooldown5s
					AllMCBusinessProductionCooldown5s = ImGui.Checkbox("All##AllMCBusinessProductionCooldown5s", AllMCBusinessProductionCooldown5s)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Enable/Disable all options for 'MC Business Speed'")
					end
					--if AllMCBusinessProductionCooldown5s then
					--	AllMCBusinessProductionCooldown60s = false
					--end
					if AllMCBusinessProductionCooldown5s ~= All_MC_Business_Production_Cooldown5s then
						CocaineProductionCooldown5s = AllMCBusinessProductionCooldown5s
						MethamphetamineProductionCooldown5s = AllMCBusinessProductionCooldown5s
						WeedProductionCooldown5s = AllMCBusinessProductionCooldown5s
						CounterfeitCashProductionCooldown5s = AllMCBusinessProductionCooldown5s
						DocumentForgeryProductionCooldown5s = AllMCBusinessProductionCooldown5s
						AllMCBusinessProductionCooldown5s5 = true
					else
						AllMCBusinessProductionCooldown5s5 = false
					end
					if not AllMCBusinessProductionCooldown5s5 then
						AllMCBusinessProductionCooldown5s = CocaineProductionCooldown5s
						and MethamphetamineProductionCooldown5s
						and WeedProductionCooldown5s
						and CounterfeitCashProductionCooldown5s
						and DocumentForgeryProductionCooldown5s
					end
					ImGui.SameLine()
					if ImGui.TreeNode("MC Business Speed") then
						--CocaineProductionCooldown60s = ImGui.Checkbox("Cocaine 60s##CocaineProductionCooldown60s", CocaineProductionCooldown60s)
						--if CocaineProductionCooldown60s then
						--	CocaineProductionCooldown5s = false
						--end
						--ImGui.SameLine()
						CocaineProductionCooldown5s = ImGui.Checkbox("Cocaine Speed##CocaineProductionCooldown5s", CocaineProductionCooldown5s)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Cocaine production speed will be triggered next time or change session.\nIt would be better if combine with 'Auto-Fill Low Supplies'")
						end
						--if CocaineProductionCooldown5s then
						--	CocaineProductionCooldown60s = false
						--end
						
						--MethamphetamineProductionCooldown60s = ImGui.Checkbox("Methamphetamine 60s##MethamphetamineProductionCooldown60s", MethamphetamineProductionCooldown60s)
						--if MethamphetamineProductionCooldown60s then
						--	MethamphetamineProductionCooldown5s = false
						--end
						--ImGui.SameLine()
						MethamphetamineProductionCooldown5s = ImGui.Checkbox("Methamphetamine Speed##MethamphetamineProductionCooldown5s", MethamphetamineProductionCooldown5s)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Methamphetamine production speed will be triggered next time or change session.\nIt would be better if combine with 'Auto-Fill Low Supplies'")
						end
						--if MethamphetamineProductionCooldown5s then
						--	MethamphetamineProductionCooldown60s = false
						--end
						
						--WeedProductionCooldown60s = ImGui.Checkbox("Weed 60s##WeedProductionCooldown60s", WeedProductionCooldown60s)
						--if WeedProductionCooldown60s then
						--	WeedProductionCooldown5s = false
						--end
						--ImGui.SameLine()
						WeedProductionCooldown5s = ImGui.Checkbox("Weed Speed##WeedProductionCooldown5s", WeedProductionCooldown5s)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Weed production speed will be triggered next time or change session.\nIt would be better if combine with 'Auto-Fill Low Supplies'")
						end
						--if WeedProductionCooldown5s then
						--	WeedProductionCooldown60s = false
						--end
						
						--CounterfeitCashProductionCooldown60s = ImGui.Checkbox("Counterfeit Cash 60s##CounterfeitCashProductionCooldown60s", CounterfeitCashProductionCooldown60s)
						--if CounterfeitCashProductionCooldown60s then
						--	CounterfeitCashProductionCooldown5s = false
						--end
						--ImGui.SameLine()
						CounterfeitCashProductionCooldown5s = ImGui.Checkbox("Counterfeit Cash Speed##CounterfeitCashProductionCooldown5s", CounterfeitCashProductionCooldown5s)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Counterfeit Cash production speed will be triggered next time or change session.\nIt would be better if combine with 'Auto-Fill Low Supplies'")
						end
						--if CounterfeitCashProductionCooldown5s then
						--	CounterfeitCashProductionCooldown60s = false
						--end
						
						--DocumentForgeryProductionCooldown60s = ImGui.Checkbox("Document Forgery 60s##DocumentForgeryProductionCooldown60s", DocumentForgeryProductionCooldown60s)
						--if DocumentForgeryProductionCooldown60s then
						--	DocumentForgeryProductionCooldown5s = false
						--end
						--ImGui.SameLine()
						DocumentForgeryProductionCooldown5s = ImGui.Checkbox("Document Forgery Speed##DocumentForgeryProductionCooldown5s", DocumentForgeryProductionCooldown5s)
						if ImGui.IsItemHovered() then
							ImGui.SetTooltip("Document Forgery production speed will be triggered next time or change session.\nIt would be better if combine with 'Auto-Fill Low Supplies'")
						end
						--if DocumentForgeryProductionCooldown5s then
						--	DocumentForgeryProductionCooldown60s = false
						--end
						
						ImGui.Separator()
						
						ImGui.TreePop()
					end
					
					--BunkerProductionCooldown60s = ImGui.Checkbox("Bunker 60s##BunkerProductionCooldown60s", BunkerProductionCooldown60s)
					--if BunkerProductionCooldown60s then
					--	BunkerProductionCooldown5s = false
					--end
					--ImGui.SameLine()
					BunkerProductionCooldown5s = ImGui.Checkbox("Bunker Speed##BunkerProductionCooldown5s", BunkerProductionCooldown5s)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Bunker production speed will be triggered next time or change session.\nIt would be better if combine with 'Auto-Fill Low Supplies'")
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
						ImGui.SetTooltip("Bunker research production speed will be triggered next time or change session")
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
						ImGui.SetTooltip("Nightclub production speed will be triggered next time or change session")
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
					AcidLabProductionCooldown5s = ImGui.Checkbox("Acid Speed##AcidLabProductionCooldown5s", AcidLabProductionCooldown5s)
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Acid production speed will be triggered next time or change session.\nIt would be better if combine with 'Auto-Fill Low Supplies'")
					end
					--if AcidLabProductionCooldown5s then
					--	AcidLabProductionCooldown60s = false
					--end
					
					ImGui.Separator()
					
					ImGui.TreePop()
				end
				
				All_Business_Mission = AllBusinessMission
				AllBusinessMission = ImGui.Checkbox("All##AllBusinessMission", AllBusinessMission)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Enable/Disable all options for 'Business Income'")
				end
				if AllBusinessMission ~= All_Business_Mission then
					SpecialCargoSourceMission = AllBusinessMission
					SpecialCargoSellMission = AllBusinessMission
					VehicleCargoSourceMission = AllBusinessMission
					MCBusinessStealMission = AllBusinessMission
					MCBusinessSellMission = AllBusinessMission
					HangarAirSourceMission = AllBusinessMission
					HangarAirSellMission = AllBusinessMission
					NightclubSellMission = AllBusinessMission
					AllBusinessMission8 = true
				else
					AllBusinessMission8 = false
				end
				if not AllBusinessMission8 then
					AllBusinessMission = SpecialCargoSourceMission
					and SpecialCargoSellMission
					and VehicleCargoSourceMission
					and MCBusinessStealMission
					and MCBusinessSellMission
					and HangarAirSourceMission
					and HangarAirSellMission
					and NightclubSellMission
				end
				ImGui.SameLine()
				if ImGui.TreeNode("Easy Business Mission") then
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Possibility the second business mission failed to start. If mission not start, change sessions")
					end
					Special_Cargo_Buy_Mission = SpecialCargoSourceMission
					SpecialCargoSourceMission = ImGui.Checkbox("Special Cargo Source##SpecialCargoSourceMission", SpecialCargoSourceMission)
					ImGui.SameLine() ImGui.Dummy(-8, 1) ImGui.SameLine()
					SpecialCargoSellMission = ImGui.Checkbox("Special Cargo Sell##SpecialCargoSellMission", SpecialCargoSellMission)
					
					VehicleCargoSourceMission = ImGui.Checkbox("Vehicle Cargo Source##VehicleCargoSourceMission", VehicleCargoSourceMission)
					
					MCBusinessStealMission = ImGui.Checkbox("MC Business Steal##MCBusinessStealMission", MCBusinessStealMission)
					ImGui.SameLine() ImGui.Dummy(8, 1) ImGui.SameLine()
					MCBusinessSellMission = ImGui.Checkbox("MC Business Sell##MCBusinessSellMission", MCBusinessSellMission)
					
					HangarAirSourceMission = ImGui.Checkbox("Hangar Air Source##HangarAirSourceMission", HangarAirSourceMission)
					ImGui.SameLine() ImGui.Dummy(10, 1) ImGui.SameLine()
					HangarAirSellMission = ImGui.Checkbox("Hangar Air Sell##HangarAirSellMission", HangarAirSellMission)
					
					ImGui.Dummy(157, 1) ImGui.SameLine()
					NightclubSellMission = ImGui.Checkbox("Nightclub Sell##NightclubSellMission", NightclubSellMission)
					
					ImGui.Separator()
					
					ImGui.TreePop()
				end
				ImGui.EndTabItem()
			end
			
			if ImGui.BeginTabItem("Resupply") then
				ImGui.SeparatorText("Special Cargo")
				
				DisableLupesMission = ImGui.Checkbox("Disable Lupe's Mission##DisableLupesMission", DisableLupesMission)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Disable Lupe's source cargo mission")
				end
				
				if ImGui.Button("Instant Collect Crates##SpecialCargo") then
					locals_v_set_int(SupportVersion, GCB, SCVIBl1, 1)
					locals_v_set_int(SupportVersion, GCB, SCVIBl3, 6)
					locals_v_set_int(SupportVersion, GCB, SCVIBl4, 4)
				end
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Completing the current crate orders as needed. Not working\non Lupe's mission source special cargo")
				end
				
				SpecialCargoBuy = ImGui.DragInt("Crates Amount", SpecialCargoBuy, 1, 0, 111)
				if ImGui.Button("Collect Crates Amount##SpecialCargoBuy") then
					locals_v_set_int(SupportVersion, GCB, SCVIBl1, 1)
					locals_v_set_int(SupportVersion, GCB, SCVIBl2, SpecialCargoBuy)
					locals_v_set_int(SupportVersion, GCB, SCVIBl3, 6)
					locals_v_set_int(SupportVersion, GCB, SCVIBl4, 4)
				end
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Completing the current crate orders with customizations.\nNot working on Lupe's mission source special cargo")
				end
				
				if WarehouseCrates < 555 then
					if ImGui.Button("Staff Source Crates##WarehouseStaffSourced") then
						script.run_in_fiber(function (WarehouseCrates_script)
							for i = 12, 16 do
								stats.set_bool_masked("MPX_FIXERPSTAT_BOOL1", true, i)
								WarehouseCrates_script:sleep(500) -- half second delay between each warehouse
							end
						end)
					end
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Send your staff member to source crates\nof special cargo for the warehouse")
					end
					ImGui.SameLine()
					WarehouseStaffSourced = ImGui.Checkbox("Fill Up##WarehouseStaffSourced", WarehouseStaffSourced, true)
					if WarehouseStaffSourced then
						script.run_in_fiber(function (WarehouseStaffSourced_script)
							repeat
								for i = 12, 16 do
									stats.set_bool_masked("MPX_FIXERPSTAT_BOOL1", true, i)
									WarehouseStaffSourced_script:sleep(500) -- half second delay between each warehouse
								end
								WarehouseStaffSourced_script:sleep(969) -- add a delay to prevent transaction error or infinite 'transaction pending'
							until WarehouseCrates == 555 or WarehouseStaffSourced == false
						end)
					end
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
				--	globals.set_int(SCUCl, 8)
				--elseif unique_cargo_selected == 2 then
				--	globals.set_int(SCUCl, 7)
				--elseif unique_cargo_selected == 3 then
				--	globals.set_int(SCUCl, 4)
				--elseif unique_cargo_selected == 4 then
				--	globals.set_int(SCUCl, 2)
				--elseif unique_cargo_selected == 5 then
				--	globals.set_int(SCUCl, 6)
				--else unique_cargo_selected = 6
				--	globals.set_int(SCUCl, 9)
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
					--if drag then
					--	MCBusinessSupplyCost = math.min(math.max(MCBusinessSupplyCost, 0), INT_MAX)
					--end
				end
				
				MCBusinessSupplyDelay = ImGui.Checkbox("Remove Supply Delay##MCBusinessSupplyDelay", MCBusinessSupplyDelay)
				
				ImGui.SeparatorText("Bunker")
				
				BunkerResupplyCost = ImGui.Checkbox("> Bunker Resupply Cost##BunkerResupplyCost", BunkerResupplyCost)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Toggle to expand for customize a bunker resupply cost")
				end
				if BunkerResupplyCost then
					BunkerSupplyCost, drag = ImGui.DragInt("Cost##BunkerSupplyCost", BunkerSupplyCost, 100, 200, 15000)
					--if drag then
					--	BunkerSupplyCost = math.min(math.max(BunkerSupplyCost, 0), INT_MAX)
					--end
				end
				
				BunkerSupplyDelay = ImGui.Checkbox("Remove Supply Delay##BunkerSupplyDelay", BunkerSupplyDelay)
				
				--TriggerBunkerProduction = ImGui.Checkbox("Trigger Bunker Production", TriggerBunkerProduction)
				
				ImGui.SeparatorText("Hangar Cargo")
				
				if ImGui.Button("Instant Source##HangarCargo") then
					if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat(GS)) ~= 0 then
						locals_v_set_int(SupportVersion, GS, 2003, 5632)
						locals_v_set_int(SupportVersion, GS, 2003, 175427)
					end
				end
				
				if HangarCrates < 50 then
					if ImGui.Button("Staff Source Crates##HangarStaffSourced") then
						stats.set_bool_masked("MPX_DLC22022PSTAT_BOOL3", true, 9)
					end
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Send rooster to source crates of\nair-freight cargo for the hangar")
					end
					ImGui.SameLine()
					HangarStaffSourced = ImGui.Checkbox("Fill Up##HangarStaffSourced", HangarStaffSourced, true)
					if HangarStaffSourced then
						script.run_in_fiber(function (HangarStaffSourced_script)
							repeat
								stats.set_bool_masked("MPX_DLC22022PSTAT_BOOL3", true, 9)
								HangarStaffSourced_script:sleep(969) -- add a delay to prevent transaction error or infinite 'transaction pending'
							until HangarCrates == 50 or HangarStaffSourced == false
						end)
					end
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
					--if drag then
					--	CargoandShipmentsCapacity = math.min(math.max(CargoandShipmentsCapacity, 0), 5000)
					--end
					SportingGoodsCapacity, drag = ImGui.DragInt("Sporting Goods##SportingGoodsCapacity", SportingGoodsCapacity, 10, 100, 1000)
					--if drag then
					--	SportingGoodsCapacity = math.min(math.max(SportingGoodsCapacity, 0), 10000)
					--end
					SouthAmericaImportsCapacity, drag = ImGui.DragInt("South America Imports##SouthAmericaImportsCapacity", SouthAmericaImportsCapacity, 10, 10, 100)
					--if drag then
					--	SouthAmericaImportsCapacity = math.min(math.max(SouthAmericaImportsCapacity, 0), 1000)
					--end
					PharmaceuticalResearchCapacity, drag = ImGui.DragInt("Pharmaceutical Research##PharmaceuticalResearchCapacity", PharmaceuticalResearchCapacity, 10, 20, 200)
					--if drag then
					--	PharmaceuticalResearchCapacity = math.min(math.max(PharmaceuticalResearchCapacity, 0), 2000)
					--end
					OrganicProduceCapacity, drag = ImGui.DragInt("Organic Produce##OrganicProduceCapacity", OrganicProduceCapacity, 10, 80, 800)
					--if drag then
					--	OrganicProduceCapacity = math.min(math.max(OrganicProduceCapacity, 0), 8000)
					--end
					PrintingandCopyingCapacity, drag = ImGui.DragInt("Printing & Copying##PrintingandCopyingCapacity", PrintingandCopyingCapacity, 10, 60, 600)
					--if drag then
					--	PrintingandCopyingCapacity = math.min(math.max(PrintingandCopyingCapacity, 0), 6000)
					--end
					CashCreationCapacity, drag = ImGui.DragInt("Cash Creation##CashCreationCapacity", CashCreationCapacity, 10, 40, 400)
					--if drag then
					--	CashCreationCapacity = math.min(math.max(CashCreationCapacity, 0), 4000)
					--end
				end
				
				ImGui.SeparatorText("Acid Lab")
				
				AcidLabResupplyCost = ImGui.Checkbox("> Acid Lab Resupply Cost##AcidLabResupplyCost", AcidLabResupplyCost)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Toggle to expand for customize a acid lab resupply cost")
				end
				if AcidLabResupplyCost then
					AcidSupplyCost, drag = ImGui.DragInt("Cost##AcidSupplyCost", AcidSupplyCost, 100, 0, 12000)
					--if drag then
					--	AcidSupplyCost = math.min(math.max(AcidSupplyCost, 0), INT_MAX)
					--end
				end
				
				AcidProductionBoost = ImGui.Checkbox("Acid Production Boost##AcidProductionBoost", AcidProductionBoost)
				
				AcidLabBoostAmount = ImGui.Checkbox("> Acid Lab Boost Amount##AcidLabBoostAmount", AcidLabBoostAmount)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Toggle to expand for customize a acid boost")
				end
				if AcidLabBoostAmount then
					AcidBoostAmount, drag = ImGui.DragInt("Boost Amount##AcidBoostAmount", AcidBoostAmount, 10, 80, 160)
					--if drag then
					--	AcidBoostAmount = math.min(math.max(AcidBoostAmount, 0), INT_MAX)
					--end
				end
				
				AcidLabCapacity = ImGui.Checkbox("> Acid Lab Capacity##AcidLabCapacity", AcidLabCapacity)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Toggle to expand for customize a acid lab capacity")
				end
				if AcidLabCapacity then
					AcidCapacity, drag = ImGui.DragInt("Capacity##AcidCapacity", AcidCapacity, 10, 160, 1600)
					--if drag then
					--	AcidCapacity = math.min(math.max(AcidCapacity, 0), INT_MAX)
					--end
				end
				ImGui.EndTabItem()
			end
			
			if ImGui.BeginTabItem("Selling") then
				ImGui.SeparatorText("Special Cargo")
				
				SpecialCargoValue = ImGui.Checkbox("> Special Cargo Price##SpecialCargoValue", SpecialCargoValue)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Toggle to expand for customize a special cargo crates price")
				end
				if SpecialCargoValue then
					CratesValue1, drag = ImGui.DragInt("1 Crates##CratesValue1", CratesValue1, 50, 10000, 20000)
					if drag then
						CratesValue1 = math.min(math.max(CratesValue1, 0), 30000)
					end
					CratesValue2, drag = ImGui.DragInt("2 Crates##CratesValue2", CratesValue2, 50, 11000, 22000)
					if drag then
						CratesValue2 = math.min(math.max(CratesValue2, 0), 33000)
					end
					CratesValue3, drag = ImGui.DragInt("3 Crates##CratesValue3", CratesValue3, 50, 12000, 24000)
					if drag then
						CratesValue3 = math.min(math.max(CratesValue3, 0), 36000)
					end
					CratesValue45, drag = ImGui.DragInt("4-5 Crates##CratesValue45", CratesValue45, 50, 13000, 26000)
					if drag then
						CratesValue45 = math.min(math.max(CratesValue45, 0), 39000)
					end
					CratesValue67, drag = ImGui.DragInt("6-7 Crates##CratesValue67", CratesValue67, 50, 13500, 27000)
					if drag then
						CratesValue67 = math.min(math.max(CratesValue67, 0), 40500)
					end
					CratesValue89, drag = ImGui.DragInt("8-9 Crates##CratesValue89", CratesValue89, 50, 14000, 28000)
					if drag then
						CratesValue89 = math.min(math.max(CratesValue89, 0), 42000)
					end
					CratesValue1014, drag = ImGui.DragInt("10-14 Crates##CratesValue1014", CratesValue1014, 50, 14500, 29000)
					if drag then
						CratesValue1014 = math.min(math.max(CratesValue1014, 0), 43500)
					end
					CratesValue1519, drag = ImGui.DragInt("15-19 Crates##CratesValue1519", CratesValue1519, 50, 15000, 30000)
					if drag then
						CratesValue1519 = math.min(math.max(CratesValue1519, 0), 45000)
					end
					CratesValue2024, drag = ImGui.DragInt("20-24 Crates##CratesValue2024", CratesValue2024, 50, 15500, 31000)
					if drag then
						CratesValue2024 = math.min(math.max(CratesValue2024, 0), 46500)
					end
					CratesValue2529, drag = ImGui.DragInt("25-29 Crates##CratesValue2529", CratesValue2529, 50, 16000, 32000)
					if drag then
						CratesValue2529 = math.min(math.max(CratesValue2529, 0), 48000)
					end
					CratesValue3034, drag = ImGui.DragInt("30-34 Crates##CratesValue3034", CratesValue3034, 50, 16500, 33000)
					if drag then
						CratesValue3034 = math.min(math.max(CratesValue3034, 0), 49500)
					end
					CratesValue3539, drag = ImGui.DragInt("35-39 Crates##CratesValue3539", CratesValue3539, 50, 17000, 34000)
					if drag then
						CratesValue3539 = math.min(math.max(CratesValue3539, 0), 51000)
					end
					CratesValue4044, drag = ImGui.DragInt("40-44 Crates##CratesValue4044", CratesValue4044, 50, 17500, 35000)
					if drag then
						CratesValue4044 = math.min(math.max(CratesValue4044, 0), 52500)
					end
					CratesValue4549, drag = ImGui.DragInt("45-49 Crates##CratesValue4549", CratesValue4549, 50, 17750, 35500)
					if drag then
						CratesValue4549 = math.min(math.max(CratesValue4549, 0), 53250)
					end
					CratesValue5059, drag = ImGui.DragInt("50-59 Crates##CratesValue5059", CratesValue5059, 50, 18000, 36000)
					if drag then
						CratesValue5059 = math.min(math.max(CratesValue5059, 0), 54000)
					end
					CratesValue6069, drag = ImGui.DragInt("60-69 Crates##CratesValue6069", CratesValue6069, 50, 18250, 36500)
					if drag then
						CratesValue6069 = math.min(math.max(CratesValue6069, 0), 54750)
					end
					CratesValue7079, drag = ImGui.DragInt("70-79 Crates##CratesValue7079", CratesValue7079, 50, 18500, 37000)
					if drag then
						CratesValue7079 = math.min(math.max(CratesValue7079, 0), 55500)
					end
					CratesValue8089, drag = ImGui.DragInt("80-89 Crates##CratesValue8089", CratesValue8089, 50, 18750, 37500)
					if drag then
						CratesValue8089 = math.min(math.max(CratesValue8089, 0), 56250)
					end
					CratesValue9099, drag = ImGui.DragInt("90-99 Crates##CratesValue9099", CratesValue9099, 50, 19000, 38000)
					if drag then
						CratesValue9099 = math.min(math.max(CratesValue9099, 0), 57000)
					end
					CratesValue100110, drag = ImGui.DragInt("100-110 Crates##CratesValue100110", CratesValue100110, 50, 19500, 39000)
					if drag then
						CratesValue100110 = math.min(math.max(CratesValue100110, 0), 58500)
					end
					CratesValue111, drag = ImGui.DragInt("111 Crates##CratesValue111", CratesValue111, 50, 20000, 40000)
					if drag then
						CratesValue111 = math.min(math.max(CratesValue111, 0), 60000)
					end
				end
				
				SpecialCargoShipmentType = ImGui.Checkbox("Sell With Single Shipment##SpecialCargoShipmentType", SpecialCargoShipmentType)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Activate before selling. Support instant sales")
				end
				
				if ImGui.Button("Instant Sell##SpecialCargo") then
					locals_v_set_int(SupportVersion, GCS, SCVISl, 99999)
				end
				
				SpecialCargoSell = ImGui.DragInt("Crates Amount##SpecialCargoSell", SpecialCargoSell, 1, 0, 111)
				if ImGui.Button("Sell Crates Amount") then
					if locals.get_int(SupportVersion, GCS, SCVMTl + 588) >= 1 then
						locals_v_set_int(SupportVersion, GCS, SCVMTl, SpecialCargoSell)
					end
				end
				
				SpecialCargoSellCooldown = ImGui.Checkbox("Remove Special Cargo Sell Cooldown", SpecialCargoSellCooldown)
				
				ImGui.SeparatorText("Vehicle Cargo")
				
				VehicleCargoPaymentPrice = ImGui.Checkbox("> Vehicle Cargo Payment", VehicleCargoPaymentPrice)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Toggle to expand for customize a payment price")
				end
				if VehicleCargoPaymentPrice then
					VehicleStandardRange, drag = ImGui.DragInt("Vehicle Standard Range", VehicleStandardRange, 1000, 15000, 30000)
					if drag then
						VehicleStandardRange = math.min(math.max(VehicleStandardRange, 0), 310000)
					end
					VehicleMidRange, drag = ImGui.DragInt("Vehicle Mid Range", VehicleMidRange, 1000, 25000, 50000)
					if drag then
						VehicleMidRange = math.min(math.max(VehicleMidRange, 0), 310000)
					end
					VehicleTopRange, drag = ImGui.DragInt("Vehicle Top Range", VehicleTopRange, 1000, 40000, 80000)
					if drag then
						VehicleTopRange = math.min(math.max(VehicleTopRange, 0), 310000)
					end
				end
				
				VehicleCargoSellCooldown = ImGui.Checkbox("Remove Vehicle Cargo Sell Cooldown", VehicleCargoSellCooldown)
				
				ImGui.SeparatorText("Motorcycle Club Business")

				MCBusinessProductValue = ImGui.Checkbox("> Product Price##MCBusinessProductValue", MCBusinessProductValue)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Toggle to expand for customize a mc business product price")
				end
				if MCBusinessProductValue then
					CocaineValue, drag = ImGui.DragInt("Cocaine##CocaineValue", CocaineValue, 25, 27000, 54000)
					if drag then
						CocaineValue = math.min(math.max(CocaineValue, 0), 81000)
					end
					CocaineEquipmentUpgradeValue, drag = ImGui.DragInt("Cocaine Equipment Upgrade##CocaineEquipmentUpgradeValue", CocaineEquipmentUpgradeValue, 25, 4000, 8000)
					if drag then
						CocaineEquipmentUpgradeValue = math.min(math.max(CocaineEquipmentUpgradeValue, 0), 12000)
					end
					CocaineStaffUpgradeValue, drag = ImGui.DragInt("Cocaine Staff Upgrade##CocaineStaffUpgradeValue", CocaineStaffUpgradeValue, 25, 4000, 8000)
					if drag then
						CocaineStaffUpgradeValue = math.min(math.max(CocaineStaffUpgradeValue, 0), 12000)
					end
					
					ImGui.Separator()
					
					MethamphetamineValue, drag = ImGui.DragInt("Methamphetamine##CocaineValue", MethamphetamineValue, 25, 11475, 22950)
					if drag then
						MethamphetamineValue = math.min(math.max(MethamphetamineValue, 0), 34425)
					end
					MethamphetamineEquipmentUpgradeValue, drag = ImGui.DragInt("Methamphetamine Equipment Upgrade##MethamphetamineEquipmentUpgradeValue", MethamphetamineEquipmentUpgradeValue, 25, 1700, 3400)
					if drag then
						MethamphetamineEquipmentUpgradeValue = math.min(math.max(MethamphetamineEquipmentUpgradeValue, 0), 5100)
					end
					MethamphetamineStaffUpgradeValue, drag = ImGui.DragInt("Methamphetamine Staff Upgrade##MethamphetamineStaffUpgradeValue", MethamphetamineStaffUpgradeValue, 25, 1700, 3400)
					if drag then
						MethamphetamineStaffUpgradeValue = math.min(math.max(MethamphetamineStaffUpgradeValue, 0), 5100)
					end
					
					ImGui.Separator()
					
					WeedValue, drag = ImGui.DragInt("Weed##WeedValue", WeedValue, 25, 2025, 4050)
					if drag then
						WeedValue = math.min(math.max(WeedValue, 0), 6075)
					end
					WeedEquipmentUpgradeValue, drag = ImGui.DragInt("Weed Equipment Upgrade##WeedEquipmentUpgradeValue", WeedEquipmentUpgradeValue, 25, 300, 600)
					if drag then
						WeedEquipmentUpgradeValue = math.min(math.max(WeedEquipmentUpgradeValue, 0), 900)
					end
					WeedStaffUpgradeValue, drag = ImGui.DragInt("Weed Staff Upgrade##WeedStaffUpgradeValue", WeedStaffUpgradeValue, 25, 300, 600)
					if drag then
						WeedStaffUpgradeValue = math.min(math.max(WeedStaffUpgradeValue, 0), 900)
					end
					
					ImGui.Separator()
					
					CounterfeitCashValue, drag = ImGui.DragInt("Counterfeit Cash##CounterfeitCashValue", CounterfeitCashValue, 25, 4725, 9450)
					if drag then
						CounterfeitCashValue = math.min(math.max(CounterfeitCashValue, 0), 14175)
					end
					CounterfeitCashEquipmentUpgradeValue, drag = ImGui.DragInt("Counterfeit Cash Equipment Upgrade##CounterfeitCashEquipmentUpgradeValue", CounterfeitCashEquipmentUpgradeValue, 25, 700, 1400)
					if drag then
						CounterfeitCashEquipmentUpgradeValue = math.min(math.max(CounterfeitCashEquipmentUpgradeValue, 0), 2100)
					end
					CounterfeitCashStaffUpgradeValue, drag = ImGui.DragInt("Counterfeit Cash Staff Upgrade##CounterfeitCashStaffUpgradeValue", CounterfeitCashStaffUpgradeValue, 25, 700, 1400)
					if drag then
						CounterfeitCashStaffUpgradeValue = math.min(math.max(CounterfeitCashStaffUpgradeValue, 0), 2100)
					end
					
					ImGui.Separator()
					
					DocumentForgeryValue, drag = ImGui.DragInt("Document Forgery##DocumentForgeryValue", DocumentForgeryValue, 25, 1350, 2700)
					if drag then
						DocumentForgeryValue = math.min(math.max(DocumentForgeryValue, 0), 4050)
					end
					DocumentForgeryEquipmentUpgradeValue, drag = ImGui.DragInt("Document Forgery Equipment Upgrade##DocumentForgeryEquipmentUpgradeValue", DocumentForgeryEquipmentUpgradeValue, 25, 200, 400)
					if drag then
						DocumentForgeryEquipmentUpgradeValue = math.min(math.max(DocumentForgeryEquipmentUpgradeValue, 0), 600)
					end
					DocumentForgeryStaffUpgradeValue, drag = ImGui.DragInt("Document Forgery Staff Upgrade##DocumentForgeryStaffUpgradeValue", DocumentForgeryStaffUpgradeValue, 25, 200, 400)
					if drag then
						DocumentForgeryStaffUpgradeValue = math.min(math.max(DocumentForgeryStaffUpgradeValue, 0), 600)
					end
				end
				
				MCBusinessProductMultiplier = ImGui.Checkbox("> Sales Multiplier##MCBusinessProductMultiplier", MCBusinessProductMultiplier)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Toggle to expand for customize a sales multiplier")
				end
				if MCBusinessProductMultiplier then
					MCBusinessProductMultiplier1, drag = ImGui.DragFloat("Local Location##MCBusinessProductMultiplier1", MCBusinessProductMultiplier1, 0.100, 1.000, 2.000, "%.2f")
					if drag then
						MCBusinessProductMultiplier1 = math.min(math.max(MCBusinessProductMultiplier1, 0.000), 3.000)
					end
					MCBusinessProductMultiplier2, drag = ImGui.DragFloat("Further Location##MCBusinessProductMultiplier2", MCBusinessProductMultiplier2, 0.100, 1.500, 3.000, "%.2f")
					if drag then
						MCBusinessProductMultiplier2 = math.min(math.max(MCBusinessProductMultiplier2, 0.000), 4.500)
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
				
				MCBusinessSell = ImGui.DragInt("Delivery Amount##MCBusinessSell", MCBusinessSell, 1, 0, 15)
				if ImGui.Button("Sell Delivery Amount") then
					if locals_v_get_int(SupportVersion, GBCS, MCBSTl) >= 1 then
						locals_v_set_int(SupportVersion, GBCS, MCBISl, MCBusinessSell) --704 + 122 = 826
					else
						gui.show_error("GoldenGets Selling - Error", "Not work with single Shipment, there will be no payment.")
					end
				end
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Not support with single shipment. There will be no payment.")
				end
				
				ImGui.SeparatorText("Bunker")
				
				BunkerProductValue = ImGui.Checkbox("> Product Price##BunkerProductValue", BunkerProductValue)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Toggle to expand for customize a bunker product price")
				end
				if BunkerProductValue then
					BunkerValue, drag = ImGui.DragInt("Bunker##BunkerValue", BunkerValue, 100, 5000, 10000)
					if drag then
						BunkerValue = math.min(math.max(BunkerValue, 0), 15000)
					end
					BunkerEquipmentUpgradeValue, drag = ImGui.DragInt("Bunker Equipment Upgrade##BunkerEquipmentUpgradeValue", BunkerEquipmentUpgradeValue, 100, 1000, 2000)
					if drag then
						BunkerEquipmentUpgradeValue = math.min(math.max(BunkerEquipmentUpgradeValue, 0), 3000)
					end
					BunkerStaffUpgradeValue, drag = ImGui.DragInt("Bunker Staff Upgrade##BunkerStaffUpgradeValue", BunkerStaffUpgradeValue, 100, 1000, 2000)
					if drag then
						BunkerStaffUpgradeValue = math.min(math.max(BunkerStaffUpgradeValue, 0), 3000)
					end
				end
				
				BunkerProductMultiplier = ImGui.Checkbox("> Sales Multiplier##BunkerProductMultiplier", BunkerProductMultiplier)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Toggle to expand for customize a bunker sales multiplier")
				end
				if BunkerProductMultiplier then
					BunkerProductMultiplier1, drag = ImGui.DragFloat("Local Location##BunkerProductMultiplier1", BunkerProductMultiplier1, 0.100, 1.000, 2.000, "%.2f")
					if drag then
						BunkerProductMultiplier1 = math.min(math.max(BunkerProductMultiplier1, 0.000), 3.000)
					end
					BunkerProductMultiplier2, drag = ImGui.DragFloat("Further Location##BunkerProductMultiplier2", BunkerProductMultiplier2, 0.100, 1.500, 3.000, "%.2f")
					if drag then
						BunkerProductMultiplier2 = math.min(math.max(BunkerProductMultiplier2, 0.000), 4.500)
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
				
				HangarSellRonsCut = ImGui.Checkbox("Remove Ron's Cut Sell", HangarSellRonsCut)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Delete Ron's cut payment sales")
				end
				
				if ImGui.Button("Instant Sell - Air##HangarCargo") then
					if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat(GS)) ~= 0 then
						local integer = locals_v_get_int(SupportVersion, GS, HCVISl1)  -- local_1934.f_1078 SMOT_HLPDROP2
						locals_v_set_int(SupportVersion, GS, 1934 + 1035, integer) -- 1934 + 1035 = 2969
						gui.show_message("Autoshipment","may show that the task failed, but you should get the money!")
					end
				end
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Only work for Air-Freight Cargo")
				end
				
				HangarCargoSellCooldown = ImGui.Checkbox("Remove Hangar Cargo Sell Cooldown", HangarCargoSellCooldown)
				
				ImGui.SeparatorText("Nightclub")
				
				NightclubGoodsValue = ImGui.Checkbox("> Nightclub Goods Price", NightclubGoodsValue)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Toggle to expand for customize a nightclub goods price")
				end
				if NightclubGoodsValue then
					CargoandShipmentsValue, drag = ImGui.DragInt("Cargo and Shipments##CargoandShipmentsValue", CargoandShipmentsValue, 100, 10000, 20000)
					if drag then
						CargoandShipmentsValue = math.min(math.max(CargoandShipmentsValue, 0), 30000)
					end
					SportingGoodsValue, drag = ImGui.DragInt("Sporting Goods##SportingGoodsValue", SportingGoodsValue, 50, 5000, 10000)
					if drag then
						SportingGoodsValue = math.min(math.max(SportingGoodsValue, 0), 15000)
					end
					SouthAmericaImportsValue, drag = ImGui.DragInt("South America Imports##SouthAmericaImportsValue", SouthAmericaImportsValue, 150, 27000, 54000)
					if drag then
						SouthAmericaImportsValue = math.min(math.max(SouthAmericaImportsValue, 0), 81000)
					end
					PharmaceuticalResearchValue, drag = ImGui.DragInt("Pharmaceutical Research##PharmaceuticalResearchValue", PharmaceuticalResearchValue, 75, 11475, 22950)
					if drag then
						PharmaceuticalResearchValue = math.min(math.max(PharmaceuticalResearchValue, 0), 34425)
					end
					OrganicProduceValue, drag = ImGui.DragInt("Organic Produce##OrganicProduceValue", OrganicProduceValue, 25, 2025, 4050)
					if drag then
						OrganicProduceValue = math.min(math.max(OrganicProduceValue, 0), 6075)
					end
					PrintingandCopyingValue, drag = ImGui.DragInt("Printing & Copying##PrintingandCopyingValue", PrintingandCopyingValue, 50, 1350, 2700)
					if drag then
						PrintingandCopyingValue = math.min(math.max(PrintingandCopyingValue, 0), 4050)
					end
					CashCreationValue, drag = ImGui.DragInt("Cash Creation##CashCreationValue", CashCreationValue, 25, 4725, 9450)
					if drag then
						CashCreationValue = math.min(math.max(CashCreationValue, 0), 14175)
					end
				end
				
				NightclubSellTonysCut = ImGui.Checkbox("Remove Tony's Cut Sell", NightclubSellTonysCut)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Delete Tony's cut payment sales")
				end
				
				ImGui.SeparatorText("Acid Lab")
				
				AcidProductValue = ImGui.Checkbox("> Product Price##AcidProductValue", AcidProductValue)
				if ImGui.IsItemHovered() then
					ImGui.SetTooltip("Toggle to expand for customize a acid product price")
				end
				if AcidProductValue then
					AcidValue, drag = ImGui.DragInt("Acid##AcidValue", AcidValue, 10, 1485, 2970)
					if drag then
						AcidValue = math.min(math.max(AcidValue, 0), 4455)
					end
					AcidEquipmentUpgradeValue, drag = ImGui.DragInt("Acid Equipment Upgrade##AcidEquipmentUpgradeValue", AcidEquipmentUpgradeValue, 10, 610, 1220)
					if drag then
						AcidEquipmentUpgradeValue = math.min(math.max(AcidEquipmentUpgradeValue, 0), 1830)
					end
				end
				
				if ImGui.Button("Instant Sell (Beta)##AcidLab") then
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

SpecialCargoAuto = false

script.register_looped("GoldenGets SpecialCargoAuto", function (script)
	if not SpecialCargoAuto then
		SpecialCargoInstantCratesAmount = locals_v_get_int(SupportVersion, GCB, SCVIBl2)
	end
	if SpecialCargoAuto then
		if locals_v_get_int(SupportVersion, GCS, 2) ~= 1 then  
			script:sleep(500)
			if locals_v_get_int(SupportVersion, AMW, 2) == 1 then
				SCRIPT.REQUEST_SCRIPT(ASS)
				SYSTEM.START_NEW_SCRIPT(ASS, 8344)
				SCRIPT.SET_SCRIPT_AS_NO_LONGER_NEEDED(ASS)
			end
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
			if locals_v_get_int(SupportVersion, GCB, SCVIBl2) ~= SpecialCargoInstantCratesAmount then -- Crates to Buy
				locals_v_set_int(SupportVersion, GCB, SCVIBl2, SpecialCargoInstantCratesAmount)
			end
			locals_v_set_int(SupportVersion, GCB, SCVIBl3, 6)
			locals_v_set_int(SupportVersion, GCB, SCVIBl4, 4)
			gui.show_message("Special Cargo Auto - Source Success","Successfully sent your crates to the warehouse!")
		end
		if locals_v_get_int(SupportVersion, GCS, 2) == 1 then -- Auto Sell Warehouse Special Cargo
			if locals_v_get_int(SupportVersion, GCS, SCISCAl) ~= SpecialCargoInstantCratesAmount then
				locals_v_set_int(SupportVersion, GCS, SCISCAl, SpecialCargoInstantCratesAmount) -- Crates to Sell
			end
			locals_v_set_int(SupportVersion, GCS, SCVMTl + 48, 0)
			locals_v_set_int(SupportVersion, GCS, SCVMTl + 577, 0)
			--locals_v_set_int(SupportVersion, GCS, SCVMTl, 7) -- Special Cargo Sell Shipment Type
			script:sleep(1000)
			locals_v_set_int(SupportVersion, GCS, SCVISl, 99999)
			gui.show_message("Special Cargo Auto - Selling Success","Successfully sell your crates to a buyer!")
		end
	end
	script:sleep(1000)
end)

 -- Controls
AllBusinessIncome = false
NightclubIncome = false
NightclubIncome_Toggle = 0
NightclubPopularity = false
ArcadeIncome = false
ArcadeIncome_Toggle = 0
AgencyIncome = false
AgencyIncome_Toggle = 0

AllBusinessDefend = false
SpecialCargoDefend = false
SpecialCargoDefend_Toggle = 0
AllMCBusinessDefend = false
CocaineDefend = false
CocaineDefend_Toggle = 0
MethamphetamineDefend = false
MethamphetamineDefend_Toggle = 0
WeedDefendBusiness = false
WeedDefendBusiness_Toggle = 0
CounterfeitCashDefend = false
CounterfeitCashDefend_Toggle = 0
DocumentForgeryDefend = false
DocumentForgeryDefend_Toggle = 0
BunkerDefend = false
BunkerDefend_Toggle = 0
NightclubDefend = false
NightclubDefend_Toggle = 0

AllBusinessAutoResupply = false
AllMCBusinessAutoResupply = false
CocaineAutoResupply = false
MethamphetamineAutoResupply = false
WeedAutoResupply = false
CounterfeitCashAutoResupply = false
DocumentForgeryAutoResupply = false
BunkerAutoResupply = false
AcidLabAutoResupply = false

AllBusinessReduceProduction = false
AllMCBusinessReduceProduction = false
CocaineReduceProduction = false
CocaineReduceProduction_Toggle = 0
MethamphetamineReduceProduction = false
MethamphetamineReduceProduction_Toggle = 0
WeedReduceProduction = false
WeedReduceProduction_Toggle = 0
CounterfeitCashReduceProduction = false
CounterfeitCashReduceProduction_Toggle = 0
DocumentForgeryReduceProduction = false
DocumentForgeryReduceProduction_Toggle = 0
BunkerReduceProduction = false
BunkerReduceProduction_Toggle = 0
BunkerResearchReduceProduction = false
BunkerResearchReduceProduction_Toggle = 0
AcidLabReduceProduction = false
AcidLabReduceProduction_Toggle = 0

AllBusinessProductionCooldown = false
AllMCBusinessProductionCooldown60s = false
AllMCBusinessProductionCooldown5s = false
CocaineProductionCooldown60s = false
CocaineProduction60s_Toggle = 0
CocaineProductionCooldown5s = false
CocaineProduction5s_Toggle = 0
MethamphetamineProductionCooldown60s = false
MethamphetamineProduction60s_Toggle = 0
MethamphetamineProductionCooldown5s = false
MethamphetamineProduction5s_Toggle = 0
WeedProductionCooldown60s = false
WeedProduction60s_Toggle = 0
WeedProductionCooldown5s = false
WeedProduction5s_Toggle = 0
CounterfeitCashProductionCooldown60s = false
CounterfeitCashProduction60s_Toggle = 0
CounterfeitCashProductionCooldown5s = false
CounterfeitCashProduction5s_Toggle = 0
DocumentForgeryProductionCooldown60s = false
DocumentForgeryProduction60s_Toggle = 0
DocumentForgeryProductionCooldown5s = false
DocumentForgeryProduction5s_Toggle = 0
BunkerProductionCooldown60s = false
BunkerProduction60s_Toggle = 0
BunkerProductionCooldown5s = false
BunkerProduction5s_Toggle = 0
BunkerResearchCooldown60s = false
BunkerResearch60s_Toggle = 0
BunkerResearchCooldown5s = false
BunkerResearch5s_Toggle = 0
NightclubProductionCooldownx4 = false
NightclubProductionx4_Toggle = 0
NightclubProductionCooldownx10 = false
NightclubProductionx10_Toggle = 0
NightclubProductionCooldownx20 = false
NightclubProductionx20_Toggle = 0
NightclubProductionCooldown5s = false
NightclubProduction5s_Toggle = 0
AcidLabProductionCooldown60s = false
AcidLabProduction60s_Toggle = 0
AcidLabProductionCooldown5s = false
AcidLabProduction5s_Toggle = 0

AllBusinessMission = false
SpecialCargoSourceMission = false
SpecialCargoSourceMission_Toggle = 0
SpecialCargoSellMission = false
SpecialCargoSellMission_Toggle = 0
VehicleCargoSourceMission = false
VehicleCargoSourceMission_Toggle = 0
MCBusinessStealMission = false
MCBusinessStealMission_Toggle = 0
MCBusinessSellMission = false
MCBusinessSellMission_Toggle = 0
HangarAirSourceMission = false
HangarAirSourceMission_Toggle = 0
HangarAirSellMission = false
HangarAirSellMission_Toggle = 0
NightclubSellMission = false
NightclubSellMission_Toggle = 0

 -- Resupply
DisableLupesMission = false
DisableLupesMission_Toggle = 0
WarehouseStaffSourced = false
CEOSpecialItem = false
SpecialCargoSourceCooldown = false
SpecialCargoSourceCooldown_Toggle = 0
VehicleCargoSourceCooldown = false
VehicleCargoSourceCooldown_Toggle = 0
MCBusinessResupplyCost = false
MCBusinessSupplyDelay = false
BunkerResupplyCost = false
BunkerSupplyDelay = false
TriggerBunkerProduction = false
HangarStaffSourced = false
HangarCargoSourceCooldown = false
HangarCargoSourceCooldown_Toggle = 0
NightclubGoodsCapacity = false
AcidLabResupplyCost = false
AcidProductionBoost = false
AcidProductionBoost_Toggle = 0
AcidLabBoostAmount = false
AcidLabCapacity = false

 -- Selling
SpecialCargoValue = false
SpecialCargoShipmentType = false
SpecialCargoSellCooldown = false
SpecialCargoSellCooldown_Toggle = 0
VehicleCargoPaymentPrice = false
VehicleCargoSellCooldown = false
VehicleCargoSellCooldown_Toggle = 0
MCBusinessProductValue = false
MCBusinessProductMultiplier = false
MCBusinessShipmentType = false
MCBusinessShipmentType0 = false
BunkerProductValue = false
BunkerProductMultiplier = false
HangarSellRonsCut = false
HangarSellRonsCut_Toggle = 0
HangarCargoSellCooldown = false
HangarCargoSellCooldown_Toggle = 0
NightclubGoodsValue = false
NightclubSellTonysCut = false
NightclubSellTonysCut_Toggle = 0
AcidProductValue = false

script.register_looped("GoldenGets Business", function (script)
	
	-- Resupply
	--SpecialCargoBuy = locals_v_get_int(SupportVersion, GCB, SCVIBl2)
	Warehouse1 = stats.get_int("MPX_CONTOTALFORWHOUSE0")
	Warehouse2 = stats.get_int("MPX_CONTOTALFORWHOUSE1")
	Warehouse3 = stats.get_int("MPX_CONTOTALFORWHOUSE2")
	Warehouse4 = stats.get_int("MPX_CONTOTALFORWHOUSE3")
	Warehouse5 = stats.get_int("MPX_CONTOTALFORWHOUSE4")
	WarehouseCrates = (Warehouse1 + Warehouse2 + Warehouse3 + Warehouse4 + Warehouse5)
	selected_unique_cargo = locals.get_int(SCUCl)
	unique_cargo_selected = 0
	HangarCrates = stats.get_int("MPX_HANGAR_CONTRABAND_TOTAL")
	
	-- Selling
	--SpecialCargoSell = locals_v_get_int(SupportVersion, GCS, SCISCAl)
	--MCBusinessSell = locals_v_get_int(SupportVersion, GBCS, MCBISl)
	
	 -- Controls
	if NightclubIncome then
		--if NightclubIncome_Toggle == 0 then
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
		--end
		NightclubIncome_Toggle = 1
	else
		if NightclubIncome_Toggle == 1 then
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
			NightclubIncome_Toggle = 0
		end
	end
	
	if NightclubPopularity then
		if stats.get_int("MPX_CLUB_POPULARITY") ~= 1000 then
			stats.set_int("MPX_CLUB_POPULARITY", 1000)
		end
	end
	
	if ArcadeIncome then
		--if ArcadeIncome_Toggle == 0 then
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
		--end
		ArcadeIncome_Toggle = 1
	else
		if ArcadeIncome_Toggle == 1 then
			--tunables.set_int("MAXARCADESAFESTORAGE", 100000)
			tunables.set_int("MAXARCADEPAYOUTPERDAY", 5000)
			tunables.set_int("MINPAYOUTPERCABINET", 200)
			tunables.set_int("MAXPAYOUTPERCABINET", 250)
			tunables.set_int("ARCADECABINETPAYOUTINCREMENT", 10)
			tunables.set_int("ARCADESCORESCREENSPAYOUTBONUS", 125)
			tunables.set_int("ARCADENEONFEATUREPAYOUTBONUS", 125)
			tunables.set_int("ARCADEALLTROPHIESPAYOUTBONUS", 350)
			tunables.set_int("ARCADEPAYOUTPERTROPHY", 50)
			ArcadeIncome_Toggle = 0
		end
	end
	
	if AgencyIncome then
		--if AgencyIncome_Toggle == 0 then
			--if tunables.get_int("MAXFIXERHQSAFESTORAGE") ~= 250000 then
			--	tunables.set_int("MAXFIXERHQSAFESTORAGE", 250000)
			--end
			if tunables.get_int("MAXFIXERHQPAYOUTPERDAY") ~= 250000 then
				tunables.set_int("MAXFIXERHQPAYOUTPERDAY", 250000)
			end
		--end
		AgencyIncome_Toggle = 1
	else
		if AgencyIncome_Toggle == 1 then
			--tunables.set_int("MAXFIXERHQSAFESTORAGE", 250000)
			tunables.set_int("MAXFIXERHQPAYOUTPERDAY", 5000)
			AgencyIncome_Toggle = 0
		end
	end
	
	if SpecialCargoDefend then
		--if SpecialCargoDefend_Toggle == 0 then
			if tunables.get_bool("EXEC_DISABLE_DEFEND_MISSIONS") ~= true then -- Special Cargo Warehouse
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
		--end
		SpecialCargoDefend_Toggle = 1
	else
		if SpecialCargoDefend_Toggle == 1 then
			tunables.set_bool("EXEC_DISABLE_DEFEND_MISSIONS", false) -- Special Cargo Warehouse
			tunables.set_bool("EXEC_DISABLE_DEFEND_FLEEING", false)
			tunables.set_bool("EXEC_DISABLE_DEFEND_UNDER_ATTACK", false)
			--tunables.set_float("EXEC_WAREHOUSE_STOCK_DEFEND_THRESHOLD", 0.700)
			SpecialCargoDefend_Toggle = 0
		end
	end
	
	if CocaineDefend then
		--if CocaineDefend_Toggle == 0 then
			if tunables.get_bool("BIKER_DISABLE_DEFEND_SNITCH") ~= true then -- Cocaine Lockup
				tunables.set_bool("BIKER_DISABLE_DEFEND_SNITCH", true)
			end
			--if tunables.get_int("BIKER_DEFEND_SNITCH_PRODUCT_THRESHOLD") ~= 9999 then
			--	tunables.set_int("BIKER_DEFEND_SNITCH_PRODUCT_THRESHOLD", 9999)
			--end
		--end
		CocaineDefend_Toggle = 1
	else
		if CocaineDefend_Toggle == 1 then
			tunables.set_bool("BIKER_DISABLE_DEFEND_SNITCH", false) -- Cocaine Lockup
			--tunables.set_int("BIKER_DEFEND_SNITCH_PRODUCT_THRESHOLD", 20)
			CocaineDefend_Toggle = 0
		end
	end
	
	if MethamphetamineDefend then
		--if MethamphetamineDefend_Toggle == 0 then
			if tunables.get_bool("BIKER_DISABLE_DEFEND_RETRIEVAL") ~= true then -- Methamphetamine Lab
				tunables.set_bool("BIKER_DISABLE_DEFEND_RETRIEVAL", true)
			end
			--if tunables.get_int("BIKER_DEFEND_RETRIEVAL_PRODUCT_THRESHOLD") ~= 9999 then
			--	tunables.set_int("BIKER_DEFEND_RETRIEVAL_PRODUCT_THRESHOLD", 9999)
			--end
		--end
		MethamphetamineDefend_Toggle = 1
	else
		if MethamphetamineDefend_Toggle == 1 then
			tunables.set_bool("BIKER_DISABLE_DEFEND_RETRIEVAL", false) -- Methamphetamine Lab
			--tunables.set_int("BIKER_DEFEND_RETRIEVAL_PRODUCT_THRESHOLD", 20)
			MethamphetamineDefend_Toggle = 0
		end
	end
	
	if WeedDefendBusiness then
		--if WeedDefendBusiness_Toggle == 0 then
			if tunables.get_bool("BIKER_DISABLE_DEFEND_SHOOTOUT") ~= true then -- Weed Farm
				tunables.set_bool("BIKER_DISABLE_DEFEND_SHOOTOUT", true)
			end
			--if tunables.get_int("BIKER_DEFEND_SHOOTOUT_PRODUCT_THRESHOLD") ~= 9999 then
			--	tunables.set_int("BIKER_DEFEND_SHOOTOUT_PRODUCT_THRESHOLD", 9999)
			--end
		--end
		WeedDefendBusiness_Toggle = 1
	else
		if WeedDefendBusiness_Toggle == 1 then
			tunables.set_bool("BIKER_DISABLE_DEFEND_SHOOTOUT", false) -- Weed Farm
			--tunables.set_int("BIKER_DEFEND_SHOOTOUT_PRODUCT_THRESHOLD", 20)
			WeedDefendBusiness_Toggle = 0
		end
	end
	
	if CounterfeitCashDefend then
		--if CounterfeitCashDefend_Toggle == 0 then
			--if tunables.get_int("BIKER_DEFEND_SHOOTOUT_PRODUCT_THRESHOLD") ~= 9999 then
			--	tunables.set_int("BIKER_DEFEND_SHOOTOUT_PRODUCT_THRESHOLD", 9999)
			--end
			if tunables.get_bool("BIKER_DISABLE_DEFEND_CRASH_DEAL") ~= true then -- Counterfeit Cash Factory
				tunables.set_bool("BIKER_DISABLE_DEFEND_CRASH_DEAL", true)
			end
		--end
		CounterfeitCashDefend_Toggle = 1
	else
		if CounterfeitCashDefend_Toggle == 1 then
			tunables.set_bool("BIKER_DISABLE_DEFEND_CRASH_DEAL", false) -- Counterfeit Cash Factory
			--tunables.set_int("BIKER_DEFEND_CRASH_DEAL_PRODUCT_THRESHOLD", 20)
			CounterfeitCashDefend_Toggle = 0
		end
	end
	
	if DocumentForgeryDefend then
		--if DocumentForgeryDefend_Toggle == 0 then
			if tunables.get_bool("BIKER_DISABLE_DEFEND_GETAWAY") ~= true then -- Document Forgery Office
				tunables.set_bool("BIKER_DISABLE_DEFEND_GETAWAY", true)
			end
			--if tunables.get_int("BIKER_DEFEND_GETAWAY_PRODUCT_THRESHOLD") ~= 9999 then
			--	tunables.set_int("BIKER_DEFEND_GETAWAY_PRODUCT_THRESHOLD", 9999)
			--end
		--end
		DocumentForgeryDefend_Toggle = 1
	else
		if DocumentForgeryDefend_Toggle == 1 then
			tunables.set_bool("BIKER_DISABLE_DEFEND_GETAWAY", false) -- Document Forgery Office
			--tunables.set_int("BIKER_DEFEND_GETAWAY_PRODUCT_THRESHOLD", 20)
			DocumentForgeryDefend_Toggle = 0
		end
	end
	
	if BunkerDefend then
		--if BunkerDefend_Toggle == 0 then
			if tunables.get_bool("GR_DEFEND_VALKYRIE_DISABLE_VALKYRIE") ~= true then -- Bunker
				tunables.set_bool("GR_DEFEND_VALKYRIE_DISABLE_VALKYRIE", true)
			end
			if tunables.get_bool("GR_DEFEND_DISARM_BOMBS_DISABLE_DISARM_BOMBS") ~= true then
				tunables.set_bool("GR_DEFEND_DISARM_BOMBS_DISABLE_DISARM_BOMBS", true)
			end
			--if tunables.get_int("GR_GENERAL_STOCK_LEVEL_LAUNCH_THRESHOLD") ~= 9999 then
			--	tunables.set_int("GR_GENERAL_STOCK_LEVEL_LAUNCH_THRESHOLD", 9999)
			--end
		--end
		BunkerDefend_Toggle = 1
	else
		if BunkerDefend_Toggle == 1 then
			tunables.set_bool("GR_DEFEND_VALKYRIE_DISABLE_VALKYRIE", false) -- Bunker
			tunables.set_bool("GR_DEFEND_DISARM_BOMBS_DISABLE_DISARM_BOMBS", false)
			--tunables.set_int("GR_GENERAL_STOCK_LEVEL_LAUNCH_THRESHOLD", 50)
			BunkerDefend_Toggle = 0
		end
	end
	
	if NightclubDefend then
		--if NightclubDefend_Toggle == 0 then
			if tunables.get_int("BB_DEFEND_MISSIONS_WEIGHTING_POLICE_RAID") ~= 0 then -- Nightclub
				tunables.set_int("BB_DEFEND_MISSIONS_WEIGHTING_POLICE_RAID", 0)
			end
			if tunables.get_int("BB_DEFEND_MISSIONS_WEIGHTING_RECOVER_PROPERTY") ~= 0 then
				tunables.set_int("BB_DEFEND_MISSIONS_WEIGHTING_RECOVER_PROPERTY", 0)
			end
			--if tunables.get_float("BB_DEFEND_MISSIONS_STOCK_THRESHOLD_FOR_MISSION_LAUNCH_DEFAULT") ~= 9999 then
			--	tunables.set_float("BB_DEFEND_MISSIONS_STOCK_THRESHOLD_FOR_MISSION_LAUNCH_DEFAULT", 9999)
			--end
			--if tunables.get_float("BB_DEFEND_MISSIONS_STOCK_THRESHOLD_FOR_MISSION_LAUNCH_UPGRADED") ~= 9999 then
			--	tunables.set_float("BB_DEFEND_MISSIONS_STOCK_THRESHOLD_FOR_MISSION_LAUNCH_UPGRADED", 9999)
			--end
		--end
		NightclubDefend_Toggle = 1
	else
		if NightclubDefend_Toggle == 1 then
			tunables.set_float("BB_DEFEND_MISSIONS_WEIGHTING_POLICE_RAID", 1.000) -- Nightclub
			tunables.set_float("BB_DEFEND_MISSIONS_WEIGHTING_RECOVER_PROPERTY", 1.000)
			--tunables.set_float("BB_DEFEND_MISSIONS_STOCK_THRESHOLD_FOR_MISSION_LAUNCH_DEFAULT", 0.200)
			--tunables.set_float("BB_DEFEND_MISSIONS_STOCK_THRESHOLD_FOR_MISSION_LAUNCH_UPGRADED", 0.400)
			NightclubDefend_Toggle = 0
		end
	end
	
	if CocaineAutoResupply then
		if stats.get_int("MPX_PROP_FAC_SLOT0") ~= 0 then -- Cocaine Lockup
			if stats.get_int ("MPX_MATTOTALFORFACTORY0") < 18 then
			script:sleep(5000)
				globals_v_set_int(SupportVersion, GSIg + 0 + 1, 1)
				script:sleep(10000)
			end
		end
	end
	
	if MethamphetamineAutoResupply then
		if stats.get_int("MPX_PROP_FAC_SLOT1") ~= 0 then -- Methamphetamine Lab
			if stats.get_int ("MPX_MATTOTALFORFACTORY1") < 11 then
			script:sleep(5000)
				globals_v_set_int(SupportVersion, GSIg + 1 + 1, 1)
				script:sleep(10000)
			end
		end
	end
	
	if WeedAutoResupply then
		if stats.get_int("MPX_PROP_FAC_SLOT2") ~= 0 then -- Weed Farm
			if stats.get_int ("MPX_MATTOTALFORFACTORY2") < 7 then
			script:sleep(5000)
				globals_v_set_int(SupportVersion, GSIg + 2 + 1, 1)
				script:sleep(10000)
			end
		end
	end
	
	if CounterfeitCashAutoResupply then
		if stats.get_int("MPX_PROP_FAC_SLOT3") ~= 0 then -- Counterfeit Cash Factory
			if stats.get_int ("MPX_MATTOTALFORFACTORY3") < 5 then
			script:sleep(5000)
				globals_v_set_int(SupportVersion, GSIg + 3 + 1, 1)
				script:sleep(10000)
			end
		end
	end
	
	if DocumentForgeryAutoResupply then
		if stats.get_int("MPX_PROP_FAC_SLOT4") ~= 0 then -- Document Forgery
			if stats.get_int ("MPX_MATTOTALFORFACTORY4") < 3 then
			script:sleep(5000)
				globals_v_set_int(SupportVersion, GSIg + 4 + 1, 1)
				script:sleep(10000)
			end
		end
	end
	
	if BunkerAutoResupply then
		if stats.get_int("MPX_PROP_FAC_SLOT5") ~= 0 then -- Bunker
			if stats.get_int ("MPX_MATTOTALFORFACTORY5") < 10 then
			script:sleep(5000)
				globals_v_set_int(SupportVersion, GSIg + 5 + 1, 1)
				script:sleep(10000)
			end
		end
	end
	
	if AcidLabAutoResupply then
		if stats.get_int("MPX_PROP_FAC_SLOT6") ~= 0 then -- Acid Lab
			if stats.get_int ("MPX_MATTOTALFORFACTORY6") < 2 then
			script:sleep(5000)
				globals_v_set_int(SupportVersion, GSIg + 6 + 1, 1)
				script:sleep(10000)
			end
		end
	end
	
	if CocaineReduceProduction then
		--if CocaineReduceProduction_Toggle == 0 then
			if tunables.get_int("BIKER_CRACK_MATERIAL_PRODUCT_COST") ~= 1 then
				tunables.set_int("BIKER_CRACK_MATERIAL_PRODUCT_COST", 1)
			end
			if tunables.get_int("BIKER_CRACK_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION") ~= 1 then
				tunables.set_int("BIKER_CRACK_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION", 1)
			end
		--end
		CocaineReduceProduction_Toggle = 1
	else
		if CocaineReduceProduction_Toggle == 1 then
			tunables.set_int("BIKER_CRACK_MATERIAL_PRODUCT_COST", 50)
			tunables.set_int("BIKER_CRACK_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION", 25)
			CocaineReduceProduction_Toggle = 0
		end
	end
	
	if MethamphetamineReduceProduction then
		--if MethamphetamineReduceProduction_Toggle == 0 then
			if tunables.get_int("BIKER_METH_MATERIAL_PRODUCT_COST") ~= 1 then
				tunables.set_int("BIKER_METH_MATERIAL_PRODUCT_COST", 1)
			end
			if tunables.get_int("BIKER_METH_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION") ~= 1 then
				tunables.set_int("BIKER_METH_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION", 1)
			end
		--end
		MethamphetamineReduceProduction_Toggle = 1
	else
		if MethamphetamineReduceProduction_Toggle == 1 then
			tunables.set_int("BIKER_METH_MATERIAL_PRODUCT_COST", 24)
			tunables.set_int("BIKER_METH_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION", 12)
			MethamphetamineReduceProduction_Toggle = 0
		end
	end
	
	if WeedReduceProduction then
		--if WeedReduceProduction_Toggle == 0 then
			if tunables.get_int("BIKER_WEED_MATERIAL_PRODUCT_COST") ~= 1 then
				tunables.set_int("BIKER_WEED_MATERIAL_PRODUCT_COST", 1)
			end
			if tunables.get_int("BIKER_WEED_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION") ~= 1 then
				tunables.set_int("BIKER_WEED_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION", 1)
			end
		--end
		WeedReduceProduction_Toggle = 1
	else
		if WeedReduceProduction_Toggle == 1 then
			tunables.set_int("BIKER_WEED_MATERIAL_PRODUCT_COST", 4)
			tunables.set_int("BIKER_WEED_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION", 2)
			WeedReduceProduction_Toggle = 0
		end
	end
	
	if CounterfeitCashReduceProduction then
		--if CounterfeitCashReduceProduction_Toggle == 0 then
			if tunables.get_int("BIKER_COUNTERCASH_MATERIAL_PRODUCT_COST") ~= 1 then
				tunables.set_int("BIKER_COUNTERCASH_MATERIAL_PRODUCT_COST", 1)
			end
			if tunables.get_int("BIKER_COUNTERCASH_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION") ~= 1 then
				tunables.set_int("BIKER_COUNTERCASH_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION", 1)
			end
		--end
		CounterfeitCashReduceProduction_Toggle = 1
	else
		if CounterfeitCashReduceProduction_Toggle == 1 then
			tunables.set_int("BIKER_COUNTERCASH_MATERIAL_PRODUCT_COST", 10)
			tunables.set_int("BIKER_COUNTERCASH_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION", 5)
			CounterfeitCashReduceProduction_Toggle = 0
		end
	end
	
	if DocumentForgeryReduceProduction then
		--if DocumentForgeryReduceProduction_Toggle == 0 then
			if tunables.get_int("BIKER_FAKEIDS_MATERIAL_PRODUCT_COST") ~= 1 then
				tunables.set_int("BIKER_FAKEIDS_MATERIAL_PRODUCT_COST", 1)
			end
			if tunables.get_int("BIKER_FAKEIDS_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION") ~= 1 then
				tunables.set_int("BIKER_FAKEIDS_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION", 1)
			end
		--end
		DocumentForgeryReduceProduction_Toggle = 1
	else
		if DocumentForgeryReduceProduction_Toggle == 1 then
			tunables.set_int("BIKER_FAKEIDS_MATERIAL_PRODUCT_COST", 4)
			tunables.set_int("BIKER_FAKEIDS_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION", 2)
			DocumentForgeryReduceProduction_Toggle = 0
		end
	end
	
	if BunkerReduceProduction then
		--if BunkerReduceProduction_Toggle == 0 then
			if tunables.get_int("GR_MANU_MATERIAL_PRODUCT_COST") ~= 1 then
				tunables.set_int("GR_MANU_MATERIAL_PRODUCT_COST", 1)
			end
			if tunables.get_int("GR_MANU_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION") ~= 1 then
				tunables.set_int("GR_MANU_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION", 1)
			end
		--end
		BunkerReduceProduction_Toggle = 1
	else
		if BunkerReduceProduction_Toggle == 1 then
			tunables.set_int("GR_MANU_MATERIAL_PRODUCT_COST", 10)
			tunables.set_int("GR_MANU_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION", 5)
			BunkerReduceProduction_Toggle = 0
		end
	end
	
	if BunkerResearchReduceProduction then
		--if BunkerResearchReduceProduction_Toggle == 0 then
			if tunables.get_int("GR_RESEARCH_MATERIAL_PRODUCT_COST") ~= 1 then
				tunables.set_int("GR_RESEARCH_MATERIAL_PRODUCT_COST", 1)
			end
			if tunables.get_int("GR_RESEARCH_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION") ~= 1 then
				tunables.set_int("GR_RESEARCH_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION", 1)
			end
		--end
		BunkerResearchReduceProduction_Toggle = 1
	else
		if BunkerResearchReduceProduction_Toggle == 1 then
			tunables.set_int("GR_RESEARCH_MATERIAL_PRODUCT_COST", 2)
			tunables.set_int("GR_RESEARCH_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION", 1)
			BunkerResearchReduceProduction_Toggle = 0
		end
	end
	
	if AcidLabReduceProduction then
		--if AcidLabReduceProduction_Toggle == 0 then
			if tunables.get_int("BIKER_ACID_MATERIAL_PRODUCT_COST") ~= 1 then
				tunables.set_int("BIKER_ACID_MATERIAL_PRODUCT_COST", 1)
			end
			if tunables.get_int("BIKER_ACID_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION") ~= 1 then
				tunables.set_int("BIKER_ACID_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION", 1)
			end
		--end
		AcidLabReduceProduction_Toggle = 1
	else
		if AcidLabReduceProduction_Toggle == 1 then
			tunables.set_int("BIKER_ACID_MATERIAL_PRODUCT_COST", 2)
			tunables.set_int("BIKER_ACID_MATERIAL_PRODUCT_COST_UPGRADE_REDUCTION", 1)
			AcidLabReduceProduction_Toggle = 0
		end
	end
	
    if CocaineProductionCooldown60s then
        if tunables.get_int("BIKER_CRACK_PRODUCTION_TIME") ~= 60000 then
            tunables.set_int("BIKER_CRACK_PRODUCTION_TIME", 60000)
        end
        if CocaineProduction60s_Toggle == 0 then
            tunables.set_int("BIKER_CRACK_UPGRADE_EQUIPMENT_REDUCTION_TIME", 0)
            tunables.set_int("BIKER_CRACK_UPGRADE_STAFF_REDUCTION_TIME", 0)
            gui.show_message("Cocaine Speed60s","It will take effect the next time production is triggered. You can change session immediately")
        end
        CocaineProduction60s_Toggle = 1
    else
        if CocaineProduction60s_Toggle == 1 then
            tunables.set_int("BIKER_CRACK_PRODUCTION_TIME", 3000000)
            tunables.set_int("BIKER_CRACK_UPGRADE_EQUIPMENT_REDUCTION_TIME", 600000)
            tunables.set_int("BIKER_CRACK_UPGRADE_STAFF_REDUCTION_TIME", 45000)
            CocaineProduction60s_Toggle = 0
        end
    end
	
    if CocaineProductionCooldown5s then
        if tunables.get_int("BIKER_CRACK_PRODUCTION_TIME") ~= 5000 then
            tunables.set_int("BIKER_CRACK_PRODUCTION_TIME", 5000)
        end
        if CocaineProduction5s_Toggle == 0 then
			gui.show_message("Cocaine Speed 5s","It will take effect the next time production is triggered. You can change session immediately")
            tunables.set_int("BIKER_CRACK_UPGRADE_EQUIPMENT_REDUCTION_TIME", 0)
            tunables.set_int("BIKER_CRACK_UPGRADE_STAFF_REDUCTION_TIME", 0)
        end
        CocaineProduction5s_Toggle = 1
    else
        if CocaineProduction5s_Toggle == 1 then 
            tunables.set_int("BIKER_CRACK_PRODUCTION_TIME", 3000000)
            tunables.set_int("BIKER_CRACK_UPGRADE_EQUIPMENT_REDUCTION_TIME", 600000)
            tunables.set_int("BIKER_CRACK_UPGRADE_STAFF_REDUCTION_TIME", 45000)
            CocaineProduction5s_Toggle = 0
        end    
    end
	
    if MethamphetamineProductionCooldown60s then
        if tunables.get_int("BIKER_METH_PRODUCTION_TIME") ~= 60000 then
            tunables.set_int("BIKER_METH_PRODUCTION_TIME", 60000)
        end
        if MethamphetamineProduction60s_Toggle == 0 then
            tunables.set_int("BIKER_METH_UPGRADE_EQUIPMENT_REDUCTION_TIME", 0)
            tunables.set_int("BIKER_METH_UPGRADE_STAFF_REDUCTION_TIME", 0)
            gui.show_message("Methamphetamine Speed60s","It will take effect the next time production is triggered. You can change session immediately")
        end
        MethamphetamineProduction60s_Toggle = 1
    else
        if MethamphetamineProduction60s_Toggle == 1 then
            tunables.set_int("BIKER_METH_PRODUCTION_TIME", 1800000)
            tunables.set_int("BIKER_METH_UPGRADE_EQUIPMENT_REDUCTION_TIME", 360000)
            tunables.set_int("BIKER_METH_UPGRADE_STAFF_REDUCTION_TIME", 45000)
            MethamphetamineProduction60s_Toggle = 0
        end
    end
	
    if MethamphetamineProductionCooldown5s then
        if tunables.get_int("BIKER_METH_PRODUCTION_TIME") ~= 5000 then
            tunables.set_int("BIKER_METH_PRODUCTION_TIME", 5000)
        end
        if MethamphetamineProduction5s_Toggle == 0 then
			gui.show_message("Methamphetamine Speed 5s","It will take effect the next time production is triggered. You can change session immediately")
            tunables.set_int("BIKER_METH_UPGRADE_EQUIPMENT_REDUCTION_TIME", 0)
            tunables.set_int("BIKER_METH_UPGRADE_STAFF_REDUCTION_TIME", 0)
		end
        MethamphetamineProduction5s_Toggle = 1
    else
        if MethamphetamineProduction5s_Toggle == 1 then 
            tunables.set_int("BIKER_METH_PRODUCTION_TIME", 1800000)
            tunables.set_int("BIKER_METH_UPGRADE_EQUIPMENT_REDUCTION_TIME", 360000)
            tunables.set_int("BIKER_METH_UPGRADE_STAFF_REDUCTION_TIME", 45000)
            MethamphetamineProduction5s_Toggle = 0
        end    
    end
	
    if WeedProductionCooldown60s then
        if tunables.get_int("BIKER_WEED_PRODUCTION_TIME") ~= 60000 then
            tunables.set_int("BIKER_WEED_PRODUCTION_TIME", 60000)
        end
        if WeedProduction60s_Toggle == 0 then
            tunables.set_int("BIKER_WEED_UPGRADE_EQUIPMENT_REDUCTION_TIME", 0)
            tunables.set_int("BIKER_WEED_UPGRADE_STAFF_REDUCTION_TIME", 0)
            gui.show_message("Weed Speed60s","It will take effect the next time production is triggered. You can change session immediately")
        end
        WeedProduction60s_Toggle = 1
    else
        if WeedProduction60s_Toggle == 1 then
            tunables.set_int("BIKER_WEED_PRODUCTION_TIME", 360000)
            tunables.set_int("BIKER_WEED_UPGRADE_EQUIPMENT_REDUCTION_TIME", 60000)
            tunables.set_int("BIKER_WEED_UPGRADE_STAFF_REDUCTION_TIME", 45000)
            WeedProduction60s_Toggle = 0
        end
    end
	
    if WeedProductionCooldown5s then
        if tunables.get_int("BIKER_WEED_PRODUCTION_TIME") ~= 5000 then
            tunables.set_int("BIKER_WEED_PRODUCTION_TIME", 5000)
        end
        if WeedProduction5s_Toggle == 0 then
			gui.show_message("Weed Speed 5s","It will take effect the next time production is triggered. You can change session immediately")
            tunables.set_int("BIKER_WEED_UPGRADE_EQUIPMENT_REDUCTION_TIME", 0)
            tunables.set_int("BIKER_WEED_UPGRADE_STAFF_REDUCTION_TIME", 0)
        end
        WeedProduction5s_Toggle = 1
    else
        if WeedProduction5s_Toggle == 1 then 
            tunables.set_int("BIKER_WEED_PRODUCTION_TIME", 360000)
            tunables.set_int("BIKER_WEED_UPGRADE_EQUIPMENT_REDUCTION_TIME", 60000)
            tunables.set_int("BIKER_WEED_UPGRADE_STAFF_REDUCTION_TIME", 45000)
            WeedProduction5s_Toggle = 0
        end
    end
	
    if CounterfeitCashProductionCooldown60s then
        if tunables.get_int("BIKER_COUNTERCASH_PRODUCTION_TIME") ~= 60000 then
            tunables.set_int("BIKER_COUNTERCASH_PRODUCTION_TIME", 60000)
        end
        if CounterfeitCashProduction60s_Toggle == 0 then
            tunables.set_int("BIKER_COUNTERCASH_UPGRADE_EQUIPMENT_REDUCTION_TIME", 0)
            tunables.set_int("BIKER_COUNTERCASH_UPGRADE_STAFF_REDUCTION_TIME", 0)
            gui.show_message("Counterfeit Cash Speed60s","It will take effect the next time production is triggered. You can change session immediately")
        end
        CounterfeitCashProduction60s_Toggle = 1
    else
        if CounterfeitCashProduction60s_Toggle == 1 then
            tunables.set_int("BIKER_COUNTERCASH_PRODUCTION_TIME", 720000)
            tunables.set_int("BIKER_COUNTERCASH_UPGRADE_EQUIPMENT_REDUCTION_TIME", 120000)
            tunables.set_int("BIKER_COUNTERCASH_UPGRADE_STAFF_REDUCTION_TIME", 45000)
            CounterfeitCashProduction60s_Toggle = 0
        end
    end
	
    if CounterfeitCashProductionCooldown5s then
        if tunables.get_int("BIKER_COUNTERCASH_PRODUCTION_TIME") ~= 5000 then
            tunables.set_int("BIKER_COUNTERCASH_PRODUCTION_TIME", 5000)
        end
        if CounterfeitCashProduction5s_Toggle == 0 then
			gui.show_message("Counterfeit Cash Speed 5s","It will take effect the next time production is triggered. You can change session immediately")
            tunables.set_int("BIKER_COUNTERCASH_UPGRADE_EQUIPMENT_REDUCTION_TIME", 0)
            tunables.set_int("BIKER_COUNTERCASH_UPGRADE_STAFF_REDUCTION_TIME", 0)
        end
        CounterfeitCashProduction5s_Toggle = 1
    else
        if CounterfeitCashProduction5s_Toggle == 1 then
            tunables.set_int("BIKER_COUNTERCASH_PRODUCTION_TIME", 720000)
            tunables.set_int("BIKER_COUNTERCASH_UPGRADE_EQUIPMENT_REDUCTION_TIME", 120000)
            tunables.set_int("BIKER_COUNTERCASH_UPGRADE_STAFF_REDUCTION_TIME", 45000)
            CounterfeitCashProduction5s_Toggle = 0
        end    
    end
	
    if DocumentForgeryProductionCooldown60s then
        if tunables.get_int("BIKER_FAKEIDS_PRODUCTION_TIME") ~= 60000 then
            tunables.set_int("BIKER_FAKEIDS_PRODUCTION_TIME", 60000)
        end
        if DocumentForgeryProduction60s_Toggle == 0 then
            tunables.set_int("BIKER_FAKEIDS_UPGRADE_EQUIPMENT_REDUCTION_TIME", 0)
            tunables.set_int("BIKER_FAKEIDS_UPGRADE_STAFF_REDUCTION_TIME", 0)
            gui.show_message("Document Forgery Speed60s","It will take effect the next time production is triggered. You can change session immediately")
        end
        DocumentForgeryProduction60s_Toggle = 1
    else
		if DocumentForgeryProduction60s_Toggle == 1 then
            tunables.set_int("BIKER_FAKEIDS_PRODUCTION_TIME", 300000)
            tunables.set_int("BIKER_FAKEIDS_UPGRADE_EQUIPMENT_REDUCTION_TIME", 60000)
            tunables.set_int("BIKER_FAKEIDS_UPGRADE_STAFF_REDUCTION_TIME", 45000)
            DocumentForgeryProduction60s_Toggle = 0
        end
    end
	
	if DocumentForgeryProductionCooldown5s then
		if tunables.get_int("BIKER_FAKEIDS_PRODUCTION_TIME") ~= 5000 then
			tunables.set_int("BIKER_FAKEIDS_PRODUCTION_TIME", 5000)
		end
		if DocumentForgeryProduction5s_Toggle == 0 then
			gui.show_message("Document Forgery Speed 5s","It will take effect the next time production is triggered. You can change session immediately")
			tunables.set_int("BIKER_FAKEIDS_UPGRADE_EQUIPMENT_REDUCTION_TIME", 0)
			tunables.set_int("BIKER_FAKEIDS_UPGRADE_STAFF_REDUCTION_TIME", 0)
		end
		DocumentForgeryProduction5s_Toggle = 1
	else
		if DocumentForgeryProduction5s_Toggle == 1 then
			tunables.set_int("BIKER_FAKEIDS_PRODUCTION_TIME", 300000)
			tunables.set_int("BIKER_FAKEIDS_UPGRADE_EQUIPMENT_REDUCTION_TIME", 60000)
			tunables.set_int("BIKER_FAKEIDS_UPGRADE_STAFF_REDUCTION_TIME", 45000)
			DocumentForgeryProduction5s_Toggle = 0
		end    
	end
	
    if BunkerProductionCooldown60s then
        if BunkerProduction60s_Toggle == 0 then
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
        BunkerProduction60s_Toggle = 1
    else
        if BunkerProduction60s_Toggle == 1 then
            tunables.set_int("GR_MANU_PRODUCTION_TIME", 600000)
            tunables.set_int("GR_MANU_UPGRADE_EQUIPMENT_REDUCTION_TIME", 90000)
            tunables.set_int("GR_MANU_UPGRADE_STAFF_REDUCTION_TIME", 90000)
            BunkerProduction60s_Toggle = 0
        end
    end
	
    if BunkerProductionCooldown5s then
        if BunkerProduction5s_Toggle == 0 then
			gui.show_message("Bunker Speed 5s","It will take effect the next time production is triggered. You can change session immediately")
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
        BunkerProduction5s_Toggle = 1
    else
        if BunkerProduction5s_Toggle == 1 then
            tunables.set_int("GR_MANU_PRODUCTION_TIME", 600000)
            tunables.set_int("GR_MANU_UPGRADE_EQUIPMENT_REDUCTION_TIME", 90000)
            tunables.set_int("GR_MANU_UPGRADE_STAFF_REDUCTION_TIME", 90000)
            BunkerProduction5s_Toggle = 0
        end    
    end
	
    if BunkerResearchCooldown60s then
        if BunkerResearch60s_Toggle == 0 then
            gui.show_message("Research Speed60s","It will take effect the next time production is triggered. You can change session immediately")
        end
        if tunables.get_int("GR_RESEARCH_PRODUCTION_TIME") ~= 60000 then
            tunables.set_int("GR_RESEARCH_PRODUCTION_TIME", 60000)
        end
        if tunables.get_int("GR_RESEARCH_UPGRADE_EQUIPMENT_REDUCTION_TIME") ~= 60000 then
            tunables.set_int("GR_RESEARCH_UPGRADE_EQUIPMENT_REDUCTION_TIME", 60000)
        end
        BunkerResearch60s_Toggle = 1
    else
        if BunkerResearch60s_Toggle == 1 then
            tunables.set_int("GR_RESEARCH_PRODUCTION_TIME", 300000)
            tunables.set_int("GR_RESEARCH_UPGRADE_EQUIPMENT_REDUCTION_TIME", 45000)
            BunkerResearch60s_Toggle = 0
        end
    end
	
    if BunkerResearchCooldown5s then
        if BunkerResearch5s_Toggle == 0 then
			gui.show_message("Research Speed 5s","It will take effect the next time production is triggered. You can change session immediately")
        end
        if tunables.get_int("GR_RESEARCH_PRODUCTION_TIME") ~= 5000 then
            tunables.set_int("GR_RESEARCH_PRODUCTION_TIME", 5000)
        end
        if tunables.get_int("GR_RESEARCH_UPGRADE_EQUIPMENT_REDUCTION_TIME") ~= 5000 then
            tunables.set_int("GR_RESEARCH_UPGRADE_EQUIPMENT_REDUCTION_TIME", 5000)
        end
        BunkerResearch5s_Toggle = 1
    else
        if BunkerResearch5s_Toggle == 1 then
            tunables.set_int("GR_RESEARCH_PRODUCTION_TIME", 300000)
            tunables.set_int("GR_RESEARCH_UPGRADE_EQUIPMENT_REDUCTION_TIME", 45000)
            BunkerResearch5s_Toggle = 0
        end
    end
	
    if NightclubProductionCooldownx4 then -- x4
        if NightclubProductionx4_Toggle == 0 then
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
        NightclubProductionx4_Toggle = 1
    else
        if NightclubProductionx4_Toggle == 1 then
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_CARGO", 8400000) -- Cargo and Shipments
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_WEAPONS", 4800000) -- Sporting Goods
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_COKE", 14400000) -- South America Imports
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_METH", 7200000) -- Pharmaceutical Research
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_WEED", 2400000) -- Organic Produce
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_FORGED_DOCUMENTS", 1800000) -- Printing & Copying
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_COUNTERFEIT_CASH", 3600000) -- Cash Creation
            NightclubProductionx4_Toggle = 0
        end
    end
	
    if NightclubProductionCooldownx10 then -- x10
        if NightclubProductionx10_Toggle == 0 then
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
        NightclubProductionx10_Toggle = 1
    else
        if NightclubProductionx10_Toggle == 1 then
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_CARGO", 8400000) -- Cargo and Shipments
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_WEAPONS", 4800000) -- Sporting Goods
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_COKE", 14400000) -- South America Imports
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_METH", 7200000) -- Pharmaceutical Research
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_WEED", 2400000) -- Organic Produce
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_FORGED_DOCUMENTS", 1800000) -- Printing & Copying
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_COUNTERFEIT_CASH", 3600000) -- Cash Creation
            NightclubProductionx10_Toggle = 0
        end
    end
	
    if NightclubProductionCooldownx20 then -- x20
        if NightclubProductionx20_Toggle == 0 then
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
        NightclubProductionx20_Toggle = 1
    else
        if NightclubProductionx20_Toggle == 1 then
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_CARGO", 8400000) -- Cargo and Shipments
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_WEAPONS", 4800000) -- Sporting Goods
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_COKE", 14400000) -- South America Imports
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_METH", 7200000) -- Pharmaceutical Research
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_WEED", 2400000) -- Organic Produce
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_FORGED_DOCUMENTS", 1800000) -- Printing & Copying
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_COUNTERFEIT_CASH", 3600000) -- Cash Creation
            NightclubProductionx20_Toggle = 0
        end
    end
	
	if NightclubProductionCooldown5s then
        if NightclubProduction5s_Toggle == 0 then
            gui.show_message("Nightclub Speed 5s","It will take effect the next time production is triggered. Reassign employees to take effect immediately")
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
        NightclubProduction5s_Toggle = 1
    else
        if NightclubProduction5s_Toggle == 1 then
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_CARGO", 8400000) -- Cargo and Shipments
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_WEAPONS", 4800000) -- Sporting Goods
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_COKE", 14400000) -- South America Imports
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_METH", 7200000) -- Pharmaceutical Research
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_WEED", 2400000) -- Organic Produce
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_FORGED_DOCUMENTS", 1800000) -- Printing & Copying
            tunables.set_int("BB_BUSINESS_DEFAULT_ACCRUE_TIME_COUNTERFEIT_CASH", 3600000) -- Cash Creation
            NightclubProduction5s_Toggle = 0
        end
    end
	
    if AcidLabProductionCooldown60s then
        if AcidLabProduction60s_Toggle == 0 then
            gui.show_message("Acid Lab Speed60s","It will take effect the next time production is triggered. You can change session immediately")
            tunables.set_int("BIKER_ACID_UPGRADE_EQUIPMENT_REDUCTION_TIME", 0)
        end
        if tunables.get_int("BIKER_ACID_PRODUCTION_TIME") ~= 60000 then
            tunables.set_int("BIKER_ACID_PRODUCTION_TIME", 60000)
        end
        AcidLabProduction60s_Toggle = 1
    else
        if AcidLabProduction60s_Toggle == 1 then
            tunables.set_int("BIKER_ACID_PRODUCTION_TIME", 135000)
            tunables.set_int("BIKER_ACID_UPGRADE_EQUIPMENT_REDUCTION_TIME", 45000)
            AcidLabProduction60s_Toggle = 0
        end
    end
	
    if AcidLabProductionCooldown5s then
        if AcidLabProduction5s_Toggle == 0 then
			gui.show_message("Acid Lab Speed 5s","It will take effect the next time production is triggered. You can change session immediately")
            tunables.set_int("BIKER_ACID_UPGRADE_EQUIPMENT_REDUCTION_TIME", 0)
        end
        if tunables.get_int("BIKER_ACID_PRODUCTION_TIME") ~= 5000 then
            tunables.set_int("BIKER_ACID_PRODUCTION_TIME", 5000)
        end
        AcidLabProduction5s_Toggle = 1
    else
        if AcidLabProduction5s_Toggle == 1 then
            tunables.set_int("BIKER_ACID_PRODUCTION_TIME", 135000)
            tunables.set_int("BIKER_ACID_UPGRADE_EQUIPMENT_REDUCTION_TIME", 45000)
            AcidLabProduction5s_Toggle = 0
        end    
    end
	
	if SpecialCargoSourceMission then -- there is 19 missions // https://gta.fandom.com/wiki/Special_Cargo/Steal_Missions
		--if SpecialCargoSourceMission_Toggle == 0 then
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
		--end
		SpecialCargoSourceMission_Toggle = 1
	else
		if SpecialCargoSourceMission_Toggle == 1 then
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
			SpecialCargoSourceMission_Toggle = 0
		end
	end
	
	if SpecialCargoSellMission then
		--if SpecialCargoSellMission_Toggle == 0 then
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
		--end
		SpecialCargoSellMission_Toggle = 1
	else
		if SpecialCargoSellMission_Toggle == 1 then
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
			SpecialCargoSellMission_Toggle = 0
		end
	end
	
	if VehicleCargoSourceMission then
		--if VehicleCargoSourceMission_Toggle == 0 then
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
		--end
		VehicleCargoSourceMission_Toggle = 1
	else
		if VehicleCargoSourceMission_Toggle == 1 then
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
			VehicleCargoSourceMission_Toggle = 0
		end
	end
	
	if MCBusinessStealMission then -- there is 17 missions // https://gta.fandom.com/wiki/Business_Supplies/Steal_Missions
		--if MCBusinessStealMission_Toggle == 0 then
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
		--end
		MCBusinessStealMission_Toggle = 1
	else
		if MCBusinessStealMission_Toggle == 1 then
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
			MCBusinessStealMission_Toggle = 0
		end
	end
	
	if MCBusinessSellMission then -- there is 9 missions // https://gta.fandom.com/wiki/Business_Supplies/Sell_Missions
		--if MCBusinessSellMission_Toggle == 0 then
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
		--end
		MCBusinessSellMission_Toggle = 1
	else
		if MCBusinessSellMission_Toggle == 1 then
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
			MCBusinessSellMission_Toggle = 0
		end
	end
	
	if HangarAirSourceMission then
		--if HangarAirSourceMission_Toggle == 0 then
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
		--end
		HangarAirSourceMission_Toggle = 1
	else
		if HangarAirSourceMission_Toggle == 1 then
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
			HangarAirSourceMission_Toggle = 0
		end
	end
	
	if HangarAirSellMission then
		--if HangarAirSellMission_Toggle == 0 then
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
		--end
		HangarAirSellMission_Toggle = 1
	else
		if HangarAirSellMission_Toggle == 1 then
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
			HangarAirSellMission_Toggle = 0
		end
	end
	
	if NightclubSellMission then
		--if NightclubSellMission_Toggle == 0 then
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
		--end
		NightclubSellMission_Toggle = 1
	else
		if NightclubSellMission_Toggle == 1 then
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
			NightclubSellMission_Toggle = 0
		end
	end
	
	 -- Resupply
	if DisableLupesMission then
		--if DisableLupesMission_Toggle == 0 then
			if tunables.get_int("FREQUENCY_WEIGHT_SOURCE_CARGO_AUTO_SHOP_ROBBERY") ~= 0 then
				tunables.set_int("FREQUENCY_WEIGHT_SOURCE_CARGO_AUTO_SHOP_ROBBERY", 0)
			end
			if tunables.get_int("FREQUENCY_WEIGHT_SOURCE_CARGO_UNDERWATER_CARGO") ~= 0 then
				tunables.set_int("FREQUENCY_WEIGHT_SOURCE_CARGO_UNDERWATER_CARGO", 0)
			end
			if tunables.get_int("SUM22_SOURCE_CARGO_NEW_MISSION_CHANCE_MODIFIER") ~= 0 then
				tunables.set_int("SUM22_SOURCE_CARGO_NEW_MISSION_CHANCE_MODIFIER", 0)
			end
		--end
		DisableLupesMission_Toggle = 1
	else
		if DisableLupesMission_Toggle == 1 then
			tunables.set_float("FREQUENCY_WEIGHT_SOURCE_CARGO_AUTO_SHOP_ROBBERY", 1.000)
			tunables.set_float("FREQUENCY_WEIGHT_SOURCE_CARGO_UNDERWATER_CARGO", 1.000)
			tunables.set_float("SUM22_SOURCE_CARGO_NEW_MISSION_CHANCE_MODIFIER", 2.000)
			DisableLupesMission_Toggle = 0
		end
	end
	
	if CEOSpecialItem then
		locals_v_set_int(SupportVersion, SCSIl, 1)
	end
	
	if SpecialCargoSourceCooldown then
		--if SpecialCargoSourceCooldown_Toggle == 0 then
			if tunables.get_int("EXEC_BUY_COOLDOWN") ~= 0 then -- *(300000ms)*
				tunables.set_int("EXEC_BUY_COOLDOWN", 0)
			end
			if tunables.get_int("EXEC_BUY_FAIL_COOLDOWN") ~= 0 then -- *(0ms)*
				tunables.set_int("EXEC_BUY_FAIL_COOLDOWN", 0)
			end
		--end
		SpecialCargoSourceCooldown_Toggle = 1
	else
		if SpecialCargoSourceCooldown_Toggle == 1 then
			tunables.set_int("EXEC_BUY_COOLDOWN", 300000)
			--tunables.set_int("EXEC_BUY_FAIL_COOLDOWN", 0)
			SpecialCargoSourceCooldown_Toggle = 0
		end
	end
	
	if VehicleCargoSourceCooldown then
		--if VehicleCargoSourceCooldown_Toggle == 0 then
			if tunables.get_int("IMPEXP_STEAL_COOLDOWN") ~= 0 then -- *(180000ms)*
				tunables.set_int("IMPEXP_STEAL_COOLDOWN", 0)
			end
			if tunables.get_int("IMPEXP_BOMB_DEFUSE_TARGET_SPEED") ~= 0 then -- *(90ms)*
				tunables.set_int("IMPEXP_BOMB_DEFUSE_TARGET_SPEED", 0)
			end
			if tunables.get_int("IMPEXP_BOMB_DEFUSE_TIME_TO_DISARM") ~= 0 then -- *(120000ms)*
				tunables.set_int("IMPEXP_BOMB_DEFUSE_TIME_TO_DISARM", 0)
			end
		--end
		VehicleCargoSourceCooldown_Toggle = 1
	else
		if VehicleCargoSourceCooldown_Toggle == 1 then
			tunables.set_int("IMPEXP_STEAL_COOLDOWN", 180000)
			tunables.set_int("IMPEXP_BOMB_DEFUSE_TARGET_SPEED", 90)
			tunables.set_int("IMPEXP_BOMB_DEFUSE_TIME_TO_DISARM", 120000)
			VehicleCargoSourceCooldown_Toggle = 0
		end
	end
	
	if not MCBusinessResupplyCost then
		MCBusinessSupplyCost = tunables.get_int("BIKER_PURCHASE_SUPPLIES_COST_PER_SEGMENT")
	end
	if MCBusinessResupplyCost then
		if tunables.get_int("BIKER_PURCHASE_SUPPLIES_COST_PER_SEGMENT") ~= MCBusinessSupplyCost then
			tunables.set_int("BIKER_PURCHASE_SUPPLIES_COST_PER_SEGMENT", MCBusinessSupplyCost)
		end
	end
	
	if MCBusinessSupplyDelay then
		if tunables.get_int("BIKER_PURCHASE_SUPPLIES_DELAY") ~= 0 then -- *(600ms)*
			tunables.set_int("BIKER_PURCHASE_SUPPLIES_DELAY", 0)
		end
	end
	
	if not BunkerResupplyCost then
		BunkerSupplyCost = tunables.get_int("GR_PURCHASE_SUPPLIES_COST_PER_SEGMENT")
	end
	if BunkerResupplyCost then
		if tunables.get_int("GR_PURCHASE_SUPPLIES_COST_PER_SEGMENT") ~= BunkerSupplyCost then
			tunables.set_int("GR_PURCHASE_SUPPLIES_COST_PER_SEGMENT", BunkerSupplyCost)
		end
	end
	
	if BunkerSupplyDelay then
		if tunables.get_int("GR_PURCHASE_SUPPLIES_DELAY") ~= 0 then
			tunables.set_int("GR_PURCHASE_SUPPLIES_DELAY", 0)
		end
	end
	
	if TriggerBunkerProduction then
		globals_v_set_int(SupportVersion, TTg + 6, 0)
		globals_v_set_int(SupportVersion, TTg, 1)
		script:sleep(1000)
	end
	
	if HangarCargoSourceCooldown then
		--if HangarCargoSourceCooldown_Toggle == 0 then
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
		--end
		HangarCargoSourceCooldown_Toggle = 1
	else
		if HangarCargoSourceCooldown_Toggle == 1 then
			tunables.set_int("SMUG_STEAL_EASY_COOLDOWN_TIMER", 120000)
			tunables.set_int("SMUG_STEAL_MED_COOLDOWN_TIMER", 180000)
			tunables.set_int("SMUG_STEAL_HARD_COOLDOWN_TIMER", 240000)
			tunables.set_int("SMUG_STEAL_ADDITIONAL_CRATE_COOLDOWN_TIME", 60000)
			HangarCargoSourceCooldown_Toggle = 0
		end
	end
	
	if not NightclubGoodsCapacity then
		CargoandShipmentsCapacity = tunables.get_int("BB_BUSINESS_TOTAL_MAX_UNITS_CARGO")
		SportingGoodsCapacity = tunables.get_int("BB_BUSINESS_TOTAL_MAX_UNITS_WEAPONS")
		SouthAmericaImportsCapacity = tunables.get_int("BB_BUSINESS_TOTAL_MAX_UNITS_COKE")
		PharmaceuticalResearchCapacity = tunables.get_int("BB_BUSINESS_TOTAL_MAX_UNITS_METH")
		OrganicProduceCapacity = tunables.get_int("BB_BUSINESS_TOTAL_MAX_UNITS_WEED")
		PrintingandCopyingCapacity = tunables.get_int("BB_BUSINESS_TOTAL_MAX_UNITS_FORGED_DOCUMENTS")
		CashCreationCapacity = tunables.get_int("BB_BUSINESS_TOTAL_MAX_UNITS_COUNTERFEIT_CASH")
	end
	if NightclubGoodsCapacity then		
		if tunables.get_int("BB_BUSINESS_TOTAL_MAX_UNITS_CARGO") ~= CargoandShipmentsCapacity then
			tunables.set_int("BB_BUSINESS_TOTAL_MAX_UNITS_CARGO", CargoandShipmentsCapacity)
		end		
		if tunables.get_int("BB_BUSINESS_TOTAL_MAX_UNITS_WEAPONS") ~= SportingGoodsCapacity then
			tunables.set_int("BB_BUSINESS_TOTAL_MAX_UNITS_WEAPONS", SportingGoodsCapacity)
		end		
		if tunables.get_int("BB_BUSINESS_TOTAL_MAX_UNITS_COKE") ~= SouthAmericaImportsCapacity then
			tunables.set_int("BB_BUSINESS_TOTAL_MAX_UNITS_COKE", SouthAmericaImportsCapacity)
		end		
		if tunables.get_int("BB_BUSINESS_TOTAL_MAX_UNITS_METH") ~= PharmaceuticalResearchCapacity then
			tunables.set_int("BB_BUSINESS_TOTAL_MAX_UNITS_METH", PharmaceuticalResearchCapacity)
		end		
		if tunables.get_int("BB_BUSINESS_TOTAL_MAX_UNITS_WEED") ~= OrganicProduceCapacity then
			tunables.set_int("BB_BUSINESS_TOTAL_MAX_UNITS_WEED", OrganicProduceCapacity)
		end		
		if tunables.get_int("BB_BUSINESS_TOTAL_MAX_UNITS_FORGED_DOCUMENTS") ~= PrintingandCopyingCapacity then
			tunables.set_int("BB_BUSINESS_TOTAL_MAX_UNITS_FORGED_DOCUMENTS", PrintingandCopyingCapacity)
		end		
		if tunables.get_int("BB_BUSINESS_TOTAL_MAX_UNITS_COUNTERFEIT_CASH") ~= CashCreationCapacity then
			tunables.set_int("BB_BUSINESS_TOTAL_MAX_UNITS_COUNTERFEIT_CASH", CashCreationCapacity)
		end
	end
	
	if not AcidLabResupplyCost then
		AcidSupplyCost = tunables.get_int("ACID_LAB_PURCHASE_SUPPLIES_COST_PER_SEGMENT")
	end
	if AcidLabResupplyCost then		
		if tunables.get_int("ACID_LAB_PURCHASE_SUPPLIES_COST_PER_SEGMENT") ~= AcidSupplyCost then
			tunables.set_int("ACID_LAB_PURCHASE_SUPPLIES_COST_PER_SEGMENT", AcidSupplyCost)
		end
	end
	
	if AcidProductionBoost then
		--if AcidProductionBoost_Toggle == 0 then
			if stats.get_bool_masked("MPX_DLC22022PSTAT_BOOL0", 62) ~= true then -- Acid Production Boost (0/false = Reset) -- https://www.unknowncheats.me/forum/3822322-post168.html
				stats.set_bool_masked("MPX_DLC22022PSTAT_BOOL0", true, 62)
				gui.show_message("Acid Production Boost","Activate")
			end
		--end
		AcidProductionBoost_Toggle = 1
	else
		if AcidProductionBoost_Toggle == 1 then
			if stats.get_bool_masked("MPX_DLC22022PSTAT_BOOL0", 62) ~= false then -- Acid Production Boost (0/false = Reset) -- https://www.unknowncheats.me/forum/3822322-post168.html
				stats.set_bool_masked("MPX_DLC22022PSTAT_BOOL0", false, 62)
			end
			AcidProductionBoost_Toggle = 0
            gui.show_message("Acid Production Boost","Deactivate")
		end
	end
	
	if not AcidLabBoostAmount then
		AcidBoostAmount = tunables.get_int("ACID_LAB_BOOST_AMOUNT")
	end
	if AcidLabBoostAmount then
		if tunables.get_int("ACID_LAB_BOOST_AMOUNT") ~= AcidBoostAmount then
			tunables.set_int("ACID_LAB_BOOST_AMOUNT", AcidBoostAmount)
		end
	end
	
	if not AcidLabCapacity then
		AcidCapacity = tunables.get_int("ACID_LAB_PRODUCT_CAPACITY")
	end
	if AcidLabCapacity then		
		if tunables.get_int("ACID_LAB_PRODUCT_CAPACITY") ~= AcidCapacity then
			tunables.set_int("ACID_LAB_PRODUCT_CAPACITY", AcidCapacity)
		end
	end
	
	 -- Selling
	if not SpecialCargoValue then
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
	end
	if SpecialCargoValue then		
		if tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD1") ~= CratesValue1 then
			tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD1", CratesValue1)
		end		
		if tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD2") ~= CratesValue2 then
			tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD2", CratesValue2)
		end		
		if tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD3") ~= CratesValue3 then
			tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD3", CratesValue3)
		end		
		if tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD4") ~= CratesValue45 then
			tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD4", CratesValue45)
		end		
		if tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD5") ~= CratesValue67 then
			tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD5", CratesValue67)
		end		
		if tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD6") ~= CratesValue89 then
			tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD6", CratesValue89)
		end		
		if tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD7") ~= CratesValue1014 then
			tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD7", CratesValue1014)
		end		
		if tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD8") ~= CratesValue1519 then
			tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD8", CratesValue1519)
		end		
		if tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD9") ~= CratesValue2024 then
			tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD9", CratesValue2024)
		end		
		if tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD10") ~= CratesValue2529 then
			tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD10", CratesValue2529)
		end		
		if tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD11") ~= CratesValue3034 then
			tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD11", CratesValue3034)
		end		
		if tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD12") ~= CratesValue3539 then
			tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD12", CratesValue3539)
		end		
		if tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD13") ~= CratesValue4044 then
			tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD13", CratesValue4044)
		end		
		if tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD14") ~= CratesValue4549 then
			tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD14", CratesValue4549)
		end		
		if tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD15") ~= CratesValue5059 then
			tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD15", CratesValue5059)
		end		
		if tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD16") ~= CratesValue6069 then
			tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD16", CratesValue6069)
		end		
		if tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD17") ~= CratesValue7079 then
			tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD17", CratesValue7079)
		end		
		if tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD18") ~= CratesValue8089 then
			tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD18", CratesValue8089)
		end		
		if tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD19") ~= CratesValue9099 then
			tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD19", CratesValue9099)
		end		
		if tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD20") ~= CratesValue100110 then
			tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD20", CratesValue100110)
		end		
		if tunables.get_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD21") ~= CratesValue111 then
			tunables.set_int("EXEC_CONTRABAND_SALE_VALUE_THRESHOLD21", CratesValue111)
		end
	end
	
    if SpecialCargoShipmentType then
        if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat(GCS)) ~= 0 then
            if locals_v_get_int(SupportVersion, GCS, SCVMTl) ~= 12 then 
                gui.show_message("Special Cargo - Selling","Sell with single Shipment/Tug, Boats")
                locals_v_set_int(SupportVersion, GCS, SCVMTl, 12) -- gb_contraband_sell.c	iVar0 = MISC::GET_RANDOM_INT_IN_RANGE(0, 14); --Local_545.f_7 = iVar0;
            end
        end
    end
	
	if SpecialCargoSellCooldown then
		--if SpecialCargoSellCooldown_Toggle == 0 then
			if tunables.get_int("EXEC_SELL_COOLDOWN") ~= 0 then -- *(1800000ms)*
				tunables.set_int("EXEC_SELL_COOLDOWN", 0)
			end
			if tunables.get_int("EXEC_SELL_FAIL_COOLDOWN") ~= 0 then -- *(0ms)*
				tunables.set_int("EXEC_SELL_FAIL_COOLDOWN", 0)
			end
		--end
		SpecialCargoSellCooldown_Toggle = 1
	else
		if SpecialCargoSellCooldown_Toggle == 1 then
			tunables.set_int("EXEC_SELL_COOLDOWN", 1800000)
			--tunables.set_int("EXEC_SELL_FAIL_COOLDOWN", 0)
			SpecialCargoSellCooldown_Toggle = 0
		end
	end
	
	if not VehicleCargoPaymentPrice then
		VehicleStandardRange = tunables.get_int("IMPEXP_SELL_BUYER1_OFFER_EASY")
		VehicleMidRange = tunables.get_int("IMPEXP_SELL_BUYER1_OFFER_MED")
		VehicleTopRange = tunables.get_int("IMPEXP_SELL_BUYER1_OFFER_HARD")
	end
	if VehicleCargoPaymentPrice then		
		if tunables.get_int("IMPEXP_SELL_BUYER1_OFFER_EASY") ~= VehicleStandardRange then
			tunables.set_int("IMPEXP_SELL_BUYER1_OFFER_EASY", VehicleStandardRange)
		end		
		if tunables.get_int("IMPEXP_SELL_BUYER1_OFFER_MED") ~= VehicleMidRange then
			tunables.set_int("IMPEXP_SELL_BUYER1_OFFER_MED", VehicleMidRange)
		end		
		if tunables.get_int("IMPEXP_SELL_BUYER1_OFFER_HARD") ~= VehicleTopRange then
			tunables.set_int("IMPEXP_SELL_BUYER1_OFFER_HARD", VehicleTopRange)
		end
	end
	
	if VehicleCargoSellCooldown then
		--if VehicleCargoSellCooldown_Toggle == 0 then
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
		--end
		VehicleCargoSellCooldown_Toggle = 1
	else
		if VehicleCargoSellCooldown_Toggle == 1 then
			tunables.set_int("IMPEXP_SELL_COOLDOWN", 180000)
			tunables.set_int("IMPEXP_SELL_1_CAR_COOLDOWN", 1200000)
			tunables.set_int("IMPEXP_SELL_2_CAR_COOLDOWN", 1680000)
			tunables.set_int("IMPEXP_SELL_3_CAR_COOLDOWN", 2340000)
			tunables.set_int("IMPEXP_SELL_4_CAR_COOLDOWN", 2880000)
			VehicleCargoSellCooldown_Toggle = 0
		end
	end
	
	if not MCBusinessProductValue then
		CocaineValue = tunables.get_int("BIKER_CRACK_PRODUCT_VALUE")
		CocaineEquipmentUpgradeValue = tunables.get_int("BIKER_CRACK_PRODUCT_VALUE_EQUIPMENT_UPGRADE")
		CocaineStaffUpgradeValue = tunables.get_int("BIKER_CRACK_PRODUCT_VALUE_STAFF_UPGRADE")
		MethamphetamineValue = tunables.get_int("BIKER_METH_PRODUCT_VALUE")
		MethamphetamineEquipmentUpgradeValue = tunables.get_int("BIKER_METH_PRODUCT_VALUE_EQUIPMENT_UPGRADE")
		MethamphetamineStaffUpgradeValue = tunables.get_int("BIKER_METH_PRODUCT_VALUE_STAFF_UPGRADE")
		WeedValue = tunables.get_int("BIKER_WEED_PRODUCT_VALUE")
		WeedEquipmentUpgradeValue = tunables.get_int("BIKER_WEED_PRODUCT_VALUE_EQUIPMENT_UPGRADE")
		WeedStaffUpgradeValue = tunables.get_int("BIKER_WEED_PRODUCT_VALUE_STAFF_UPGRADE")
		CounterfeitCashValue = tunables.get_int("BIKER_COUNTERCASH_PRODUCT_VALUE")
		CounterfeitCashEquipmentUpgradeValue = tunables.get_int("BIKER_COUNTERCASH_PRODUCT_VALUE_EQUIPMENT_UPGRADE")
		CounterfeitCashStaffUpgradeValue = tunables.get_int("BIKER_COUNTERCASH_PRODUCT_VALUE_STAFF_UPGRADE")
		DocumentForgeryValue = tunables.get_int("BIKER_FAKEIDS_PRODUCT_VALUE")
		DocumentForgeryEquipmentUpgradeValue = tunables.get_int("BIKER_FAKEIDS_PRODUCT_VALUE_EQUIPMENT_UPGRADE")
		DocumentForgeryStaffUpgradeValue = tunables.get_int("BIKER_FAKEIDS_PRODUCT_VALUE_STAFF_UPGRADE")
	end
	if MCBusinessProductValue then
		if tunables.get_int("BIKER_CRACK_PRODUCT_VALUE") ~= CocaineValue then
			tunables.set_int("BIKER_CRACK_PRODUCT_VALUE", CocaineValue)
		end		
		if tunables.get_int("BIKER_CRACK_PRODUCT_VALUE_EQUIPMENT_UPGRADE") ~= CocaineEquipmentUpgradeValue then
			tunables.set_int("BIKER_CRACK_PRODUCT_VALUE_EQUIPMENT_UPGRADE", CocaineEquipmentUpgradeValue)
		end		
		if tunables.get_int("BIKER_CRACK_PRODUCT_VALUE_STAFF_UPGRADE") ~= CocaineStaffUpgradeValue then
			tunables.set_int("BIKER_CRACK_PRODUCT_VALUE_STAFF_UPGRADE", CocaineStaffUpgradeValue)
		end
		if tunables.get_int("BIKER_METH_PRODUCT_VALUE") ~= MethamphetamineValue then
			tunables.set_int("BIKER_METH_PRODUCT_VALUE", MethamphetamineValue)
		end		
		if tunables.get_int("BIKER_METH_PRODUCT_VALUE_EQUIPMENT_UPGRADE") ~= MethamphetamineEquipmentUpgradeValue then
			tunables.set_int("BIKER_METH_PRODUCT_VALUE_EQUIPMENT_UPGRADE", MethamphetamineEquipmentUpgradeValue)
		end		
		if tunables.get_int("BIKER_METH_PRODUCT_VALUE_STAFF_UPGRADE") ~= MethamphetamineStaffUpgradeValue then
			tunables.set_int("BIKER_METH_PRODUCT_VALUE_STAFF_UPGRADE", MethamphetamineStaffUpgradeValue)
		end
		if tunables.get_int("BIKER_WEED_PRODUCT_VALUE") ~= WeedValue then
			tunables.set_int("BIKER_WEED_PRODUCT_VALUE", WeedValue)
		end		
		if tunables.get_int("BIKER_WEED_PRODUCT_VALUE_EQUIPMENT_UPGRADE") ~= WeedEquipmentUpgradeValue then
			tunables.set_int("BIKER_WEED_PRODUCT_VALUE_EQUIPMENT_UPGRADE", WeedEquipmentUpgradeValue)
		end		
		if tunables.get_int("BIKER_WEED_PRODUCT_VALUE_STAFF_UPGRADE") ~= WeedStaffUpgradeValue then
			tunables.set_int("BIKER_WEED_PRODUCT_VALUE_STAFF_UPGRADE", WeedStaffUpgradeValue)
		end
		if tunables.get_int("BIKER_COUNTERCASH_PRODUCT_VALUE") ~= CounterfeitCashValue then
			tunables.set_int("BIKER_COUNTERCASH_PRODUCT_VALUE", CounterfeitCashValue)
		end		
		if tunables.get_int("BIKER_COUNTERCASH_PRODUCT_VALUE_EQUIPMENT_UPGRADE") ~= CounterfeitCashEquipmentUpgradeValue then
			tunables.set_int("BIKER_COUNTERCASH_PRODUCT_VALUE_EQUIPMENT_UPGRADE", CounterfeitCashEquipmentUpgradeValue)
		end		
		if tunables.get_int("BIKER_COUNTERCASH_PRODUCT_VALUE_STAFF_UPGRADE") ~= CounterfeitCashStaffUpgradeValue then
			tunables.set_int("BIKER_COUNTERCASH_PRODUCT_VALUE_STAFF_UPGRADE", CounterfeitCashStaffUpgradeValue)
		end
		if tunables.get_int("BIKER_FAKEIDS_PRODUCT_VALUE") ~= DocumentForgeryValue then
			tunables.set_int("BIKER_FAKEIDS_PRODUCT_VALUE", DocumentForgeryValue)
		end		
		if tunables.get_int("BIKER_FAKEIDS_PRODUCT_VALUE_EQUIPMENT_UPGRADE") ~= DocumentForgeryEquipmentUpgradeValue then
			tunables.set_int("BIKER_FAKEIDS_PRODUCT_VALUE_EQUIPMENT_UPGRADE", DocumentForgeryEquipmentUpgradeValue)
		end		
		if tunables.get_int("BIKER_FAKEIDS_PRODUCT_VALUE_STAFF_UPGRADE") ~= DocumentForgeryStaffUpgradeValue then
			tunables.set_int("BIKER_FAKEIDS_PRODUCT_VALUE_STAFF_UPGRADE", DocumentForgeryStaffUpgradeValue)
		end
	end
	
	if not MCBusinessProductMultiplier then
		MCBusinessProductMultiplier1 = tunables.get_float("BIKER_SELL_PRODUCT_LOCAL_MODIFIER")
		MCBusinessProductMultiplier2 = tunables.get_float("BIKER_SELL_PRODUCT_FAR_MODIFIER")
	end
	if MCBusinessProductMultiplier then		
		if tunables.get_float("BIKER_SELL_PRODUCT_LOCAL_MODIFIER") ~= MCBusinessProductMultiplier1 then
			tunables.set_float("BIKER_SELL_PRODUCT_LOCAL_MODIFIER", MCBusinessProductMultiplier1)
		end
		if tunables.get_float("BIKER_SELL_PRODUCT_FAR_MODIFIER") ~= MCBusinessProductMultiplier2 then
			tunables.set_float("BIKER_SELL_PRODUCT_FAR_MODIFIER", MCBusinessProductMultiplier2)
		end
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
				gui.show_message("MC Business - Selling","Sell with single Shipment/MTL, Pounder")
                locals_v_set_int(SupportVersion, GBCS, MCBSTl, 0) -- gb_biker_contraband_sell.c	iVar0 = MISC::GET_RANDOM_INT_IN_RANGE(0, 13); --Local_704.f_17 = randomIntInRange;
            end    
        end
    end
	
	if not BunkerProductValue then
		BunkerValue = tunables.get_int("GR_MANU_PRODUCT_VALUE")
		BunkerEquipmentUpgradeValue = tunables.get_int("GR_MANU_PRODUCT_VALUE_EQUIPMENT_UPGRADE")
		BunkerStaffUpgradeValue = tunables.get_int("GR_MANU_PRODUCT_VALUE_STAFF_UPGRADE")
	end
	if BunkerProductValue then		
		if tunables.get_int("GR_MANU_PRODUCT_VALUE") ~= BunkerValue then
			tunables.set_int("GR_MANU_PRODUCT_VALUE", BunkerValue)
		end		
		if tunables.get_int("GR_MANU_PRODUCT_VALUE_EQUIPMENT_UPGRADE") ~= BunkerEquipmentUpgradeValue then
			tunables.set_int("GR_MANU_PRODUCT_VALUE_EQUIPMENT_UPGRADE", BunkerEquipmentUpgradeValue)
		end		
		if tunables.get_int("GR_MANU_PRODUCT_VALUE_STAFF_UPGRADE") ~= BunkerStaffUpgradeValue then
			tunables.set_int("GR_MANU_PRODUCT_VALUE_STAFF_UPGRADE", BunkerStaffUpgradeValue)
		end
	end
	
	if not BunkerProductMultiplier then
		BunkerProductMultiplier1 = tunables.get_float("GR_SELL_PRODUCT_LOCAL_MODIFIER")
		BunkerProductMultiplier2 = tunables.get_float("GR_SELL_PRODUCT_FAR_MODIFIER")
	end
	if BunkerProductMultiplier then		
		if tunables.get_float("GR_SELL_PRODUCT_LOCAL_MODIFIER") ~= BunkerProductMultiplier1 then
			tunables.set_float("GR_SELL_PRODUCT_LOCAL_MODIFIER", BunkerProductMultiplier1)
		end
		if tunables.get_float("GR_SELL_PRODUCT_FAR_MODIFIER") ~= BunkerProductMultiplier2 then
			tunables.set_float("GR_SELL_PRODUCT_FAR_MODIFIER", BunkerProductMultiplier2)
		end
	end
	
	if HangarSellRonsCut then
		--if HangarSellRonsCut_Toggle == 0 then
			if tunables.get_in("SMUG_SELL_RONS_CUT") ~= 0 then
				tunables.set_int("SMUG_SELL_RONS_CUT", 0)
			end
		--end
		HangarSellRonsCut_Toggle = 1
	else
		if HangarSellRonsCut_Toggle == 1 then
			tunables.set_float("SMUG_SELL_RONS_CUT", 0.025)
			HangarSellRonsCut_Toggle = 0
		end
	end
	
	if HangarCargoSellCooldown then
		--if HangarCargoSellCooldown_Toggle == 0 then
			if tunables.get_int("SMUG_SELL_SELL_COOLDOWN_TIMER") ~= 0 then -- *(180000ms)*
				tunables.set_int("SMUG_SELL_SELL_COOLDOWN_TIMER", 0)
			end
		--end
		HangarCargoSellCooldown_Toggle = 1
	else
		if HangarCargoSellCooldown_Toggle == 1 then
			tunables.set_int("SMUG_SELL_SELL_COOLDOWN_TIMER", 180000)
			HangarCargoSellCooldown_Toggle = 0
		end
	end
	
	if not NightclubGoodsValue then
		CargoandShipmentsValue = tunables.get_int("BB_BUSINESS_VALUE_CARGO")
		SportingGoodsValue = tunables.get_int("BB_BUSINESS_VALUE_WEAPONS")
		SouthAmericaImportsValue = tunables.get_int("BB_BUSINESS_VALUE_COKE")
		PharmaceuticalResearchValue = tunables.get_int("BB_BUSINESS_VALUE_METH")
		OrganicProduceValue = tunables.get_int("BB_BUSINESS_VALUE_WEED")
		PrintingandCopyingValue = tunables.get_int("BB_BUSINESS_VALUE_FORGED_DOCUMENTS")
		CashCreationValue = tunables.get_int("BB_BUSINESS_VALUE_COUNTERFEIT_CASH")
	end
	if NightclubGoodsValue then		
		if tunables.get_int("BB_BUSINESS_VALUE_CARGO") ~= CargoandShipmentsValue then
			tunables.set_int("BB_BUSINESS_VALUE_CARGO", CargoandShipmentsValue)
		end		
		if tunables.get_int("BB_BUSINESS_VALUE_WEAPONS") ~= SportingGoodsValue then
			tunables.set_int("BB_BUSINESS_VALUE_WEAPONS", SportingGoodsValue)
		end		
		if tunables.get_int("BB_BUSINESS_VALUE_COKE") ~= SouthAmericaImportsValue then
			tunables.set_int("BB_BUSINESS_VALUE_COKE", SouthAmericaImportsValue)
		end		
		if tunables.get_int("BB_BUSINESS_VALUE_METH") ~= PharmaceuticalResearchValue then
			tunables.set_int("BB_BUSINESS_VALUE_METH", PharmaceuticalResearchValue)
		end		
		if tunables.get_int("BB_BUSINESS_VALUE_WEED") ~= OrganicProduceValue then
			tunables.set_int("BB_BUSINESS_VALUE_WEED", OrganicProduceValue)
		end		
		if tunables.get_int("BB_BUSINESS_VALUE_FORGED_DOCUMENTS") ~= PrintingandCopyingValue then
			tunables.set_int("BB_BUSINESS_VALUE_FORGED_DOCUMENTS", PrintingandCopyingValue)
		end		
		if tunables.get_int("BB_BUSINESS_VALUE_COUNTERFEIT_CASH") ~= CashCreationValue then
			tunables.set_int("BB_BUSINESS_VALUE_COUNTERFEIT_CASH", CashCreationValue)
		end
	end
	
	if NightclubSellTonysCut then
		--if NightclubSellTonysCut_Toggle == 0 then
			if tunables.get_in("BB_SELL_MISSIONS_TONYS_CUT") ~= 0 then
				tunables.set_int("BB_SELL_MISSIONS_TONYS_CUT", 0)
			end
		--end
		NightclubSellTonysCut_Toggle = 1
	else
		if NightclubSellTonysCut_Toggle == 1 then
			tunables.set_float("BB_SELL_MISSIONS_TONYS_CUT", 0.100)
			NightclubSellTonysCut_Toggle = 0
		end
	end
	
	if not AcidProductValue then
		AcidValue = tunables.get_int("BIKER_ACID_PRODUCT_VALUE")
		AcidEquipmentUpgradeValue = tunables.get_int("BIKER_ACID_PRODUCT_VALUE_EQUIPMENT_UPGRADE")
	end
	if AcidProductValue then		
		if tunables.get_int("BIKER_ACID_PRODUCT_VALUE") ~= AcidValue then
			tunables.set_int("BIKER_ACID_PRODUCT_VALUE", AcidValue)
		end
		if tunables.get_int("BIKER_ACID_PRODUCT_VALUE_EQUIPMENT_UPGRADE") ~= AcidEquipmentUpgradeValue then
			tunables.set_int("BIKER_ACID_PRODUCT_VALUE_EQUIPMENT_UPGRADE", AcidEquipmentUpgradeValue)
		end
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
MinMissionPayout = tunables.get_float("LOW_ROCKSTAR_MISSIONS_MODIFIER")
MaxMissionPayout = tunables.get_float("HIGH_ROCKSTAR_MISSIONS_MODIFIER")
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
				locals_v_set_int(SupportBuild, 1 + 2359296 + 5150 + 13, 2880000)
			end
			
			disabletransactionerror = ImGui.Checkbox("Disable Transaction error", disabletransactionerror) --??????,??????
			
			ImGui.Separator()
			
			ImGui.SeparatorText("Bodyguard")
			
			allbodyguardtable = {} --??NPC?
			function npc2bodyguard(peds_func) --?NPC????????
				if math.random(0, 100) > 50 then 
					WEAPON.GIVE_WEAPON_TO_PED(peds_func, joaat("WEAPON_MICROSMG"), 9999, false, true)
				else
				--WEAPON.GIVE_WEAPON_TO_PED(peds_func, joaat("WEAPON_CARBINERIFLE_MK2"), 9999, false, true)
				WEAPON.GIVE_WEAPON_TO_PED(peds_func, joaat("WEAPON_RAILGUNXM3"), 1, false, true)
				end
				WEAPON.SET_PED_INFINITE_AMMO(peds_func, true, joaat("WEAPON_RAILGUNXM3"))
				PED.SET_PED_AS_GROUP_MEMBER(peds_func, PED.GET_PED_GROUP_INDEX(PLAYER.PLAYER_PED_ID()))
				PED.SET_PED_RELATIONSHIP_GROUP_HASH(peds_func, PED.GET_PED_RELATIONSHIP_GROUP_HASH(PLAYER.PLAYER_PED_ID()))
				PED.SET_PED_NEVER_LEAVES_GROUP(peds_func, true)
				PED.SET_CAN_ATTACK_FRIENDLY(peds_func, false, true)
				PED.SET_PED_COMBAT_ABILITY(peds_func, 2)
				PED.SET_PED_CAN_TELEPORT_TO_GROUP_LEADER(peds_func, PED.GET_PED_GROUP_INDEX(PLAYER.PLAYER_PED_ID()), true)
				PED.SET_PED_FLEE_ATTRIBUTES(peds_func, 512, true)
				PED.SET_PED_FLEE_ATTRIBUTES(peds_func, 1024, true)
				PED.SET_PED_FLEE_ATTRIBUTES(peds_func, 2048, true)
				PED.SET_PED_FLEE_ATTRIBUTES(peds_func, 16384, true)
				PED.SET_PED_FLEE_ATTRIBUTES(peds_func, 131072, true)
				PED.SET_PED_FLEE_ATTRIBUTES(peds_func, 262144, true)
				PED.SET_PED_COMBAT_ATTRIBUTES(peds_func, 5, true)
				PED.SET_PED_COMBAT_ATTRIBUTES(peds_func, 12, true)
				PED.SET_PED_COMBAT_ATTRIBUTES(peds_func, 13, true)
				PED.SET_PED_COMBAT_ATTRIBUTES(peds_func, 21, false)
				PED.SET_PED_COMBAT_ATTRIBUTES(peds_func, 27, true)
				PED.SET_PED_COMBAT_ATTRIBUTES(peds_func, 58, true)
				PED.SET_PED_CONFIG_FLAG(peds_func, 394, true)
				PED.SET_PED_CONFIG_FLAG(peds_func, 400, true)
				PED.SET_PED_CONFIG_FLAG(peds_func, 134, true)
				PED.SET_PED_CAN_RAGDOLL(peds_func, false)
				PED.SET_PED_SHOOT_RATE(peds_func, 1000)
				PED.SET_PED_ACCURACY(peds_func,100)
				TASK.TASK_COMBAT_HATED_TARGETS_AROUND_PED(peds_func, 100, 67108864)
				ENTITY.SET_ENTITY_HEALTH(peds_func,1000,0,0)
				HUD.SET_PED_HAS_AI_BLIP_WITH_COLOUR(peds_func, true, 3)
				HUD.SET_PED_AI_BLIP_SPRITE(peds_func, 270)
				table.insert(allbodyguardtable,peds_func)            
			end
			
			heli_sp_table = {}
			heli_guard_table = {}
			if ImGui.Button("Generate Bodyguard Helicopter") then
				script.run_in_fiber(function (heli_guard_f)
			
				local heli_mod = joaat("valkyrie") --??? ???
				local drv_mod = joaat("s_m_y_blackops_01")
				while not STREAMING.HAS_MODEL_LOADED(heli_mod) do	
					STREAMING.REQUEST_MODEL(heli_mod)
					heli_guard_f:yield()
				end    
				while not STREAMING.HAS_MODEL_LOADED(drv_mod) do	
					STREAMING.REQUEST_MODEL(drv_mod)
					heli_guard_f:yield()
				end    
				local selfpedPos_sp_heli = ENTITY.GET_ENTITY_COORDS(PLAYER.PLAYER_PED_ID(), false)
				selfpedPos_sp_heli.z = selfpedPos_sp_heli.z + math.random(40, 50)
				selfpedPos_sp_heli.x = selfpedPos_sp_heli.x + math.random(-7, 7)
				selfpedPos_sp_heli.y = selfpedPos_sp_heli.y + math.random(-7, 7)
			
				local heli_sp = VEHICLE.CREATE_VEHICLE(heli_mod, selfpedPos_sp_heli.x,selfpedPos_sp_heli.y,selfpedPos_sp_heli.z, CAM.GET_GAMEPLAY_CAM_ROT(0).z , true, true, true)
				table.insert(heli_sp_table, heli_sp)
				vehNetId = NETWORK.VEH_TO_NET(heli_sp)
				if NETWORK.NETWORK_GET_ENTITY_IS_NETWORKED(NETWORK.NET_TO_PED(vehNetId)) then
				NETWORK.SET_NETWORK_ID_EXISTS_ON_ALL_MACHINES(vehNetId, true)
				end
				NETWORK.SET_NETWORK_ID_ALWAYS_EXISTS_FOR_PLAYER(vehNetId, PLAYER.PLAYER_ID(), true)
				VEHICLE.SET_VEHICLE_ENGINE_ON(heli_sp, true, true, true)
				VEHICLE.SET_HELI_BLADES_SPEED(heli_sp, 1.0)
				VEHICLE.SET_VEHICLE_SEARCHLIGHT(heli_sp, true, true)
				ENTITY.SET_ENTITY_INVINCIBLE(heli_sp, true)
				ENTITY.SET_ENTITY_MAX_HEALTH(heli_sp, 10000)
				ENTITY.SET_ENTITY_HEALTH(heli_sp, 10000, 0, 0)
			
				local heli_guards = {}
				for i = 1, 4 do
					local heli_guard = PED.CREATE_PED(29, drv_mod, selfpedPos_sp_heli.x, selfpedPos_sp_heli.y, selfpedPos_sp_heli.z, CAM.GET_GAMEPLAY_CAM_ROT(0).z, true, true)
					PED.SET_PED_KEEP_TASK(heli_guard, true)
					ENTITY.SET_ENTITY_INVINCIBLE(heli_guard, true)
					PED.SET_PED_MAX_HEALTH(heli_guard, 1000)
					ENTITY.SET_ENTITY_HEALTH(heli_guard, 1000, 0, 0)
					npc2bodyguard(heli_guard)
					table.insert(heli_guard_table, heli_guard)
					heli_guards[i] = heli_guard
				end
			
				PED.SET_BLOCKING_OF_NON_TEMPORARY_EVENTS(heli_guards[1], true)
				PED.SET_PED_INTO_VEHICLE(heli_guards[4], heli_sp, 0)
				PED.SET_PED_INTO_VEHICLE(heli_guards[3], heli_sp, 2)
				PED.SET_PED_INTO_VEHICLE(heli_guards[2], heli_sp, 1)
				PED.SET_PED_INTO_VEHICLE(heli_guards[1], heli_sp, -1)
				PED.SET_PED_COMBAT_ATTRIBUTES(heli_guards[1], 3, false)
				PED.SET_PED_COMBAT_ATTRIBUTES(heli_guards[2], 3, false)
				PED.SET_PED_COMBAT_ATTRIBUTES(heli_guards[3], 3, false)
				PED.SET_PED_COMBAT_ATTRIBUTES(heli_guards[4], 3, false)
				PED.SET_PED_CONFIG_FLAG(heli_guards[1], 402, true)
				PED.SET_PED_CONFIG_FLAG(heli_guards[2], 402, true)
				PED.SET_PED_CONFIG_FLAG(heli_guards[3], 402, true)
				PED.SET_PED_CONFIG_FLAG(heli_guards[4], 402, true)
				TASK.TASK_VEHICLE_FOLLOW(heli_guards[1], heli_sp, PLAYER.PLAYER_PED_ID(), 80, 1, 10, 10)
				PED.SET_PED_KEEP_TASK(heli_guards[1], true)
				end)
			end
			ImGui.SameLine()
			if ImGui.Button("Remove Bodyguard Helicopter") then
				for _, hgt_ele in pairs(heli_guard_table) do
					delete_entity(hgt_ele)
				end
				for _, hst_elm in pairs(heli_sp_table) do
					delete_entity(hst_elm)
				end
				heli_sp_table = {}
			end
			
			--ImGui.Separator()
			
			--ImGui.SeparatorText("Service")
			
			--taxiservice1 = ImGui.Checkbox("Automation of online taxi work (continuous transmission)", taxiservice1)--??????,??????
			
			--taxiservice2 = ImGui.Checkbox("Automation of online taxi work (simulation driving)", taxiservice2)--??????,??????
			ImGui.EndTabItem()
		end
		
		if ImGui.BeginTabItem("Tunables") then
			--if ImGui.Button("Default Vehicle Price") then
			--	
			--	 -- Bin Price Vehicle
			--	tunables.set_int("AW_BUY_IT_NOW_PRICE_APOCALYPSE_BRUTUS", 1866655)
			--	tunables.set_int("AW_BUY_IT_NOW_PRICE_APOCALYPSE_CERBERUS", 2709210)
			--	tunables.set_int("AW_BUY_IT_NOW_PRICE_APOCALYPSE_IMPERATOR", 1599458)
			--	tunables.set_int("AW_BUY_IT_NOW_PRICE_APOCALYPSE_SCARAB", 2153403)
			--	tunables.set_int("AW_BUY_IT_NOW_PRICE_APOCALYPSE_ZR380", 1497048)
			--	tunables.set_int("AW_BUY_IT_NOW_PRICE_CONSUMERISM_BRUTUS", 1866655)
			--	tunables.set_int("AW_BUY_IT_NOW_PRICE_CONSUMERISM_CERBERUS", 2709210)
			--	tunables.set_int("AW_BUY_IT_NOW_PRICE_CONSUMERISM_IMPERATOR", 1599458)
			--	tunables.set_int("AW_BUY_IT_NOW_PRICE_CONSUMERISM_SCARAB", 2153403)
			--	tunables.set_int("AW_BUY_IT_NOW_PRICE_CONSUMERISM_ZR380", 1497048)
			--	tunables.set_int("AW_BUY_IT_NOW_PRICE_IMPALER", 331835)
			--	tunables.set_int("AW_BUY_IT_NOW_PRICE_SCIFI_BRUTUS", 1866655)
			--	tunables.set_int("AW_BUY_IT_NOW_PRICE_SCIFI_CERBERUS", 2709210)
			--	tunables.set_int("AW_BUY_IT_NOW_PRICE_SCIFI_IMPERATOR", 1599458)
			--	tunables.set_int("AW_BUY_IT_NOW_PRICE_SCIFI_SCARAB", 2153403)
			--	tunables.set_int("AW_BUY_IT_NOW_PRICE_SCIFI_ZR380", 1497048)
			--	
			--	tunables.set_int("AW_SALE_PRICE_BANDITO", 1590000)
			--	tunables.set_int("AW_SALE_PRICE_CLIQUE", 909000)
			--	tunables.set_int("AW_SALE_PRICE_DEVESTE", 1795000)
			--	tunables.set_int("AW_SALE_PRICE_DEVIANT", 512000)
			--	tunables.set_int("AW_SALE_PRICE_GTO", 1965000)
			--	--tunables.set_int("AW_SALE_PRICE_RCBANDITO", )
			--	tunables.set_int("AW_SALE_PRICE_SCHLAGEN", 1300000)
			--	tunables.set_int("AW_SALE_PRICE_TOROS", 498000)
			--	tunables.set_int("AW_SALE_PRICE_TULIP", 718000)
			--	tunables.set_int("AW_SALE_PRICE_VAMOS", 596000)
			--	
			--	tunables.set_int("BB_BUY_IT_NOW_PRICE_HIGH_END_VEHICLES_MAMMOTH_PATRIOT_STRETCH", 611800)
			--	tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP", 1190350)
			--	--tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP_LIVERY_1", )
			--	--tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP_LIVERY_2", )
			--	--tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP_LIVERY_3", )
			--	--tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP_LIVERY_4", )
			--	--tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP_LIVERY_5", )
			--	--tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP_LIVERY_6", )
			--	--tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP_LIVERY_7", )
			--	--tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP_LIVERY_8_NIGHTCLUB", )
			--	tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_FESTIVAL_BUS", 1842050)
			--	tunables.set_int("BB_BUY_IT_NOW_PRICE_WEAPONIZED_VEHICLES_DECLASSE_SCRAMJET", 4000000)
			--	tunables.set_int("BB_BUY_IT_NOW_PRICE_WEAPONIZED_VEHICLES_MAIBATSU_MULE_CUSTOM", 95760)
			--	tunables.set_int("BB_BUY_IT_NOW_PRICE_WEAPONIZED_VEHICLES_MTL_POUNDER_CUSTOM", 320530)
			--	tunables.set_int("BB_BUY_IT_NOW_PRICE_WEAPONIZED_VEHICLES_PEGASSI_OPPRESSOR_MK_II", 8000000)
			--	
			--	tunables.set_int("BOUNTY24_BIN_PRICE_CASTIGATOR", 1650000)
			--	tunables.set_int("BOUNTY24_BIN_PRICE_COQUETTE5", 1500000)
			--	tunables.set_int("BOUNTY24_BIN_PRICE_DOMINATOR10", 1550000)
			--	tunables.set_int("BOUNTY24_BIN_PRICE_ENVISAGE", 2472000)
			--	tunables.set_int("BOUNTY24_BIN_PRICE_EUROSX32", 1499000)
			--	tunables.set_int("BOUNTY24_BIN_PRICE_NIOBE", 1880000)
			--	tunables.set_int("BOUNTY24_BIN_PRICE_PARAGON3", 2010000)
			--	tunables.set_int("BOUNTY24_BIN_PRICE_PIPISTRELLO", 2950000)
			--	tunables.set_int("BOUNTY24_BIN_PRICE_PIZZABOY", 195000)
			--	tunables.set_int("BOUNTY24_BIN_PRICE_POLDOMINATOR10", 4950000)
			--	tunables.set_int("BOUNTY24_BIN_PRICE_POLDORADO", 5005000)
			--	tunables.set_int("BOUNTY24_BIN_PRICE_POLGREENWOOD", 4910000)
			--	tunables.set_int("BOUNTY24_BIN_PRICE_POLIMPALER5", 4720000)
			--	tunables.set_int("BOUNTY24_BIN_PRICE_POLIMPALER6", 4800000)
			--	tunables.set_int("BOUNTY24_BIN_PRICE_VORSCHLAGHAMMER", 1790000)
			--	tunables.set_int("BOUNTY24_BIN_PRICE_YOSEMITE1500", 1205000)
			--	
			--	tunables.set_int("CH_BIN_PRICE_ASBO", 408000)
			--	tunables.set_int("CH_BIN_PRICE_BOXVILLE", 398000)
			--	tunables.set_int("CH_BIN_PRICE_BURRITO2", 598500)
			--	tunables.set_int("CH_BIN_PRICE_EVERON", 1475000)
			--	tunables.set_int("CH_BIN_PRICE_FIRETRUCK", 3295000)
			--	tunables.set_int("CH_BIN_PRICE_FURIA", 2740000)
			--	tunables.set_int("CH_BIN_PRICE_KANJO", 580000)
			--	tunables.set_int("CH_BIN_PRICE_KOMODA", 1700000)
			--	tunables.set_int("CH_BIN_PRICE_OUTLAW", 1268000)
			--	tunables.set_int("CH_BIN_PRICE_RETINUE2", 1620000)
			--	tunables.set_int("CH_BIN_PRICE_STOCKADE", 2240000)
			--	tunables.set_int("CH_BIN_PRICE_STRYDER", 670000)
			--	tunables.set_int("CH_BIN_PRICE_SUGOI", 1224000)
			--	tunables.set_int("CH_BIN_PRICE_SULTAN2", 1718000)
			--	tunables.set_int("CH_BIN_PRICE_VAGRANT", 2214000)
			--	tunables.set_int("CH_BIN_PRICE_YOSEMITE2", 1308000)
			--	tunables.set_int("CH_BIN_PRICE_ZHABA", 2400000)
			--	
			--	tunables.set_int("CH_SALE_PRICE_BLAZER2", 62000)
			--	tunables.set_int("CH_SALE_PRICE_IMORGEN", 2165000)
			--	tunables.set_int("CH_SALE_PRICE_LGUARD", 865000)
			--	tunables.set_int("CH_SALE_PRICE_MINITANK", 2275000)
			--	tunables.set_int("CH_SALE_PRICE_REBLA", 1175000)
			--	tunables.set_int("CH_SALE_PRICE_VSTR", 1285000)
			--	
			--	tunables.set_int("EXEC1_BENEFACTOR_XLS", 253000)
			--	tunables.set_int("EXEC1_BENEFACTOR_XLS_ARMORED", 522000)
			--	tunables.set_int("EXEC1_BRAVADO_RUMPO_CUSTOM", 130000)
			--	tunables.set_int("EXEC1_BUCKINGHAM_NIMBUS", 1900000)
			--	tunables.set_int("EXEC1_BUCKINGHAM_VOLATUS", 2295000)
			--	tunables.set_int("EXEC1_CARGOBOB", 1790000)
			--	tunables.set_int("EXEC1_CARGOBOB2", 1995000)
			--	tunables.set_int("EXEC1_DEWBAUCHEE_SEVEN70", 695000)
			--	tunables.set_int("EXEC1_ENUS_WINDSOR_DROP", 900000)
			--	tunables.set_int("EXEC1_GROTTI_BESTIA", 610000)
			--	tunables.set_int("EXEC1_HVY_BRICKADE", 555000)
			--	tunables.set_int("EXEC1_PFISTER_811", 1135000)
			--	tunables.set_int("EXEC1_PROGEN_X80_PROTO", 2700000)
			--	tunables.set_int("EXEC1_TUG", 1250000)
			--	tunables.set_int("EXEC1_VAPID_FMJ", 1750000)
			--	
			--	tunables.set_int("FIXER_BIN_PRICE_ASTRON", 1580000)
			--	tunables.set_int("FIXER_BIN_PRICE_BALLER7", 890000)
			--	tunables.set_int("FIXER_BIN_PRICE_BUFFALO4", 2150000)
			--	tunables.set_int("FIXER_BIN_PRICE_CHAMPION", 3750000)
			--	tunables.set_int("FIXER_BIN_PRICE_CINQUEMILA", 1740000)
			--	tunables.set_int("FIXER_BIN_PRICE_COMET7", 1797000)
			--	tunables.set_int("FIXER_BIN_PRICE_DEITY", 1845000)
			--	tunables.set_int("FIXER_BIN_PRICE_GRANGER2", 2000000)
			--	tunables.set_int("FIXER_BIN_PRICE_IGNUS", 2765000)
			--	tunables.set_int("FIXER_BIN_PRICE_IWAGEN", 1720000)
			--	tunables.set_int("FIXER_BIN_PRICE_JUBILEE", 1650000)
			--	tunables.set_int("FIXER_BIN_PRICE_PATRIOT3", 1710000)
			--	tunables.set_int("FIXER_BIN_PRICE_REEVER", 1900000)
			--	tunables.set_int("FIXER_BIN_PRICE_SHINOBI", 2480500)
			--	tunables.set_int("FIXER_BIN_PRICE_ZENO", 2820000)
			--	
			--	--tunables.set_int("GEN9_SALE_PRICE_ARBITERGT", 0)
			--	--tunables.set_int("GEN9_SALE_PRICE_ASTRON2", 0)
			--	--tunables.set_int("GEN9_SALE_PRICE_CYCLONE2", 0)
			--	--tunables.set_int("GEN9_SALE_PRICE_IGNUS2", 0)
			--	--tunables.set_int("GEN9_SALE_PRICE_S95", 0)
			--	
			--	tunables.set_int("GR_NEW_SPORTS_CARS_DEWBAUCHEE_VAGNER", 1535000)
			--	tunables.set_int("GR_NEW_SPORTS_CARS_GROTTI_CHEETAH_CLASSIC", 865000)
			--	tunables.set_int("GR_NEW_SPORTS_CARS_OCELOT_XA_21", 2375000)
			--	tunables.set_int("GR_NEW_SPORTS_CARS_PEGASSI_TORERO", 998000)
			--	
			--	tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_AKULA", 4500000)
			--	tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_BARRAGE", 2121350)
			--	tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_CHERNOBOG", 1500000)
			--	tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_DELUXO", 5750000)
			--	tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_KHANJALI", 3850350)
			--	tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_RCV", 3125500)
			--	tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_STROMBERG", 2500000)
			--	tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_THRUSTER", 2500000)
			--	tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_VOLATOL", 3724000)
			--	tunables.set_int("H2_VEHICLES_PRICE_190Z", 900000)
			--	tunables.set_int("H2_VEHICLES_PRICE_AUTARCH", 1955000)
			--	tunables.set_int("H2_VEHICLES_PRICE_AVENGER", 3450000)
			--	tunables.set_int("H2_VEHICLES_PRICE_COMET_GT", 1145000)
			--	tunables.set_int("H2_VEHICLES_PRICE_COMET_SAFARI", 710000)
			--	tunables.set_int("H2_VEHICLES_PRICE_GT500", 785000)
			--	tunables.set_int("H2_VEHICLES_PRICE_HERMES", 535000)
			--	tunables.set_int("H2_VEHICLES_PRICE_HUSTLER", 625000)
			--	tunables.set_int("H2_VEHICLES_PRICE_KAMACHO", 345000)
			--	tunables.set_int("H2_VEHICLES_PRICE_NEON", 1500000)
			--	tunables.set_int("H2_VEHICLES_PRICE_PARIAH", 1420000)
			--	tunables.set_int("H2_VEHICLES_PRICE_RAIDEN", 1375000)
			--	tunables.set_int("H2_VEHICLES_PRICE_REVOLTER", 1610000)
			--	tunables.set_int("H2_VEHICLES_PRICE_RIATA", 380000)
			--	tunables.set_int("H2_VEHICLES_PRICE_SAVESTRA", 990000)
			--	tunables.set_int("H2_VEHICLES_PRICE_SC1", 1603000)
			--	tunables.set_int("H2_VEHICLES_PRICE_SENTINEL_CLASSIC", 650000)
			--	tunables.set_int("H2_VEHICLES_PRICE_STREITER", 500000)
			--	tunables.set_int("H2_VEHICLES_PRICE_VISERIS", 875000)
			--	tunables.set_int("H2_VEHICLES_PRICE_YOSEMITE", 485000)
			--	
			--	tunables.set_int("HESIT_VEHICLE_PRICE_BENEFACTOR_SCHAFTER", 65000)
			--	tunables.set_int("HESIT_VEHICLE_PRICE_BRAVADO_GRESLEY", 29000)
			--	tunables.set_int("HESIT_VEHICLE_PRICE_BRAVADO_RUMPO", 13000)
			--	tunables.set_int("HESIT_VEHICLE_PRICE_CANIS_SEMINOLE", 30000)
			--	tunables.set_int("HESIT_VEHICLE_PRICE_CHEVAL_SURGE", 38000)
			--	tunables.set_int("HESIT_VEHICLE_PRICE_DUNDREARY_LANDSTALKER", 58000)
			--	tunables.set_int("HESIT_VEHICLE_PRICE_OCELOT_JACKAL", 60000)
			--	tunables.set_int("HESIT_VEHICLE_PRICE_PRINCIPLE_NEMESIS", 12000)
			--	tunables.set_int("HESIT_VEHICLE_PRICE_UBERMACHT_ORACLE", 82000)
			--	
			--	tunables.set_int("IH_BIN_PRICE_ALKONOST", 4350000)
			--	tunables.set_int("IH_BIN_PRICE_ANNIHILATOR2", 3870000)
			--	tunables.set_int("IH_BIN_PRICE_BRIOSO2", 610000)
			--	tunables.set_int("IH_BIN_PRICE_DINGHY5", 1850000)
			--	tunables.set_int("IH_BIN_PRICE_ITALIRSX", 3465000)
			--	tunables.set_int("IH_BIN_PRICE_LONGFIN", 2125000)
			--	tunables.set_int("IH_BIN_PRICE_MANCHEZ2", 225000)
			--	tunables.set_int("IH_BIN_PRICE_PATROLBOAT", 2955000)
			--	tunables.set_int("IH_BIN_PRICE_SLAMTRUCK", 1310000)
			--	tunables.set_int("IH_BIN_PRICE_SQUADDIE", 1130000)
			--	tunables.set_int("IH_BIN_PRICE_TOREADOR", 4250000)
			--	tunables.set_int("IH_BIN_PRICE_VERUS", 192000)
			--	tunables.set_int("IH_BIN_PRICE_VETIR", 1630000)
			--	tunables.set_int("IH_BIN_PRICE_VETO", 895000)
			--	tunables.set_int("IH_BIN_PRICE_VETO2", 995000)
			--	tunables.set_int("IH_BIN_PRICE_WEEVIL", 870000)
			--	tunables.set_int("IH_BIN_PRICE_WINKY", 1100000)
			--	
			--	tunables.set_int("IMPEXP_BLAZER5_BIN_PRICE", 1755600)
			--	tunables.set_int("IMPEXP_BOXVILLE5_BIN_PRICE", 1300000)
			--	tunables.set_int("IMPEXP_DUNE5_BIN_PRICE", 3192000)
			--	tunables.set_int("IMPEXP_PHANTOM2_BIN_PRICE", 2553600)
			--	tunables.set_int("IMPEXP_RUINER2_BIN_PRICE", 3750000)
			--	tunables.set_int("IMPEXP_TECHNICAL2_BIN_PRICE", 1489600)
			--	tunables.set_int("IMPEXP_VOLTIC2_BIN_PRICE", 3830400)
			--	tunables.set_int("IMPEXP_WASTELANDER_BIN_PRICE", 658350)
			--	
			--	tunables.set_int("IMPEXP_DIABLOUS_BASE_PRICE", 169000)
			--	tunables.set_int("IMPEXP_ELEGY_BASE_PRICE", 95000)
			--	tunables.set_int("IMPEXP_FCR_BASE_PRICE", 135000)
			--	tunables.set_int("IMPEXP_ITALIGTB_BASE_PRICE", 1189000)
			--	tunables.set_int("IMPEXP_NERO_BASE_PRICE", 1440000)
			--	tunables.set_int("IMPEXP_SPECTER_BASE_PRICE", 599000)
			--	
			--	tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_ALPHAZ1", 2121350)
			--	tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_BOMBUSHKA", 4750000)
			--	tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_HOWARD_NX25", 1296750)
			--	tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_HUNTER", 4123000)
			--	tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_MOGUL", 3125500)
			--	tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_NAGASAKI_HAVOK", 2300900)
			--	tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_P45_NOKOTA", 2653350)
			--	tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_PEGASSI_ULTRALIGHT", 665000)
			--	tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_PYRO", 4455500)
			--	tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_ROGUE", 1596000)
			--	tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_STARLING", 3657500)
			--	tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_TULA", 4100000)
			--	tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_V65_MOLOTOK", 4788000)
			--	tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_WESTERN_SEABREEZE", 1130500)
			--	
			--	tunables.set_int("SU22_BIN_PRICE_CONADA", 2450000)
			--	tunables.set_int("SU22_BIN_PRICE_CORSITA", 1795000)
			--	tunables.set_int("SU22_BIN_PRICE_DRAUGUR", 1870000)
			--	tunables.set_int("SU22_BIN_PRICE_GREENWOOD", 1465000)
			--	tunables.set_int("SU22_BIN_PRICE_KANJOSJ", 1370000)
			--	tunables.set_int("SU22_BIN_PRICE_LM87", 2915000)
			--	tunables.set_int("SU22_BIN_PRICE_OMNISEGT", 1795000)
			--	tunables.set_int("SU22_BIN_PRICE_POSTLUDE", 1310000)
			--	tunables.set_int("SU22_BIN_PRICE_RHINEHART", 1598000)
			--	tunables.set_int("SU22_BIN_PRICE_RUINER4", 1320000)
			--	tunables.set_int("SU22_BIN_PRICE_SM722", 2115000)
			--	tunables.set_int("SU22_BIN_PRICE_TENF", 1675000)
			--	tunables.set_int("SU22_BIN_PRICE_TORERO2", 2890000)
			--	tunables.set_int("SU22_BIN_PRICE_VIGERO2", 1947000)
			--	
			--	tunables.set_int("SU23_BIN_PRICE_BRIGHAM", 1049300)
			--	tunables.set_int("SU23_BIN_PRICE_BUFFALO5", 2140000)
			--	tunables.set_int("SU23_BIN_PRICE_CLIQUE2", 1205000)
			--	tunables.set_int("SU23_BIN_PRICE_CONADA2", 3385000)
			--	tunables.set_int("SU23_BIN_PRICE_COUREUR", 1990000)
			--	tunables.set_int("SU23_BIN_PRICE_GAUNTLET6", 1810000)
			--	tunables.set_int("SU23_BIN_PRICE_INDUCTOR", 50000)
			--	tunables.set_int("SU23_BIN_PRICE_INDUCTOR2", 50000)
			--	tunables.set_int("SU23_BIN_PRICE_L35", 1670000)
			--	tunables.set_int("SU23_BIN_PRICE_MONSTROCITI", 1485000)
			--	tunables.set_int("SU23_BIN_PRICE_RAIJU", 6855000)
			--	tunables.set_int("SU23_BIN_PRICE_RATEL", 1873000)
			--	tunables.set_int("SU23_BIN_PRICE_STINGERTT", 2380000)
			--	tunables.set_int("SU23_BIN_PRICE_STREAMER216", 2238000)
			--	
			--	tunables.set_int("SUM_SALE_PRICE_CLUB", 1280000)
			--	tunables.set_int("SUM_SALE_PRICE_COQUETTE4", 1510000)
			--	tunables.set_int("SUM_SALE_PRICE_DUKES3", 378000)
			--	--tunables.set_int("SUM_SALE_PRICE_GAUNTLET5", )
			--	--tunables.set_int("SUM_SALE_PRICE_GLENDALE2", )
			--	tunables.set_int("SUM_SALE_PRICE_LANDSTALKER2", 1220000)
			--	tunables.set_int("SUM_SALE_PRICE_MANANA", 10000)
			--	--tunables.set_int("SUM_SALE_PRICE_MANANA2", )
			--	tunables.set_int("SUM_SALE_PRICE_OPENWHEEL1", 3400000)
			--	tunables.set_int("SUM_SALE_PRICE_OPENWHEEL2", 2997000)
			--	tunables.set_int("SUM_SALE_PRICE_PENUMBRA2", 1380000)
			--	tunables.set_int("SUM_SALE_PRICE_PEYOTE", 38000)
			--	--tunables.set_int("SUM_SALE_PRICE_PEYOTE3", )
			--	tunables.set_int("SUM_SALE_PRICE_SEMINOLE2", 678000)
			--	tunables.set_int("SUM_SALE_PRICE_TIGON", 2310000)
			--	--tunables.set_int("SUM_SALE_PRICE_YOSEMITE3", )
			--	--tunables.set_int("SUM_SALE_PRICE_YOUGA3", )
			--	
			--	tunables.set_int("TUNER_BIN_PRICE_CALICO", 1995000)
			--	tunables.set_int("TUNER_BIN_PRICE_COMET6", 1878000)
			--	tunables.set_int("TUNER_BIN_PRICE_CYPHER", 1550000)
			--	tunables.set_int("TUNER_BIN_PRICE_DOMINATOR7", 1775000)
			--	tunables.set_int("TUNER_BIN_PRICE_DOMINATOR8", 1220000)
			--	tunables.set_int("TUNER_BIN_PRICE_EUROS", 1800000)
			--	tunables.set_int("TUNER_BIN_PRICE_FUTO2", 1590000)
			--	tunables.set_int("TUNER_BIN_PRICE_GROWLER", 1627000)
			--	tunables.set_int("TUNER_BIN_PRICE_JESTER4", 1970000)
			--	tunables.set_int("TUNER_BIN_PRICE_PREVION", 1490000)
			--	tunables.set_int("TUNER_BIN_PRICE_REMUS", 1370000)
			--	tunables.set_int("TUNER_BIN_PRICE_RT3000", 1715000)
			--	tunables.set_int("TUNER_BIN_PRICE_SULTAN3", 1789000)
			--	tunables.set_int("TUNER_BIN_PRICE_TAILGATER2", 1495000)
			--	tunables.set_int("TUNER_BIN_PRICE_VECTRE", 1785000)
			--	tunables.set_int("TUNER_BIN_PRICE_WARRENER2", 1260000)
			--	tunables.set_int("TUNER_BIN_PRICE_ZR350", 1615000)
			--	
			--	tunables.set_int("VC_SALE_PRICE_CARACARA_4X4", 875000)
			--	tunables.set_int("VC_SALE_PRICE_DRAFTER_8F", 718000)
			--	tunables.set_int("VC_SALE_PRICE_DYNASTY", 450000)
			--	tunables.set_int("VC_SALE_PRICE_EMERUS", 2750000)
			--	tunables.set_int("VC_SALE_PRICE_GASSER", 805000)
			--	tunables.set_int("VC_SALE_PRICE_GAUNTLET", 745000)
			--	tunables.set_int("VC_SALE_PRICE_GAUNTLET_CLASSIC", 615000)
			--	tunables.set_int("VC_SALE_PRICE_HELLION", 835000)
			--	tunables.set_int("VC_SALE_PRICE_JUGULAR", 1225000)
			--	tunables.set_int("VC_SALE_PRICE_KRIEGER", 2875000)
			--	tunables.set_int("VC_SALE_PRICE_LOCUST", 1625000)
			--	tunables.set_int("VC_SALE_PRICE_NEBULA", 797000)
			--	tunables.set_int("VC_SALE_PRICE_NEO", 1875000)
			--	tunables.set_int("VC_SALE_PRICE_NOVAK", 608000)
			--	tunables.set_int("VC_SALE_PRICE_PARAGON", 905000)
			--	tunables.set_int("VC_SALE_PRICE_RAMPANT_ROCKET", 925000)
			--	tunables.set_int("VC_SALE_PRICE_S80RR", 2575000)
			--	tunables.set_int("VC_SALE_PRICE_THRAX", 2325000)
			--	tunables.set_int("VC_SALE_PRICE_ZION_CLASSIC", 812000)
			--	tunables.set_int("VC_SALE_PRICE_ZORRUSSO", 1925000)
			--	
			--	tunables.set_int("XM22_BIN_PRICE_BOOR", 1280000)
			--	tunables.set_int("XM22_BIN_PRICE_BRICKADE2", 1450000)
			--	tunables.set_int("XM22_BIN_PRICE_BROADWAY", 925000)
			--	tunables.set_int("XM22_BIN_PRICE_ENTITY3", 2355000)
			--	tunables.set_int("XM22_BIN_PRICE_EUDORA", 1250000)
			--	tunables.set_int("XM22_BIN_PRICE_EVERON2", 1790000)
			--	tunables.set_int("XM22_BIN_PRICE_ISSI8", 1835000)
			--	tunables.set_int("XM22_BIN_PRICE_JOURNEY2", 790000)
			--	tunables.set_int("XM22_BIN_PRICE_PANTHERE", 2170000)
			--	tunables.set_int("XM22_BIN_PRICE_POWERSURGE", 1605000)
			--	tunables.set_int("XM22_BIN_PRICE_R300", 2075000)
			--	tunables.set_int("XM22_BIN_PRICE_SURFER3", 590000)
			--	tunables.set_int("XM22_BIN_PRICE_TAHOMA", 1500000)
			--	tunables.set_int("XM22_BIN_PRICE_TAXI", 650000)
			--	tunables.set_int("XM22_BIN_PRICE_TULIP2", 1658000)
			--	tunables.set_int("XM22_BIN_PRICE_VIRTUE", 2980000)
			--	
			--	tunables.set_int("XM23_BIN_PRICE_ALEUTIAN", 1835000)
			--	tunables.set_int("XM23_BIN_PRICE_ASTEROPE2", 459000)
			--	tunables.set_int("XM23_BIN_PRICE_BALLER8", 1715000)
			--	tunables.set_int("XM23_BIN_PRICE_BENSON2", 685000)
			--	tunables.set_int("XM23_BIN_PRICE_BOXVILLE6", 475000)
			--	tunables.set_int("XM23_BIN_PRICE_CAVALCADE3", 1665000)
			--	tunables.set_int("XM23_BIN_PRICE_DOMINATOR9", 2195000)
			--	tunables.set_int("XM23_BIN_PRICE_DORADO", 1375000)
			--	tunables.set_int("XM23_BIN_PRICE_FR36", 1610000)
			--	tunables.set_int("XM23_BIN_PRICE_IMPALER5", 1280000)
			--	tunables.set_int("XM23_BIN_PRICE_IMPALER6", 1465000)
			--	tunables.set_int("XM23_BIN_PRICE_POLGAUNTLET", 5420000)
			--	tunables.set_int("XM23_BIN_PRICE_POLICE4", 3950000)
			--	tunables.set_int("XM23_BIN_PRICE_POLICE5", 4690000)
			--	tunables.set_int("XM23_BIN_PRICE_RIOT", 4800000)
			--	tunables.set_int("XM23_BIN_PRICE_TERMINUS", 1877500)
			--	tunables.set_int("XM23_BIN_PRICE_TURISMO3", 2845000)
			--	tunables.set_int("XM23_BIN_PRICE_VIGERO3", 2295000)
			--	tunables.set_int("XM23_BIN_PRICE_VIVANITE", 1605000)
			--	
			--	 -- Trade Price Vehicle
			--	tunables.set_int("AW_TRADE_PRICE_APOCALYPSE_BRUTUS", 1403500)
			--	tunables.set_int("AW_TRADE_PRICE_APOCALYPSE_CERBERUS", 2037000)
			--	tunables.set_int("AW_TRADE_PRICE_APOCALYPSE_IMPERATOR", 1202600)
			--	tunables.set_int("AW_TRADE_PRICE_APOCALYPSE_SCARAB", 1619100)
			--	tunables.set_int("AW_TRADE_PRICE_APOCALYPSE_ZR380", 1125600)
			--	tunables.set_int("AW_TRADE_PRICE_CONSUMERISM_BRUTUS", 1403500)
			--	tunables.set_int("AW_TRADE_PRICE_CONSUMERISM_CERBERUS", 2037000)
			--	tunables.set_int("AW_TRADE_PRICE_CONSUMERISM_IMPERATOR", 1202600)
			--	tunables.set_int("AW_TRADE_PRICE_CONSUMERISM_SCARAB", 1619100)
			--	tunables.set_int("AW_TRADE_PRICE_CONSUMERISM_ZR380", 1125600)
			--	tunables.set_int("AW_TRADE_PRICE_DOMINATOR", 26250)
			--	tunables.set_int("AW_TRADE_PRICE_GARGOYLE", 90000)
			--	tunables.set_int("AW_TRADE_PRICE_GLENDALE", 150000)
			--	tunables.set_int("AW_TRADE_PRICE_IMPALER", 249500)
			--	tunables.set_int("AW_TRADE_PRICE_ISSI", 270000)
			--	tunables.set_int("AW_TRADE_PRICE_RATLOADER", 28125)
			--	tunables.set_int("AW_TRADE_PRICE_SCIFI_BRUTUS", 1403500)
			--	tunables.set_int("AW_TRADE_PRICE_SCIFI_CERBERUS", 2037000)
			--	tunables.set_int("AW_TRADE_PRICE_SCIFI_IMPERATOR", 1202600)
			--	tunables.set_int("AW_TRADE_PRICE_SCIFI_SCARAB", 1619100)
			--	tunables.set_int("AW_TRADE_PRICE_SCIFI_ZR380", 1125600)
			--	tunables.set_int("AW_TRADE_PRICE_SLAMVAN", 37125)
			--	tunables.set_int("AW_UPGRADE_PRICE_APOCALYPSE_DOMINATOR", 792400)
			--	tunables.set_int("AW_UPGRADE_PRICE_APOCALYPSE_GARGOYLE", 888300)
			--	tunables.set_int("AW_UPGRADE_PRICE_APOCALYPSE_GLENDALE", 1126300)
			--	tunables.set_int("AW_UPGRADE_PRICE_APOCALYPSE_IMPALER", 846650)
			--	tunables.set_int("AW_UPGRADE_PRICE_APOCALYPSE_ISSI", 762300)
			--	tunables.set_int("AW_UPGRADE_PRICE_APOCALYPSE_RATLOADER", 1071612)
			--	tunables.set_int("AW_UPGRADE_PRICE_APOCALYPSE_SLAMVAN", 925312)
			--	tunables.set_int("AW_UPGRADE_PRICE_CONSUMERISM_DOMINATOR", 792400)
			--	tunables.set_int("AW_UPGRADE_PRICE_CONSUMERISM_GARGOYLE", 888300)
			--	tunables.set_int("AW_UPGRADE_PRICE_CONSUMERISM_GLENDALE", 1126300)
			--	tunables.set_int("AW_UPGRADE_PRICE_CONSUMERISM_IMPALER", 846650)
			--	tunables.set_int("AW_UPGRADE_PRICE_CONSUMERISM_ISSI", 762300)
			--	tunables.set_int("AW_UPGRADE_PRICE_CONSUMERISM_RATLOADER", 1071612)
			--	tunables.set_int("AW_UPGRADE_PRICE_CONSUMERISM_SLAMVAN", 925312)
			--	tunables.set_int("AW_UPGRADE_PRICE_SCIFI_DOMINATOR", 792400)
			--	tunables.set_int("AW_UPGRADE_PRICE_SCIFI_GARGOYLE", 888300)
			--	tunables.set_int("AW_UPGRADE_PRICE_SCIFI_GLENDALE", 1126300)
			--	tunables.set_int("AW_UPGRADE_PRICE_SCIFI_IMPALER", 846650)
			--	tunables.set_int("AW_UPGRADE_PRICE_SCIFI_ISSI", 762300)
			--	tunables.set_int("AW_UPGRADE_PRICE_SCIFI_RATLOADER", 1071612)
			--	tunables.set_int("AW_UPGRADE_PRICE_SCIFI_SLAMVAN", 925312)
			--	
			--	tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_BEEJAY_XL", 27000)
			--	tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_BENEFACTOR_SERRANO", 60000)
			--	tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_BOLLOKAN_PRAIRIE", 25000)
			--	tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_CHARIOT_ROMERO_HEARSE", 31500)
			--	tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_EMPEROR_HABANERO", 42000)
			--	tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_FATHOM_FQ_2", 50000)
			--	tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_IMPONTE_RUINER", 10000)
			--	tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_KARIN_FUTO", 9000)
			--	tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_MAMMOTH_PATRIOT", 50000)
			--	tunables.set_int("BB_TRADE_PRICE_HIGH_END_VEHICLES_CANIS_FREECRAWLER", 597000)
			--	tunables.set_int("BB_TRADE_PRICE_HIGH_END_VEHICLES_ENUS_STAFFORD", 1272000)
			--	tunables.set_int("BB_TRADE_PRICE_HIGH_END_VEHICLES_MAMMOTH_PATRIOT_STRETCH", 460000)
			--	tunables.set_int("BB_TRADE_PRICE_HIGH_END_VEHICLES_OCELOT_SWINGER", 909000)
			--	tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP", 895000)
			--	--tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP_LIVERY_1", )
			--	--tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP_LIVERY_2", )
			--	--tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP_LIVERY_3", )
			--	--tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP_LIVERY_4", )
			--	--tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP_LIVERY_5", )
			--	--tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP_LIVERY_6", )
			--	--tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP_LIVERY_7", )
			--	--tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP_LIVERY_8_NIGHTCLUB", )
			--	tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_FESTIVAL_BUS", 1385000)
			--	tunables.set_int("BB_TRADE_PRICE_WEAPONIZED_VEHICLES_B_11_STRIKEFORCE", 3800000)
			--	--tunables.set_int("BB_TRADE_PRICE_WEAPONIZED_VEHICLES_DECLASSE_SCRAMJET", )
			--	tunables.set_int("BB_TRADE_PRICE_WEAPONIZED_VEHICLES_MAIBATSU_MULE_CUSTOM", 72000)
			--	tunables.set_int("BB_TRADE_PRICE_WEAPONIZED_VEHICLES_MTL_POUNDER_CUSTOM", 241000)
			--	tunables.set_int("BB_TRADE_PRICE_WEAPONIZED_VEHICLES_PEGASSI_HVY_MENACER", 1775000)
			--	tunables.set_int("BB_TRADE_PRICE_WEAPONIZED_VEHICLES_PEGASSI_OPPRESSOR_MK_II", 6000000)
			--	
			--	tunables.set_int("BOUNTY24_TRADE_PRICE_PIZZABOY", 146250)
			--	tunables.set_int("BOUNTY24_TRADE_PRICE_POLDOMINATOR10", 3712500)
			--	tunables.set_int("BOUNTY24_TRADE_PRICE_POLDORADO", 3753750)
			--	tunables.set_int("BOUNTY24_TRADE_PRICE_POLGREENWOOD", 3682500)
			--	tunables.set_int("BOUNTY24_TRADE_PRICE_POLIMPALER5", 3540000)
			--	tunables.set_int("BOUNTY24_TRADE_PRICE_POLIMPALER6", 3600000)
			--	
			--	tunables.set_int("CH_TRADE_PRICE_ASBO", 306000)
			--	tunables.set_int("CH_TRADE_PRICE_BOXVILLE", 298500)
			--	tunables.set_int("CH_TRADE_PRICE_BURRITO2", 450000)
			--	tunables.set_int("CH_TRADE_PRICE_DEFILER", 309000)
			--	tunables.set_int("CH_TRADE_PRICE_ELLIE", 423750)
			--	tunables.set_int("CH_TRADE_PRICE_EVERON", 1106250)
			--	tunables.set_int("CH_TRADE_PRICE_FIRETRUCK", 2471250)
			--	tunables.set_int("CH_TRADE_PRICE_FORMULA", 3515000)
			--	tunables.set_int("CH_TRADE_PRICE_FORMULA2", 3115000)
			--	tunables.set_int("CH_TRADE_PRICE_FURIA", 2055000)
			--	tunables.set_int("CH_TRADE_PRICE_GAUNTLET3", 461250)
			--	tunables.set_int("CH_TRADE_PRICE_JB7002", 735000)
			--	tunables.set_int("CH_TRADE_PRICE_JUGULAR", 918750)
			--	tunables.set_int("CH_TRADE_PRICE_KANJO", 435000)
			--	tunables.set_int("CH_TRADE_PRICE_KOMODA", 1275000)
			--	tunables.set_int("CH_TRADE_PRICE_MANCHEZ", 50250)
			--	tunables.set_int("CH_TRADE_PRICE_OUTLAW", 951000)
			--	tunables.set_int("CH_TRADE_PRICE_RETINUE2", 1215000)
			--	tunables.set_int("CH_TRADE_PRICE_SENTINAL3", 487500)
			--	tunables.set_int("CH_TRADE_PRICE_STOCKADE", 1680000)
			--	tunables.set_int("CH_TRADE_PRICE_STRYDER", 502500)
			--	tunables.set_int("CH_TRADE_PRICE_SUGOI", 918000)
			--	tunables.set_int("CH_TRADE_PRICE_SULTAN2", 1288500)
			--	tunables.set_int("CH_TRADE_PRICE_VAGRANT", 1660500)
			--	tunables.set_int("CH_TRADE_PRICE_YOSEMITE2", 981000)
			--	tunables.set_int("CH_TRADE_PRICE_ZHABA", 1800000)
			--	
			--	tunables.set_int("FIXER_TRADE_PRICE_BALLER7", 667500)
			--	tunables.set_int("FIXER_TRADE_PRICE_BUFFALO4", 1612500)
			--	tunables.set_int("FIXER_TRADE_PRICE_CHAMPION", 2812500)
			--	tunables.set_int("FIXER_TRADE_PRICE_DEITY", 1383750)
			--	tunables.set_int("FIXER_TRADE_PRICE_GRANGER2", 1500000)
			--	--tunables.set_int("FIXER_TRADE_PRICE_ITALIGTB2", )
			--	tunables.set_int("FIXER_TRADE_PRICE_JUBILEE", 1237500)
			--	tunables.set_int("FIXER_TRADE_PRICE_PATRIOT3", 1282500)
			--	
			--	tunables.set_int("H2_VEHICLES_TRADE_PRICE_AKULA", 3375000)
			--	tunables.set_int("H2_VEHICLES_TRADE_PRICE_BARRAGE", 1595000)
			--	tunables.set_int("H2_VEHICLES_TRADE_PRICE_CHERNOBOG", 1125000)
			--	tunables.set_int("H2_VEHICLES_TRADE_PRICE_DELUXO", 4312500)
			--	tunables.set_int("H2_VEHICLES_TRADE_PRICE_KHANJALI", 2895000)
			--	tunables.set_int("H2_VEHICLES_TRADE_PRICE_RCV", 2350000)
			--	tunables.set_int("H2_VEHICLES_TRADE_PRICE_STROMBERG", 1875000)
			--	tunables.set_int("H2_VEHICLES_TRADE_PRICE_THRUSTER", 1875000)
			--	tunables.set_int("H2_VEHICLES_TRADE_PRICE_VOLATOL", 2800000)
			--	
			--	tunables.set_int("IH_TRADE_PRICE_ALKONOST", 3262500)
			--	tunables.set_int("IH_TRADE_PRICE_ANNIHILATOR2", 2902500)
			--	tunables.set_int("IH_TRADE_PRICE_BRIOSO2", 457500)
			--	tunables.set_int("IH_TRADE_PRICE_ITALIRSX", 2598750)
			--	tunables.set_int("IH_TRADE_PRICE_LONGFIN", 1593750)
			--	tunables.set_int("IH_TRADE_PRICE_PATROLBOAT", 2216250)
			--	tunables.set_int("IH_TRADE_PRICE_VETIR", 1222500)
			--	tunables.set_int("IH_TRADE_PRICE_WEEVIL", 652500)
			--	tunables.set_int("IH_TRADE_PRICE_WINKY", 825000)
			--	
			--	tunables.set_int("IMPEXP_BLAZER5_SECUROSERV_PRICE", 1320000)
			--	tunables.set_int("IMPEXP_BOXVILLE5_SECUROSERV_PRICE", 975000)
			--	tunables.set_int("IMPEXP_DUNE5_SECUROSERV_PRICE", 2400000)
			--	tunables.set_int("IMPEXP_PHANTOM2_SECUROSERV_PRICE", 1920000)
			--	tunables.set_int("IMPEXP_RUINER2_SECUROSERV_PRICE", 2812500)
			--	tunables.set_int("IMPEXP_TECHNICAL2_SECUROSERV_PRICE", 1120000)
			--	tunables.set_int("IMPEXP_VOLTIC2_SECUROSERV_PRICE", 2880000)
			--	tunables.set_int("IMPEXP_WASTELANDER_SECUROSERV_PRICE", 495000)
			--	
			--	tunables.set_int("SMUG_VEHICLES_CARS_TRADE_PRICE_COIL_CYCLONE", 1323000)
			--	tunables.set_int("SMUG_VEHICLES_CARS_TRADE_PRICE_DEWBAUCHEE_RAPIDGT_CLASSIC", 885000)
			--	tunables.set_int("SMUG_VEHICLES_CARS_TRADE_PRICE_GROTTI_VIGILANTE", 3750000)
			--	tunables.set_int("SMUG_VEHICLES_CARS_TRADE_PRICE_GROTTI_VISIONE", 2250000)
			--	tunables.set_int("SMUG_VEHICLES_CARS_TRADE_PRICE_VAPID_RETINUE", 615000)
			--	tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_ALPHAZ1", 1595000)
			--	tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_BOMBUSHKA", 3562500)
			--	tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_HOWARD_NX25", 975000)
			--	tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_HUNTER", 3100000)
			--	tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_MOGUL", 2350000)
			--	tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_NAGASAKI_HAVOK", 1730000)
			--	tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_P45_NOKOTA", 1995000)
			--	tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_P996_LAZER", 6500000)
			--	tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_PEGASSI_ULTRALIGHT", 500000)
			--	tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_PYRO", 3350000)
			--	tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_ROGUE", 1200000)
			--	tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_STARLING", 2750000)
			--	tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_TULA", 3075000)
			--	tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_V65_MOLOTOK", 3600000)
			--	tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_WESTERN_SEABREEZE", 850000)
			--	
			--	tunables.set_int("SU22_TRADE_PRICE_CONADA", 1837500)
			--	tunables.set_int("SU22_TRADE_PRICE_DRAUGUR", 1402500)
			--	tunables.set_int("SU22_TRADE_PRICE_GREENWOOD", 1098750)
			--	tunables.set_int("SU22_TRADE_PRICE_KANJOSJ", 1027500)
			--	tunables.set_int("SU22_TRADE_PRICE_POSTLUDE", 982500)
			--	
			--	tunables.set_int("SU23_TRADE_PRICE_MANCHEZ2", 168750)
			--	tunables.set_int("SU23_TRADE_PRICE_RAIJU", 5141250)
			--	tunables.set_int("SU23_TRADE_PRICE_SQUADDIE", 847500)
			--	
			--	tunables.set_int("TUNER_TRADE_PRICE_CALICO", 1496250)
			--	tunables.set_int("TUNER_TRADE_PRICE_COMET6", 1408500)
			--	tunables.set_int("TUNER_TRADE_PRICE_CYPHER", 1162500)
			--	tunables.set_int("TUNER_TRADE_PRICE_DOMINATOR7", 1331250)
			--	tunables.set_int("TUNER_TRADE_PRICE_DOMINATOR8", 915000)
			--	tunables.set_int("TUNER_TRADE_PRICE_EUROS", 1350000)
			--	tunables.set_int("TUNER_TRADE_PRICE_FUTO2", 1192500)
			--	tunables.set_int("TUNER_TRADE_PRICE_GROWLER", 1220250)
			--	tunables.set_int("TUNER_TRADE_PRICE_JESTER4", 1477500)
			--	tunables.set_int("TUNER_TRADE_PRICE_PREVION", 1117500)
			--	tunables.set_int("TUNER_TRADE_PRICE_REMUS", 1027500)
			--	tunables.set_int("TUNER_TRADE_PRICE_RT3000", 1286250)
			--	tunables.set_int("TUNER_TRADE_PRICE_SULTAN3", 1341750)
			--	tunables.set_int("TUNER_TRADE_PRICE_TAILGATER2", 1121250)
			--	tunables.set_int("TUNER_TRADE_PRICE_VECTRE", 1338750)
			--	tunables.set_int("TUNER_TRADE_PRICE_WARRENER2", 945000)
			--	tunables.set_int("TUNER_TRADE_PRICE_ZR350", 1211250)
			--	
			--	tunables.set_int("XM22_TRADE_PRICE_EVERON2", 1342500)
			--	tunables.set_int("XM22_TRADE_PRICE_HOTRING", 622500)
			--	tunables.set_int("XM22_TRADE_PRICE_JOURNEY2", 592500)
			--	tunables.set_int("XM22_TRADE_PRICE_SURFER3", 442500)
			--	tunables.set_int("XM22_TRADE_PRICE_TAXI", 487500)
			--	tunables.set_int("XM22_TRADE_PRICE_VIRTUE", 2235000)
			--	
			--	tunables.set_int("XM23_TRADE_PRICE_BENSON2", 513750)
			--	tunables.set_int("XM23_TRADE_PRICE_BOXVILLE6", 356250)
			--	tunables.set_int("XM23_TRADE_PRICE_POLGAUNTLET", 4065000)
			--	tunables.set_int("XM23_TRADE_PRICE_POLICE4", 2962500)
			--	tunables.set_int("XM23_TRADE_PRICE_POLICE5", 3517500)
			--	tunables.set_int("XM23_TRADE_PRICE_RIOT", 3600000)
			--end
			--if ImGui.IsItemHovered() then
			--	ImGui.SetTooltip("Default price of some vehicles")
			--end
			--ImGui.SameLine()
			--if ImGui.Button("Free Vehicle Price") then
			--	
			--	 -- Bin Price Vehicle
			--	tunables.set_int("AW_BUY_IT_NOW_PRICE_APOCALYPSE_BRUTUS", 0)
			--	tunables.set_int("AW_BUY_IT_NOW_PRICE_APOCALYPSE_CERBERUS", 0)
			--	tunables.set_int("AW_BUY_IT_NOW_PRICE_APOCALYPSE_IMPERATOR", 0)
			--	tunables.set_int("AW_BUY_IT_NOW_PRICE_APOCALYPSE_SCARAB", 0)
			--	tunables.set_int("AW_BUY_IT_NOW_PRICE_APOCALYPSE_ZR380", 0)
			--	tunables.set_int("AW_BUY_IT_NOW_PRICE_CONSUMERISM_BRUTUS", 0)
			--	tunables.set_int("AW_BUY_IT_NOW_PRICE_CONSUMERISM_CERBERUS", 0)
			--	tunables.set_int("AW_BUY_IT_NOW_PRICE_CONSUMERISM_IMPERATOR", 0)
			--	tunables.set_int("AW_BUY_IT_NOW_PRICE_CONSUMERISM_SCARAB", 0)
			--	tunables.set_int("AW_BUY_IT_NOW_PRICE_CONSUMERISM_ZR380", 0)
			--	tunables.set_int("AW_BUY_IT_NOW_PRICE_IMPALER", 0)
			--	tunables.set_int("AW_BUY_IT_NOW_PRICE_SCIFI_BRUTUS", 0)
			--	tunables.set_int("AW_BUY_IT_NOW_PRICE_SCIFI_CERBERUS", 0)
			--	tunables.set_int("AW_BUY_IT_NOW_PRICE_SCIFI_IMPERATOR", 0)
			--	tunables.set_int("AW_BUY_IT_NOW_PRICE_SCIFI_SCARAB", 0)
			--	tunables.set_int("AW_BUY_IT_NOW_PRICE_SCIFI_ZR380", 0)
			--	
			--	tunables.set_int("AW_SALE_PRICE_BANDITO", 0)
			--	tunables.set_int("AW_SALE_PRICE_CLIQUE", 0)
			--	tunables.set_int("AW_SALE_PRICE_DEVESTE", 0)
			--	tunables.set_int("AW_SALE_PRICE_DEVIANT", 0)
			--	tunables.set_int("AW_SALE_PRICE_GTO", 0)
			--	--tunables.set_int("AW_SALE_PRICE_RCBANDITO", 0)
			--	tunables.set_int("AW_SALE_PRICE_SCHLAGEN", 0)
			--	tunables.set_int("AW_SALE_PRICE_TOROS", 0)
			--	tunables.set_int("AW_SALE_PRICE_TULIP", 0)
			--	tunables.set_int("AW_SALE_PRICE_VAMOS", 0)
			--	
			--	tunables.set_int("BB_BUY_IT_NOW_PRICE_HIGH_END_VEHICLES_MAMMOTH_PATRIOT_STRETCH", 0)
			--	tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP", 0)
			--	--tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP_LIVERY_1", 0)
			--	--tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP_LIVERY_2", 0)
			--	--tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP_LIVERY_3", 0)
			--	--tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP_LIVERY_4", 0)
			--	--tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP_LIVERY_5", 0)
			--	--tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP_LIVERY_6", 0)
			--	--tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP_LIVERY_7", 0)
			--	--tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_BLIMP_LIVERY_8_NIGHTCLUB", 0)
			--	tunables.set_int("BB_BUY_IT_NOW_PRICE_MISC_VEHICLES_FESTIVAL_BUS", 0)
			--	tunables.set_int("BB_BUY_IT_NOW_PRICE_WEAPONIZED_VEHICLES_DECLASSE_SCRAMJET", 0)
			--	tunables.set_int("BB_BUY_IT_NOW_PRICE_WEAPONIZED_VEHICLES_MAIBATSU_MULE_CUSTOM", 0)
			--	tunables.set_int("BB_BUY_IT_NOW_PRICE_WEAPONIZED_VEHICLES_MTL_POUNDER_CUSTOM", 0)
			--	tunables.set_int("BB_BUY_IT_NOW_PRICE_WEAPONIZED_VEHICLES_PEGASSI_OPPRESSOR_MK_II", 0)
			--	
			--	tunables.set_int("BOUNTY24_BIN_PRICE_CASTIGATOR", 0)
			--	tunables.set_int("BOUNTY24_BIN_PRICE_COQUETTE5", 0)
			--	tunables.set_int("BOUNTY24_BIN_PRICE_DOMINATOR10", 0)
			--	tunables.set_int("BOUNTY24_BIN_PRICE_ENVISAGE", 0)
			--	tunables.set_int("BOUNTY24_BIN_PRICE_EUROSX32", 0)
			--	tunables.set_int("BOUNTY24_BIN_PRICE_NIOBE", 0)
			--	tunables.set_int("BOUNTY24_BIN_PRICE_PARAGON3", 0)
			--	tunables.set_int("BOUNTY24_BIN_PRICE_PIPISTRELLO", 0)
			--	tunables.set_int("BOUNTY24_BIN_PRICE_PIZZABOY", 0)
			--	tunables.set_int("BOUNTY24_BIN_PRICE_POLDOMINATOR10", 0)
			--	tunables.set_int("BOUNTY24_BIN_PRICE_POLDORADO", 0)
			--	tunables.set_int("BOUNTY24_BIN_PRICE_POLGREENWOOD", 0)
			--	tunables.set_int("BOUNTY24_BIN_PRICE_POLIMPALER5", 0)
			--	tunables.set_int("BOUNTY24_BIN_PRICE_POLIMPALER6", 0)
			--	tunables.set_int("BOUNTY24_BIN_PRICE_VORSCHLAGHAMMER", 0)
			--	tunables.set_int("BOUNTY24_BIN_PRICE_YOSEMITE1500", 0)
			--	
			--	tunables.set_int("CH_BIN_PRICE_ASBO", 0)
			--	tunables.set_int("CH_BIN_PRICE_BOXVILLE", 0)
			--	tunables.set_int("CH_BIN_PRICE_BURRITO2", 0)
			--	tunables.set_int("CH_BIN_PRICE_EVERON", 0)
			--	tunables.set_int("CH_BIN_PRICE_FIRETRUCK", 0)
			--	tunables.set_int("CH_BIN_PRICE_FURIA", 0)
			--	tunables.set_int("CH_BIN_PRICE_KANJO", 0)
			--	tunables.set_int("CH_BIN_PRICE_KOMODA", 0)
			--	tunables.set_int("CH_BIN_PRICE_OUTLAW", 0)
			--	tunables.set_int("CH_BIN_PRICE_RETINUE2", 0)
			--	tunables.set_int("CH_BIN_PRICE_STOCKADE", 0)
			--	tunables.set_int("CH_BIN_PRICE_STRYDER", 0)
			--	tunables.set_int("CH_BIN_PRICE_SUGOI", 0)
			--	tunables.set_int("CH_BIN_PRICE_SULTAN2", 0)
			--	tunables.set_int("CH_BIN_PRICE_VAGRANT", 0)
			--	tunables.set_int("CH_BIN_PRICE_YOSEMITE2", 0)
			--	tunables.set_int("CH_BIN_PRICE_ZHABA", 0)
			--	
			--	tunables.set_int("CH_SALE_PRICE_BLAZER2", 0)
			--	tunables.set_int("CH_SALE_PRICE_IMORGEN", 0)
			--	tunables.set_int("CH_SALE_PRICE_LGUARD", 0)
			--	tunables.set_int("CH_SALE_PRICE_MINITANK", 0)
			--	tunables.set_int("CH_SALE_PRICE_REBLA", 0)
			--	tunables.set_int("CH_SALE_PRICE_VSTR", 0)
			--	
			--	tunables.set_int("EXEC1_BENEFACTOR_XLS", 0)
			--	tunables.set_int("EXEC1_BENEFACTOR_XLS_ARMORED", 0)
			--	tunables.set_int("EXEC1_BRAVADO_RUMPO_CUSTOM", 0)
			--	tunables.set_int("EXEC1_BUCKINGHAM_NIMBUS", 0)
			--	tunables.set_int("EXEC1_BUCKINGHAM_VOLATUS", 0)
			--	tunables.set_int("EXEC1_CARGOBOB", 0)
			--	tunables.set_int("EXEC1_CARGOBOB2", 0)
			--	tunables.set_int("EXEC1_DEWBAUCHEE_SEVEN70", 0)
			--	tunables.set_int("EXEC1_ENUS_WINDSOR_DROP", 0)
			--	tunables.set_int("EXEC1_GROTTI_BESTIA", 0)
			--	tunables.set_int("EXEC1_HVY_BRICKADE", 0)
			--	tunables.set_int("EXEC1_PFISTER_811", 0)
			--	tunables.set_int("EXEC1_PROGEN_X80_PROTO", 0)
			--	tunables.set_int("EXEC1_TUG", 0)
			--	tunables.set_int("EXEC1_VAPID_FMJ", 0)
			--	
			--	tunables.set_int("FIXER_BIN_PRICE_ASTRON", 0)
			--	tunables.set_int("FIXER_BIN_PRICE_BALLER7", 0)
			--	tunables.set_int("FIXER_BIN_PRICE_BUFFALO4", 0)
			--	tunables.set_int("FIXER_BIN_PRICE_CHAMPION", 0)
			--	tunables.set_int("FIXER_BIN_PRICE_CINQUEMILA", 0)
			--	tunables.set_int("FIXER_BIN_PRICE_COMET7", 0)
			--	tunables.set_int("FIXER_BIN_PRICE_DEITY", 0)
			--	tunables.set_int("FIXER_BIN_PRICE_GRANGER2", 0)
			--	tunables.set_int("FIXER_BIN_PRICE_IGNUS", 0)
			--	tunables.set_int("FIXER_BIN_PRICE_IWAGEN", 0)
			--	tunables.set_int("FIXER_BIN_PRICE_JUBILEE", 0)
			--	tunables.set_int("FIXER_BIN_PRICE_PATRIOT3", 0)
			--	tunables.set_int("FIXER_BIN_PRICE_REEVER", 0)
			--	tunables.set_int("FIXER_BIN_PRICE_SHINOBI", 0)
			--	tunables.set_int("FIXER_BIN_PRICE_ZENO", 0)
			--	
			--	--tunables.set_int("GEN9_SALE_PRICE_ARBITERGT", 0)
			--	--tunables.set_int("GEN9_SALE_PRICE_ASTRON2", 0)
			--	--tunables.set_int("GEN9_SALE_PRICE_CYCLONE2", 0)
			--	--tunables.set_int("GEN9_SALE_PRICE_IGNUS2", 0)
			--	--tunables.set_int("GEN9_SALE_PRICE_S95", 0)
			--	
			--	tunables.set_int("GR_NEW_SPORTS_CARS_DEWBAUCHEE_VAGNER", 0)
			--	tunables.set_int("GR_NEW_SPORTS_CARS_GROTTI_CHEETAH_CLASSIC", 0)
			--	tunables.set_int("GR_NEW_SPORTS_CARS_OCELOT_XA_21", 0)
			--	tunables.set_int("GR_NEW_SPORTS_CARS_PEGASSI_TORERO", 0)
			--	
			--	tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_AKULA", 0)
			--	tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_BARRAGE", 0)
			--	tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_CHERNOBOG", 0)
			--	tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_DELUXO", 0)
			--	tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_KHANJALI", 0)
			--	tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_RCV", 0)
			--	tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_STROMBERG", 0)
			--	tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_THRUSTER", 0)
			--	tunables.set_int("H2_VEHICLES_BUY_IT_NOW_PRICE_VOLATOL", 0)
			--	tunables.set_int("H2_VEHICLES_PRICE_190Z", 0)
			--	tunables.set_int("H2_VEHICLES_PRICE_AUTARCH", 0)
			--	tunables.set_int("H2_VEHICLES_PRICE_AVENGER", 0)
			--	tunables.set_int("H2_VEHICLES_PRICE_COMET_GT", 0)
			--	tunables.set_int("H2_VEHICLES_PRICE_COMET_SAFARI", 0)
			--	tunables.set_int("H2_VEHICLES_PRICE_GT500", 0)
			--	tunables.set_int("H2_VEHICLES_PRICE_HERMES", 0)
			--	tunables.set_int("H2_VEHICLES_PRICE_HUSTLER", 0)
			--	tunables.set_int("H2_VEHICLES_PRICE_KAMACHO", 0)
			--	tunables.set_int("H2_VEHICLES_PRICE_NEON", 0)
			--	tunables.set_int("H2_VEHICLES_PRICE_PARIAH", 0)
			--	tunables.set_int("H2_VEHICLES_PRICE_RAIDEN", 0)
			--	tunables.set_int("H2_VEHICLES_PRICE_REVOLTER", 0)
			--	tunables.set_int("H2_VEHICLES_PRICE_RIATA", 0)
			--	tunables.set_int("H2_VEHICLES_PRICE_SAVESTRA", 0)
			--	tunables.set_int("H2_VEHICLES_PRICE_SC1", 0)
			--	tunables.set_int("H2_VEHICLES_PRICE_SENTINEL_CLASSIC", 0)
			--	tunables.set_int("H2_VEHICLES_PRICE_STREITER", 0)
			--	tunables.set_int("H2_VEHICLES_PRICE_VISERIS", 0)
			--	tunables.set_int("H2_VEHICLES_PRICE_YOSEMITE", 0)
			--	
			--	tunables.set_int("HESIT_VEHICLE_PRICE_BENEFACTOR_SCHAFTER", 0)
			--	tunables.set_int("HESIT_VEHICLE_PRICE_BRAVADO_GRESLEY", 0)
			--	tunables.set_int("HESIT_VEHICLE_PRICE_BRAVADO_RUMPO", 0)
			--	tunables.set_int("HESIT_VEHICLE_PRICE_CANIS_SEMINOLE", 0)
			--	tunables.set_int("HESIT_VEHICLE_PRICE_CHEVAL_SURGE", 0)
			--	tunables.set_int("HESIT_VEHICLE_PRICE_DUNDREARY_LANDSTALKER", 0)
			--	tunables.set_int("HESIT_VEHICLE_PRICE_OCELOT_JACKAL", 0)
			--	tunables.set_int("HESIT_VEHICLE_PRICE_PRINCIPLE_NEMESIS", 0)
			--	tunables.set_int("HESIT_VEHICLE_PRICE_UBERMACHT_ORACLE", 0)
			--	
			--	tunables.set_int("IH_BIN_PRICE_ALKONOST", 0)
			--	tunables.set_int("IH_BIN_PRICE_ANNIHILATOR2", 0)
			--	tunables.set_int("IH_BIN_PRICE_BRIOSO2", 0)
			--	tunables.set_int("IH_BIN_PRICE_DINGHY5", 0)
			--	tunables.set_int("IH_BIN_PRICE_ITALIRSX", 0)
			--	tunables.set_int("IH_BIN_PRICE_LONGFIN", 0)
			--	tunables.set_int("IH_BIN_PRICE_MANCHEZ2", 0)
			--	tunables.set_int("IH_BIN_PRICE_PATROLBOAT", 0)
			--	tunables.set_int("IH_BIN_PRICE_SLAMTRUCK", 0)
			--	tunables.set_int("IH_BIN_PRICE_SQUADDIE", 0)
			--	tunables.set_int("IH_BIN_PRICE_TOREADOR", 0)
			--	tunables.set_int("IH_BIN_PRICE_VERUS", 0)
			--	tunables.set_int("IH_BIN_PRICE_VETIR", 0)
			--	tunables.set_int("IH_BIN_PRICE_VETO", 0)
			--	tunables.set_int("IH_BIN_PRICE_VETO2", 0)
			--	tunables.set_int("IH_BIN_PRICE_WEEVIL", 0)
			--	tunables.set_int("IH_BIN_PRICE_WINKY", 0)
			--	
			--	tunables.set_int("IMPEXP_BLAZER5_BIN_PRICE", 0)
			--	tunables.set_int("IMPEXP_BOXVILLE5_BIN_PRICE", 0)
			--	tunables.set_int("IMPEXP_DUNE5_BIN_PRICE", 0)
			--	tunables.set_int("IMPEXP_PHANTOM2_BIN_PRICE", 0)
			--	tunables.set_int("IMPEXP_RUINER2_BIN_PRICE", 0)
			--	tunables.set_int("IMPEXP_TECHNICAL2_BIN_PRICE", 0)
			--	tunables.set_int("IMPEXP_VOLTIC2_BIN_PRICE", 0)
			--	tunables.set_int("IMPEXP_WASTELANDER_BIN_PRICE", 0)
			--	
			--	tunables.set_int("IMPEXP_DIABLOUS_BASE_PRICE", 0)
			--	tunables.set_int("IMPEXP_ELEGY_BASE_PRICE", 0)
			--	tunables.set_int("IMPEXP_FCR_BASE_PRICE", 0)
			--	tunables.set_int("IMPEXP_ITALIGTB_BASE_PRICE", 0)
			--	tunables.set_int("IMPEXP_NERO_BASE_PRICE", 0)
			--	tunables.set_int("IMPEXP_SPECTER_BASE_PRICE", 0)
			--	
			--	tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_ALPHAZ1", 0)
			--	tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_BOMBUSHKA", 0)
			--	tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_HOWARD_NX25", 0)
			--	tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_HUNTER", 0)
			--	tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_MOGUL", 0)
			--	tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_NAGASAKI_HAVOK", 0)
			--	tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_P45_NOKOTA", 0)
			--	tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_PEGASSI_ULTRALIGHT", 0)
			--	tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_PYRO", 0)
			--	tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_ROGUE", 0)
			--	tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_STARLING", 0)
			--	tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_TULA", 0)
			--	tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_V65_MOLOTOK", 0)
			--	tunables.set_int("SMUG_VEHICLES_BUY_IT_NOW_PRICE_WESTERN_SEABREEZE", 0)
			--	
			--	tunables.set_int("SU22_BIN_PRICE_CONADA", 0)
			--	tunables.set_int("SU22_BIN_PRICE_CORSITA", 0)
			--	tunables.set_int("SU22_BIN_PRICE_DRAUGUR", 0)
			--	tunables.set_int("SU22_BIN_PRICE_GREENWOOD", 0)
			--	tunables.set_int("SU22_BIN_PRICE_KANJOSJ", 0)
			--	tunables.set_int("SU22_BIN_PRICE_LM87", 0)
			--	tunables.set_int("SU22_BIN_PRICE_OMNISEGT", 0)
			--	tunables.set_int("SU22_BIN_PRICE_POSTLUDE", 0)
			--	tunables.set_int("SU22_BIN_PRICE_RHINEHART", 0)
			--	tunables.set_int("SU22_BIN_PRICE_RUINER4", 0)
			--	tunables.set_int("SU22_BIN_PRICE_SM722", 0)
			--	tunables.set_int("SU22_BIN_PRICE_TENF", 0)
			--	tunables.set_int("SU22_BIN_PRICE_TORERO2", 0)
			--	tunables.set_int("SU22_BIN_PRICE_VIGERO2", 0)
			--	
			--	tunables.set_int("SU23_BIN_PRICE_BRIGHAM", 0)
			--	tunables.set_int("SU23_BIN_PRICE_BUFFALO5", 0)
			--	tunables.set_int("SU23_BIN_PRICE_CLIQUE2", 0)
			--	tunables.set_int("SU23_BIN_PRICE_CONADA2", 0)
			--	tunables.set_int("SU23_BIN_PRICE_COUREUR", 0)
			--	tunables.set_int("SU23_BIN_PRICE_GAUNTLET6", 0)
			--	tunables.set_int("SU23_BIN_PRICE_INDUCTOR", 0)
			--	tunables.set_int("SU23_BIN_PRICE_INDUCTOR2", 0)
			--	tunables.set_int("SU23_BIN_PRICE_L35", 0)
			--	tunables.set_int("SU23_BIN_PRICE_MONSTROCITI", 0)
			--	tunables.set_int("SU23_BIN_PRICE_RAIJU", 0)
			--	tunables.set_int("SU23_BIN_PRICE_RATEL", 0)
			--	tunables.set_int("SU23_BIN_PRICE_STINGERTT", 0)
			--	tunables.set_int("SU23_BIN_PRICE_STREAMER216", 0)
			--	
			--	tunables.set_int("SUM_SALE_PRICE_CLUB", 0)
			--	tunables.set_int("SUM_SALE_PRICE_COQUETTE4", 0)
			--	tunables.set_int("SUM_SALE_PRICE_DUKES3", 0)
			--	--tunables.set_int("SUM_SALE_PRICE_GAUNTLET5", 0)
			--	--tunables.set_int("SUM_SALE_PRICE_GLENDALE2", 0)
			--	tunables.set_int("SUM_SALE_PRICE_LANDSTALKER2", 0)
			--	tunables.set_int("SUM_SALE_PRICE_MANANA", 0)
			--	--tunables.set_int("SUM_SALE_PRICE_MANANA2", 0)
			--	tunables.set_int("SUM_SALE_PRICE_OPENWHEEL1", 0)
			--	tunables.set_int("SUM_SALE_PRICE_OPENWHEEL2", 0)
			--	tunables.set_int("SUM_SALE_PRICE_PENUMBRA2", 0)
			--	tunables.set_int("SUM_SALE_PRICE_PEYOTE", 0)
			--	--tunables.set_int("SUM_SALE_PRICE_PEYOTE3", 0)
			--	tunables.set_int("SUM_SALE_PRICE_SEMINOLE2", 0)
			--	tunables.set_int("SUM_SALE_PRICE_TIGON", 0)
			--	--tunables.set_int("SUM_SALE_PRICE_YOSEMITE3", 0)
			--	--tunables.set_int("SUM_SALE_PRICE_YOUGA3", 0)
			--	
			--	tunables.set_int("TUNER_BIN_PRICE_CALICO", 0)
			--	tunables.set_int("TUNER_BIN_PRICE_COMET6", 0)
			--	tunables.set_int("TUNER_BIN_PRICE_CYPHER", 0)
			--	tunables.set_int("TUNER_BIN_PRICE_DOMINATOR7", 0)
			--	tunables.set_int("TUNER_BIN_PRICE_DOMINATOR8", 0)
			--	tunables.set_int("TUNER_BIN_PRICE_EUROS", 0)
			--	tunables.set_int("TUNER_BIN_PRICE_FUTO2", 0)
			--	tunables.set_int("TUNER_BIN_PRICE_GROWLER", 0)
			--	tunables.set_int("TUNER_BIN_PRICE_JESTER4", 0)
			--	tunables.set_int("TUNER_BIN_PRICE_PREVION", 0)
			--	tunables.set_int("TUNER_BIN_PRICE_REMUS", 0)
			--	tunables.set_int("TUNER_BIN_PRICE_RT3000", 0)
			--	tunables.set_int("TUNER_BIN_PRICE_SULTAN3", 0)
			--	tunables.set_int("TUNER_BIN_PRICE_TAILGATER2", 0)
			--	tunables.set_int("TUNER_BIN_PRICE_VECTRE", 0)
			--	tunables.set_int("TUNER_BIN_PRICE_WARRENER2", 0)
			--	tunables.set_int("TUNER_BIN_PRICE_ZR350", 0)
			--	
			--	tunables.set_int("VC_SALE_PRICE_CARACARA_4X4", 0)
			--	tunables.set_int("VC_SALE_PRICE_DRAFTER_8F", 0)
			--	tunables.set_int("VC_SALE_PRICE_DYNASTY", 0)
			--	tunables.set_int("VC_SALE_PRICE_EMERUS", 0)
			--	tunables.set_int("VC_SALE_PRICE_GASSER", 0)
			--	tunables.set_int("VC_SALE_PRICE_GAUNTLET", 0)
			--	tunables.set_int("VC_SALE_PRICE_GAUNTLET_CLASSIC", 0)
			--	tunables.set_int("VC_SALE_PRICE_HELLION", 0)
			--	tunables.set_int("VC_SALE_PRICE_JUGULAR", 0)
			--	tunables.set_int("VC_SALE_PRICE_KRIEGER", 0)
			--	tunables.set_int("VC_SALE_PRICE_LOCUST", 0)
			--	tunables.set_int("VC_SALE_PRICE_NEBULA", 0)
			--	tunables.set_int("VC_SALE_PRICE_NEO", 0)
			--	tunables.set_int("VC_SALE_PRICE_NOVAK", 0)
			--	tunables.set_int("VC_SALE_PRICE_PARAGON", 0)
			--	tunables.set_int("VC_SALE_PRICE_RAMPANT_ROCKET", 0)
			--	tunables.set_int("VC_SALE_PRICE_S80RR", 0)
			--	tunables.set_int("VC_SALE_PRICE_THRAX", 0)
			--	tunables.set_int("VC_SALE_PRICE_ZION_CLASSIC", 0)
			--	tunables.set_int("VC_SALE_PRICE_ZORRUSSO", 0)
			--	
			--	tunables.set_int("XM22_BIN_PRICE_BOOR", 0)
			--	tunables.set_int("XM22_BIN_PRICE_BRICKADE2", 0)
			--	tunables.set_int("XM22_BIN_PRICE_BROADWAY", 0)
			--	tunables.set_int("XM22_BIN_PRICE_ENTITY3", 0)
			--	tunables.set_int("XM22_BIN_PRICE_EUDORA", 0)
			--	tunables.set_int("XM22_BIN_PRICE_EVERON2", 0)
			--	tunables.set_int("XM22_BIN_PRICE_ISSI8", 0)
			--	tunables.set_int("XM22_BIN_PRICE_JOURNEY2", 0)
			--	tunables.set_int("XM22_BIN_PRICE_PANTHERE", 0)
			--	tunables.set_int("XM22_BIN_PRICE_POWERSURGE", 0)
			--	tunables.set_int("XM22_BIN_PRICE_R300", 0)
			--	tunables.set_int("XM22_BIN_PRICE_SURFER3", 0)
			--	tunables.set_int("XM22_BIN_PRICE_TAHOMA", 0)
			--	tunables.set_int("XM22_BIN_PRICE_TAXI", 0)
			--	tunables.set_int("XM22_BIN_PRICE_TULIP2", 0)
			--	tunables.set_int("XM22_BIN_PRICE_VIRTUE", 0)
			--	
			--	tunables.set_int("XM23_BIN_PRICE_ALEUTIAN", 0)
			--	tunables.set_int("XM23_BIN_PRICE_ASTEROPE2", 0)
			--	tunables.set_int("XM23_BIN_PRICE_BALLER8", 0)
			--	tunables.set_int("XM23_BIN_PRICE_BENSON2", 0)
			--	tunables.set_int("XM23_BIN_PRICE_BOXVILLE6", 0)
			--	tunables.set_int("XM23_BIN_PRICE_CAVALCADE3", 0)
			--	tunables.set_int("XM23_BIN_PRICE_DOMINATOR9", 0)
			--	tunables.set_int("XM23_BIN_PRICE_DORADO", 0)
			--	tunables.set_int("XM23_BIN_PRICE_FR36", 0)
			--	tunables.set_int("XM23_BIN_PRICE_IMPALER5", 0)
			--	tunables.set_int("XM23_BIN_PRICE_IMPALER6", 0)
			--	tunables.set_int("XM23_BIN_PRICE_POLGAUNTLET", 0)
			--	tunables.set_int("XM23_BIN_PRICE_POLICE4", 0)
			--	tunables.set_int("XM23_BIN_PRICE_POLICE5", 0)
			--	tunables.set_int("XM23_BIN_PRICE_RIOT", 0)
			--	tunables.set_int("XM23_BIN_PRICE_TERMINUS", 0)
			--	tunables.set_int("XM23_BIN_PRICE_TURISMO3", 0)
			--	tunables.set_int("XM23_BIN_PRICE_VIGERO3", 0)
			--	tunables.set_int("XM23_BIN_PRICE_VIVANITE", 0)
			--	
			--	 -- Trade Price Vehicle
			--	tunables.set_int("AW_TRADE_PRICE_APOCALYPSE_BRUTUS", 0)
			--	tunables.set_int("AW_TRADE_PRICE_APOCALYPSE_CERBERUS", 0)
			--	tunables.set_int("AW_TRADE_PRICE_APOCALYPSE_IMPERATOR", 0)
			--	tunables.set_int("AW_TRADE_PRICE_APOCALYPSE_SCARAB", 0)
			--	tunables.set_int("AW_TRADE_PRICE_APOCALYPSE_ZR380", 0)
			--	tunables.set_int("AW_TRADE_PRICE_CONSUMERISM_BRUTUS", 0)
			--	tunables.set_int("AW_TRADE_PRICE_CONSUMERISM_CERBERUS", 0)
			--	tunables.set_int("AW_TRADE_PRICE_CONSUMERISM_IMPERATOR", 0)
			--	tunables.set_int("AW_TRADE_PRICE_CONSUMERISM_SCARAB", 0)
			--	tunables.set_int("AW_TRADE_PRICE_CONSUMERISM_ZR380", 0)
			--	tunables.set_int("AW_TRADE_PRICE_DOMINATOR", 0)
			--	tunables.set_int("AW_TRADE_PRICE_GARGOYLE", 0)
			--	tunables.set_int("AW_TRADE_PRICE_GLENDALE", 0)
			--	tunables.set_int("AW_TRADE_PRICE_IMPALER", 0)
			--	tunables.set_int("AW_TRADE_PRICE_ISSI", 0)
			--	tunables.set_int("AW_TRADE_PRICE_RATLOADER", 0)
			--	tunables.set_int("AW_TRADE_PRICE_SCIFI_BRUTUS", 0)
			--	tunables.set_int("AW_TRADE_PRICE_SCIFI_CERBERUS", 0)
			--	tunables.set_int("AW_TRADE_PRICE_SCIFI_IMPERATOR", 0)
			--	tunables.set_int("AW_TRADE_PRICE_SCIFI_SCARAB", 0)
			--	tunables.set_int("AW_TRADE_PRICE_SCIFI_ZR380", 0)
			--	tunables.set_int("AW_TRADE_PRICE_SLAMVAN", 0)
			--	tunables.set_int("AW_UPGRADE_PRICE_APOCALYPSE_DOMINATOR", 0)
			--	tunables.set_int("AW_UPGRADE_PRICE_APOCALYPSE_GARGOYLE", 0)
			--	tunables.set_int("AW_UPGRADE_PRICE_APOCALYPSE_GLENDALE", 0)
			--	tunables.set_int("AW_UPGRADE_PRICE_APOCALYPSE_IMPALER", 0)
			--	tunables.set_int("AW_UPGRADE_PRICE_APOCALYPSE_ISSI", 0)
			--	tunables.set_int("AW_UPGRADE_PRICE_APOCALYPSE_RATLOADER", 0)
			--	tunables.set_int("AW_UPGRADE_PRICE_APOCALYPSE_SLAMVAN", 0)
			--	tunables.set_int("AW_UPGRADE_PRICE_CONSUMERISM_DOMINATOR", 0)
			--	tunables.set_int("AW_UPGRADE_PRICE_CONSUMERISM_GARGOYLE", 0)
			--	tunables.set_int("AW_UPGRADE_PRICE_CONSUMERISM_GLENDALE", 0)
			--	tunables.set_int("AW_UPGRADE_PRICE_CONSUMERISM_IMPALER", 0)
			--	tunables.set_int("AW_UPGRADE_PRICE_CONSUMERISM_ISSI", 0)
			--	tunables.set_int("AW_UPGRADE_PRICE_CONSUMERISM_RATLOADER", 0)
			--	tunables.set_int("AW_UPGRADE_PRICE_CONSUMERISM_SLAMVAN", 0)
			--	tunables.set_int("AW_UPGRADE_PRICE_SCIFI_DOMINATOR", 0)
			--	tunables.set_int("AW_UPGRADE_PRICE_SCIFI_GARGOYLE", 0)
			--	tunables.set_int("AW_UPGRADE_PRICE_SCIFI_GLENDALE", 0)
			--	tunables.set_int("AW_UPGRADE_PRICE_SCIFI_IMPALER", 0)
			--	tunables.set_int("AW_UPGRADE_PRICE_SCIFI_ISSI", 0)
			--	tunables.set_int("AW_UPGRADE_PRICE_SCIFI_RATLOADER", 0)
			--	tunables.set_int("AW_UPGRADE_PRICE_SCIFI_SLAMVAN", 0)
			--	
			--	tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_BEEJAY_XL", 0)
			--	tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_BENEFACTOR_SERRANO", 0)
			--	tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_BOLLOKAN_PRAIRIE", 0)
			--	tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_CHARIOT_ROMERO_HEARSE", 0)
			--	tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_EMPEROR_HABANERO", 0)
			--	tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_FATHOM_FQ_2", 0)
			--	tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_IMPONTE_RUINER", 0)
			--	tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_KARIN_FUTO", 0)
			--	tunables.set_int("BB_TRADE_PRICE_EXISTING_VEHICLES_MAMMOTH_PATRIOT", 0)
			--	tunables.set_int("BB_TRADE_PRICE_HIGH_END_VEHICLES_CANIS_FREECRAWLER", 0)
			--	tunables.set_int("BB_TRADE_PRICE_HIGH_END_VEHICLES_ENUS_STAFFORD", 0)
			--	tunables.set_int("BB_TRADE_PRICE_HIGH_END_VEHICLES_MAMMOTH_PATRIOT_STRETCH", 0)
			--	tunables.set_int("BB_TRADE_PRICE_HIGH_END_VEHICLES_OCELOT_SWINGER", 0)
			--	tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP", 0)
			--	--tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP_LIVERY_1", 0)
			--	--tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP_LIVERY_2", 0)
			--	--tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP_LIVERY_3", 0)
			--	--tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP_LIVERY_4", 0)
			--	--tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP_LIVERY_5", 0)
			--	--tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP_LIVERY_6", 0)
			--	--tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP_LIVERY_7", 0)
			--	--tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_BLIMP_LIVERY_8_NIGHTCLUB", 0)
			--	tunables.set_int("BB_TRADE_PRICE_MISC_VEHICLES_FESTIVAL_BUS", 0)
			--	tunables.set_int("BB_TRADE_PRICE_WEAPONIZED_VEHICLES_B_11_STRIKEFORCE", 0)
			--	--tunables.set_int("BB_TRADE_PRICE_WEAPONIZED_VEHICLES_DECLASSE_SCRAMJET", 0)
			--	tunables.set_int("BB_TRADE_PRICE_WEAPONIZED_VEHICLES_MAIBATSU_MULE_CUSTOM", 0)
			--	tunables.set_int("BB_TRADE_PRICE_WEAPONIZED_VEHICLES_MTL_POUNDER_CUSTOM", 0)
			--	tunables.set_int("BB_TRADE_PRICE_WEAPONIZED_VEHICLES_PEGASSI_HVY_MENACER", 0)
			--	tunables.set_int("BB_TRADE_PRICE_WEAPONIZED_VEHICLES_PEGASSI_OPPRESSOR_MK_II", 0)
			--	
			--	tunables.set_int("BOUNTY24_TRADE_PRICE_PIZZABOY", 0)
			--	tunables.set_int("BOUNTY24_TRADE_PRICE_POLDOMINATOR10", 0)
			--	tunables.set_int("BOUNTY24_TRADE_PRICE_POLDORADO", 0)
			--	tunables.set_int("BOUNTY24_TRADE_PRICE_POLGREENWOOD", 0)
			--	tunables.set_int("BOUNTY24_TRADE_PRICE_POLIMPALER5", 0)
			--	tunables.set_int("BOUNTY24_TRADE_PRICE_POLIMPALER6", 0)
			--	
			--	tunables.set_int("CH_TRADE_PRICE_ASBO", 0)
			--	tunables.set_int("CH_TRADE_PRICE_BOXVILLE", 0)
			--	tunables.set_int("CH_TRADE_PRICE_BURRITO2", 0)
			--	tunables.set_int("CH_TRADE_PRICE_DEFILER", 0)
			--	tunables.set_int("CH_TRADE_PRICE_ELLIE", 0)
			--	tunables.set_int("CH_TRADE_PRICE_EVERON", 0)
			--	tunables.set_int("CH_TRADE_PRICE_FIRETRUCK", 0)
			--	tunables.set_int("CH_TRADE_PRICE_FORMULA", 0)
			--	tunables.set_int("CH_TRADE_PRICE_FORMULA2", 0)
			--	tunables.set_int("CH_TRADE_PRICE_FURIA", 0)
			--	tunables.set_int("CH_TRADE_PRICE_GAUNTLET3", 0)
			--	tunables.set_int("CH_TRADE_PRICE_JB7002", 0)
			--	tunables.set_int("CH_TRADE_PRICE_JUGULAR", 0)
			--	tunables.set_int("CH_TRADE_PRICE_KANJO", 0)
			--	tunables.set_int("CH_TRADE_PRICE_KOMODA", 0)
			--	tunables.set_int("CH_TRADE_PRICE_MANCHEZ", 0)
			--	tunables.set_int("CH_TRADE_PRICE_OUTLAW", 0)
			--	tunables.set_int("CH_TRADE_PRICE_RETINUE2", 0)
			--	tunables.set_int("CH_TRADE_PRICE_SENTINAL3", 0)
			--	tunables.set_int("CH_TRADE_PRICE_STOCKADE", 0)
			--	tunables.set_int("CH_TRADE_PRICE_STRYDER", 0)
			--	tunables.set_int("CH_TRADE_PRICE_SUGOI", 0)
			--	tunables.set_int("CH_TRADE_PRICE_SULTAN2", 0)
			--	tunables.set_int("CH_TRADE_PRICE_VAGRANT", 0)
			--	tunables.set_int("CH_TRADE_PRICE_YOSEMITE2", 0)
			--	tunables.set_int("CH_TRADE_PRICE_ZHABA", 0)
			--	
			--	tunables.set_int("FIXER_TRADE_PRICE_BALLER7", 0)
			--	tunables.set_int("FIXER_TRADE_PRICE_BUFFALO4", 0)
			--	tunables.set_int("FIXER_TRADE_PRICE_CHAMPION", 0)
			--	tunables.set_int("FIXER_TRADE_PRICE_DEITY", 0)
			--	tunables.set_int("FIXER_TRADE_PRICE_GRANGER2", 0)
			--	--tunables.set_int("FIXER_TRADE_PRICE_ITALIGTB2", 0)
			--	tunables.set_int("FIXER_TRADE_PRICE_JUBILEE", 0)
			--	tunables.set_int("FIXER_TRADE_PRICE_PATRIOT3", 0)
			--	
			--	tunables.set_int("H2_VEHICLES_TRADE_PRICE_AKULA", 0)
			--	tunables.set_int("H2_VEHICLES_TRADE_PRICE_BARRAGE", 0)
			--	tunables.set_int("H2_VEHICLES_TRADE_PRICE_CHERNOBOG", 0)
			--	tunables.set_int("H2_VEHICLES_TRADE_PRICE_DELUXO", 0)
			--	tunables.set_int("H2_VEHICLES_TRADE_PRICE_KHANJALI", 0)
			--	tunables.set_int("H2_VEHICLES_TRADE_PRICE_RCV", 0)
			--	tunables.set_int("H2_VEHICLES_TRADE_PRICE_STROMBERG", 0)
			--	tunables.set_int("H2_VEHICLES_TRADE_PRICE_THRUSTER", 0)
			--	tunables.set_int("H2_VEHICLES_TRADE_PRICE_VOLATOL", 0)
			--	
			--	tunables.set_int("IH_TRADE_PRICE_ALKONOST", 0)
			--	tunables.set_int("IH_TRADE_PRICE_ANNIHILATOR2", 0)
			--	tunables.set_int("IH_TRADE_PRICE_BRIOSO2", 0)
			--	tunables.set_int("IH_TRADE_PRICE_ITALIRSX", 0)
			--	tunables.set_int("IH_TRADE_PRICE_LONGFIN", 0)
			--	tunables.set_int("IH_TRADE_PRICE_PATROLBOAT", 0)
			--	tunables.set_int("IH_TRADE_PRICE_VETIR", 0)
			--	tunables.set_int("IH_TRADE_PRICE_WEEVIL", 0)
			--	tunables.set_int("IH_TRADE_PRICE_WINKY", 0)
			--	
			--	tunables.set_int("IMPEXP_BLAZER5_SECUROSERV_PRICE", 0)
			--	tunables.set_int("IMPEXP_BOXVILLE5_SECUROSERV_PRICE", 0)
			--	tunables.set_int("IMPEXP_DUNE5_SECUROSERV_PRICE", 0)
			--	tunables.set_int("IMPEXP_PHANTOM2_SECUROSERV_PRICE", 0)
			--	tunables.set_int("IMPEXP_RUINER2_SECUROSERV_PRICE", 0)
			--	tunables.set_int("IMPEXP_TECHNICAL2_SECUROSERV_PRICE", 0)
			--	tunables.set_int("IMPEXP_VOLTIC2_SECUROSERV_PRICE", 0)
			--	tunables.set_int("IMPEXP_WASTELANDER_SECUROSERV_PRICE", 0)
			--	
			--	tunables.set_int("SMUG_VEHICLES_CARS_TRADE_PRICE_COIL_CYCLONE", 0)
			--	tunables.set_int("SMUG_VEHICLES_CARS_TRADE_PRICE_DEWBAUCHEE_RAPIDGT_CLASSIC", 0)
			--	tunables.set_int("SMUG_VEHICLES_CARS_TRADE_PRICE_GROTTI_VIGILANTE", 0)
			--	tunables.set_int("SMUG_VEHICLES_CARS_TRADE_PRICE_GROTTI_VISIONE", 0)
			--	tunables.set_int("SMUG_VEHICLES_CARS_TRADE_PRICE_VAPID_RETINUE", 0)
			--	tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_ALPHAZ1", 0)
			--	tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_BOMBUSHKA", 0)
			--	tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_HOWARD_NX25", 0)
			--	tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_HUNTER", 0)
			--	tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_MOGUL", 0)
			--	tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_NAGASAKI_HAVOK", 0)
			--	tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_P45_NOKOTA", 0)
			--	tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_P996_LAZER", 0)
			--	tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_PEGASSI_ULTRALIGHT", 0)
			--	tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_PYRO", 0)
			--	tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_ROGUE", 0)
			--	tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_STARLING", 0)
			--	tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_TULA", 0)
			--	tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_V65_MOLOTOK", 0)
			--	tunables.set_int("SMUG_VEHICLES_TRADE_PRICE_WESTERN_SEABREEZE", 0)
			--	
			--	tunables.set_int("SU22_TRADE_PRICE_CONADA", 0)
			--	tunables.set_int("SU22_TRADE_PRICE_DRAUGUR", 0)
			--	tunables.set_int("SU22_TRADE_PRICE_GREENWOOD", 0)
			--	tunables.set_int("SU22_TRADE_PRICE_KANJOSJ", 0)
			--	tunables.set_int("SU22_TRADE_PRICE_POSTLUDE", 0)
			--	
			--	tunables.set_int("SU23_TRADE_PRICE_MANCHEZ2", 0)
			--	tunables.set_int("SU23_TRADE_PRICE_RAIJU", 0)
			--	tunables.set_int("SU23_TRADE_PRICE_SQUADDIE", 0)
			--	
			--	tunables.set_int("TUNER_TRADE_PRICE_CALICO", 0)
			--	tunables.set_int("TUNER_TRADE_PRICE_COMET6", 0)
			--	tunables.set_int("TUNER_TRADE_PRICE_CYPHER", 0)
			--	tunables.set_int("TUNER_TRADE_PRICE_DOMINATOR7", 0)
			--	tunables.set_int("TUNER_TRADE_PRICE_DOMINATOR8", 0)
			--	tunables.set_int("TUNER_TRADE_PRICE_EUROS", 0)
			--	tunables.set_int("TUNER_TRADE_PRICE_FUTO2", 0)
			--	tunables.set_int("TUNER_TRADE_PRICE_GROWLER", 0)
			--	tunables.set_int("TUNER_TRADE_PRICE_JESTER4", 0)
			--	tunables.set_int("TUNER_TRADE_PRICE_PREVION", 0)
			--	tunables.set_int("TUNER_TRADE_PRICE_REMUS", 0)
			--	tunables.set_int("TUNER_TRADE_PRICE_RT3000", 0)
			--	tunables.set_int("TUNER_TRADE_PRICE_SULTAN3", 0)
			--	tunables.set_int("TUNER_TRADE_PRICE_TAILGATER2", 0)
			--	tunables.set_int("TUNER_TRADE_PRICE_VECTRE", 0)
			--	tunables.set_int("TUNER_TRADE_PRICE_WARRENER2", 0)
			--	tunables.set_int("TUNER_TRADE_PRICE_ZR350", 0)
			--	
			--	tunables.set_int("XM22_TRADE_PRICE_EVERON2", 0)
			--	tunables.set_int("XM22_TRADE_PRICE_HOTRING", 0)
			--	tunables.set_int("XM22_TRADE_PRICE_JOURNEY2", 0)
			--	tunables.set_int("XM22_TRADE_PRICE_SURFER3", 0)
			--	tunables.set_int("XM22_TRADE_PRICE_TAXI", 0)
			--	tunables.set_int("XM22_TRADE_PRICE_VIRTUE", 0)
			--	
			--	tunables.set_int("XM23_TRADE_PRICE_BENSON2", 0)
			--	tunables.set_int("XM23_TRADE_PRICE_BOXVILLE6", 0)
			--	tunables.set_int("XM23_TRADE_PRICE_POLGAUNTLET", 0)
			--	tunables.set_int("XM23_TRADE_PRICE_POLICE4", 0)
			--	tunables.set_int("XM23_TRADE_PRICE_POLICE5", 0)
			--	tunables.set_int("XM23_TRADE_PRICE_RIOT", 0)
			--end
			--if ImGui.IsItemHovered() then
			--	ImGui.SetTooltip("Free sale of some vehicles")
			--end
			
			--EnableVehicle = ImGui.Checkbox("Enable Removed Website Vehicles", EnableVehicle)
			--if ImGui.IsItemHovered() then
			--	ImGui.SetTooltip("Displaying some vehicle purchases that have been removed from the website")
			--end
			--ImGui.SameLine()
			EnableVehicle2 = ImGui.Checkbox("Enable All Removed Vehicles", EnableVehicle2)
			if ImGui.IsItemHovered() then
				ImGui.SetTooltip("Displays all deleted vehicles including from the website")
			end
			
			StoneHatchetRampage = ImGui.Checkbox("Infinite Stone Hatchet's Power", StoneHatchetRampage)
			
			MaxBetLimit = ImGui.Checkbox("Remove Bet Limit Challenge##MaxBetLimit", MaxBetLimit)
			if ImGui.IsItemHovered() then
				ImGui.SetTooltip("Removed bet limit for multiplayer challenge. Not for casino chip gambling")
			end
			
			TunableMultplier, drag = ImGui.Checkbox("> Multiplier##TunableMultplier", TunableMultplier)
			if ImGui.IsItemHovered() then
				ImGui.SetTooltip("Toggle to expand for customize a multiplier")
			end
			if TunableMultplier then
				CashMultiplier, drag = ImGui.DragFloat("Cash Multiplier##CashMultiplier", CashMultiplier, 0.10, 0.00, 1000.00, "%.2f")
				if drag then
					CashMultiplier = math.min(math.max(CashMultiplier, 0.00), 1000.00)
				end
				XPMultiplier, drag = ImGui.DragFloat("XP Multiplier##XPMultiplier", XPMultiplier, 0.10, 0.00, 1000.00, "%.2f")
				if drag then
					XPMultiplier = math.min(math.max(XPMultiplier, 0.00), 1000.00)
				end
				TimeMultiplier, drag = ImGui.DragFloat("Time Multiplier##TimeMultiplier", TimeMultiplier, 0.10, 0.00, 1000.00, "%.2f")
				if drag then
					TimeMultiplier = math.min(math.max(TimeMultiplier, 0.00), 1000.00)
				end
				APMultiplier, drag = ImGui.DragFloat("AP Multiplier##APMultiplier", APMultiplier, 0.10, 0.00, 1000.00, "%.2f")
				if drag then
					APMultiplier = math.min(math.max(APMultiplier, 0.00), 1000.00)
				end
				MinMissionPayout, drag = ImGui.DragFloat("Min Mission Payout##MinMissionPayout", MinMissionPayout, 100.00, 0.00, 100000.00, "%.0f")
				--if drag then
				--	MinMissionPayout = math.min(math.max(MinMissionPayout, 0.00), 100000.00)
				--end
				MaxMissionPayout, drag = ImGui.DragFloat("Max Mission Payout##MaxMissionPayout", MaxMissionPayout, 100.00, 0.00, 100000.00, "%.0f")
				--if drag then
				--	MaxMissionPayout = math.min(math.max(MaxMissionPayout, 0.00), INT_MAX.00)
				--end
				ArenaWheelAP, drag = ImGui.DragInt("Arena Wheel AP Override##ArenaWheelAP", ArenaWheelAP, 50, 0, 500000)
				if drag then
					ArenaWheelAP = math.min(math.max(ArenaWheelAP, 0.00), 5045000)
				end
				ArenaWheelRP, drag = ImGui.DragInt("Arena Wheel RP Override##ArenaWheelRP", ArenaWheelRP, 500, 0, 500000)
				if drag then
					ArenaWheelRP = math.min(math.max(ArenaWheelRP, 0.00), 1000000)
				end
				ArenaWheelCash, drag = ImGui.DragInt("Arena Wheel Cash Override##ArenaWheelCash", ArenaWheelCash, 2000, 0, 20000)
				if drag then
					ArenaWheelCash = math.min(math.max(ArenaWheelCash, 0.00), 40000)
				end
				TaxiWork, drag = ImGui.DragFloat("Taxi Work Multiplier##TaxiWork", TaxiWork, 0.10, 0.00, 1000.00, "%.2f")
				if drag then
					TaxiWork = math.min(math.max(TaxiWork, 0.00), 1000.00)
				end
				if not LSCarMeetAllMultiplier then
					--LSCarMeetFirst, drag = ImGui.DragFloat("LS Car Meet First Time Multiplier##LSCarMeetFirst", LSCarMeetFirst, 0.10, 0.00, 99999.00, "%.2f")
					--if drag then
					--	LSCarMeetFirst = math.min(math.max(LSCarMeetFirst, 0.00), 99999.00)
					--end
					LSCarMeetSprint, drag = ImGui.DragFloat("Sprint Race Multiplier##LSCarMeetSprint", LSCarMeetSprint, 0.10, 0.00, 99999.00, "%.2f")
					if drag then
						LSCarMeetSprint = math.min(math.max(LSCarMeetSprint, 0.00), 99999.00)
					end
					LSCarMeetStreet, drag = ImGui.DragFloat("Street Race Multiplier##LSCarMeetStreet", LSCarMeetStreet, 0.10, 0.00, 99999.00, "%.2f")
					if drag then
						LSCarMeetStreet = math.min(math.max(LSCarMeetStreet, 0.00), 99999.00)
					end
					LSCarMeetPursuit, drag = ImGui.DragFloat("Pursuit Race Multiplier##LSCarMeetPursuit", LSCarMeetPursuit, 0.10, 0.00, 99999.00, "%.2f")
					if drag then
						LSCarMeetPursuit = math.min(math.max(LSCarMeetPursuit, 0.00), 99999.00)
					end
					LSCarMeetCheckpoint, drag = ImGui.DragFloat("Scramble Multiplier##LSCarMeetCheckpoint", LSCarMeetCheckpoint, 0.10, 0.00, 99999.00, "%.2f")
					if drag then
						LSCarMeetCheckpoint = math.min(math.max(LSCarMeetCheckpoint, 0.00), 99999.00)
					end
					LSCarMeetHeadtohead, drag = ImGui.DragFloat("Head to Head Multiplier##LSCarMeetHeadtohead", LSCarMeetHeadtohead, 0.10, 0.00, 99999.00, "%.2f")
					if drag then
						LSCarMeetHeadtohead = math.min(math.max(LSCarMeetHeadtohead, 0.00), 99999.00)
					end
					LSCarMeet, drag = ImGui.DragFloat("LS Car Meet Multiplier##LSCarMeet", LSCarMeet, 0.10, 0.00, 99999.00, "%.2f")
					if drag then
						LSCarMeet = math.min(math.max(LSCarMeet, 0.00), 99999.00)
					end
					LSCarMeetTrack, drag = ImGui.DragFloat("LS Car Meet's Track Multiplier##LSCarMeetTrack", LSCarMeetTrack, 0.10, 0.00, 99999.00, "%.2f")
					if drag then
						LSCarMeetTrack = math.min(math.max(LSCarMeetTrack, 0.00), 99999.00)
					end
					--LSCarMeetMerch, drag = ImGui.DragFloat("LS Car Meet Buy Merchandise Multiplier##LSCarMeetMerch", LSCarMeetMerch, 0.10, 0.00, 99999.00, "%.2f")
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
			ImGui.EndTabItem()
		end
		
		if ImGui.BeginTabItem("Unlocks") then
			if ImGui.Button("Vehicle Colors##Unlocks") then
				if stats.get_int("MPX_CHAR_FM_CARMOD_1_UNLCK") ~= -1 then
					stats.set_int("MPX_CHAR_FM_CARMOD_1_UNLCK", -1)
				end
				if stats.get_int("MPX_CHAR_FM_CARMOD_2_UNLCK") ~= -1 then
					stats.set_int("MPX_CHAR_FM_CARMOD_2_UNLCK", -1)
				end
				if stats.get_int("MPX_CHAR_FM_CARMOD_3_UNLCK") ~= -1 then
					stats.set_int("MPX_CHAR_FM_CARMOD_3_UNLCK", -1)
				end
				if stats.get_int("MPX_CHAR_FM_CARMOD_4_UNLCK") ~= -1 then
					stats.set_int("MPX_CHAR_FM_CARMOD_4_UNLCK", -1)
				end
				if stats.get_int("MPX_CHAR_FM_CARMOD_5_UNLCK") ~= -1 then
					stats.set_int("MPX_CHAR_FM_CARMOD_5_UNLCK", -1)
				end
				if stats.get_int("MPX_CHAR_FM_CARMOD_6_UNLCK") ~= -1 then
					stats.set_int("MPX_CHAR_FM_CARMOD_6_UNLCK", -1)
				end
				if stats.get_int("MPX_CHAR_FM_CARMOD_7_UNLCK") ~= -1 then
					stats.set_int("MPX_CHAR_FM_CARMOD_7_UNLCK", -1)
				end
				if stats.get_int("MPX_NUMBER_TURBO_STARTS_IN_RACE") < 50 then
					stats.set_int("MPX_NUMBER_TURBO_STARTS_IN_RACE", 50)
				end
				if stats.get_int("MPX_USJS_COMPLETED") < 25 then
					stats.set_int("MPX_USJS_COMPLETED", 25)
				end
				if stats.get_int("MPX_AWD_FM_RACES_FASTEST_LAP") < 50 then
					stats.set_int("MPX_AWD_FM_RACES_FASTEST_LAP", 50)
				end
				if stats.get_int("MPX_NUMBER_SLIPSTREAMS_IN_RACE") < 100 then
					stats.set_int("MPX_NUMBER_SLIPSTREAMS_IN_RACE", 100)
				end
				if stats.get_int("MPX_AWD_WIN_CAPTURES") < 50 then
					stats.set_int("MPX_AWD_WIN_CAPTURES", 50)
				end
				if stats.get_int("MPX_AWD_DROPOFF_CAP_PACKAGES") < 100 then
					stats.set_int("MPX_AWD_DROPOFF_CAP_PACKAGES", 100)
				end
				if stats.get_int("MPX_AWD_KILL_CARRIER_CAPTURE") < 100 then
					stats.set_int("MPX_AWD_KILL_CARRIER_CAPTURE", 100)
				end
				if stats.get_int("MPX_AWD_FINISH_HEISTS") < 50 then
					stats.set_int("MPX_AWD_FINISH_HEISTS", 50)
				end
				if stats.get_int("MPX_AWD_FINISH_HEIST_SETUP_JOB") < 50 then
					stats.set_int("MPX_AWD_FINISH_HEIST_SETUP_JOB", 50)
				end
				if stats.get_int("MPX_AWD_NIGHTVISION_KILLS") < 100 then
					stats.set_int("MPX_AWD_NIGHTVISION_KILLS", 100)
				end
				if stats.get_int("MPX_AWD_WIN_LAST_TEAM_STANDINGS") < 50 then
					stats.set_int("MPX_AWD_WIN_LAST_TEAM_STANDINGS", 50)
				end
				if stats.get_int("MPX_AWD_ONLY_PLAYER_ALIVE_LTS") < 50 then
					stats.set_int("MPX_AWD_ONLY_PLAYER_ALIVE_LTS", 50)
				end
				if stats.get_int("MPX_AWD_FMRALLYWONDRIVE") < 1 then
					stats.set_int("MPX_AWD_FMRALLYWONDRIVE", 1)
				end
				if stats.get_int("MPX_AWD_FMRALLYWONNAV") < 1 then
					stats.set_int("MPX_AWD_FMRALLYWONNAV", 1)
				end
				if stats.get_int("MPX_AWD_FMWINAIRRACE") < 1 then
					stats.set_int("MPX_AWD_FMWINAIRRACE", 1)
				end
				if stats.get_int("MPX_AWD_FMWINSEARACE") < 1 then
					stats.set_int("MPX_AWD_FMWINSEARACE", 1)
				end
				if stats.get_int("MPX_RACES_WON") < 50 then
					stats.set_int("MPX_RACES_WON", 50)
				end
				if stats.get_int("MPX_MPPLY_TOTAL_RACES_WON") < 50 then
					stats.set_int("MPX_MPPLY_TOTAL_RACES_WON", 50)
				end
				if stats.get_int("MPX_USJS_FOUND") < 50 then
					stats.set_int("MPX_USJS_FOUND", 50)
				end
				if stats.get_int("MPX_USJS_FOUND_MASK") < 50 then
					stats.set_int("MPX_USJS_FOUND_MASK", 50)
				end
				if stats.get_int("MPX_USJS_COMPLETED") < 50 then
					stats.set_int("MPX_USJS_COMPLETED", 50)
				end
				if stats.get_int("MPX_USJS_TOTAL_COMPLETED") < 50 then
					stats.set_int("MPX_USJS_TOTAL_COMPLETED", 50)
				end
				if stats.get_int("MPX_USJS_COMPLETED_MASK") < 50 then
					stats.set_int("MPX_USJS_COMPLETED_MASK", 50)
				end
			end
			if ImGui.IsItemHovered() then
				ImGui.SetTooltip("Unlocked all vehicle respray colors")
			end
			ImGui.SameLine()
			if ImGui.Button("Bunker Research##Unlocks") then -- https://www.unknowncheats.me/forum/3725545-post5.html
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL0", 12) ~= true then -- APC SAM Battery
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL0", true, 12)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL0", 13) ~= true then -- Ballistic Equipment
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL0", true, 13)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL0", 59) ~= true then -- Half-track 20mm Quad Autocannon
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL0", true, 59)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL0", 60) ~= true then -- Weaponized Tampa Dual Remote Minigun
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL0", true, 60)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL0", 61) ~= true then -- Weaponized Tampa Rear-Firing Mortar
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL0", true, 61)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL0", 62) ~= true then -- Weaponized Tampa Front Missile Launchers
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL0", true, 62)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL0", 63) ~= true then -- Dune FAV 40mm Grenade Launcher
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL0", true, 63)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 0) ~= true then -- Dune FAV 7.62mm Minigun
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 0)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 1) ~= true then -- Insurgent Pick-Up Custom .50 Cal Minigun
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 1)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 2) ~= true then -- Insurgent Pick-Up Custom Heavy Armor Plating
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 2)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 3) ~= true then -- Technical Custom 7.62mm Minigun
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 3)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 4) ~= true then -- Technical Custom Ram-bar
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 4)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 5) ~= true then -- Technical Custom Brute-bar
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 5)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 6) ~= true then -- Technical Custom Heavy Chassis Armor
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 6)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 14) ~= true then -- Oppressor Missiles
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 14)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 15) ~= true then -- Fractal Livery Set
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 15)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 16) ~= true then -- Digital Livery Set
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 16)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 17) ~= true then -- Geometric Livery Set
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 17)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 18) ~= true then -- Nature Reserve Livery
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 18)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 19) ~= true then -- Naval Battle Livery
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 19)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 20) ~= true then -- Anti-Aircraft Trailer Dual 20mm Flak
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 20)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 21) ~= true then -- Anti-Aircraft Trailer Homing Missile Battery
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 21)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 22) ~= true then -- Mobile Operations Center Rear Turrets
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 22)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 23) ~= true then -- Incendiary Rounds
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 23)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 24) ~= true then -- Hollow Point Rounds
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 24)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 25) ~= true then -- Armor Piercing Rounds
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 25)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 26) ~= true then -- Full Metal Jacket Rounds
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 26)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 27) ~= true then -- Explosive Rounds
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 27)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 28) ~= true then -- Pistol Mk II Mounted Scope
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 28)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 29) ~= true then -- Pistol Mk II Compensator
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 29)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 30) ~= true then -- SMG Mk II Holographic Sight
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 30)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 31) ~= true then -- SMG Mk II Heavy Barrel
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 31)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 32) ~= true then -- Heavy Sniper Mk II Night Vision Scope
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 32)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 33) ~= true then -- Heavy Sniper Mk II Thermal Scope
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 33)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 34) ~= true then -- Heavy Sniper Mk II Heavy Barrel
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 34)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 35) ~= true then -- Combat MG Mk II Holographic Sight
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 35)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 36) ~= true then -- Combat MG Mk II Heavy Barrel
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 36)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 37) ~= true then -- Assault Rifle Mk II Holographic Sight
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 37)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 38) ~= true then -- Assault Rifle Mk II Heavy Barrel
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 38)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 39) ~= true then -- Carbine Rifle Mk II Holographic Sight
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 39)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 40) ~= true then -- Carbine Rifle Mk II Heavy Barrel
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 40)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 41) ~= true then -- Proximity Mines
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 41)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 58) ~= true then -- Weaponized Tampa Heavy Chassis Armor
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 58)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 59) ~= true then -- Brushstroke Camo Mk II Weapon Livery
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 59)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 60) ~= true then -- Skull Mk II Weapon Livery
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 60)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 61) ~= true then -- Sessanta Nove Mk II Weapon Livery
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 61)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 62) ~= true then -- Perseus Mk II Weapon Livery
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 62)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL1", 63) ~= true then -- Leopard Mk II Weapon Livery
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL1", true, 63)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL2", 0) ~= true then -- Zebra Mk II Weapon Livery
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL2", true, 0)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL2", 1) ~= true then -- Geometric Mk II Weapon Livery
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL2", true, 1)
				end
				if stats.get_bool_masked("MPX_DLCGUNPSTAT_BOOL2", 2) ~= true then -- Boom! Mk II Weapon Livery
					stats.set_bool_masked("MPX_DLCGUNPSTAT_BOOL2", true, 2)
				end
			end
			if ImGui.IsItemHovered() then
				ImGui.SetTooltip("Unlocked all bunker research")
			end
			
			if ImGui.Button("All Collectibles##Unlocks") then -- https://www.unknowncheats.me/forum/3731043-post16.html
				for i = 26811, 26910 do
					if stats.get_packed_stat_bool(i) ~= true then -- Action Figure 100
						stats.set_packed_stat_bool(i, true)
					end
				end
				for i = 26911, 26964 do
					if stats.get_packed_stat_bool(i) ~= true then -- Playing Card 54
						stats.set_packed_stat_bool(i, true)
					end
				end
				for i = 28099, 28148 do
					if stats.get_packed_stat_bool(i) ~= true then -- Signal Jammer 50
						stats.set_packed_stat_bool(i, true)
					end
				end
				for i = 30230, 30239 do
					if stats.get_packed_stat_bool(i) ~= true then -- Movie Prop 10
						stats.set_packed_stat_bool(i, true)
					end
				end
				for i = 34262, 34361 do
					if stats.get_packed_stat_bool(i) ~= true then -- LD Organics Product 100
						stats.set_packed_stat_bool(i, true)
					end
				end
				for i = 36630, 36654 do
					if stats.get_packed_stat_bool(i) ~= true then -- Snowman 25
						stats.set_packed_stat_bool(i, true)
					end
				end
				gui.show_message("GoldenGets Menu - Unlocks","All collectibles has been unlocked, change session to apply!")
			end
			if ImGui.IsItemHovered() then
				ImGui.SetTooltip("Unlocked all collectibles")
			end
			ImGui.SameLine()
			if ImGui.Button("Ghost Hunt Collectibles##Unlocks") then -- https://www.unknowncheats.me/forum/3774941-post140.html
				for i = 41316, 41325 do -- Ghost 1 to Ghost 10 (Johnny Klebitz)
					if stats.get_packed_stat_bool(i) ~= true then -- Ghost Hunt 10
						stats.set_packed_stat_bool(i, true)
					end
				end
				gui.show_message("GoldenGets Menu - Unlocks","Ghost hunt collectibles has been unlocked, change session to apply!")
			end
			if ImGui.IsItemHovered() then
				ImGui.SetTooltip("Unlocked ghost hunt collectibles")
			end
			
			if ImGui.Button("Casino Store Ace Masks##Unlocks") then
				if tunables.get_bool("VC_ACE_OF_SPADES") ~= true then -- int *(62777)*
					tunables.set_bool("VC_ACE_OF_SPADES", true)
				end
				if tunables.get_bool("VC_ACE_OF_HEARTS") ~= true then -- int *(61666)*
					tunables.set_bool("VC_ACE_OF_HEARTS", true)
				end
				if tunables.get_bool("VC_ACE_OF_CLUBS") ~= true then -- int *(59444)*
					tunables.set_bool("VC_ACE_OF_CLUBS", true)
				end
				if tunables.get_bool("VC_ACE_OF_DIAMONDS") ~= true then -- int *(60555)*
					tunables.set_bool("VC_ACE_OF_DIAMONDS", true)
				end
			end
			if ImGui.IsItemHovered() then
				ImGui.SetTooltip("Make sure click before buying. When you change your session,\nwill be changed to non-unlocked status")
			end
			
			if ImGui.Button("Media Player - Dr. Dre##Unlocks") then
				if stats.get_packed_stat_bool(32287) ~= true then -- Dr. Dre Media Player
					stats.set_packed_stat_bool(32287, true)
				end
			end
			
			if ImGui.Button("Taxi Livery##Unlocks") then
				if stats.get_int_masked("MPX_DLC22022PSTAT_INT536", 16) < 10 then -- Eudora - Downtown Cab Co. (Taxi Livery) -- https://www.unknowncheats.me/forum/3797057-post166.html
					stats.set_int_masked("MPX_DLC22022PSTAT_INT536", 10, 16)
				end
			end
			if ImGui.IsItemHovered() then
				ImGui.SetTooltip("Unlocked eudora vehicle livery taxi")
			end
			
			ImGui.Separator()
			
			if ImGui.BeginTabBar("Unlocks Tab") then
				if ImGui.BeginTabItem("Cutscene") then
					if ImGui.Button("Arena Workshop##Custscene##Unlocks") then -- https://www.unknowncheats.me/forum/3726356-post8.html
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 46) ~= true then -- Arena Cutscene 1 // (0 / false = Re-watch) // index *(25008)*
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 46)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 47) ~= true then -- Arena Cutscene 2 // (0 / false = Re-watch) // index *(25009)*
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 47)
						end
					end
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Skip first time arena workshop custscene")
					end
					
					if ImGui.Button("The Diamond Casino & Resort##Custscene##Unlocks") then -- https://www.unknowncheats.me/forum/3728178-post11.html
						if stats.get_bool_masked("MPX_CASINOPSTAT_BOOL4", 23) ~= true then -- Casino Cutscene // (0 / false = Re-watch) // index *(27089)*
							stats.set_bool_masked("MPX_CASINOPSTAT_BOOL4", true, 23)
						end
						if stats.get_bool_masked("MPX_CASINOPSTAT_BOOL4", 24) ~= true then -- Penthouse Cutscene // (0 / false = Re-watch) // index *(27090)*
							stats.set_bool_masked("MPX_CASINOPSTAT_BOOL4", true, 24)
						end
					end
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Skip first time casino & penthouse custscene")
					end
					ImGui.SameLine()
					if ImGui.Button("Arcade##Custscene##Unlocks") then -- https://www.unknowncheats.me/forum/3728178-post11.html
						if stats.get_bool_masked("MPX_CASINOHSTPSTAT_BOOL0", 57) ~= true then -- Arcade Cutscene 1 // (0 / false = Re-watch) // index *(28155)*
							stats.set_bool_masked("MPX_CASINOHSTPSTAT_BOOL0", true, 57)
						end
						if stats.get_bool_masked("MPX_CASINOHSTPSTAT_BOOL0", 58) ~= true then -- Arcade Cutscene 2 // (0 / false = Re-watch) // index *(28156)*
							stats.set_bool_masked("MPX_CASINOHSTPSTAT_BOOL0", true, 58)
						end
					end
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Skip first time arcade custscene")
					end
					
					if ImGui.Button("Kosatka##Custscene##Unlocks") then -- https://www.unknowncheats.me/forum/3759462-post94.html
						if stats.get_packed_stat_bool(30522) ~= true then -- First Kosatka Cutscene
							stats.set_packed_stat_bool(30522, true)
						end
					end
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Skip first time kosatka custscene")
					end
					
					if ImGui.Button("LS Car Meet##Custscene##Unlocks") then -- https://www.unknowncheats.me/forum/3744292-post39.html
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL0", 30) ~= true then -- LS Car Meet Cutscene // (0 / false = Re-watch)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL0", true, 30)
						end
					end
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Skip first time ls car meet custscene")
					end
					ImGui.SameLine()
					if ImGui.Button("Autoshop##Custscene##Unlocks") then -- https://www.unknowncheats.me/forum/3744292-post39.html
						if stats.get_bool_masked("MPX_BUSINESSBATPSTAT_BOOL1") ~= true then -- Autoshop Cutscene 1 // (0 / false = Re-watch)
							stats.set_bool_masked("MPX_BUSINESSBATPSTAT_BOOL1", true, 63)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL0") ~= true then -- Autoshop Cutscene 2 // (0 / false = Re-watch)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL0", true, 46)
						end
					end
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Skip first time autoshop custscene")
					end
					
					if ImGui.Button("Agency##Custscene##Unlocks") then -- https://www.unknowncheats.me/forum/3744292-post39.html
						if stats.get_bool_masked("MPX_CASINOHSTPSTAT_BOOL2") ~= true then -- Agency Cutscene 1 // (0 / false = Re-watch)
							stats.set_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", true, 30)
						end
						if stats.get_bool_masked("MPX_CASINOHSTPSTAT_BOOL2") ~= true then -- Agency Cutscene 2 // (0 / false = Re-watch)
							stats.set_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", true, 31)
						end
					end
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Skip first time agency custscene")
					end
					ImGui.EndTabItem()
				end
				
				if ImGui.BeginTabItem("Business") then
					if ImGui.Button("Nightclub Setups##Unlocks") then -- https://www.unknowncheats.me/forum/3737664-post27.html
						--if stats.get_packed_stat_bool(18161) ~= true then -- Set Up: Staff
						--	stats.set_packed_stat_bool(18161, true)
						--end
						--if stats.get_packed_stat_bool(22068) ~= true then -- Set Up: Equipment
						--	stats.set_packed_stat_bool(22068, true)
						--end
						--if stats.get_packed_stat_bool(22067) ~= true then -- Collect DJ
						--	stats.set_packed_stat_bool(22067, true)
						--end
						if stats.get_bool_masked("MPX_HAPP_SETUP_T", 6) ~= true then -- Set Up: Staff
							stats.set_bool_masked("MPX_HAPP_SETUP_T", true, 6)
						end
						if stats.get_bool_masked("MPX_HAPP_SETUP_1", 5) ~= true then -- Set Up: Equipment
							stats.set_bool_masked("MPX_HAPP_SETUP_1", true, 5)
						end
						if stats.get_bool_masked("MPX_HAPP_SETUP_2", 4) ~= true then -- Collect DJ
							stats.set_bool_masked("MPX_HAPP_SETUP_2", true, 4)
						end
					end
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Skip all of setups when you buy a nightclub first\ntime: Staff, Equipment, and Collect DJ")
					end
					--ImGui.SameLine()
					--if ImGui.Button("Nightclub Vehicle Trade in##Unlocks") then
					--	if stats.get_int("MPX_NIGHTCLUB_JOBS_DONE") < 700 then
					--		stats.set_int("MPX_NIGHTCLUB_JOBS_DONE", 700)
					--	end
					--	if stats.get_int("MPX_HUB_SALES_COMPLETED") < 1001 then
					--		stats.set_int("MPX_HUB_SALES_COMPLETED", 1001)
					--	end
					--end
					--if ImGui.IsItemHovered() then
					--	ImGui.SetTooltip("Unlocks trade in vehicles for blimp, mule, and pounder")
					--end
					ImGui.SameLine()
					if ImGui.Button("Awards##Nightclub##Unlocks") then
						if stats.get_int("MPX_AWD_DANCE_TO_SOLOMUN") ~= 120 then
							stats.set_int("MPX_AWD_DANCE_TO_SOLOMUN", 120)
						end
						if stats.get_int("MPX_AWD_DANCE_TO_TALEOFUS") ~= 120 then
							stats.set_int("MPX_AWD_DANCE_TO_TALEOFUS", 120)
						end
						if stats.get_int("MPX_AWD_DANCE_TO_DIXON") ~= 120 then
							stats.set_int("MPX_AWD_DANCE_TO_DIXON", 120)
						end
						if stats.get_int("MPX_AWD_DANCE_TO_BLKMAD") ~= 120 then
							stats.set_int("MPX_AWD_DANCE_TO_BLKMAD", 120)
						end
						if stats.get_int("MPX_AWD_CLUB_DRUNK") ~= 200 then
							stats.set_int("MPX_AWD_CLUB_DRUNK", 200)
						end
						if stats.get_int("MPX_NIGHTCLUB_VIP_APPEAR") ~= 700 then
							stats.set_int("MPX_NIGHTCLUB_VIP_APPEAR", 700)
						end
						if stats.get_int("MPX_NIGHTCLUB_EARNINGS") ~= 20721002 then
							stats.set_int("MPX_NIGHTCLUB_EARNINGS", 20721002)
						end
						if stats.get_int("MPX_HUB_EARNINGS") ~= 320721002 then
							stats.set_int("MPX_HUB_EARNINGS", 320721002)
						end
						if stats.get_int("MPX_DANCE_COMBO_DURATION_MINS") ~= 3600000 then
							stats.set_int("MPX_DANCE_COMBO_DURATION_MINS", 3600000)
						end
						if stats.get_int("MPX_NIGHTCLUB_PLAYER_APPEAR") ~= 9506 then
							stats.set_int("MPX_NIGHTCLUB_PLAYER_APPEAR", 9506)
						end
						if stats.get_int("MPX_LIFETIME_HUB_GOODS_SOLD") ~= 784672 then
							stats.set_int("MPX_LIFETIME_HUB_GOODS_SOLD", 784672)
						end
						if stats.get_int("MPX_LIFETIME_HUB_GOODS_MADE") ~= 507822 then
							stats.set_int("MPX_LIFETIME_HUB_GOODS_MADE", 507822)
						end
						if stats.get_int("MPX_DANCEPERFECTOWNCLUB") ~= 120 then
							stats.set_int("MPX_DANCEPERFECTOWNCLUB", 120)
						end
						if stats.get_int("MPX_NUMUNIQUEPLYSINCLUB") ~= 120 then
							stats.set_int("MPX_NUMUNIQUEPLYSINCLUB", 120)
						end
						if stats.get_int("MPX_DANCETODIFFDJS") ~= 4 then
							stats.set_int("MPX_DANCETODIFFDJS", 4)
						end
						if stats.get_int("MPX_NIGHTCLUB_HOTSPOT_TIME_MS") ~= 3600000 then
							stats.set_int("MPX_NIGHTCLUB_HOTSPOT_TIME_MS", 3600000)
						end
						if stats.get_int("MPX_NIGHTCLUB_CONT_TOTAL") ~= 20 then
							stats.set_int("MPX_NIGHTCLUB_CONT_TOTAL", 20)
						end
						if stats.get_int("MPX_NIGHTCLUB_CONT_MISSION") ~= -1 then
							stats.set_int("MPX_NIGHTCLUB_CONT_MISSION", -1)
						end
						if stats.get_int("MPX_CLUB_CONTRABAND_MISSION") ~= 1000 then
							stats.set_int("MPX_CLUB_CONTRABAND_MISSION", 1000)
						end
						if stats.get_int("MPX_HUB_CONTRABAND_MISSION") ~= 1000 then
							stats.set_int("MPX_HUB_CONTRABAND_MISSION", 1000)
						end
						if stats.get_bool("MPX_AWD_CLUB_HOTSPOT") ~= true then
							stats.set_bool("MPX_AWD_CLUB_HOTSPOT", true)
						end
						if stats.get_bool("MPX_AWD_CLUB_CLUBBER") ~= true then
							stats.set_bool("MPX_AWD_CLUB_CLUBBER", true)
						end
						if stats.get_bool("MPX_AWD_CLUB_COORD") ~= true then
							stats.set_bool("MPX_AWD_CLUB_COORD", true)
						end
					end
					if ImGui.Button("Acid Lab Equipment Upgrade##Unlocks") then
						if stats.get_int("MPX_AWD_CALLME") < 10 then -- Job Finished
							stats.set_int("MPX_AWD_CALLME", 10)
						end
					end
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Immediately complete 10 dax works to unlock acid\nlab brickade equipment upgrade")
					end
					ImGui.EndTabItem()
				end
			--	ImGui.EndTabBar()
			--end
			
			--if ImGui.BeginTabBar("Mission Tab") then
				if ImGui.BeginTabItem("Mission") then
					if ImGui.Button("Heist##Unlocks") then
						if stats.get_int("MPPLY_HEIST_ACH_TRACKER") ~= -1 then
							stats.set_int("MPPLY_HEIST_ACH_TRACKER", -1)
						end
						if stats.get_bool("MPX_HEIST_PLANNING_DONE_PRINT") ~= true then
							stats.set_bool("MPX_HEIST_PLANNING_DONE_PRINT", true)
						end
						if stats.get_bool("MPX_HEIST_PLANNING_DONE_HELP_0") ~= true then
							stats.set_bool("MPX_HEIST_PLANNING_DONE_HELP_0", true)
						end
						if stats.get_bool("MPX_HEIST_PLANNING_DONE_HELP_1") ~= true then
							stats.set_bool("MPX_HEIST_PLANNING_DONE_HELP_1", true)
						end
						if stats.get_bool("MPX_HEIST_PRE_PLAN_DONE_HELP_0") ~= true then
							stats.set_bool("MPX_HEIST_PRE_PLAN_DONE_HELP_0", true)
						end
						if stats.get_bool("MPX_HEIST_CUTS_DONE_FINALE") ~= true then
							stats.set_bool("MPX_HEIST_CUTS_DONE_FINALE", true)
						end
						if stats.get_bool("MPX_HEIST_IS_TUTORIAL") ~= false then
							stats.set_bool("MPX_HEIST_IS_TUTORIAL", false)
						end
						if stats.get_bool("MPX_HEIST_STRAND_INTRO_DONE") ~= true then
							stats.set_bool("MPX_HEIST_STRAND_INTRO_DONE", true)
						end
						if stats.get_bool("MPX_HEIST_CUTS_DONE_ORNATE") ~= true then
							stats.set_bool("MPX_HEIST_CUTS_DONE_ORNATE", true)
						end
						if stats.get_bool("MPX_HEIST_CUTS_DONE_PRISON") ~= true then
							stats.set_bool("MPX_HEIST_CUTS_DONE_PRISON", true)
						end
						if stats.get_bool("MPX_HEIST_CUTS_DONE_BIOLAB") ~= true then
							stats.set_bool("MPX_HEIST_CUTS_DONE_BIOLAB", true)
						end
						if stats.get_bool("MPX_HEIST_CUTS_DONE_NARCOTIC") ~= true then
							stats.set_bool("MPX_HEIST_CUTS_DONE_NARCOTIC", true)
						end
						if stats.get_bool("MPX_HEIST_CUTS_DONE_TUTORIAL") ~= true then
							stats.set_bool("MPX_HEIST_CUTS_DONE_TUTORIAL", true)
						end
					end
					ImGui.SameLine()
					if ImGui.Button("Awards##Heist##Unlocks") then
						if stats.get_int("MPX_AWD_FINISH_HEISTS") ~= 900 then
							stats.set_int("MPX_AWD_FINISH_HEISTS", 900)
						end
						if stats.get_int("MPPLY_WIN_GOLD_MEDAL_HEISTS") ~= 900 then
							stats.set_int("MPPLY_WIN_GOLD_MEDAL_HEISTS", 900)
						end
						if stats.get_int("MPX_AWD_DO_HEIST_AS_MEMBER") ~= 900 then
							stats.set_int("MPX_AWD_DO_HEIST_AS_MEMBER", 900)
						end
						if stats.get_int("MPX_AWD_DO_HEIST_AS_THE_LEADER") ~= 900 then
							stats.set_int("MPX_AWD_DO_HEIST_AS_THE_LEADER", 900)
						end
						if stats.get_int("MPX_AWD_FINISH_HEIST_SETUP_JOB") ~= 900 then
							stats.set_int("MPX_AWD_FINISH_HEIST_SETUP_JOB", 900)
						end
						if stats.get_int("MPX_AWD_FINISH_HEIST") ~= 900 then
							stats.set_int("MPX_AWD_FINISH_HEIST", 900)
						end
						if stats.get_int("MPX_HEIST_COMPLETION") ~= 900 then
							stats.set_int("MPX_HEIST_COMPLETION", 900)
						end
						if stats.get_int("MPX_HEISTS_ORGANISED") ~= 900 then
							stats.set_int("MPX_HEISTS_ORGANISED", 900)
						end
						if stats.get_int("MPX_AWD_CONTROL_CROWDS") ~= 900 then
							stats.set_int("MPX_AWD_CONTROL_CROWDS", 900)
						end
						if stats.get_int("MPX_AWD_WIN_GOLD_MEDAL_HEISTS") ~= 900 then
							stats.set_int("MPX_AWD_WIN_GOLD_MEDAL_HEISTS", 900)
						end
						if stats.get_int("MPX_AWD_COMPLETE_HEIST_NOT_DIE") ~= 900 then
							stats.set_int("MPX_AWD_COMPLETE_HEIST_NOT_DIE", 900)
						end
						if stats.get_int("MPX_HEIST_START") ~= 900 then
							stats.set_int("MPX_HEIST_START", 900)
						end
						if stats.get_int("MPX_HEIST_END") ~= 900 then
							stats.set_int("MPX_HEIST_END", 900)
						end
						if stats.get_int("MPX_CUTSCENE_MID_PRISON") ~= 900 then
							stats.set_int("MPX_CUTSCENE_MID_PRISON", 900)
						end
						if stats.get_int("MPX_CUTSCENE_MID_HUMANE") ~= 900 then
							stats.set_int("MPX_CUTSCENE_MID_HUMANE", 900)
						end
						if stats.get_int("MPX_CUTSCENE_MID_NARC") ~= 900 then
							stats.set_int("MPX_CUTSCENE_MID_NARC", 900)
						end
						if stats.get_int("MPX_CUTSCENE_MID_ORNATE") ~= 900 then
							stats.set_int("MPX_CUTSCENE_MID_ORNATE", 900)
						end
						if stats.get_int("MPX_CR_FLEECA_PREP_1") ~= 5000 then
							stats.set_int("MPX_CR_FLEECA_PREP_1", 5000)
						end
						if stats.get_int("MPX_CR_FLEECA_PREP_2") ~= 5000 then
							stats.set_int("MPX_CR_FLEECA_PREP_2", 5000)
						end
						if stats.get_int("MPX_CR_FLEECA_FINALE") ~= 5000 then
							stats.set_int("MPX_CR_FLEECA_FINALE", 5000)
						end
						if stats.get_int("MPX_CR_PRISON_PLANE") ~= 5000 then
							stats.set_int("MPX_CR_PRISON_PLANE", 5000)
						end
						if stats.get_int("MPX_CR_PRISON_BUS") ~= 5000 then
							stats.set_int("MPX_CR_PRISON_BUS", 5000)
						end
						if stats.get_int("MPX_CR_PRISON_STATION") ~= 5000 then
							stats.set_int("MPX_CR_PRISON_STATION", 5000)
						end
						if stats.get_int("MPX_CR_PRISON_UNFINISHED_BIZ") ~= 5000 then
							stats.set_int("MPX_CR_PRISON_UNFINISHED_BIZ", 5000)
						end
						if stats.get_int("MPX_CR_PRISON_FINALE") ~= 5000 then
							stats.set_int("MPX_CR_PRISON_FINALE", 5000)
						end
						if stats.get_int("MPX_CR_HUMANE_KEY_CODES") ~= 5000 then
							stats.set_int("MPX_CR_HUMANE_KEY_CODES", 5000)
						end
						if stats.get_int("MPX_CR_HUMANE_ARMORDILLOS") ~= 5000 then
							stats.set_int("MPX_CR_HUMANE_ARMORDILLOS", 5000)
						end
						if stats.get_int("MPX_CR_HUMANE_EMP") ~= 5000 then
							stats.set_int("MPX_CR_HUMANE_EMP", 5000)
						end
						if stats.get_int("MPX_CR_HUMANE_VALKYRIE") ~= 5000 then
							stats.set_int("MPX_CR_HUMANE_VALKYRIE", 5000)
						end
						if stats.get_int("MPX_CR_HUMANE_FINALE") ~= 5000 then
							stats.set_int("MPX_CR_HUMANE_FINALE", 5000)
						end
						if stats.get_int("MPX_CR_NARC_COKE") ~= 5000 then
							stats.set_int("MPX_CR_NARC_COKE", 5000)
						end
						if stats.get_int("MPX_CR_NARC_TRASH_TRUCK") ~= 5000 then
							stats.set_int("MPX_CR_NARC_TRASH_TRUCK", 5000)
						end
						if stats.get_int("MPX_CR_NARC_BIKERS") ~= 5000 then
							stats.set_int("MPX_CR_NARC_BIKERS", 5000)
						end
						if stats.get_int("MPX_CR_NARC_WEED") ~= 5000 then
							stats.set_int("MPX_CR_NARC_WEED", 5000)
						end
						if stats.get_int("MPX_CR_NARC_STEAL_METH") ~= 5000 then
							stats.set_int("MPX_CR_NARC_STEAL_METH", 5000)
						end
						if stats.get_int("MPX_CR_NARC_FINALE") ~= 5000 then
							stats.set_int("MPX_CR_NARC_FINALE", 5000)
						end
						if stats.get_int("MPX_CR_PACIFIC_TRUCKS") ~= 5000 then
							stats.set_int("MPX_CR_PACIFIC_TRUCKS", 5000)
						end
						if stats.get_int("MPX_CR_PACIFIC_WITSEC") ~= 5000 then
							stats.set_int("MPX_CR_PACIFIC_WITSEC", 5000)
						end
						if stats.get_int("MPX_CR_PACIFIC_HACK") ~= 5000 then
							stats.set_int("MPX_CR_PACIFIC_HACK", 5000)
						end
						if stats.get_int("MPX_CR_PACIFIC_BIKES") ~= 5000 then
							stats.set_int("MPX_CR_PACIFIC_BIKES", 5000)
						end
						if stats.get_int("MPX_CR_PACIFIC_CONVOY") ~= 5000 then
							stats.set_int("MPX_CR_PACIFIC_CONVOY", 5000)
						end
						if stats.get_int("MPX_CR_PACIFIC_FINALE") ~= 5000 then
							stats.set_int("MPX_CR_PACIFIC_FINALE", 5000)
						end
						if stats.get_bool("MPPLY_AWD_COMPLET_HEIST_MEM") ~= true then
							stats.set_bool("MPPLY_AWD_COMPLET_HEIST_MEM", true)
						end
						if stats.get_bool("MPPLY_AWD_COMPLET_HEIST_1STPER") ~= true then
							stats.set_bool("MPPLY_AWD_COMPLET_HEIST_1STPER", true)
						end
						if stats.get_bool("MPPLY_AWD_FLEECA_FIN") ~= true then
							stats.set_bool("MPPLY_AWD_FLEECA_FIN", true)
						end
						if stats.get_bool("MPPLY_AWD_HST_ORDER") ~= true then
							stats.set_bool("MPPLY_AWD_HST_ORDER", true)
						end
						if stats.get_bool("MPPLY_AWD_HST_SAME_TEAM") ~= true then
							stats.set_bool("MPPLY_AWD_HST_SAME_TEAM", true)
						end
						if stats.get_bool("MPPLY_AWD_HST_ULT_CHAL") ~= true then
							stats.set_bool("MPPLY_AWD_HST_ULT_CHAL", true)
						end
						if stats.get_bool("MPPLY_AWD_HUMANE_FIN") ~= true then
							stats.set_bool("MPPLY_AWD_HUMANE_FIN", true)
						end
						if stats.get_bool("MPPLY_AWD_PACIFIC_FIN") ~= true then
							stats.set_bool("MPPLY_AWD_PACIFIC_FIN", true)
						end
						if stats.get_bool("MPPLY_AWD_PRISON_FIN") ~= true then
							stats.set_bool("MPPLY_AWD_PRISON_FIN", true)
						end
						if stats.get_bool("MPPLY_AWD_SERIESA_FIN") ~= true then
							stats.set_bool("MPPLY_AWD_SERIESA_FIN", true)
						end
						if stats.get_bool("MPX_AWD_FINISH_HEIST_NO_DAMAGE") ~= true then
							stats.set_bool("MPX_AWD_FINISH_HEIST_NO_DAMAGE", true)
						end
						if stats.get_bool("MPX_AWD_SPLIT_HEIST_TAKE_EVENLY") ~= true then
							stats.set_bool("MPX_AWD_SPLIT_HEIST_TAKE_EVENLY", true)
						end
						if stats.get_bool("MPX_AWD_ALL_ROLES_HEIST") ~= true then
							stats.set_bool("MPX_AWD_ALL_ROLES_HEIST", true)
						end
						if stats.get_bool("MPX_AWD_MATCHING_OUTFIT_HEIST") ~= true then
							stats.set_bool("MPX_AWD_MATCHING_OUTFIT_HEIST", true)
						end
						if stats.get_bool("MPX_HEIST_AWARD_DONE_PREP") ~= true then
							stats.set_bool("MPX_HEIST_AWARD_DONE_PREP", true)
						end
						if stats.get_bool("MPX_HEIST_AWARD_BOUGHT_IN") ~= true then
							stats.set_bool("MPX_HEIST_AWARD_BOUGHT_IN", true)
						end
					end
					
					if ImGui.Button("The Doomsday Heist##Unlocks") then
						if stats.get_int("MPX_GANGOPS_FM_MISSION_PROG") ~= -1 then
							stats.set_int("MPX_GANGOPS_FM_MISSION_PROG", -1)
						end
						if stats.get_int("MPX_GANGOPS_FLOW_MISSION_PROG") ~= -1 then
							stats.set_int("MPX_GANGOPS_FLOW_MISSION_PROG", -1)
						end
					end
					ImGui.SameLine()
					if ImGui.Button("Awards##TheDoomsdayHeist##Unlocks") then
						if stats.get_int("MPPLY_GANGOPS_ALLINORDER") ~= 100 then
							stats.set_int("MPPLY_GANGOPS_ALLINORDER", 100)
						end
						if stats.get_int("MPPLY_GANGOPS_LOYALTY") ~= 100 then
							stats.set_int("MPPLY_GANGOPS_LOYALTY", 100)
						end
						if stats.get_int("MPPLY_GANGOPS_CRIMMASMD") ~= 100 then
							stats.set_int("MPPLY_GANGOPS_CRIMMASMD", 100)
						end
						if stats.get_int("MPPLY_GANGOPS_LOYALTY2") ~= 100 then
							stats.set_int("MPPLY_GANGOPS_LOYALTY2", 100)
						end
						if stats.get_int("MPPLY_GANGOPS_LOYALTY3") ~= 100 then
							stats.set_int("MPPLY_GANGOPS_LOYALTY3", 100)
						end
						if stats.get_int("MPPLY_GANGOPS_CRIMMASMD2") ~= 100 then
							stats.set_int("MPPLY_GANGOPS_CRIMMASMD2", 100)
						end
						if stats.get_int("MPPLY_GANGOPS_CRIMMASMD3") ~= 100 then
							stats.set_int("MPPLY_GANGOPS_CRIMMASMD3", 100)
						end
						if stats.get_int("MPPLY_GANGOPS_SUPPORT") ~= 100 then
							stats.set_int("MPPLY_GANGOPS_SUPPORT", 100)
						end
						if stats.get_int("MPX_CR_GANGOP_MORGUE") ~= 10 then
							stats.set_int("MPX_CR_GANGOP_MORGUE", 10)
						end
						if stats.get_int("MPX_CR_GANGOP_DELUXO") ~= 10 then
							stats.set_int("MPX_CR_GANGOP_DELUXO", 10)
						end
						if stats.get_int("MPX_CR_GANGOP_SERVERFARM") ~= 10 then
							stats.set_int("MPX_CR_GANGOP_SERVERFARM", 10)
						end
						if stats.get_int("MPX_CR_GANGOP_IAABASE_FIN") ~= 10 then
							stats.set_int("MPX_CR_GANGOP_IAABASE_FIN", 10)
						end
						if stats.get_int("MPX_CR_GANGOP_STEALOSPREY") ~= 10 then
							stats.set_int("MPX_CR_GANGOP_STEALOSPREY", 10)
						end
						if stats.get_int("MPX_CR_GANGOP_FOUNDRY") ~= 10 then
							stats.set_int("MPX_CR_GANGOP_FOUNDRY", 10)
						end
						if stats.get_int("MPX_CR_GANGOP_RIOTVAN") ~= 10 then
							stats.set_int("MPX_CR_GANGOP_RIOTVAN", 10)
						end
						if stats.get_int("MPX_CR_GANGOP_SUBMARINECAR") ~= 10 then
							stats.set_int("MPX_CR_GANGOP_SUBMARINECAR", 10)
						end
						if stats.get_int("MPX_CR_GANGOP_SUBMARINE_FIN") ~= 10 then
							stats.set_int("MPX_CR_GANGOP_SUBMARINE_FIN", 10)
						end
						if stats.get_int("MPX_CR_GANGOP_PREDATOR") ~= 10 then
							stats.set_int("MPX_CR_GANGOP_PREDATOR", 10)
						end
						if stats.get_int("MPX_CR_GANGOP_BMLAUNCHER") ~= 10 then
							stats.set_int("MPX_CR_GANGOP_BMLAUNCHER", 10)
						end
						if stats.get_int("MPX_CR_GANGOP_BCCUSTOM") ~= 10 then
							stats.set_int("MPX_CR_GANGOP_BCCUSTOM", 10)
						end
						if stats.get_int("MPX_CR_GANGOP_STEALTHTANKS") ~= 10 then
							stats.set_int("MPX_CR_GANGOP_STEALTHTANKS", 10)
						end
						if stats.get_int("MPX_CR_GANGOP_SPYPLANE") ~= 10 then
							stats.set_int("MPX_CR_GANGOP_SPYPLANE", 10)
						end
						if stats.get_int("MPX_CR_GANGOP_FINALE") ~= 10 then
							stats.set_int("MPX_CR_GANGOP_FINALE", 10)
						end
						if stats.get_int("MPX_CR_GANGOP_FINALE_P2") ~= 10 then
							stats.set_int("MPX_CR_GANGOP_FINALE_P2", 10)
						end
						if stats.get_int("MPX_CR_GANGOP_FINALE_P3") ~= 10 then
							stats.set_int("MPX_CR_GANGOP_FINALE_P3", 10)
						end
						if stats.get_bool("MPPLY_AWD_GANGOPS_IAA") ~= true then
							stats.set_bool("MPPLY_AWD_GANGOPS_IAA", true)
						end
						if stats.get_bool("MPPLY_AWD_GANGOPS_SUBMARINE") ~= true then
							stats.set_bool("MPPLY_AWD_GANGOPS_SUBMARINE", true)
						end
						if stats.get_bool("MPPLY_AWD_GANGOPS_MISSILE") ~= true then
							stats.set_bool("MPPLY_AWD_GANGOPS_MISSILE", true)
						end
						if stats.get_bool("MPPLY_AWD_GANGOPS_ALLINORDER") ~= true then
							stats.set_bool("MPPLY_AWD_GANGOPS_ALLINORDER", true)
						end
						if stats.get_bool("MPPLY_AWD_GANGOPS_LOYALTY") ~= true then
							stats.set_bool("MPPLY_AWD_GANGOPS_LOYALTY", true)
						end
						if stats.get_bool("MPPLY_AWD_GANGOPS_LOYALTY2") ~= true then
							stats.set_bool("MPPLY_AWD_GANGOPS_LOYALTY2", true)
						end
						if stats.get_bool("MPPLY_AWD_GANGOPS_LOYALTY3") ~= true then
							stats.set_bool("MPPLY_AWD_GANGOPS_LOYALTY3", true)
						end
						if stats.get_bool("MPPLY_AWD_GANGOPS_CRIMMASMD") ~= true then
							stats.set_bool("MPPLY_AWD_GANGOPS_CRIMMASMD", true)
						end
						if stats.get_bool("MPPLY_AWD_GANGOPS_CRIMMASMD2") ~= true then
							stats.set_bool("MPPLY_AWD_GANGOPS_CRIMMASMD2", true)
						end
						if stats.get_bool("MPPLY_AWD_GANGOPS_CRIMMASMD3") ~= true then
							stats.set_bool("MPPLY_AWD_GANGOPS_CRIMMASMD3", true)
						end
					end
					
					if ImGui.Button("Arena War Reputation##Unlocks") then -- https://www.unknowncheats.me/forum/3735168-post23.html
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 1) ~= true then -- Apocalypse Cerberus
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 1)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 2) ~= true then -- Future Shock Cerberus
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 2)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 3) ~= true then -- Apocalypse Brutus
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 3)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 4) ~= true then -- Nightmare Cerberus
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 4)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 5) ~= true then -- Apocalypse ZR380
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 5)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 6) ~= true then -- Future Shock Brutus
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 6)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 7) ~= true then -- Impaler
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 7)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 10) ~= true then -- Rat-Truck
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 10)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 11) ~= true then -- Glendale
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 11)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 12) ~= true then -- Slamvan
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 12)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 13) ~= true then -- Dominator
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 13)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 14) ~= true then -- Issi Classic
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 14)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 16) ~= true then -- Gargoyle
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 16)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 11) ~= true then -- Nightmare Brutus
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 11)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 12) ~= true then -- Apocalypse Scarab
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 12)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 13) ~= true then -- Future Shock Scarab
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 13)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 14) ~= true then -- Nightmare Scarab
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 14)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 15) ~= true then -- Future Shock ZR380
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 15)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 16) ~= true then -- Nightmare ZR380
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 16)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 17) ~= true then -- Apocalypse Imperator
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 17)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 18) ~= true then -- Future Shock Imperator
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 18)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 19) ~= true then -- Nightmare Imperator
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 19)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 30) ~= true then -- Taxi Custom
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 30)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 31) ~= true then -- Dozer
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 31)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 32) ~= true then -- Clown Van
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 32)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 33) ~= true then -- Trashmaster
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 33)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 34) ~= true then -- Barracks Semi
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 34)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 35) ~= true then -- Mixer
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 35)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 36) ~= true then -- Space Docker
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 36)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 37) ~= true then -- Tractor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 37)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 18) ~= true then -- Blue Lights
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 18)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 19) ~= true then -- Electric Blue Lights
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 19)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 20) ~= true then -- Mint Green Lights
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 20)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 21) ~= true then -- Lime Green Lights
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 21)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 22) ~= true then -- Yellow Lights
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 22)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 23) ~= true then -- Golden Shower Lights
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 23)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 24) ~= true then -- Orange Lights
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 24)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 25) ~= true then -- Red Lights
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 25)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 26) ~= true then -- Pony Pink Lights
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 26)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 27) ~= true then -- Hot Pink Lights
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 27)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 28) ~= true then -- Purple Lights
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 28)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 29) ~= true then -- Blacklight Lights
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 29)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 13) ~= true then -- Kinetic Mines
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 13)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 15) ~= true then -- Spike Mines
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 15)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 16) ~= true then -- Slick Mines
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 16)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 17) ~= true then -- Sticky Mines
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 17)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 18) ~= true then -- EMP Mines
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 18)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 48) ~= true then -- Shunt Boost
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 48)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 49) ~= true then -- Boost Upgrade 20%
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 49)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 50) ~= true then -- Boost Upgrade 60%
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 50)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 51) ~= true then -- Boost Upgrade 100%
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 51)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 52) ~= true then -- Jump Upgrade 20%
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 52)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 53) ~= true then -- Jump Upgrade 60%
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 53)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 54) ~= true then -- Jump Upgrade 100%
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 54)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 9) ~= true then -- Apocalypse Sasquatch - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 9)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 23) ~= true then -- Future Shock Sasquatch - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 23)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 24) ~= true then -- Nightmare Sasquatch - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 24)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 27) ~= true then -- All variants of Sasquatch - Light Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 27)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 28) ~= true then -- All variants of Sasquatch - Reinforced Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 28)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 29) ~= true then -- All variants of Sasquatch - Heavy Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 29)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 13) ~= true then -- All variants of Sasquatch - Heavy Armored Front
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 13)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 17) ~= true then -- All variants of Sasquatch - Heavy Armored Hood
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 17)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 18) ~= true then -- All variants of Sasquatch - Mohawk Exhausts
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 18)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 22) ~= true then -- All variants of Sasquatch - Dual Mohawk Exhausts
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 22)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 23) ~= true then -- Apocalypse & Nightmare Sasquatch - Rear Spears Left
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 23)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 27) ~= true then -- Apocalypse & Nightmare Sasquatch - Rear Spears Right
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 27)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 28) ~= true then -- Apocalypse & Nightmare Sasquatch - Skull Cross
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 28)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 32) ~= true then -- Apocalypse & Nightmare Sasquatch - Ram Skull Cross
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 32)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 33) ~= true then -- Apocalypse & Nightmare Sasquatch - Blonde Doll Cross
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 33)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 35) ~= true then -- Apocalypse & Nightmare Sasquatch - Brunette Doll Cross
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 35)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 31) ~= true then -- Apocalypse Bruiser - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 31)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 32) ~= true then -- Future Shock Bruiser - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 32)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 33) ~= true then -- Nightmare Bruiser - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 33)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 46) ~= true then -- All variants of Bruiser - Body Spikes
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 46)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 49) ~= true then -- All variants of Bruiser - Light Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 49)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 50) ~= true then -- All variants of Bruiser - Reinforced Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 50)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 51) ~= true then -- All variants of Bruiser - Heavy Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 51)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 2) ~= true then -- Future Shock Bruiser - Heavy Plated Armored Grille / Apocalypse & Nightmare Bruiser - Diamond Heavy Armor Grille
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 2)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 6) ~= true then -- All variants of Bruiser - Twin Oval Exhaust
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 6)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 8) ~= true then -- All variants of Bruiser - Long Triple Rear Exhausts
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 8)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 9) ~= true then -- All variants of Bruiser - Front & Rear Triple Exhausts
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 9)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 14) ~= true then -- Apocalypse Bruiser - Skull & Cross / Nightmare Bruiser - Painted Skull & Cross
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 14)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 26) ~= true then -- Apocalypse Bruiser - Double Cross Ram Skull / Nightmare Bruiser - Painted Ram Skull & Cross
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 26)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 30) ~= true then -- Apocalypse Bruiser - Cross & Skull Large Blade Kit / Nightmare Bruiser - Painted Skull Large Blade Kit
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 30)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 34) ~= true then -- Apocalypse Bruiser - Ram Skull Nade Kit / Nightmare Bruiser - Painted Ram Skull Nade Kit
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 34)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 35) ~= true then -- Apocalypse Bruiser - Ram Skull Medieval Kit / Nightmare Bruiser - Painted Skull Medieval Kit
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 35)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 38) ~= true then -- Apocalypse Bruiser - Ram Skull Medieval Madness / Nightmare Bruiser - Painted Skull Medieval Madness
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 38)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 39) ~= true then -- Apocalypse Bruiser - Barrels & Junk
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 39)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 41) ~= true then -- Apocalypse Bruiser - Skeleton Cage
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 41)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 42) ~= true then -- Future Shock Bruiser - Light Cover
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 42)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 43) ~= true then -- Future Shock Bruiser - Spare Tire
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 43)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 61) ~= true then -- Future Shock Bruiser - Crates
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 61)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 62) ~= true then -- Nightmare Bruiser - Large Burger
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 62)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 63) ~= true then -- Nightmare Bruiser - Large Doughnuts
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 63)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 0) ~= true then -- Nightmare Bruiser - Large eCola Cans
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 0)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 34) ~= true then -- Apocalypse Slamvan - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 34)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 36) ~= true then -- Future Shock Slamvan - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 36)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 40) ~= true then -- Nightmare Slamvan - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 40)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 58) ~= true then -- All variants of Slamvan - Body Spikes
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 58)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 61) ~= true then -- All variants of Slamvan - Light Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 61)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 62) ~= true then -- All variants of Slamvan - Reinforced Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 62)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 63) ~= true then -- All variants of Slamvan - Heavy Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 63)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 1) ~= true then -- All variants of Slamvan - Rear Bumper Reinforced Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 1)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 2) ~= true then -- All variants of Slamvan - Rear Bumper Heavy Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 2)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 3) ~= true then -- Apocalypse Slamvan - Basic Spears
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 3)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 4) ~= true then -- Apocalypse Slamvan - Battle Cross
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 4)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 5) ~= true then -- Apocalypse Slamvan - War Cross
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 5)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 6) ~= true then -- Apocalypse Slamvan - Battle Spears
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 6)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 7) ~= true then -- Apocalypse Slamvan - War Spears
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 7)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 8) ~= true then -- Nightmare Slamvan - Knife Spears
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 8)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 9) ~= true then -- Nightmare Slamvan - Fork & Knife
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 9)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 52) ~= true then -- Apocalypse Dominator - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 52)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 53) ~= true then -- Future Shock Dominator - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 53)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 54) ~= true then -- Nightmare Dominator - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 54)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 25) ~= true then -- All variants of Dominator - Body Spikes
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 25)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 29) ~= true then -- All variants of Dominator - Light Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 29)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 30) ~= true then -- All variants of Dominator - Reinforced Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 30)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 31) ~= true then -- All variants of Dominator - Heavy Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 31)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 44) ~= true then -- All variants of Dominator - Triple Front Exhausts
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 44)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 45) ~= true then -- All variants of Dominator - Horn Exhausts
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 45)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 46) ~= true then -- All variants of Dominator - Triple Rear Exhausts
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 46)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 47) ~= true then -- Apocalypse & Nightmare Dominator - Rear Pointing War Poles
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 47)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 48) ~= true then -- Apocalypse & Nightmare Dominator - Front Facing Axes
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 48)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 49) ~= true then -- Apocalypse & Nightmare Dominator - Front Facing Spears
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 49)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 50) ~= true then -- Apocalypse & Nightmare Dominator - Unholy Cross
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 50)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 51) ~= true then -- Apocalypse & Nightmare Dominator - Brutal Unholy Cross
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 51)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 52) ~= true then -- Apocalypse & Nightmare Dominator - Bunch of War Poles
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 52)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 53) ~= true then -- Apocalypse & Nightmare Dominator - Front Pointing War Poles
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 53)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 54) ~= true then -- Apocalypse & Nightmare Dominator - Skull Hood
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 54)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 55) ~= true then -- Apocalypse Impaler - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 55)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 56) ~= true then -- Future Shock Impaler - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 56)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 57) ~= true then -- Nightmare Impaler - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 57)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 34) ~= true then -- All variants of Impaler - Body Spikes
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 34)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 37) ~= true then -- All variants of Impaler - Light Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 37)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 38) ~= true then -- All variants of Impaler - Reinforced Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 38)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 39) ~= true then -- All variants of Impaler - Heavy Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 39)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 55) ~= true then -- Apocalypse & Nightmare Impaler - Got Pole?
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 55)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 56) ~= true then -- Apocalypse & Nightmare Impaler - Getting Medieval
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 56)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 57) ~= true then -- Apocalypse & Nightmare Impaler - Wasteland Peacock
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 57)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 58) ~= true then -- Apocalypse & Nightmare Impaler - Shish-Kebbabed
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 58)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 59) ~= true then -- Apocalypse & Nightmare Impaler - It's A Stick Up
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 59)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 60) ~= true then -- Apocalypse & Nightmare Impaler - The Dark Ages
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 60)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 61) ~= true then -- Apocalypse & Nightmare Impaler - Dolly Spearton
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 61)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 62) ~= true then -- Apocalypse & Nightmare Impaler - War Poles
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 62)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 4) ~= true then -- Apocalypse Issi - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 4)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 5) ~= true then -- Future Shock Issi - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 5)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 9) ~= true then -- Nightmare Issi - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 9)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 63) ~= true then -- All variants of Issi - Body Spikes
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 63)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 3) ~= true then -- All variants of Issi - Light Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 3)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 4) ~= true then -- All variants of Issi - Reinforced Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 4)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 5) ~= true then -- All variants of Issi - Heavy Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 5)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 18) ~= true then -- All variants of Issi - Heavy Duty Ram Bar
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 18)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 19) ~= true then -- Apocalypse & Nightmare Issi - Spear
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 19)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 20) ~= true then -- Apocalypse & Nightmare Issi - Left War Poles
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 20)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 21) ~= true then -- Apocalypse & Nightmare Issi - Dolly Spearton
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 21)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 22) ~= true then -- Apocalypse & Nightmare Issi - Right War Poles
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 22)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 23) ~= true then -- Apocalypse & Nightmare Issi - Skull Cross
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 23)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 24) ~= true then -- Apocalypse & Nightmare Issi - Dolly Spearton Set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 24)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 25) ~= true then -- Apocalypse & Nightmare Issi - Dual War Poles
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 25)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 26) ~= true then -- Apocalypse & Nightmare Issi - Dolly Spearton W/ War Pole
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 26)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 27) ~= true then -- Apocalypse & Nightmare Issi - Skull Cross W/ Spear
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 27)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 28) ~= true then -- Apocalypse & Nightmare Issi - Skull Cross W/ War Pole
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 28)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 29) ~= true then -- Apocalypse & Nightmare Issi - Skull Cross W/ Dolly
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 29)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 30) ~= true then -- Apocalypse & Nightmare Issi - Left Spear
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 30)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 31) ~= true then -- Apocalypse & Nightmare Issi - Right Spear
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 31)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 32) ~= true then -- Apocalypse & Nightmare Issi - Left Skull Axe
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 32)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 33) ~= true then -- Apocalypse & Nightmare Issi - Right Axe
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 33)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 34) ~= true then -- Apocalypse & Nightmare Issi - Dual Spears
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 34)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 35) ~= true then -- Apocalypse & Nightmare Issi - Spear & Axe
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 35)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 36) ~= true then -- Apocalypse & Nightmare Issi - Axe & Spear
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 36)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 37) ~= true then -- Apocalypse & Nightmare Issi - Dual Axes
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 37)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 17) ~= true then -- Future Shock Deathbike - Light Armor w/ Shield
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 17)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 21) ~= true then -- Future Shock Deathbike - Reinforced Armor w/ Shield
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 21)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 22) ~= true then -- Future Shock Deathbike - Heavy Armor w/ Shield
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 22)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 10) ~= true then -- Apocalypse Deathbike - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 10)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 11) ~= true then -- Future Shock Deathbike - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 11)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 12) ~= true then -- Nightmare Deathbike - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 12)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 10) ~= true then -- All variants of Deathbike - Light Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 10)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 11) ~= true then -- All variants of Deathbike - Reinforced Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 11)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 12) ~= true then -- All variants of Deathbike - Heavy Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 12)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 25) ~= true then -- Apocalypse Cerberus - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 25)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 26) ~= true then -- Future Shock Cerberus - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 26)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 30) ~= true then -- Nightmare Cerberus - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 30)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 35) ~= true then -- All variants of Cerberus - Body Spikes
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 35)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 37) ~= true then -- All variants of Cerberus - Light Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 37)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 38) ~= true then -- All variants of Cerberus - Reinforced Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 38)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 39) ~= true then -- All variants of Cerberus - Heavy Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 39)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 36) ~= true then -- Apocalypse & Nightmare Cerberus - Bastioned Ram-bars
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 36)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 40) ~= true then -- All variants of Cerberus - Bolstered Hood Cage
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 40)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 41) ~= true then -- All variants of Cerberus - Reinforced Riot Hood
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 41)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 42) ~= true then -- All variants of Cerberus - Juggernaut Hood
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 42)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 43) ~= true then -- Apocalypse & Nightmare Cerberus - War Spearheads
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 43)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 45) ~= true then -- Apocalypse & Nightmare Cerberus - War Spear Kit
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 45)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 46) ~= true then -- Apocalypse & Nightmare Cerberus - Nade Spearheads
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 46)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 47) ~= true then -- Apocalypse & Nightmare Cerberus - Nade Spear Kit
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 47)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 51) ~= true then -- Apocalypse & Nightmare Cerberus - Skull Spearheads
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 51)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 52) ~= true then -- Apocalypse & Nightmare Cerberus - Skull Spear Kit
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 52)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 53) ~= true then -- Apocalypse & Nightmare Cerberus - Arrow Spearheads
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 53)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 54) ~= true then -- Apocalypse & Nightmare Cerberus - Arrow Spear Kit
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 54)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 56) ~= true then -- Apocalypse & Nightmare Cerberus - Tridents
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 56)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 57) ~= true then -- Apocalypse & Nightmare Cerberus - Wasteland Ritual
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 57)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 61) ~= true then -- Future Shock Cerberus - Panel Detail
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 61)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 62) ~= true then -- Future Shock Cerberus - Crane Pipes
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 62)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 0) ~= true then -- Future Shock Cerberus - Hedgehog
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 0)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 1) ~= true then -- Future Shock Cerberus - Hedgehog MK2
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 1)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 41) ~= true then -- Apocalypse Brutus - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 41)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 42) ~= true then -- Future Shock Brutus - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 42)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 43) ~= true then -- Nightmare Brutus - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 43)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 6) ~= true then -- All variants of Brutus - Light Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 6)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 7) ~= true then -- All variants of Brutus - Reinforced Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 7)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 8) ~= true then -- All variants of Brutus - Heavy Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 8)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 10) ~= true then -- Apocalypse & Nightmare Brutus - Gassed Up Bar
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 10)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 11) ~= true then -- Apocalypse & Nightmare Brutus - Roadblock
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 11)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 12) ~= true then -- Apocalypse & Nightmare Brutus - Junk Trunk
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 12)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 13) ~= true then -- Apocalypse & Nightmare Brutus - Fire Spitters
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 13)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 14) ~= true then -- Apocalypse & Nightmare Brutus - Hell Chambers
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 14)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 15) ~= true then -- Apocalypse & Nightmare Brutus - Heavy Armored Arches
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 15)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 16) ~= true then -- Apocalypse & Nightmare Brutus - Toothy
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 16)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 17) ~= true then -- Apocalypse & Nightmare Brutus - Armored Spares
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 17)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 18) ~= true then -- Apocalypse & Nightmare Brutus - Armored Supplies
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 18)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 19) ~= true then -- Apocalypse & Nightmare Brutus - Eternally Chained
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 19)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 20) ~= true then -- Apocalypse & Nightmare Brutus - Speared
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 20)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 44) ~= true then -- Apocalypse Scarab - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 44)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 47) ~= true then -- Future Shock Scarab - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 47)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 48) ~= true then -- Nightmare Scarab - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 48)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 14) ~= true then -- Apocalypse Scarab - Body Spikes set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 14)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 15) ~= true then -- Future Shock Scarab - Body Spikes set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 15)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 16) ~= true then -- Nightmare Scarab - Body Spikes set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 16)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 19) ~= true then -- All variants of Scarab - Light Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 19)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 20) ~= true then -- All variants of Scarab - Reinforced Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 20)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 21) ~= true then -- All variants of Scarab - Heavy Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 21)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 21) ~= true then -- Future Shock Scarab - Primary Full Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 21)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 22) ~= true then -- All variants of Scarab - Secondary Full Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 22)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 23) ~= true then -- All variants of Scarab - Carbon Full Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 23)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 24) ~= true then -- Future Shock Scarab - Heavy Duty Cooling / Apocalypse & Nightmare Scarab - Air Filtration Vents & Long Range Equipment
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 24)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 25) ~= true then -- Apocalypse & Nightmare Scarab - Rusty Full Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 25)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 26) ~= true then -- Apocalypse & Nightmare Scarab - Rear War Poles
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 26)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 27) ~= true then -- Apocalypse & Nightmare Scarab - Rear Spears
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 27)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 28) ~= true then -- Apocalypse & Nightmare Scarab - Skull Cross
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 28)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 29) ~= true then -- Apocalypse & Nightmare Scarab - Skull Cross w/ War Poles
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 29)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 30) ~= true then -- Apocalypse & Nightmare Scarab - Skull Cross w/ Spears
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 30)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 31) ~= true then -- Apocalypse & Nightmare Scarab - Load'a War Poles
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 31)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 32) ~= true then -- Apocalypse & Nightmare Scarab - Load'a Spears
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 32)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 33) ~= true then -- Apocalypse & Nightmare Scarab - Scarab Mega Cover set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 33)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 34) ~= true then -- Apocalypse & Nightmare Scarab - Armored Mega Cover set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 34)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 35) ~= true then -- Apocalypse & Nightmare Scarab - Cage
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 35)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 36) ~= true then -- Apocalypse & Nightmare Scarab - Plated Cage
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 36)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 37) ~= true then -- Future Shock Scarab - Livery Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 37)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 38) ~= true then -- Future Shock Scarab - Primary Full Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 38)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 39) ~= true then -- Future Shock Scarab - Livery Full Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 39)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 40) ~= true then -- Future Shock Scarab - Carbon Full Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 40)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 41) ~= true then -- Future Shock Scarab - Matte Full Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 41)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 42) ~= true then -- Future Shock Scarab - Futuristic Panel Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 42)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 43) ~= true then -- Future Shock Scarab - Plated Livery Full Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 43)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 59) ~= true then -- Apocalypse Imperator - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 59)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", 60) ~= true then -- Future Shock Imperator - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL2", true, 60)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 0) ~= true then -- Nightmare Imperator - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 0)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 44) ~= true then -- All variants of Imperator - Body Spikes
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 44)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 48) ~= true then -- All variants of Imperator - Light Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 48)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 49) ~= true then -- All variants of Imperator - Reinforced Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 49)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 50) ~= true then -- All variants of Imperator - Heavy Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 50)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", 63) ~= true then -- All variants of Imperator - Shakotan Exhaust
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL7", true, 63)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 0) ~= true then -- Apocalypse & Nightmare Imperator - Whole Lotta Pole
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 0)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 1) ~= true then -- Apocalypse & Nightmare Imperator - Getting Medieval
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 1)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 2) ~= true then -- Apocalypse & Nightmare Imperator - It's A Stick Up
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 2)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 3) ~= true then -- Apocalypse & Nightmare Imperator - Boom On A Spear
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 3)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 4) ~= true then -- Apocalypse & Nightmare Imperator - Village Justice
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 4)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 5) ~= true then -- Apocalypse & Nightmare Imperator - Wasteland Peacock
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 5)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 6) ~= true then -- Apocalypse & Nightmare Imperator - Shish-Kebbabed
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 6)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 7) ~= true then -- Apocalypse & Nightmare Imperator - Junk Pipes
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 7)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 8) ~= true then -- Apocalypse & Nightmare Imperator - Mega Zorst
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 8)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 9) ~= true then -- Apocalypse & Nightmare Imperator - Ride 'Em Cowboy
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 9)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 10) ~= true then -- Apocalypse & Nightmare Imperator - Cannibal Totem
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 10)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 1) ~= true then -- Apocalypse ZR380 - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 1)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 2) ~= true then -- Future Shock ZR380 - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 2)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 3) ~= true then -- Nightmare ZR380 - Livery set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 3)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 55) ~= true then -- All variants of ZR380 - Body Spikes
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 55)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 58) ~= true then -- All variants of ZR380 - Light Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 58)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 59) ~= true then -- All variants of ZR380 - Reinforced Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 59)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 60) ~= true then -- All variants of ZR380 - Heavy Armor
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 60)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 11) ~= true then -- All variants of ZR380 - Side Exhausts
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 11)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 12) ~= true then -- All variants of ZR380 - Spike Exhausts
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 12)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 13) ~= true then -- Apocalypse & Nightmare ZR380 - Mismatch
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 13)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 14) ~= true then -- Future Shock ZR380 - Ray Gun Exhausts
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 14)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 15) ~= true then -- Future Shock ZR380 - Sprint Car Wing
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 15)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 16) ~= true then -- Future Shock ZR380 - Armor Plating Mk. 3
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 16)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", 17) ~= true then -- Future Shock ZR380 - Rear Phantom Covers
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL8", true, 17)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 38) ~= true then -- Nebula Bodysuit set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 38)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 26) ~= true then -- Robot Bodysuit set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 26)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 27) ~= true then -- Hero Bodysuit set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 27)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 28) ~= true then -- Shapes Bodysuit set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 28)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 29) ~= true then -- Contours Bodysuit set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 29)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 30) ~= true then -- Martian Bodysuit set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 30)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 31) ~= true then -- Reptile Bodysuit set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 31)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 32) ~= true then -- Galaxy Bodysuit set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 32)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 33) ~= true then -- Space Creature Suits
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 33)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 34) ~= true then -- Space Cyclops Suits
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 34)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 35) ~= true then -- Space Horror Suits
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 35)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 36) ~= true then -- Retro Spacesuits
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 36)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 37) ~= true then -- Astronaut Suits
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 37)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 38) ~= true then -- Space Traveler Suits
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 38)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 39) ~= true then -- Character Suits: Pogo Space Monkey
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 39)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 40) ~= true then -- Character Suits: Republican Space Ranger
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 40)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", 24) ~= true then -- Optics Headset Mask set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL3", true, 24)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 7) ~= true then -- Cluckin' Bell Mask
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 7)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 41) ~= true then -- Death Bird Mask set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 41)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 42) ~= true then -- Stalker Mask set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 42)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 43) ~= true then -- Raider Mask set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 43)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 44) ~= true then -- Marauder Mask set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 44)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 45) ~= true then -- Paco the Taco Mask
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 45)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 46) ~= true then -- Burger Shot Mask
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 46)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 53) ~= true then -- Apocalyptic Raider Top set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 53)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 54) ~= true then -- Apocalyptic Leather Feather Top set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 54)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 55) ~= true then -- Apocalyptic Mercenary Vest set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 55)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 56) ~= true then -- Benedict Light Beer Hoodie
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 56)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 57) ~= true then -- Taco Bomb Hoodie
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 57)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 58) ~= true then -- Cluckin' Bell Logo Bomb Hoodie
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 58)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 59) ~= true then -- Patriot Beer Hoodie
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 59)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 60) ~= true then -- Pisswasser Hoodie
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 60)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 61) ~= true then -- Burger Shot Hoodie
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 61)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 62) ~= true then -- Corn Dog Hoodie
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 62)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 63) ~= true then -- Donut Hoodie
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 63)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 0) ~= true then -- Lucky Plucker Hoodie
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 0)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 1) ~= true then -- Logger Light Hoodie
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 1)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 2) ~= true then -- Pizza Hoodie
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 2)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 3) ~= true then -- Fries Hoodie
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 3)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 4) ~= true then -- Mushrooms Hoodie
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 4)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 5) ~= true then -- Redwood Hoodie
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 5)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 6) ~= true then -- eCola Infectious Hoodie
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 6)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 7) ~= true then -- Cluckin' Bell Logo Hoodie
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 7)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 8) ~= true then -- Lemons Hoodie
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 8)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 9) ~= true then -- Tacos Hoodie
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 9)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 10) ~= true then -- Burger Shot Pattern Sweater
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 10)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 11) ~= true then -- Burger Shot Logo Sweater
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 11)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 12) ~= true then -- Burger Shot Sweater
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 12)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 13) ~= true then -- Sprunk Sweater set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 13)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 14) ~= true then -- Wigwam Sweater
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 14)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 15) ~= true then -- Taco Bomb Chili Sweater
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 15)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 16) ~= true then -- Taco Bomb Sweater set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 16)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 17) ~= true then -- Cluckin' Bell Logo Bomb Sweater
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 17)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 18) ~= true then -- Blue Cluckin' Bell Sweater
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 18)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 19) ~= true then -- Black Cluckin' Bell Sweater
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 19)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 20) ~= true then -- eCola Sweater set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 20)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 21) ~= true then -- MeTV Sweater set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 21)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 22) ~= true then -- Heat Sweater set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 22)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 23) ~= true then -- Degenatron Sweater
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 23)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 24) ~= true then -- Pisswasser Sweater set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 24)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 25) ~= true then -- Bolt Burger Sweater
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 25)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 26) ~= true then -- Lucky Plucker Logo Bomb Sweater
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 26)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 27) ~= true then -- Lucky Plucker Sweater
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 27)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 8) ~= true then -- Bolt Burger Hunger Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 8)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", 15) ~= true then -- Spacesuit Alien Tee set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL0", true, 15)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 47) ~= true then -- Space Rangers Tee set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 47)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 48) ~= true then -- Space Ranger Logo Tee set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 48)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 49) ~= true then -- Phases Tee set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 49)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 50) ~= true then -- Rocket Splash Tee set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 50)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 51) ~= true then -- Two Moons Tee set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 51)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", 52) ~= true then -- Freedom Isn't Free Tee set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL4", true, 52)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 28) ~= true then -- Burger Shot Hockey Shirt set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 28)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 29) ~= true then -- Cluckin' Bell Hockey Shirt set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 29)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 30) ~= true then -- Wigwam Hockey Shirt
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 30)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 31) ~= true then -- Redwood Hockey Shirt
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 31)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 32) ~= true then -- Bean Machine Hockey Shirt
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 32)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 33) ~= true then -- Red eCola Hockey Shirt
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 33)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 34) ~= true then -- Black eCola Hockey Shirt
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 34)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 35) ~= true then -- Phat Chips Hockey Shirt set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 35)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 36) ~= true then -- Sprunk Hockey Shirt set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 36)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 37) ~= true then -- Sprunk Classic Hockey Shirt
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 37)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 38) ~= true then -- Burger Shot Black Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 38)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 39) ~= true then -- Burger Shot Logo Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 39)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 40) ~= true then -- Cluckin' Bell Logo Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 40)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 41) ~= true then -- Cluckin' Bell Black Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 41)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 42) ~= true then -- Cluckin' Bell Filled Logo Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 42)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 43) ~= true then -- eCola Black Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 43)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 44) ~= true then -- Lucky Plucker Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 44)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 45) ~= true then -- Pisswasser Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 45)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 46) ~= true then -- Sprunk Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 46)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 47) ~= true then -- Taco Bomb Chili Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 47)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 48) ~= true then -- Taco Bomb Black Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 48)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 49) ~= true then -- Up-n-Atom Hamburgers Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 49)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 50) ~= true then -- Up-n-Atom Logo Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 50)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 51) ~= true then -- Wigwam Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 51)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 52) ~= true then -- Degenatron ROYGBIV Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 52)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 53) ~= true then -- CNT Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 53)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 54) ~= true then -- Qub3d Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 54)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 55) ~= true then -- Righteous Slaughter Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 55)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 56) ~= true then -- Space Monkey Full Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 56)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 57) ~= true then -- Space Monkey Pixel Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 57)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 58) ~= true then -- Space Monkey Enemy Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 58)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 59) ~= true then -- Burger Shot Bleeder Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 59)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 60) ~= true then -- Heat Rises Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 60)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 61) ~= true then -- Space Monkey Logo Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 61)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 62) ~= true then -- Space Monkey Suit Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 62)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", 63) ~= true then -- Space Monkey Face Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL5", true, 63)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 0) ~= true then -- Space Monkey Mosaic Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 0)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 1) ~= true then -- Bolt Burger Logo Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 1)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 2) ~= true then -- Exsorbeo 720 Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 2)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 3) ~= true then -- Heat Ball Logo Tee set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 3)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 4) ~= true then -- Heat Logo Tee set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 4)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 5) ~= true then -- Heat Pop Art Logo Tee set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 5)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 6) ~= true then -- MeTV Logo Tee set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 6)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 7) ~= true then -- MeTV 90s Tee set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 7)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 8) ~= true then -- Burger Shot Target Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 8)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 9) ~= true then -- eCola Infectious Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 9)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 10) ~= true then -- Up-n-Atom White Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 10)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 11) ~= true then -- Jock Cranley Patriot Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 11)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 12) ~= true then -- CCC TV Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 12)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 13) ~= true then -- Degenatron Logo Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 13)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 14) ~= true then -- eCola White Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 14)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 15) ~= true then -- eCola Pass It On Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 15)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 16) ~= true then -- Tw@ Tee
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 16)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 17) ~= true then -- Chain Pants set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 17)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 18) ~= true then -- Chain Shorts set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 18)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 19) ~= true then -- Leather Stitch Pants set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 19)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 20) ~= true then -- Raider Pants set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 20)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 21) ~= true then -- Light Ups Shoes set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 21)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 22) ~= true then -- Flaming Skull Boots set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 22)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 23) ~= true then -- Skull Harness Boots set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 23)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 24) ~= true then -- Plated Boots set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 24)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 25) ~= true then -- Burger Shot Food Cap set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 25)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 27) ~= true then -- Burger Shot Logo Cap
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 27)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 28) ~= true then -- Burger Shot Bullseye Cap
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 28)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 29) ~= true then -- Cluckin' Bell Logo Cap set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 29)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 31) ~= true then -- Cluckin' Bell Logos Cap
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 31)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 32) ~= true then -- Hotdogs Cap set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 32)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 33) ~= true then -- Taco Bomb Cap set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 33)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 36) ~= true then -- Lucky Plucker Cap set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 36)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 37) ~= true then -- Lucky Plucker Logos Cap set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 37)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 40) ~= true then -- Pisswasser Cap set
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 40)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 44) ~= true then -- Taco Canvas Hat
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 44)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 45) ~= true then -- Burger Shot Canvas Hat
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 45)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 46) ~= true then -- Cluckin' Bell Canvas Hat
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 46)
						end
						if stats.get_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", 47) ~= true then -- Hotdogs Canvas Hat
							stats.set_bool_masked("MPX_ARENAWARSPSTAT_BOOL6", true, 47)
						end
					end
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Unlocks all arena war reputation without level 1000 AP")
					end
					
					if ImGui.Button("The Diamond Casino Heist##Unlocks") then
						if stats.get_int("MPX_CAS_HEIST_NOTS") ~= -1 then
							stats.set_int("MPX_CAS_HEIST_NOTS", -1)
						end
						if stats.get_int("MPX_CAS_HEIST_FLOW") ~= -1610744257 then -- Ceramic Pistol (launch a rescue mission for Patrick McReary)
							stats.set_int("MPX_CAS_HEIST_FLOW", -1610744257)
						end
						if stats.get_int("MPX_CH_ARC_CAB_CLAW_TROPHY") ~= -1 then
							stats.set_int("MPX_CH_ARC_CAB_CLAW_TROPHY", -1)
						end
						if stats.get_int("MPX_CH_ARC_CAB_LOVE_TROPHY") ~= -1 then
							stats.set_int("MPX_CH_ARC_CAB_LOVE_TROPHY", -1)
						end
						if stats.get_int("MPX_SIGNAL_JAMMERS_COLLECTED") ~= 50 then
							stats.set_int("MPX_SIGNAL_JAMMERS_COLLECTED", 50)
						end
						if stats.get_int("MPX_H3_BOARD_DIALOGUE0") ~= -1 then
							stats.set_int("MPX_H3_BOARD_DIALOGUE0", -1)
						end
						if stats.get_int("MPX_H3_BOARD_DIALOGUE1") ~= -1 then
							stats.set_int("MPX_H3_BOARD_DIALOGUE1", -1)
						end
						if stats.get_int("MPX_H3_BOARD_DIALOGUE2") ~= -1 then
							stats.set_int("MPX_H3_BOARD_DIALOGUE2", -1)
						end
						if stats.get_int("MPX_H3_VEHICLESUSED") ~= -1 then
							stats.set_int("MPX_H3_VEHICLESUSED", -1)
						end
						if stats.get_bool("MPX_VCM_FLOW_CS_RSC_SEEN") ~= true then
							stats.set_bool("MPX_VCM_FLOW_CS_RSC_SEEN", true)
						end
						if stats.get_bool("MPX_VCM_FLOW_CS_BWL_SEEN") ~= true then
							stats.set_bool("MPX_VCM_FLOW_CS_BWL_SEEN", true)
						end
						if stats.get_bool("MPX_VCM_FLOW_CS_MTG_SEEN") ~= true then
							stats.set_bool("MPX_VCM_FLOW_CS_MTG_SEEN", true)
						end
						if stats.get_bool("MPX_VCM_FLOW_CS_OIL_SEEN") ~= true then
							stats.set_bool("MPX_VCM_FLOW_CS_OIL_SEEN", true)
						end
						if stats.get_bool("MPX_VCM_FLOW_CS_DEF_SEEN") ~= true then
							stats.set_bool("MPX_VCM_FLOW_CS_DEF_SEEN", true)
						end
						if stats.get_bool("MPX_VCM_FLOW_CS_FIN_SEEN") ~= true then
							stats.set_bool("MPX_VCM_FLOW_CS_FIN_SEEN", true)
						end
						if stats.get_bool("MPX_CAS_VEHICLE_REWARD") ~= false then
							stats.set_bool("MPX_CAS_VEHICLE_REWARD", false)
						end
						if stats.get_bool("MPX_HELP_FURIA") ~= true then
							stats.set_bool("MPX_HELP_FURIA", true)
						end
						if stats.get_bool("MPX_HELP_MINITAN") ~= true then
							stats.set_bool("MPX_HELP_MINITAN", true)
						end
						if stats.get_bool("MPX_HELP_YOSEMITE2") ~= true then
							stats.set_bool("MPX_HELP_YOSEMITE2", true)
						end
						if stats.get_bool("MPX_HELP_ZHABA") ~= true then
							stats.set_bool("MPX_HELP_ZHABA", true)
						end
						if stats.get_bool("MPX_HELP_IMORGEN") ~= true then
							stats.set_bool("MPX_HELP_IMORGEN", true)
						end
						if stats.get_bool("MPX_HELP_SULTAN2") ~= true then
							stats.set_bool("MPX_HELP_SULTAN2", true)
						end
						if stats.get_bool("MPX_HELP_VAGRANT") ~= true then
							stats.set_bool("MPX_HELP_VAGRANT", true)
						end
						if stats.get_bool("MPX_HELP_VSTR") ~= true then
							stats.set_bool("MPX_HELP_VSTR", true)
						end
						if stats.get_bool("MPX_HELP_STRYDER") ~= true then
							stats.set_bool("MPX_HELP_STRYDER", true)
						end
						if stats.get_bool("MPX_HELP_SUGOI") ~= true then
							stats.set_bool("MPX_HELP_SUGOI", true)
						end
						if stats.get_bool("MPX_HELP_KANJO") ~= true then
							stats.set_bool("MPX_HELP_KANJO", true)
						end
						if stats.get_bool("MPX_HELP_FORMULA") ~= true then
							stats.set_bool("MPX_HELP_FORMULA", true)
						end
						if stats.get_bool("MPX_HELP_FORMULA2") ~= true then
							stats.set_bool("MPX_HELP_FORMULA2", true)
						end
						if stats.get_bool("MPX_HELP_JB7002") ~= true then
							stats.set_bool("MPX_HELP_JB7002", true)
						end
					end
					ImGui.SameLine()
					if ImGui.Button("Outfit##Unlocks") then -- https://www.unknowncheats.me/forum/3728178-post11.html
						if stats.get_bool_masked("MPX_CASINOPSTAT_BOOL2", 31) ~= true then -- The High Roller (Outfit)
							stats.set_bool_masked("MPX_CASINOPSTAT_BOOL2", true, 31)
						end
						if stats.get_bool_masked("MPX_CASINOHSTPSTAT_BOOL1", 63) ~= true then -- Refuse Collectors (Outfits)
							stats.set_bool_masked("MPX_CASINOHSTPSTAT_BOOL1", true, 63)
						end
						if stats.get_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", 0) ~= true then -- Undertakers (Outfit)
							stats.set_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", true, 0)
						end
						if stats.get_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", 1) ~= true then -- Valet Outfits
							stats.set_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", true, 1)
						end
						if stats.get_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", 3) ~= true then -- Prison Guards (Outfits)
							stats.set_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", true, 3)
						end
						if stats.get_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", 4) ~= true then -- FIB Suits (Outfits)
							stats.set_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", true, 4)
						end
						if stats.get_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", 6) ~= true then -- Gruppe Sechs Gear (Outfits)
							stats.set_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", true, 6)
						end
						if stats.get_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", 7) ~= true then -- Bugstars Uniforms (Outfits)
							stats.set_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", true, 7)
						end
						if stats.get_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", 8) ~= true then -- Maintenance (Outfits)
							stats.set_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", true, 8)
						end
						if stats.get_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", 9) ~= true then -- Yung Ancestors (Outfits)
							stats.set_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", true, 9)
						end
						if stats.get_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", 10) ~= true then -- Firefighter Gear (Outfits)
							stats.set_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", true, 10)
						end
						if stats.get_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", 11) ~= true then -- Orderly Armor (Outfits)
							stats.set_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", true, 11)
						end
						if stats.get_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", 12) ~= true then -- Upscale Armor (Outfits)
							stats.set_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", true, 12)
						end
						if stats.get_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", 13) ~= true then -- Evening Armor (Outfits)
							stats.set_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", true, 13)
						end
						if stats.get_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", 14) ~= true then -- Reinforced: Padded Combat (Outfits)
							stats.set_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", true, 14)
						end
						if stats.get_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", 15) ~= true then -- Reinforced: Bulk Combat (Outfits)
							stats.set_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", true, 15)
						end
						if stats.get_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", 16) ~= true then -- Reinforced: Compact Combat (Outfits)
							stats.set_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", true, 16)
						end
						if stats.get_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", 17) ~= true then -- Balaclava Crook (Outfits)
							stats.set_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", true, 17)
						end
						if stats.get_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", 18) ~= true then -- Classic Crook (Outfits)
							stats.set_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", true, 18)
						end
						if stats.get_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", 19) ~= true then -- High-end Crook (Outfits)
							stats.set_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", true, 19)
						end
						if stats.get_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", 20) ~= true then -- Infiltration: Upgraded Tech (Outfits)
							stats.set_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", true, 20)
						end
						if stats.get_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", 21) ~= true then -- Infiltration: Advanced Tech (Outfits)
							stats.set_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", true, 21)
						end
						if stats.get_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", 22) ~= true then -- Infiltration: Modernized Tech (Outfits)
							stats.set_bool_masked("MPX_CASINOHSTPSTAT_BOOL2", true, 22)
						end
					end
					ImGui.SameLine()
					if ImGui.Button("Awards##TheDiamondCasinoHeist##Unlocks") then
						if stats.get_int("MPX_AWD_ODD_JOBS") ~= 52 then
							stats.set_int("MPX_AWD_ODD_JOBS", 52)
						end
						if stats.get_int("MPX_AWD_PREPARATION") ~= 40 then
							stats.set_int("MPX_AWD_PREPARATION", 40)
						end
						if stats.get_int("MPX_AWD_ASLEEPONJOB") ~= 20 then
							stats.set_int("MPX_AWD_ASLEEPONJOB", 20)
						end
						if stats.get_int("MPX_AWD_DAICASHCRAB") ~= 100000 then
							stats.set_int("MPX_AWD_DAICASHCRAB", 100000)
						end
						if stats.get_int("MPX_AWD_BIGBRO") ~= 40 then
							stats.set_int("MPX_AWD_BIGBRO", 40)
						end
						if stats.get_int("MPX_AWD_SHARPSHOOTER") ~= 40 then
							stats.set_int("MPX_AWD_SHARPSHOOTER", 40)
						end
						if stats.get_int("MPX_AWD_RACECHAMP") ~= 40 then
							stats.set_int("MPX_AWD_RACECHAMP", 40)
						end
						if stats.get_int("MPX_AWD_BATSWORD") ~= 1000000 then
							stats.set_int("MPX_AWD_BATSWORD", 1000000)
						end
						if stats.get_int("MPX_AWD_COINPURSE") ~= 950000 then
							stats.set_int("MPX_AWD_COINPURSE", 950000)
						end
						if stats.get_int("MPX_AWD_ASTROCHIMP") ~= 3000000 then
							stats.set_int("MPX_AWD_ASTROCHIMP", 3000000)
						end
						if stats.get_int("MPX_AWD_MASTERFUL") ~= 40000 then
							stats.set_int("MPX_AWD_MASTERFUL", 40000)
						end
						if stats.get_bool("MPX_AWD_FIRST_TIME1") ~= true then
							stats.set_bool("MPX_AWD_FIRST_TIME1", true)
						end
						if stats.get_bool("MPX_AWD_FIRST_TIME2") ~= true then
							stats.set_bool("MPX_AWD_FIRST_TIME2", true)
						end
						if stats.get_bool("MPX_AWD_FIRST_TIME3") ~= true then
							stats.set_bool("MPX_AWD_FIRST_TIME3", true)
						end
						if stats.get_bool("MPX_AWD_FIRST_TIME4") ~= true then
							stats.set_bool("MPX_AWD_FIRST_TIME4", true)
						end
						if stats.get_bool("MPX_AWD_FIRST_TIME5") ~= true then
							stats.set_bool("MPX_AWD_FIRST_TIME5", true)
						end
						if stats.get_bool("MPX_AWD_FIRST_TIME6") ~= true then
							stats.set_bool("MPX_AWD_FIRST_TIME6", true)
						end
						if stats.get_bool("MPX_AWD_ALL_IN_ORDER") ~= true then
							stats.set_bool("MPX_AWD_ALL_IN_ORDER", true)
						end
						if stats.get_bool("MPX_AWD_SUPPORTING_ROLE") ~= true then
							stats.set_bool("MPX_AWD_SUPPORTING_ROLE", true)
						end
						if stats.get_bool("MPX_AWD_LEADER") ~= true then
							stats.set_bool("MPX_AWD_LEADER", true)
						end
						if stats.get_bool("MPX_AWD_ODD_JOBS") ~= true then
							stats.set_bool("MPX_AWD_ODD_JOBS", true)
						end
						if stats.get_bool("MPX_AWD_SURVIVALIST") ~= true then
							stats.set_bool("MPX_AWD_SURVIVALIST", true)
						end
						if stats.get_bool("MPX_AWD_SCOPEOUT") ~= true then
							stats.set_bool("MPX_AWD_SCOPEOUT", true)
						end
						if stats.get_bool("MPX_AWD_CREWEDUP") ~= true then
							stats.set_bool("MPX_AWD_CREWEDUP", true)
						end
						if stats.get_bool("MPX_AWD_MOVINGON") ~= true then
							stats.set_bool("MPX_AWD_MOVINGON", true)
						end
						if stats.get_bool("MPX_AWD_PROMOCAMP") ~= true then
							stats.set_bool("MPX_AWD_PROMOCAMP", true)
						end
						if stats.get_bool("MPX_AWD_GUNMAN") ~= true then
							stats.set_bool("MPX_AWD_GUNMAN", true)
						end
						if stats.get_bool("MPX_AWD_SMASHNGRAB") ~= true then
							stats.set_bool("MPX_AWD_SMASHNGRAB", true)
						end
						if stats.get_bool("MPX_AWD_INPLAINSI") ~= true then
							stats.set_bool("MPX_AWD_INPLAINSI", true)
						end
						if stats.get_bool("MPX_AWD_UNDETECTED") ~= true then
							stats.set_bool("MPX_AWD_UNDETECTED", true)
						end
						if stats.get_bool("MPX_AWD_ALLROUND") ~= true then
							stats.set_bool("MPX_AWD_ALLROUND", true)
						end
						if stats.get_bool("MPX_AWD_ELITETHEIF") ~= true then
							stats.set_bool("MPX_AWD_ELITETHEIF", true)
						end
						if stats.get_bool("MPX_AWD_PRO") ~= true then
							stats.set_bool("MPX_AWD_PRO", true)
						end
						if stats.get_bool("MPX_AWD_SUPPORTACT") ~= true then
							stats.set_bool("MPX_AWD_SUPPORTACT", true)
						end
						if stats.get_bool("MPX_AWD_SHAFTED") ~= true then
							stats.set_bool("MPX_AWD_SHAFTED", true)
						end
						if stats.get_bool("MPX_AWD_COLLECTOR") ~= true then
							stats.set_bool("MPX_AWD_COLLECTOR", true)
						end
						if stats.get_bool("MPX_AWD_DEADEYE") ~= true then
							stats.set_bool("MPX_AWD_DEADEYE", true)
						end
						if stats.get_bool("MPX_AWD_PISTOLSATDAWN") ~= true then
							stats.set_bool("MPX_AWD_PISTOLSATDAWN", true)
						end
						if stats.get_bool("MPX_AWD_TRAFFICAVOI") ~= true then
							stats.set_bool("MPX_AWD_TRAFFICAVOI", true)
						end
						if stats.get_bool("MPX_AWD_CANTCATCHBRA") ~= true then
							stats.set_bool("MPX_AWD_CANTCATCHBRA", true)
						end
						if stats.get_bool("MPX_AWD_WIZHARD") ~= true then
							stats.set_bool("MPX_AWD_WIZHARD", true)
						end
						if stats.get_bool("MPX_AWD_APEESCAPE") ~= true then
							stats.set_bool("MPX_AWD_APEESCAPE", true)
						end
						if stats.get_bool("MPX_AWD_MONKEYKIND") ~= true then
							stats.set_bool("MPX_AWD_MONKEYKIND", true)
						end
						if stats.get_bool("MPX_AWD_AQUAAPE") ~= true then
							stats.set_bool("MPX_AWD_AQUAAPE", true)
						end
						if stats.get_bool("MPX_AWD_KEEPFAITH") ~= true then
							stats.set_bool("MPX_AWD_KEEPFAITH", true)
						end
						if stats.get_bool("MPX_AWD_TRUELOVE") ~= true then
							stats.set_bool("MPX_AWD_TRUELOVE", true)
						end
						if stats.get_bool("MPX_AWD_NEMESIS") ~= true then
							stats.set_bool("MPX_AWD_NEMESIS", true)
						end
						if stats.get_bool("MPX_AWD_FRIENDZONED") ~= true then
							stats.set_bool("MPX_AWD_FRIENDZONED", true)
						end
					end
					
					if ImGui.Button("Cayo Perico Heist##Unlocks") then
						if stats.get_int("MPX_H4_H4_DJ_MISSIONS") ~= -1 then
							stats.set_int("MPX_H4_H4_DJ_MISSIONS", -1)
						end
						if stats.get_bool("MPX_COMPLETE_H4_F_USING_VETIR") ~= true then
							stats.set_bool("MPX_COMPLETE_H4_F_USING_VETIR", true)
						end
						if stats.get_bool("MPX_COMPLETE_H4_F_USING_LONGFIN") ~= true then
							stats.set_bool("MPX_COMPLETE_H4_F_USING_LONGFIN", true)
						end
						if stats.get_bool("MPX_COMPLETE_H4_F_USING_ANNIH") ~= true then
							stats.set_bool("MPX_COMPLETE_H4_F_USING_ANNIH", true)
						end
						if stats.get_bool("MPX_COMPLETE_H4_F_USING_ALKONOS") ~= true then
							stats.set_bool("MPX_COMPLETE_H4_F_USING_ALKONOS", true)
						end
						if stats.get_bool("MPX_COMPLETE_H4_F_USING_PATROLB") ~= true then
							stats.set_bool("MPX_COMPLETE_H4_F_USING_PATROLB", true)
						end
						SET_PACKED_INT_TUNABLE_GLOBAL("TOPS_ISLAND_HEIST_EVENT_JACKET_1", "PANTS_BIGNESS_TIE_DYE_SWEAT_PANTS", 1)
						SET_PACKED_INT_TUNABLE_GLOBAL("ACCESSORIES_GLOW_BRACELET_1", "ACCESSORIES_GLOW_NECKLACE_16", 1)
						SET_PACKED_INT_TUNABLE_GLOBAL("HEIST4_FESTIVE_MASK_0", "HEIST4_FESTIVE_MASK_19", 1)
						SET_PACKED_INT_TUNABLE_GLOBAL("ACCESSORIES_SUNGLASSES_1_0", "ACCESSORIES_SUNGLASSES_3_11", 1)
						SET_PACKED_INT_TUNABLE_GLOBAL("PALMS_TRAX_EVENT_TEE_1", "STILL_SLIPPING_EVENT_TEE_2", 1)
					end
					ImGui.SameLine()
					if ImGui.Button("Awards##CayoPericoHeist##Unlocks") then
						if stats.get_int("MPX_AWD_LOSTANDFOUND") ~= 500000 then
							stats.set_int("MPX_AWD_LOSTANDFOUND", 500000)
						end
						if stats.get_int("MPX_AWD_SUNSET") ~= 1800000 then
							stats.set_int("MPX_AWD_SUNSET", 1800000)
						end
						if stats.get_int("MPX_AWD_TREASURE_HUNTER") ~= 1000000 then
							stats.set_int("MPX_AWD_TREASURE_HUNTER", 1000000)
						end
						if stats.get_int("MPX_AWD_WRECK_DIVING") ~= 1000000 then
							stats.set_int("MPX_AWD_WRECK_DIVING", 1000000)
						end
						if stats.get_int("MPX_AWD_KEINEMUSIK") ~= 1800000 then
							stats.set_int("MPX_AWD_KEINEMUSIK", 1800000)
						end
						if stats.get_int("MPX_AWD_PALMS_TRAX") ~= 1800000 then
							stats.set_int("MPX_AWD_PALMS_TRAX", 1800000)
						end
						if stats.get_int("MPX_AWD_MOODYMANN") ~= 1800000 then
							stats.set_int("MPX_AWD_MOODYMANN", 1800000)
						end
						if stats.get_int("MPX_AWD_FILL_YOUR_BAGS") ~= 1000000000 then
							stats.set_int("MPX_AWD_FILL_YOUR_BAGS", 1000000000)
						end
						if stats.get_int("MPX_AWD_WELL_PREPARED") ~= 80 then
							stats.set_int("MPX_AWD_WELL_PREPARED", 80)
						end
						if stats.get_bool("MPX_AWD_INTELGATHER") ~= true then
							stats.set_bool("MPX_AWD_INTELGATHER", true)
						end
						if stats.get_bool("MPX_AWD_COMPOUNDINFILT") ~= true then
							stats.set_bool("MPX_AWD_COMPOUNDINFILT", true)
						end
						if stats.get_bool("MPX_AWD_LOOT_FINDER") ~= true then
							stats.set_bool("MPX_AWD_LOOT_FINDER", true)
						end
						if stats.get_bool("MPX_AWD_MAX_DISRUPT") ~= true then
							stats.set_bool("MPX_AWD_MAX_DISRUPT", true)
						end
						if stats.get_bool("MPX_AWD_THE_ISLAND_HEIST") ~= true then
							stats.set_bool("MPX_AWD_THE_ISLAND_HEIST", true)
						end
						if stats.get_bool("MPX_AWD_GOING_ALONE") ~= true then
							stats.set_bool("MPX_AWD_GOING_ALONE", true)
						end
						if stats.get_bool("MPX_AWD_TEAM_WORK") ~= true then
							stats.set_bool("MPX_AWD_TEAM_WORK", true)
						end
						if stats.get_bool("MPX_AWD_MIXING_UP") ~= true then
							stats.set_bool("MPX_AWD_MIXING_UP", true)
						end
						if stats.get_bool("MPX_AWD_PRO_THIEF") ~= true then
							stats.set_bool("MPX_AWD_PRO_THIEF", true)
						end
						if stats.get_bool("MPX_AWD_CAT_BURGLAR") ~= true then
							stats.set_bool("MPX_AWD_CAT_BURGLAR", true)
						end
						if stats.get_bool("MPX_AWD_ONE_OF_THEM") ~= true then
							stats.set_bool("MPX_AWD_ONE_OF_THEM", true)
						end
						if stats.get_bool("MPX_AWD_GOLDEN_GUN") ~= true then
							stats.set_bool("MPX_AWD_GOLDEN_GUN", true)
						end
						if stats.get_bool("MPX_AWD_ELITE_THIEF") ~= true then
							stats.set_bool("MPX_AWD_ELITE_THIEF", true)
						end
						if stats.get_bool("MPX_AWD_PROFESSIONAL") ~= true then
							stats.set_bool("MPX_AWD_PROFESSIONAL", true)
						end
						if stats.get_bool("MPX_AWD_HELPING_OUT") ~= true then
							stats.set_bool("MPX_AWD_HELPING_OUT", true)
						end
						if stats.get_bool("MPX_AWD_COURIER") ~= true then
							stats.set_bool("MPX_AWD_COURIER", true)
						end
						if stats.get_bool("MPX_AWD_PARTY_VIBES") ~= true then
							stats.set_bool("MPX_AWD_PARTY_VIBES", true)
						end
						if stats.get_bool("MPX_AWD_HELPING_HAND") ~= true then
							stats.set_bool("MPX_AWD_HELPING_HAND", true)
						end
						if stats.get_bool("MPX_AWD_ELEVENELEVEN") ~= true then
							stats.set_bool("MPX_AWD_ELEVENELEVEN", true)
						end
					end
					
					if ImGui.Button("LS Carmeet Reputation##Unlocks") then
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL1", 39) ~= true then -- Annis ZR350
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL1", true, 39)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL1", 40) ~= true then -- Pfister Comet S2
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL1", true, 40)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL1", 41) ~= true then -- Dinka Jester RR
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL1", true, 41)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL1", 42) ~= true then -- Emperor Vectre
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL1", true, 42)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL1", 43) ~= true then -- Ubermacht Cypher
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL1", true, 43)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL1", 44) ~= true then -- Pfister Growler
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL1", true, 44)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL1", 45) ~= true then -- Karin Calico GTF
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL1", true, 45)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL1", 46) ~= true then -- Annis Remus
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL1", true, 46)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL1", 47) ~= true then -- Vapid Dominator ASP
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL1", true, 47)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL1", 48) ~= true then -- Karin Futo GTX
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL1", true, 48)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL1", 49) ~= true then -- Dinka RT3000
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL1", true, 49)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL1", 50) ~= true then -- Vulcar Warrener HKR
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL1", true, 50)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL1", 51) ~= true then -- Karin Sultan RS Classic
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL1", true, 51)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL1", 52) ~= true then -- Vapid Dominator GTT
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL1", true, 52)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL1", 53) ~= true then -- Karin Previon
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL1", true, 53)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL1", 58) ~= true then -- Pursuit Series (Gameplay)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL1", true, 58)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 9) ~= true then -- Private Takeover (Gameplay)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 9)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL1", 63) ~= true then -- Quick Fix (Gameplay)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL1", true, 63)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 4) ~= true then -- Diversion (Gameplay)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 4)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 14) ~= true then -- Setup (Gameplay)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 14)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 19) ~= true then -- Wingman (Gameplay)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 19)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL1", 60) ~= true then -- Dinka SPL (Wheel Mod)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL1", true, 60)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 11) ~= true then -- Retro Turbofan (Wheel Mod)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 11)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 26) ~= true then -- Conical Turbofan (Wheel Mod)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 26)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 41) ~= true then -- Ice Storm (Wheel Mod)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 41)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 56) ~= true then -- Super Turbine (Wheel Mod)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 56)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 5) ~= true then -- Modern Mesh (Wheel Mod)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 5)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 10) ~= true then -- Forged Star (Wheel Mod)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 10)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 15) ~= true then -- Showflake (Wheel Mod)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 15)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 20) ~= true then -- Giga Mesh (Wheel Mod)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 20)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 25) ~= true then -- Mesh Meister (Wheel Mod)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 25)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 1) ~= true then -- Euros - Speed Trail (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 1)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 7) ~= true then -- Euros - Drift Tribe (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 7)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 44) ~= true then -- Euros - King Scorpion (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 44)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 5) ~= true then -- Euros - Sprunk Light (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 5)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 30) ~= true then -- Euros - Candybox Gold (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 30)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 2) ~= true then -- Tailgater S - Crevis Race (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 2)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 42) ~= true then -- Tailgater S - Redwood (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 42)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 3) ~= true then -- Tailgater S - Disruption Logistics (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 3)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 28) ~= true then -- Tailgater S - Colored Camo Livery (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 28)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 53) ~= true then -- Tailgater S - Army Camo Solid (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 53)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 31) ~= true then -- ZR350 - Atomic Drift Team (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 31)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 27) ~= true then -- ZR350 - Kisama Chevrons (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 27)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 54) ~= true then -- ZR350 - Winning is Winning (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 54)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 15) ~= true then -- ZR350 - Annis Racing Tribal (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 15)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 40) ~= true then -- ZR350 - Annis Racing Tribal Alt (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 40)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 21) ~= true then -- Jester RR - 10 Minute Car (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 21)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 22) ~= true then -- Jester RR - Yogarishima (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 22)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 52) ~= true then -- Jester RR - Fuque (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 52)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 13) ~= true then -- Jester RR - Xero Gas Rally (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 13)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 38) ~= true then -- Jester RR - Split Siberia (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 38)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 46) ~= true then -- Calico GTF - Fukaru Rally (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 46)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 34) ~= true then -- Calico GTF - Disruption Rally (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 34)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 59) ~= true then -- Calico GTF - Redwood Rally (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 59)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 20) ~= true then -- Calico GTF - Prolaps Rally (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 20)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 45) ~= true then -- Calico GTF - Xero Gas Rally (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 45)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 51) ~= true then -- Remus - Blue Lightning (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 51)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 37) ~= true then -- Remus - Annis Tech (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 37)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 62) ~= true then -- Remus - Atomic Motorsport (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 62)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 23) ~= true then -- Remus - Shiny Wasabi Kitty (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 23)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 48) ~= true then -- Remus - Fukaru Motorsport (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 48)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 6) ~= true then -- Futo GTX - Chokusen Dorifuto (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 6)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 12) ~= true then -- Futo GTX - Drift King (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 12)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 47) ~= true then -- Futo GTX - Tandem Battle (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 47)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 8) ~= true then -- Futo GTX - Itasha Drift (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 8)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 33) ~= true then -- Futo GTX - Stance Andreas (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 33)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 16) ~= true then -- RT3000 - Stance Andreas (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 16)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 17) ~= true then -- RT3000 - Atomic Motorsport (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 17)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 49) ~= true then -- RT3000 - Dinka Performance (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 49)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 10) ~= true then -- RT3000 - Shiny Wasabi Kitty (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 10)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 35) ~= true then -- RT3000 - Total Fire (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 35)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 36) ~= true then -- Warrener HKR - Classic Vulcar (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 36)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 32) ~= true then -- Warrener HKR - Classic Vulcar Alt (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 32)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 57) ~= true then -- Warrener HKR - Redwood Racing (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 57)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 18) ~= true then -- Warrener HKR - Vulcar Turbo (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 18)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 43) ~= true then -- Warrener HKR - Vulcar Turbo Alt (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 43)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 61) ~= true then -- Dominator GTT - Oldschool Oval (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 61)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 39) ~= true then -- Dominator GTT - Resto Mod Racer (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 39)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 0) ~= true then -- Dominator GTT - Flame On (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 0)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 25) ~= true then -- Dominator GTT - The Patriot (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 25)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 50) ~= true then -- Dominator GTT - 70s Street Machine (Livery)
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 50)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 22) ~= true then -- Green Crowex Pro Racing Suit
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 22)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 39) ~= true then -- Gray Benefactor Racing Suit
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 39)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 44) ~= true then -- Black Crowex Pro Racing Suit
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 44)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 49) ~= true then -- Blue Xero Gas Racing Suit
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 49)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 54) ~= true then -- Dark Benefactor Racing Suit
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 54)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 59) ~= true then -- Red Xero Gas Racing Suit
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 59)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 0) ~= true then -- Wildstyle Racing Suit
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 0)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL8", 5) ~= true then -- Tuned For Speed Racing Suit
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL8", true, 5)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL1", 56) ~= true then -- Beige Knit Sneakers
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL1", true, 56)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 8) ~= true then -- Cream Knit Sneakers
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 8)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 27) ~= true then -- Black Knit Sneakers
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 27)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 43) ~= true then -- Gray & Purple Knit Sneakers
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 43)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 60) ~= true then -- Gray & Magenta Knit Sneakers
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 60)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 13) ~= true then -- Gray & Aqua Knit Sneakers
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 13)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 29) ~= true then -- White & Pink Knit Sneakers
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 29)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 53) ~= true then -- Gray & Yellow Knit Sneakers
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 53)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 14) ~= true then -- Grayscale Knit Sneakers
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 14)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 37) ~= true then -- Gray & Cyan Knit Sneakers
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 37)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 55) ~= true then -- Lilac Knit Sneakers
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 55)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 0) ~= true then -- White Knit Sneakers
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 0)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 8) ~= true then -- Ice Knit Sneakers
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 8)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 15) ~= true then -- Aqua Sole Knit Sneakers
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 15)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 23) ~= true then -- Smoky Knit Sneakers
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 23)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 29) ~= true then -- White & Gold Knit Sneakers
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 29)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 33) ~= true then -- Orange Knit Sneakers
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 33)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 36) ~= true then -- Pink Vibrant Knit Sneakers
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 36)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 40) ~= true then -- Lime Highlight Knit Sneakers
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 40)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 43) ~= true then -- Purple Fade Knit Sneakers
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 43)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 45) ~= true then -- Teal Knit Sneakers
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 45)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 46) ~= true then -- Black & Lime Knit Sneakers
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 46)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 47) ~= true then -- Cyan Fade Knit Sneakers
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 47)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 57) ~= true then -- Red Highlight Knit Sneakers
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 57)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL1", 55) ~= true then -- Emperor Forwards Cap / Emperor Backwards Cap
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL1", true, 55)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 7) ~= true then -- Karin Forwards Cap / Karin Backwards Cap
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 7)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 25) ~= true then -- Omnis Forwards Cap / Omnis Backwards Cap
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 25)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 42) ~= true then -- Annis Forwards Cap / Annis Backwards Cap
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 42)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 58) ~= true then -- Vapid Forwards Cap / Vapid Backwards Cap
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 58)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 11) ~= true then -- Light Dinka Forwards Cap / Light Dinka Backwards Cap
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 11)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 28) ~= true then -- Dark Dinka Forwards Cap / Dark Dinka Backwards Cap
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 28)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 51) ~= true then -- White Güffy Forwards Cap / White Güffy Backwards Cap
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 51)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 12) ~= true then -- Black Güffy Forwards Cap / Black Güffy Backwards Cap
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 12)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 34) ~= true then -- Hellion Forwards Cap / Hellion Backwards Cap
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 34)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 54) ~= true then -- Lampadati Forwards Cap / Lampadati Backwards Cap
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 54)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL6", 3) ~= true then -- Broker Forwards Cap / Broker Backwards Cap
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL6", true, 3)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL1", 62) ~= true then -- White Emperor Motors Tee
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL1", true, 62)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 15) ~= true then -- Navy Emperor Motors Tee
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 15)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 33) ~= true then -- Yellow Annis Rally Tee
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 33)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 50) ~= true then -- Blue Annis Noise Tee
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 50)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 3) ~= true then -- Light Dinka Tee
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 3)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 19) ~= true then -- Black Annis Noise Tee
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 19)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 38) ~= true then -- Dark Dinka Tee
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 38)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 63) ~= true then -- Light Vapid Ellie Tee
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 63)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 24) ~= true then -- Dark Vapid Ellie Tee
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 24)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 44) ~= true then -- White Logo Ruiner Tee
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 44)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 59) ~= true then -- Gray Vapid Truck Tee
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 59)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 4) ~= true then -- White Obey Omnis Tee
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 4)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 11) ~= true then -- Light Blue Vapid Truck Tee
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 11)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 19) ~= true then -- Black Vapid USA Tee
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 19)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 26) ~= true then -- Red Obey Omnis Tee
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 26)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 31) ~= true then -- Red Logo Ruiner Tee
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 31)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 35) ~= true then -- Blue Bravado Gauntlet Tee
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 35)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 39) ~= true then -- Black Bravado Gauntlet Tee
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 39)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 42) ~= true then -- Pfister Pocket Tee
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 42)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 44) ~= true then -- Karin 90s Tee
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 44)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL6", 13) ~= true then -- Annis Hellion 4x4 Tee
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL6", true, 13)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL1", 57) ~= true then -- Gray Emperor Classic Hoodie
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL1", true, 57)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 10) ~= true then -- Yellow Pfister Hoodie
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 10)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 28) ~= true then -- Green Emperor Classic Hoodie
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 28)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 45) ~= true then -- Gray Pfister Hoodie
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 45)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 62) ~= true then -- Black Vapid Ellie Hoodie
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 62)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 14) ~= true then -- Gray Karin Hoodie
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 14)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 31) ~= true then -- Navy Vapid Ellie Hoodie
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 31)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 56) ~= true then -- Navy Karin Hoodie
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 56)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 17) ~= true then -- Light Obey Hoodie
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 17)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 39) ~= true then -- Black Ubermacht Hoodie
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 39)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 57) ~= true then -- Dark Obey Hoodie
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 57)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 1) ~= true then -- Red Ubermacht Hoodie
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 1)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 9) ~= true then -- Blue Annis Noise Hoodie
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 9)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 16) ~= true then -- Green Emperor Modern Hoodie
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 16)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 24) ~= true then -- Gray Annis Noise Hoodie
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 24)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 30) ~= true then -- Dark Emperor Modern Hoodie
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 30)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 34) ~= true then -- Light Dinka Hoodie
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 34)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 38) ~= true then -- Gold Lampadati Hoodie
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 38)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 41) ~= true then -- Dark Dinka Hoodie
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 41)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL6", 43) ~= true then -- Tricolor Lampadati Hoodie
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL6", true, 43)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 2) ~= true then -- Never Barcode Print Hoodie
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 2)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 18) ~= true then -- Never Triangle Print Hoodie
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 18)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 37) ~= true then -- Life ZigZag Print Hoodie
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 37)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 53) ~= true then -- Life Static Print Hoodie
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 53)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 6) ~= true then -- Never Crosshair Print Hoodie
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 6)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 23) ~= true then -- Hiding Print Hoodie
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 23)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 43) ~= true then -- Life Binary Print Hoodie
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 43)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 4) ~= true then -- Lucky Penny Print Hoodie
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 4)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL7", 19) ~= true then -- Crash Out Print Hoodie
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL7", true, 19)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 5) ~= true then -- Gray Leather Bomber
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 5)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 23) ~= true then -- Mustard Tan Leather Bomber
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 23)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 40) ~= true then -- Orange Tan Leather Bomber
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 40)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 57) ~= true then -- Chestnut Tan Leather Bomber
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 57)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 9) ~= true then -- Dark Tan Leather Bomber
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 9)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 26) ~= true then -- Ox Blood Leather Bomber
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 26)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 48) ~= true then -- Dark Nut Leather Bomber
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 48)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 9) ~= true then -- Navy Blue Leather Bomber
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 9)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 32) ~= true then -- Dark Green Leather Bomber
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 32)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 52) ~= true then -- White Leather Bomber
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 52)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 63) ~= true then -- Red Leather Bomber
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 63)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL6", 53) ~= true then -- Mono Leather Bomber
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL6", true, 53)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL1", 59) ~= true then -- Cyan Check Sleeveless Puffer
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL1", true, 59)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 0) ~= true then -- Cyan Check Puffer
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 0)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 12) ~= true then -- Red Check Sleeveless Puffer
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 12)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 17) ~= true then -- Red Check Puffer
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 17)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 30) ~= true then -- Green Geo Sleeveless Puffer
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 30)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 35) ~= true then -- Green Geo Puffer
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 35)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 47) ~= true then -- Black Geo Sleeveless Puffer
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 47)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 52) ~= true then -- Black Geo Puffer
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 52)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 63) ~= true then -- Cream Bigness Sleeveless Puffer
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 63)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 4) ~= true then -- Cream Bigness Puffer
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 4)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 16) ~= true then -- Purple Bigness Sleeveless Puffer
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 16)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 21) ~= true then -- Purple Bigness Puffer
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 21)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 33) ~= true then -- Green Aztec Sleeveless Puffer
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 33)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 41) ~= true then -- Green Aztec Puffer
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 41)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 58) ~= true then -- Black Aztec Sleeveless Puffer
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 58)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 2) ~= true then -- Black Aztec Puffer
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 2)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 19) ~= true then -- Cream Splinter Sleeveless Puffer
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 19)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 27) ~= true then -- Cream Splinter Puffer
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 27)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 42) ~= true then -- Dark Splinter Sleeveless Puffer
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 42)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 47) ~= true then -- Dark Splinter Puffer
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 47)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 58) ~= true then -- Green Latin Sleeveless Puffer
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 58)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 60) ~= true then -- Green Latin Puffer
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 60)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 3) ~= true then -- Black Latin Sleeveless Puffer
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 3)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 5) ~= true then -- Black Latin Puffer
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 5)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 10) ~= true then -- Orange Camo Sleeveless Puffer
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 10)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 13) ~= true then -- Orange Camo Puffer
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 13)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 18) ~= true then -- Aqua Camo Sleeveless Puffer
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 18)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 20) ~= true then -- Aqua Camo Puffer
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 20)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 25) ~= true then -- Gradient Sleeveless Puffer
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 25)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 28) ~= true then -- Gradient Puffer
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 28)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL6", 23) ~= true then -- Pink Gradient Sleeveless Puffer
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL6", true, 23)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL6", 63) ~= true then -- Pink Gradient Puffer
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL6", true, 63)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL1", 61) ~= true then -- Blue Hayes Retro Racing
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL1", true, 61)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 3) ~= true then -- Hayes Modern Racing
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 3)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 13) ~= true then -- White Hayes Retro Racing
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 13)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 20) ~= true then -- LTD Modern Racing
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 20)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 32) ~= true then -- White Globe Oil Retro Racing
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 32)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 38) ~= true then -- Blue Dinka Modern Racing
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 38)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 48) ~= true then -- Green Crowex Retro Racing
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 48)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL2", 55) ~= true then -- Red Dinka Modern Racing
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL2", true, 55)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 1) ~= true then -- Red Globe Oil Retro Racing
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 1)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 8) ~= true then -- Yellow Vapid Modern Racing
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 8)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 18) ~= true then -- Black Crowex Retro Racing
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 18)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 24) ~= true then -- Ubermacht Modern Racing
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 24)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 36) ~= true then -- Blue Atomic Retro Racing
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 36)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 46) ~= true then -- White Güffy Modern Racing
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 46)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL3", 61) ~= true then -- Yellow Atomic Retro Racing
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL3", true, 61)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 7) ~= true then -- Black Güffy Modern Racing
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 7)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 22) ~= true then -- Blue Redwood Retro Racing
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 22)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 29) ~= true then -- Light Dinka Modern Racing
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 29)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 49) ~= true then -- Dark Dinka Modern Racing
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 49)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL4", 62) ~= true then -- Blue Bravado Modern Racing
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL4", true, 62)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 6) ~= true then -- Black Bravado Modern Racing
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 6)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 14) ~= true then -- Imponte Modern Racing
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 14)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL5", 21) ~= true then -- Xero Modern Racing
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL5", true, 21)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL6", 33) ~= true then -- Fade Broker Modern Racing
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL6", true, 33)
						end
						if stats.get_bool_masked("MPX_TUNERPSTAT_BOOL7", 9) ~= true then -- Red Redwood Retro Racing
							stats.set_bool_masked("MPX_TUNERPSTAT_BOOL7", true, 9)
						end
					end
					if ImGui.IsItemHovered() then
						ImGui.SetTooltip("Unlocks all ls tuners reputation without level 1000")
					end
					
					if ImGui.Button("Agency##Unlocks") then
						if stats.get_bool("MPX_BS_FRANKLIN_DIALOGUE_0") ~= true then
							stats.set_bool("MPX_BS_FRANKLIN_DIALOGUE_0", true)
						end
						if stats.get_bool("MPX_BS_FRANKLIN_DIALOGUE_1") ~= true then
							stats.set_bool("MPX_BS_FRANKLIN_DIALOGUE_1", true)
						end
						if stats.get_bool("MPX_BS_FRANKLIN_DIALOGUE_2") ~= true then
							stats.set_bool("MPX_BS_FRANKLIN_DIALOGUE_2", true)
						end
						if stats.get_bool("MPX_BS_IMANI_D_APP_SETUP") ~= true then
							stats.set_bool("MPX_BS_IMANI_D_APP_SETUP", true)
						end
						if stats.get_bool("MPX_BS_IMANI_D_APP_STRAND") ~= true then
							stats.set_bool("MPX_BS_IMANI_D_APP_STRAND", true)
						end
						if stats.get_bool("MPX_BS_IMANI_D_APP_PARTY") ~= true then
							stats.set_bool("MPX_BS_IMANI_D_APP_PARTY", true)
						end
						if stats.get_bool("MPX_BS_IMANI_D_APP_PARTY_2") ~= true then
							stats.set_bool("MPX_BS_IMANI_D_APP_PARTY_2", true)
						end
						if stats.get_bool("MPX_BS_IMANI_D_APP_PARTY_F") ~= true then
							stats.set_bool("MPX_BS_IMANI_D_APP_PARTY_F", true)
						end
						if stats.get_bool("MPX_BS_IMANI_D_APP_BILL") ~= true then
							stats.set_bool("MPX_BS_IMANI_D_APP_BILL", true)
						end
						if stats.get_bool("MPX_BS_IMANI_D_APP_BILL_2") ~= true then
							stats.set_bool("MPX_BS_IMANI_D_APP_BILL_2", true)
						end
						if stats.get_bool("MPX_BS_IMANI_D_APP_BILL_F") ~= true then
							stats.set_bool("MPX_BS_IMANI_D_APP_BILL_F", true)
						end
						if stats.get_bool("MPX_BS_IMANI_D_APP_HOOD") ~= true then
							stats.set_bool("MPX_BS_IMANI_D_APP_HOOD", true)
						end
						if stats.get_bool("MPX_BS_IMANI_D_APP_HOOD_2") ~= true then
							stats.set_bool("MPX_BS_IMANI_D_APP_HOOD_2", true)
						end
						if stats.get_bool("MPX_BS_IMANI_D_APP_HOOD_F") ~= true then
							stats.set_bool("MPX_BS_IMANI_D_APP_HOOD_F", true)
						end
					end
					ImGui.SameLine()
					if ImGui.Button("Awards##Agency##Unlocks") then
						if stats.get_int("MPX_AWD_CONTRACTOR") ~= 50 then
							stats.set_int("MPX_AWD_CONTRACTOR", 50)
						end
						if stats.get_int("MPX_AWD_COLD_CALLER") ~= 50 then
							stats.set_int("MPX_AWD_COLD_CALLER", 50)
						end
						if stats.get_int("MPX_AWD_PRODUCER") ~= 60 then
							stats.set_int("MPX_AWD_PRODUCER", 60)
						end
						if stats.get_int("MPX_FIXERTELEPHONEHITSCOMPL") ~= 10 then
							stats.set_int("MPX_FIXERTELEPHONEHITSCOMPL", 10)
						end
						if stats.get_int("MPX_PAYPHONE_BONUS_KILL_METHOD") ~= 10 then
							stats.set_int("MPX_PAYPHONE_BONUS_KILL_METHOD", 10)
						end
						if stats.get_int("MPX_FIXER_COUNT") ~= 501 then
							stats.set_int("MPX_FIXER_COUNT", 501)
						end
						if stats.get_int("MPX_FIXER_SC_VEH_RECOVERED") ~= 501 then
							stats.set_int("MPX_FIXER_SC_VEH_RECOVERED", 501)
						end
						if stats.get_int("MPX_FIXER_SC_VAL_RECOVERED") ~= 501 then
							stats.set_int("MPX_FIXER_SC_VAL_RECOVERED", 501)
						end
						if stats.get_int("MPX_FIXER_SC_GANG_TERMINATED") ~= 501 then
							stats.set_int("MPX_FIXER_SC_GANG_TERMINATED", 501)
						end
						if stats.get_int("MPX_FIXER_SC_VIP_RESCUED") ~= 501 then
							stats.set_int("MPX_FIXER_SC_VIP_RESCUED", 501)
						end
						if stats.get_int("MPX_FIXER_SC_ASSETS_PROTECTED") ~= 501 then
							stats.set_int("MPX_FIXER_SC_ASSETS_PROTECTED", 501)
						end
						if stats.get_int("MPX_FIXER_SC_EQ_DESTROYED") ~= 501 then
							stats.set_int("MPX_FIXER_SC_EQ_DESTROYED", 501)
						end
						if stats.get_int("MPX_FIXER_EARNINGS") ~= 300000 then
							stats.set_int("MPX_FIXER_EARNINGS", 300000)
						end
						if stats.get_bool("MPX_AWD_TEEING_OFF") ~= true then
							stats.set_bool("MPX_AWD_TEEING_OFF", true)
						end
						if stats.get_bool("MPX_AWD_PARTY_NIGHT") ~= true then
							stats.set_bool("MPX_AWD_PARTY_NIGHT", true)
						end
						if stats.get_bool("MPX_AWD_BILLIONAIRE_GAMES") ~= true then
							stats.set_bool("MPX_AWD_BILLIONAIRE_GAMES", true)
						end
						if stats.get_bool("MPX_AWD_HOOD_PASS") ~= true then
							stats.set_bool("MPX_AWD_HOOD_PASS", true)
						end
						if stats.get_bool("MPX_AWD_STUDIO_TOUR") ~= true then
							stats.set_bool("MPX_AWD_STUDIO_TOUR", true)
						end
						if stats.get_bool("MPX_AWD_DONT_MESS_DRE") ~= true then
							stats.set_bool("MPX_AWD_DONT_MESS_DRE", true)
						end
						if stats.get_bool("MPX_AWD_BACKUP") ~= true then
							stats.set_bool("MPX_AWD_BACKUP", true)
						end
						if stats.get_bool("MPX_AWD_SHORTFRANK_1") ~= true then
							stats.set_bool("MPX_AWD_SHORTFRANK_1", true)
						end
						if stats.get_bool("MPX_AWD_SHORTFRANK_2") ~= true then
							stats.set_bool("MPX_AWD_SHORTFRANK_2", true)
						end
						if stats.get_bool("MPX_AWD_SHORTFRANK_3") ~= true then
							stats.set_bool("MPX_AWD_SHORTFRANK_3", true)
						end
						if stats.get_bool("MPX_AWD_CONTR_KILLER") ~= true then
							stats.set_bool("MPX_AWD_CONTR_KILLER", true)
						end
						if stats.get_bool("MPX_AWD_DOGS_BEST_FRIEND") ~= true then
							stats.set_bool("MPX_AWD_DOGS_BEST_FRIEND", true)
						end
						if stats.get_bool("MPX_AWD_MUSIC_STUDIO") ~= true then
							stats.set_bool("MPX_AWD_MUSIC_STUDIO", true)
						end
						if stats.get_bool("MPX_AWD_SHORTLAMAR_1") ~= true then
							stats.set_bool("MPX_AWD_SHORTLAMAR_1", true)
						end
						if stats.get_bool("MPX_AWD_SHORTLAMAR_2") ~= true then
							stats.set_bool("MPX_AWD_SHORTLAMAR_2", true)
						end
						if stats.get_bool("MPX_AWD_SHORTLAMAR_3") ~= true then
							stats.set_bool("MPX_AWD_SHORTLAMAR_3", true)
						end
					end
					ImGui.EndTabItem()
				end
				ImGui.EndTabBar()
			end
		end
		ImGui.EndTabBar()
	end
end)

disabletransactionerror = false
taxiservice1 = false
taxiservice2 = false

script.register_looped("GoldenGets Misc", function (script)
	if disabletransactionerror then --????????
		if locals_v_get_int(SupportVersion, BTEg1 + 6) == 4 or 20 then
			locals_v_set_int(SupportVersion, BTEg1, 0) -- shop_controller.c	if (Global_4536677)    HUD::SET_WARNING_MESSAGE_WITH_HEADER("CTALERT_A" /*Alert*/, func_1372(Global_4536683), instructionalKey, 0, false, -1, 0, 0, true, 0);
			locals_v_set_int(SupportVersion, BTEg2, 0) -- shop_controller.c	HUD::BEGIN_TEXT_COMMAND_THEFEED_POST("CTALERT_F_1" /*Rockstar game servers could not process this transaction. Please try again and check ~HUD_COLOUR_SOCIAL_CLUB~www.rockstargames.com/support~s~ for information about current issues, outages, or scheduled maintenance periods.*/);
			locals_v_set_int(SupportVersion, BTEg3, 0) -- shop_controller.c	HUD::BEGIN_TEXT_COMMAND_THEFEED_POST("CTALERT_F_1" /*Rockstar game servers could not process this transaction. Please try again and check ~HUD_COLOUR_SOCIAL_CLUB~www.rockstargames.com/support~s~ for information about current issues, outages, or scheduled maintenance periods.*/);
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
StoneHatchetRampage = false
StoneHatchetRampage_Toggle = 0
MaxBetLimit = false
MaxBetLimit_Toggle = 0
TunableMultplier = false
LSCarMeetAllMultiplier = false

script.register_looped("GoldenGets Multiplier", function()
	if EnableVehicle then
		if tunables.get_bool("ENABLE_VEHICLE_AKUMA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_AKUMA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ALEUTIAN") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ALEUTIAN", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ALKONOST") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ALKONOST", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ALPHA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ALPHA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ANNIHILATOR2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ANNIHILATOR2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ASBO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ASBO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ASEA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ASEA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ASTEROPE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ASTEROPE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ASTEROPE2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ASTEROPE2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ASTRON") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ASTRON", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BALLER2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BALLER2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BALLER3") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BALLER3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BALLER4") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BALLER4", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BALLER5") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BALLER5", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BALLER6") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BALLER6", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BALLER7") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BALLER7", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BALLER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BALLER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BALLER8") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BALLER8", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BANDITO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BANDITO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BATI2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BATI2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BENSON2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BENSON2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BESTIAGTS") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BESTIAGTS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BFINJECTION") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BFINJECTION", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BIFTA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BIFTA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BJXL") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BJXL", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BLADE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BLADE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BLAZER2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BLAZER2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BLAZER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BLAZER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BLAZER3") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BLAZER3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BODHI2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BODHI2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BOOR") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BOOR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BOXVILLE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BOXVILLE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BOXVILLE6") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BOXVILLE6", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BRAWLER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BRAWLER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BRICKADE2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BRICKADE2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BRIGHAM") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BRIGHAM", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BRIOSO2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BRIOSO2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BRIOSO3") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BRIOSO3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BROADWAY") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BROADWAY", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BTYPE2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BTYPE2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BTYPE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BTYPE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BTYPE3") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BTYPE3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BUFFALO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BUFFALO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BUFFALO2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BUFFALO2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BUFFALO4") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BUFFALO4", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BUFFALO5") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BUFFALO5", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BULLET") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BULLET", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BURRITO2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BURRITO2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CALICO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_CALICO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CARACARA2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_CARACARA2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CARBONIZZARE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_CARBONIZZARE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CASTIGATOR") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_CASTIGATOR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CAVALCADE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_CAVALCADE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CAVALCADE2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_CAVALCADE2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CAVALCADE3") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_CAVALCADE3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CHAMPION") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_CHAMPION", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CHEETAH") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_CHEETAH", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CINQUEMILA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_CINQUEMILA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CLIQUE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_CLIQUE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CLIQUE2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_CLIQUE2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COG55") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_COG55", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COG552") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_COG552", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COGCABRIO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_COGCABRIO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COGNOSCENTI") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_COGNOSCENTI", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COGNOSCENTI2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_COGNOSCENTI2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COMET6") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_COMET6", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COMET7") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_COMET7", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CONADA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_CONADA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CONADA2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_CONADA2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COQUETTE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_COQUETTE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COQUETTE2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_COQUETTE2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COQUETTE3") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_COQUETTE3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COQUETTE5") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_COQUETTE5", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CORSITA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_CORSITA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COUREUR") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_COUREUR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CYPHER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_CYPHER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DEITY") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_DEITY", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DEVESTE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_DEVESTE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DEVIANT") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_DEVIANT", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DILETTANTE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_DILETTANTE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DINGY5") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_DINGY5", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DOMINATOR7") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_DOMINATOR7", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DOMINATOR8") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_DOMINATOR8", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DOMINATOR9") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_DOMINATOR9", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DOMINATOR10") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_DOMINATOR10", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DORADO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_DORADO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DOUBLE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_DOUBLE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DRAFTER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_DRAFTER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DRAUGUR") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_DRAUGUR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DUNE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_DUNE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DYNASTY") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_DYNASTY", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_EMERUS") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_EMERUS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ENDURO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ENDURO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ENTITY3") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ENTITY3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ENTITYXF") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ENTITYXF", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ENVISAGE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ENVISAGE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_EUDORA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_EUDORA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_EUROS") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_EUROS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_EUROSX32") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_EUROSX32", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_EVERON") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_EVERON", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_EVERON2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_EVERON2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_EXEMPLAR") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_EXEMPLAR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_F620") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_F620", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FAGGIO2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FAGGIO2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FELON") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FELON", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FELON2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FELON2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FELTZER2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FELTZER2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FELTZER3") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FELTZER3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FIRETRUCK") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FIRETRUCK", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FMJ") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FMJ", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FORMULA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FORMULA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FORMULA2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FORMULA2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FORMULA2_PODIUM") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FORMULA2_PODIUM", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FORMULA_PODIUM") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FORMULA_PODIUM", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FQ2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FQ2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FR36") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FR36", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FUGITIVE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FUGITIVE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FURIA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FURIA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FUROREGT") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FUROREGT", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FUSILADE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FUSILADE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FUTO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FUTO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FUTO2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FUTO2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_GAUNTLET") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_GAUNTLET", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_GAUNTLET3") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_GAUNTLET3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_GAUNTLET4") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_GAUNTLET4", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_GAUNTLET6") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_GAUNTLET6", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_GRANGER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_GRANGER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_GRANGER2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_GRANGER2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_GREENWOOD") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_GREENWOOD", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_GRESLEY") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_GRESLEY", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_GROWLER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_GROWLER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_HABANERO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_HABANERO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_HAKUCHOU") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_HAKUCHOU", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_HELLION") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_HELLION", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_HEXER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_HEXER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_IGNUS") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_IGNUS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_IMORGEN") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_IMORGEN", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_IMPALER5") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_IMPALER5", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_IMPALER6") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_IMPALER6", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_INDUCTOR") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_INDUCTOR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_INFERNUS") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_INFERNUS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_INGOT") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_INGOT", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_INNOVATION") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_INNOVATION", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_INTRUDER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_INTRUDER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ISSI2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ISSI2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ISSI7") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ISSI7", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ISSI8") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ISSI8", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ITALIGTO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ITALIGTO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ITALIRSX") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ITALIRSX", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_IWAGEN") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_IWAGEN", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_JACKAL") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_JACKAL", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_JB700") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_JB700", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_JB7002") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_JB7002", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_JESTER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_JESTER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_JESTER2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_JESTER2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_JESTER4") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_JESTER4", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_JOURNEY2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_JOURNEY2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_JUBILEE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_JUBILEE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_JUGULAR") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_JUGULAR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_KALAHARI") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_KALAHARI", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_KANJO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_KANJO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_KANJOSJ") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_KANJOSJ", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_KOMODA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_KOMODA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_KRIEGER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_KRIEGER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_L35") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_L35", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_LANDSTALKER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_LANDSTALKER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_LGUARD") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_LGUARD", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_LM87") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_LM87", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_LOCUST") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_LOCUST", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_LONGFIN") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_LONGFIN", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_MAMBA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_MAMBA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_MANCHEZ2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_MANCHEZ2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_MASSACRO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_MASSACRO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_MASSACRO2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_MASSACRO2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_MESA3") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_MESA3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_MINITANK") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_MINITANK", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_MODEL_CZ1") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_MODEL_CZ1", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_MONROE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_MONROE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_MONSTER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_MONSTER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_MONSTROCITI") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_MONSTROCITI", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_NEBULA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_NEBULA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_NEMESIS") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_NEMESIS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_NEO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_NEO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_NINEF") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_NINEF", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_NINEF2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_NINEF2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_NIOBE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_NIOBE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_NOVAK") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_NOVAK", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_OMNISEGT") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_OMNISEGT", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ORACLE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ORACLE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ORACLE2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ORACLE2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_OUTLAW") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_OUTLAW", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PANTHERE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_PANTHERE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PARAGON") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_PARAGON", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PARAGON3") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_PARAGON3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PATRIOT") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_PATRIOT", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PATRIOT3") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_PATRIOT3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PATROLBOAT") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_PATROLBOAT", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PCJ") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_PCJ", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PENUMBRA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_PENUMBRA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PEYOTE2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_PEYOTE2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PICADOR") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_PICADOR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PIGALLE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_PIGALLE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PIPISTRELLO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_PIPISTRELLO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PIZZABOY") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_PIZZABOY", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_POLDOMINATOR10") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_POLDOMINATOR10", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_POLDORADO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_POLDORADO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_POLGAUNTLET") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_POLGAUNTLET", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_POLGREENWOOD") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_POLGREENWOOD", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_POLICE4") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_POLICE4", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_POLICE5") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_POLICE5", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_POLIMPALER5") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_POLIMPALER5", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_POLIMPALER6") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_POLIMPALER6", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_POSTLUDE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_POSTLUDE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_POWERSURGE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_POWERSURGE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PRAIRIE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_PRAIRIE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PRANGER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_PRANGER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PREMIER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_PREMIER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PREVION") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_PREVION", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_R300") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_R300", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RADI") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_RADI", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RAIJU") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_RAIJU", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RANCHERXL") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_RANCHERXL", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RAPIDGT") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_RAPIDGT", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RAPIDGT2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_RAPIDGT2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RATEL") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_RATEL", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RATLOADER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_RATLOADER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_REBEL") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_REBEL", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_REBEL2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_REBEL2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_REBLA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_REBLA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_REEVER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_REEVER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_REGINA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_REGINA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_REMUS") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_REMUS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RETINUE2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_RETINUE2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RHINEHART") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_RHINEHART", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RIOT") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_RIOT", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ROCOTO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ROCOTO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ROMERO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ROMERO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RROCKET") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_RROCKET", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RT3000") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_RT3000", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RUFFIAN") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_RUFFIAN", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RUINER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_RUINER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RUINER4") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_RUINER4", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_S80") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_S80", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SANCHEZ") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SANCHEZ", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SANCHEZ2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SANCHEZ2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SANDKING2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SANDKING2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SCHAFTER2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SCHAFTER2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SCHAFTER4") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SCHAFTER4", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SCHAFTER6") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SCHAFTER6", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SCHLAGEN") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SCHLAGEN", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SCHWARZER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SCHWARZER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SEMINOLE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SEMINOLE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SENTINEL2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SENTINEL2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SENTINEL4") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SENTINEL4", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SERRANO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SERRANO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SEVEN70") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SEVEN70", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SHEAVA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SHEAVA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SHINOBI") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SHINOBI", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SLAMTRUCK") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SLAMTRUCK", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SM722") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SM722", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SOVEREIGN") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SOVEREIGN", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SQUADDIE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SQUADDIE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_STANIER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_STANIER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_STINGER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_STINGER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_STINGERGT") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_STINGERGT", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_STINGERTT") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_STINGERTT", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_STOCKADE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_STOCKADE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_STRATUM") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_STRATUM", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_STREAMER216") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_STREAMER216", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_STRYDER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_STRYDER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SUGOI") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SUGOI", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SULTAN2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SULTAN2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SULTAN3") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SULTAN3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SUPERD") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SUPERD", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SURANO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SURANO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SURFER3") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SURFER3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SURGE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SURGE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TAHOMA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_TAHOMA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TAILGATER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_TAILGATER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TAILGATER2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_TAILGATER2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TAMPA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_TAMPA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TAXI") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_TAXI", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TENF") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_TENF", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TENF2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_TENF2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TERMINUS") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_TERMINUS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_THRAX") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_THRAX", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_THRUST") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_THRUST", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TOREADOR") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_TOREADOR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TORERO2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_TORERO2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TOROS") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_TOROS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TULIP") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_TULIP", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TULIP2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_TULIP2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TURISMO3") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_TURISMO3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VACCA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VACCA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VADER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VADER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VAGRANT") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VAGRANT", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VAMOS") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VAMOS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VECTRE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VECTRE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VERLIERER2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VERLIERER2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VERUS") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VERUS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VETIR") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VETIR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VETO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VETO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VETO2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VETO2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VIGERO2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VIGERO2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VIGERO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VIGERO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VIGERO3") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VIGERO3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VINDICATOR") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VINDICATOR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VIRTUE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VIRTUE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VIVANITE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VIVANITE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VOLTIC") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VOLTIC", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VORSCHLAGHAMMER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VORSCHLAGHAMMER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VSTR") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VSTR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_WARRENER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_WARRENER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_WARRENER2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_WARRENER2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_WASHINGTON") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_WASHINGTON", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_WEEVIL") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_WEEVIL", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_WEEVIL2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_WEEVIL2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_WINKY") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_WINKY", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_XLS") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_XLS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_XLS2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_XLS2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_YOSEMITE2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_YOSEMITE2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_YOSEMITE1500") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_YOSEMITE1500", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ZENO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ZENO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ZHABA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ZHABA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ZION") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ZION", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ZION2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ZION2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ZION3") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ZION3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ZORRUSSO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ZORRUSSO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ZR350") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ZR350", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ZTYPE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ZTYPE", true)
		end
		if tunables.get_bool("ENABLE_VEH_CLUB") ~= true then
			tunables.set_bool("ENABLE_VEH_CLUB", true)
		end
		if tunables.get_bool("ENABLE_VEH_COQUETTE4") ~= true then
			tunables.set_bool("ENABLE_VEH_COQUETTE4", true)
		end
		if tunables.get_bool("ENABLE_VEH_DUKES3") ~= true then
			tunables.set_bool("ENABLE_VEH_DUKES3", true)
		end
		if tunables.get_bool("ENABLE_VEH_GAUNTLET5") ~= true then
			tunables.set_bool("ENABLE_VEH_GAUNTLET5", true)
		end
		if tunables.get_bool("ENABLE_VEH_GLENDALE2") ~= true then
			tunables.set_bool("ENABLE_VEH_GLENDALE2", true)
		end
		if tunables.get_bool("ENABLE_VEH_LANDSTALKER2") ~= true then
			tunables.set_bool("ENABLE_VEH_LANDSTALKER2", true)
		end
		if tunables.get_bool("ENABLE_VEH_MANANA2") ~= true then
			tunables.set_bool("ENABLE_VEH_MANANA2", true)
		end
		if tunables.get_bool("ENABLE_VEH_OPENWHEEL1") ~= true then
			tunables.set_bool("ENABLE_VEH_OPENWHEEL1", true)
		end
		if tunables.get_bool("ENABLE_VEH_OPENWHEEL2") ~= true then
			tunables.set_bool("ENABLE_VEH_OPENWHEEL2", true)
		end
		if tunables.get_bool("ENABLE_VEH_PENUMBRA2") ~= true then
			tunables.set_bool("ENABLE_VEH_PENUMBRA2", true)
		end
		if tunables.get_bool("ENABLE_VEH_PEYOTE3") ~= true then
			tunables.set_bool("ENABLE_VEH_PEYOTE3", true)
		end
		if tunables.get_bool("ENABLE_VEH_POLGREENWOOD") ~= true then
			tunables.set_bool("ENABLE_VEH_POLGREENWOOD", true)
		end
		if tunables.get_bool("ENABLE_VEH_SEMINOLE2") ~= true then
			tunables.set_bool("ENABLE_VEH_SEMINOLE2", true)
		end
		if tunables.get_bool("ENABLE_VEH_TIGON") ~= true then
			tunables.set_bool("ENABLE_VEH_TIGON", true)
		end
		if tunables.get_bool("ENABLE_VEH_YOSEMITE3") ~= true then
			tunables.set_bool("ENABLE_VEH_YOSEMITE3", true)
		end
		if tunables.get_bool("ENABLE_VEH_YOUGA3") ~= true then
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
		if tunables.get_bool("ENABLEEXEC1_DEWBAUCHEE") ~= true then
			tunables.set_bool("ENABLEEXEC1_DEWBAUCHEE", true)
		end
		if tunables.get_bool("ENABLEEXEC1_GROTTI_PROTO") ~= true then
			tunables.set_bool("ENABLEEXEC1_GROTTI_PROTO", true)
		end
		if tunables.get_bool("ENABLEEXEC1_PFISTER") ~= true then
			tunables.set_bool("ENABLEEXEC1_PFISTER", true)
		end
		if tunables.get_bool("ENABLEGP1") ~= true then
			tunables.set_bool("ENABLEGP1", true)
		end
		if tunables.get_bool("ENABLEINFERNUS2") ~= true then
			tunables.set_bool("ENABLEINFERNUS2", true)
		end
		if tunables.get_bool("ENABLERUSTON") ~= true then
			tunables.set_bool("ENABLERUSTON", true)
		end
		if tunables.get_bool("ENABLETURISMO2") ~= true then
			tunables.set_bool("ENABLETURISMO2", true)
		end
		if tunables.get_bool("ENABLE_AKULA") ~= true then
			tunables.set_bool("ENABLE_AKULA", true)
		end
		if tunables.get_bool("ENABLE_ALPHAZ1") ~= true then
			tunables.set_bool("ENABLE_ALPHAZ1", true)
		end
		if tunables.get_bool("ENABLE_ARDENT") ~= true then
			tunables.set_bool("ENABLE_ARDENT", true)
		end
		if tunables.get_bool("ENABLE_AUTARCH") ~= true then
			tunables.set_bool("ENABLE_AUTARCH", true)
		end
		if tunables.get_bool("ENABLE_BALLER") ~= true then
			tunables.set_bool("ENABLE_BALLER", true)
		end
		if tunables.get_bool("ENABLE_BARRAGE") ~= true then
			tunables.set_bool("ENABLE_BARRAGE", true)
		end
		if tunables.get_bool("ENABLE_BEEJAY_XL") ~= true then
			tunables.set_bool("ENABLE_BEEJAY_XL", true)
		end
		if tunables.get_bool("ENABLE_BIKER_AVARUS") ~= true then
			tunables.set_bool("ENABLE_BIKER_AVARUS", true)
		end
		if tunables.get_bool("ENABLE_BIKER_BAGGER") ~= true then
			tunables.set_bool("ENABLE_BIKER_BAGGER", true)
		end
		if tunables.get_bool("ENABLE_BIKER_BLAZER4") ~= true then
			tunables.set_bool("ENABLE_BIKER_BLAZER4", true)
		end
		if tunables.get_bool("ENABLE_BIKER_CHIMERA") ~= true then
			tunables.set_bool("ENABLE_BIKER_CHIMERA", true)
		end
		if tunables.get_bool("ENABLE_BIKER_DEFILER") ~= true then
			tunables.set_bool("ENABLE_BIKER_DEFILER", true)
		end
		if tunables.get_bool("ENABLE_BIKER_ESSKEY") ~= true then
			tunables.set_bool("ENABLE_BIKER_ESSKEY", true)
		end
		if tunables.get_bool("ENABLE_BIKER_FAGGIO") ~= true then
			tunables.set_bool("ENABLE_BIKER_FAGGIO", true)
		end
		if tunables.get_bool("ENABLE_BIKER_FAGGIO3") ~= true then
			tunables.set_bool("ENABLE_BIKER_FAGGIO3", true)
		end
		if tunables.get_bool("ENABLE_BIKER_HAKUCHOU2") ~= true then
			tunables.set_bool("ENABLE_BIKER_HAKUCHOU2", true)
		end
		if tunables.get_bool("ENABLE_BIKER_MANCHEZ") ~= true then
			tunables.set_bool("ENABLE_BIKER_MANCHEZ", true)
		end
		if tunables.get_bool("ENABLE_BIKER_NIGHTBLADE") ~= true then
			tunables.set_bool("ENABLE_BIKER_NIGHTBLADE", true)
		end
		if tunables.get_bool("ENABLE_BIKER_PROPERTY") ~= true then
			tunables.set_bool("ENABLE_BIKER_PROPERTY", true)
		end
		if tunables.get_bool("ENABLE_BIKER_RAPTOR") ~= true then
			tunables.set_bool("ENABLE_BIKER_RAPTOR", true)
		end
		if tunables.get_bool("ENABLE_BIKER_RATBIKE") ~= true then
			tunables.set_bool("ENABLE_BIKER_RATBIKE", true)
		end
		if tunables.get_bool("ENABLE_BIKER_SANCTUS") ~= true then
			tunables.set_bool("ENABLE_BIKER_SANCTUS", true)
		end
		if tunables.get_bool("ENABLE_BIKER_SHOTARO") ~= true then
			tunables.set_bool("ENABLE_BIKER_SHOTARO", true)
		end
		if tunables.get_bool("ENABLE_BIKER_TORNADO6") ~= true then
			tunables.set_bool("ENABLE_BIKER_TORNADO6", true)
		end
		if tunables.get_bool("ENABLE_BIKER_VORTEX") ~= true then
			tunables.set_bool("ENABLE_BIKER_VORTEX", true)
		end
		if tunables.get_bool("ENABLE_BIKER_WESTERNDAEMON") ~= true then
			tunables.set_bool("ENABLE_BIKER_WESTERNDAEMON", true)
		end
		if tunables.get_bool("ENABLE_BIKER_WOLFSBANE") ~= true then
			tunables.set_bool("ENABLE_BIKER_WOLFSBANE", true)
		end
		if tunables.get_bool("ENABLE_BIKER_YOUGA2") ~= true then
			tunables.set_bool("ENABLE_BIKER_YOUGA2", true)
		end
		if tunables.get_bool("ENABLE_BIKER_ZOMBIEA") ~= true then
			tunables.set_bool("ENABLE_BIKER_ZOMBIEA", true)
		end
		if tunables.get_bool("ENABLE_BIKER_ZOMBIEB") ~= true then
			tunables.set_bool("ENABLE_BIKER_ZOMBIEB", true)
		end
		if tunables.get_bool("ENABLE_BLIMP3") ~= true then
			tunables.set_bool("ENABLE_BLIMP3", true)
		end
		if tunables.get_bool("ENABLE_BOMBUSHKA") ~= true then
			tunables.set_bool("ENABLE_BOMBUSHKA", true)
		end
		if tunables.get_bool("ENABLE_CARACARA") ~= true then
			tunables.set_bool("ENABLE_CARACARA", true)
		end
		if tunables.get_bool("ENABLE_CHEBUREK") ~= true then
			tunables.set_bool("ENABLE_CHEBUREK", true)
		end
		if tunables.get_bool("ENABLE_CHEETAH2") ~= true then
			tunables.set_bool("ENABLE_CHEETAH2", true)
		end
		if tunables.get_bool("ENABLE_CHERNOBOG") ~= true then
			tunables.set_bool("ENABLE_CHERNOBOG", true)
		end
		if tunables.get_bool("ENABLE_COMET4") ~= true then
			tunables.set_bool("ENABLE_COMET4", true)
		end
		if tunables.get_bool("ENABLE_COMET5") ~= true then
			tunables.set_bool("ENABLE_COMET5", true)
		end
		if tunables.get_bool("ENABLE_CYCLONE") ~= true then
			tunables.set_bool("ENABLE_CYCLONE", true)
		end
		if tunables.get_bool("ENABLE_DELUXO") ~= true then
			tunables.set_bool("ENABLE_DELUXO", true)
		end
		if tunables.get_bool("ENABLE_DOMINATOR3") ~= true then
			tunables.set_bool("ENABLE_DOMINATOR3", true)
		end
		if tunables.get_bool("ENABLE_ELLIE") ~= true then
			tunables.set_bool("ENABLE_ELLIE", true)
		end
		if tunables.get_bool("ENABLE_ENTITY2") ~= true then
			tunables.set_bool("ENABLE_ENTITY2", true)
		end
		if tunables.get_bool("ENABLE_FAGALOA") ~= true then
			tunables.set_bool("ENABLE_FAGALOA", true)
		end
		if tunables.get_bool("ENABLE_FLASHGT") ~= true then
			tunables.set_bool("ENABLE_FLASHGT", true)
		end
		if tunables.get_bool("ENABLE_FQ2") ~= true then
			tunables.set_bool("ENABLE_FQ2", true)
		end
		if tunables.get_bool("ENABLE_FREECRAWLER") ~= true then
			tunables.set_bool("ENABLE_FREECRAWLER", true)
		end
		if tunables.get_bool("ENABLE_FUTO") ~= true then
			tunables.set_bool("ENABLE_FUTO", true)
		end
		if tunables.get_bool("ENABLE_GB200") ~= true then
			tunables.set_bool("ENABLE_GB200", true)
		end
		if tunables.get_bool("ENABLE_GT500") ~= true then
			tunables.set_bool("ENABLE_GT500", true)
		end
		if tunables.get_bool("ENABLE_HABANERO") ~= true then
			tunables.set_bool("ENABLE_HABANERO", true)
		end
		if tunables.get_bool("ENABLE_HAVOK") ~= true then
			tunables.set_bool("ENABLE_HAVOK", true)
		end
		if tunables.get_bool("ENABLE_HEARSE") ~= true then
			tunables.set_bool("ENABLE_HEARSE", true)
		end
		if tunables.get_bool("ENABLE_HERMES") ~= true then
			tunables.set_bool("ENABLE_HERMES", true)
		end
		if tunables.get_bool("ENABLE_HOTRING") ~= true then
			tunables.set_bool("ENABLE_HOTRING", true)
		end
		if tunables.get_bool("ENABLE_HOWARD") ~= true then
			tunables.set_bool("ENABLE_HOWARD", true)
		end
		if tunables.get_bool("ENABLE_HUNTER") ~= true then
			tunables.set_bool("ENABLE_HUNTER", true)
		end
		if tunables.get_bool("ENABLE_HUSTLER") ~= true then
			tunables.set_bool("ENABLE_HUSTLER", true)
		end
		if tunables.get_bool("ENABLE_IE_BLAZER5") ~= true then
			tunables.set_bool("ENABLE_IE_BLAZER5", true)
		end
		if tunables.get_bool("ENABLE_IE_BOXVILLE5") ~= true then
			tunables.set_bool("ENABLE_IE_BOXVILLE5", true)
		end
		if tunables.get_bool("ENABLE_IE_COMET2") ~= true then
			tunables.set_bool("ENABLE_IE_COMET2", true)
		end
		if tunables.get_bool("ENABLE_IE_COMET3") ~= true then
			tunables.set_bool("ENABLE_IE_COMET3", true)
		end
		if tunables.get_bool("ENABLE_IE_DIABLOUS") ~= true then
			tunables.set_bool("ENABLE_IE_DIABLOUS", true)
		end
		if tunables.get_bool("ENABLE_IE_DIABLOUS2") ~= true then
			tunables.set_bool("ENABLE_IE_DIABLOUS2", true)
		end
		if tunables.get_bool("ENABLE_IE_DUNE4") ~= true then
			tunables.set_bool("ENABLE_IE_DUNE4", true)
		end
		if tunables.get_bool("ENABLE_IE_DUNE5") ~= true then
			tunables.set_bool("ENABLE_IE_DUNE5", true)
		end
		if tunables.get_bool("ENABLE_IE_ELEGY") ~= true then
			tunables.set_bool("ENABLE_IE_ELEGY", true)
		end
		if tunables.get_bool("ENABLE_IE_ELEGY2") ~= true then
			tunables.set_bool("ENABLE_IE_ELEGY2", true)
		end
		if tunables.get_bool("ENABLE_IE_FCR") ~= true then
			tunables.set_bool("ENABLE_IE_FCR", true)
		end
		if tunables.get_bool("ENABLE_IE_FCR2") ~= true then
			tunables.set_bool("ENABLE_IE_FCR2", true)
		end
		if tunables.get_bool("ENABLE_IE_ITALIGTB") ~= true then
			tunables.set_bool("ENABLE_IE_ITALIGTB", true)
		end
		if tunables.get_bool("ENABLE_IE_ITALIGTB2") ~= true then
			tunables.set_bool("ENABLE_IE_ITALIGTB2", true)
		end
		if tunables.get_bool("ENABLE_IE_NERO") ~= true then
			tunables.set_bool("ENABLE_IE_NERO", true)
		end
		if tunables.get_bool("ENABLE_IE_NERO2") ~= true then
			tunables.set_bool("ENABLE_IE_NERO2", true)
		end
		if tunables.get_bool("ENABLE_IE_PENETRATOR") ~= true then
			tunables.set_bool("ENABLE_IE_PENETRATOR", true)
		end
		if tunables.get_bool("ENABLE_IE_PHANTOM2") ~= true then
			tunables.set_bool("ENABLE_IE_PHANTOM2", true)
		end
		if tunables.get_bool("ENABLE_IE_RUINER2") ~= true then
			tunables.set_bool("ENABLE_IE_RUINER2", true)
		end
		if tunables.get_bool("ENABLE_IE_SPECTER") ~= true then
			tunables.set_bool("ENABLE_IE_SPECTER", true)
		end
		if tunables.get_bool("ENABLE_IE_SPECTER2") ~= true then
			tunables.set_bool("ENABLE_IE_SPECTER2", true)
		end
		if tunables.get_bool("ENABLE_IE_TECHNICAL2") ~= true then
			tunables.set_bool("ENABLE_IE_TECHNICAL2", true)
		end
		if tunables.get_bool("ENABLE_IE_TEMPESTA") ~= true then
			tunables.set_bool("ENABLE_IE_TEMPESTA", true)
		end
		if tunables.get_bool("ENABLE_IE_VOLTIC2") ~= true then
			tunables.set_bool("ENABLE_IE_VOLTIC2", true)
		end
		if tunables.get_bool("ENABLE_IE_WASTELANDER") ~= true then
			tunables.set_bool("ENABLE_IE_WASTELANDER", true)
		end
		if tunables.get_bool("ENABLE_ISSI3") ~= true then
			tunables.set_bool("ENABLE_ISSI3", true)
		end
		if tunables.get_bool("ENABLE_JESTER3") ~= true then
			tunables.set_bool("ENABLE_JESTER3", true)
		end
		if tunables.get_bool("ENABLE_KAMACHO") ~= true then
			tunables.set_bool("ENABLE_KAMACHO", true)
		end
		if tunables.get_bool("ENABLE_KHANJALI") ~= true then
			tunables.set_bool("ENABLE_KHANJALI", true)
		end
		if tunables.get_bool("ENABLE_LAZER") ~= true then
			tunables.set_bool("ENABLE_LAZER", true)
		end
		if tunables.get_bool("ENABLE_LOWRIDER2_FACTION") ~= true then
			tunables.set_bool("ENABLE_LOWRIDER2_FACTION", true)
		end
		if tunables.get_bool("ENABLE_LOWRIDER2_MINIVAN") ~= true then
			tunables.set_bool("ENABLE_LOWRIDER2_MINIVAN", true)
		end
		if tunables.get_bool("ENABLE_LOWRIDER2_SABREGT") ~= true then
			tunables.set_bool("ENABLE_LOWRIDER2_SABREGT", true)
		end
		if tunables.get_bool("ENABLE_LOWRIDER2_SLAMVAN") ~= true then
			tunables.set_bool("ENABLE_LOWRIDER2_SLAMVAN", true)
		end
		if tunables.get_bool("ENABLE_LOWRIDER2_TORNADO5") ~= true then
			tunables.set_bool("ENABLE_LOWRIDER2_TORNADO5", true)
		end
		if tunables.get_bool("ENABLE_LOWRIDER2_VIRGO3") ~= true then
			tunables.set_bool("ENABLE_LOWRIDER2_VIRGO3", true)
		end
		if tunables.get_bool("ENABLE_MENACER") ~= true then
			tunables.set_bool("ENABLE_MENACER", true)
		end
		if tunables.get_bool("ENABLE_MICHELLI") ~= true then
			tunables.set_bool("ENABLE_MICHELLI", true)
		end
		if tunables.get_bool("ENABLE_MOGUL") ~= true then
			tunables.set_bool("ENABLE_MOGUL", true)
		end
		if tunables.get_bool("ENABLE_MOLOTOK") ~= true then
			tunables.set_bool("ENABLE_MOLOTOK", true)
		end
		if tunables.get_bool("ENABLE_MULE4") ~= true then
			tunables.set_bool("ENABLE_MULE4", true)
		end
		if tunables.get_bool("ENABLE_NEON") ~= true then
			tunables.set_bool("ENABLE_NEON", true)
		end
		if tunables.get_bool("ENABLE_NIGHTSHARK") ~= true then
			tunables.set_bool("ENABLE_NIGHTSHARK", true)
		end
		if tunables.get_bool("ENABLE_NOKOTA") ~= true then
			tunables.set_bool("ENABLE_NOKOTA", true)
		end
		if tunables.get_bool("ENABLE_OPPRESSOR2") ~= true then
			tunables.set_bool("ENABLE_OPPRESSOR2", true)
		end
		if tunables.get_bool("ENABLE_PARIAH") ~= true then
			tunables.set_bool("ENABLE_PARIAH", true)
		end
		if tunables.get_bool("ENABLE_PATRIOT") ~= true then
			tunables.set_bool("ENABLE_PATRIOT", true)
		end
		if tunables.get_bool("ENABLE_PATRIOT2") ~= true then
			tunables.set_bool("ENABLE_PATRIOT2", true)
		end
		if tunables.get_bool("ENABLE_PBUS2") ~= true then
			tunables.set_bool("ENABLE_PBUS2", true)
		end
		if tunables.get_bool("ENABLE_POUNDER2") ~= true then
			tunables.set_bool("ENABLE_POUNDER2", true)
		end
		if tunables.get_bool("ENABLE_PRAIRIE") ~= true then
			tunables.set_bool("ENABLE_PRAIRIE", true)
		end
		if tunables.get_bool("ENABLE_PYRO") ~= true then
			tunables.set_bool("ENABLE_PYRO", true)
		end
		if tunables.get_bool("ENABLE_RAIDEN") ~= true then
			tunables.set_bool("ENABLE_RAIDEN", true)
		end
		if tunables.get_bool("ENABLE_RAPIDGT3") ~= true then
			tunables.set_bool("ENABLE_RAPIDGT3", true)
		end
		if tunables.get_bool("ENABLE_RETINUE") ~= true then
			tunables.set_bool("ENABLE_RETINUE", true)
		end
		if tunables.get_bool("ENABLE_REVOLTER") ~= true then
			tunables.set_bool("ENABLE_REVOLTER", true)
		end
		if tunables.get_bool("ENABLE_RIATA") ~= true then
			tunables.set_bool("ENABLE_RIATA", true)
		end
		if tunables.get_bool("ENABLE_RIOT2") ~= true then
			tunables.set_bool("ENABLE_RIOT2", true)
		end
		if tunables.get_bool("ENABLE_ROGUE") ~= true then
			tunables.set_bool("ENABLE_ROGUE", true)
		end
		if tunables.get_bool("ENABLE_RUINER") ~= true then
			tunables.set_bool("ENABLE_RUINER", true)
		end
		if tunables.get_bool("ENABLE_SAVESTRA") ~= true then
			tunables.set_bool("ENABLE_SAVESTRA", true)
		end
		if tunables.get_bool("ENABLE_SC1") ~= true then
			tunables.set_bool("ENABLE_SC1", true)
		end
		if tunables.get_bool("ENABLE_SCRAMJET") ~= true then
			tunables.set_bool("ENABLE_SCRAMJET", true)
		end
		if tunables.get_bool("ENABLE_SEABREEZE") ~= true then
			tunables.set_bool("ENABLE_SEABREEZE", true)
		end
		if tunables.get_bool("ENABLE_SEASPARROW") ~= true then
			tunables.set_bool("ENABLE_SEASPARROW", true)
		end
		if tunables.get_bool("ENABLE_SENTINEL3") ~= true then
			tunables.set_bool("ENABLE_SENTINEL3", true)
		end
		if tunables.get_bool("ENABLE_SERRANO") ~= true then
			tunables.set_bool("ENABLE_SERRANO", true)
		end
		if tunables.get_bool("ENABLE_STAFFORD") ~= true then
			tunables.set_bool("ENABLE_STAFFORD", true)
		end
		if tunables.get_bool("ENABLE_STARLING") ~= true then
			tunables.set_bool("ENABLE_STARLING", true)
		end
		if tunables.get_bool("ENABLE_STREITER") ~= true then
			tunables.set_bool("ENABLE_STREITER", true)
		end
		if tunables.get_bool("ENABLE_STRIKEFORCE") ~= true then
			tunables.set_bool("ENABLE_STRIKEFORCE", true)
		end
		if tunables.get_bool("ENABLE_STROMBERG") ~= true then
			tunables.set_bool("ENABLE_STROMBERG", true)
		end
		if tunables.get_bool("ENABLE_SWINGER") ~= true then
			tunables.set_bool("ENABLE_SWINGER", true)
		end
		if tunables.get_bool("ENABLE_TAIPAN") ~= true then
			tunables.set_bool("ENABLE_TAIPAN", true)
		end
		if tunables.get_bool("ENABLE_TERBYTE") ~= true then
			tunables.set_bool("ENABLE_TERBYTE", true)
		end
		if tunables.get_bool("ENABLE_TEZERACT") ~= true then
			tunables.set_bool("ENABLE_TEZERACT", true)
		end
		if tunables.get_bool("ENABLE_THRUSTER") ~= true then
			tunables.set_bool("ENABLE_THRUSTER", true)
		end
		if tunables.get_bool("ENABLE_TORERO") ~= true then
			tunables.set_bool("ENABLE_TORERO", true)
		end
		if tunables.get_bool("ENABLE_TULA") ~= true then
			tunables.set_bool("ENABLE_TULA", true)
		end
		if tunables.get_bool("ENABLE_TYRANT") ~= true then
			tunables.set_bool("ENABLE_TYRANT", true)
		end
		if tunables.get_bool("ENABLE_ULTRALIGHT") ~= true then
			tunables.set_bool("ENABLE_ULTRALIGHT", true)
		end
		if tunables.get_bool("ENABLE_VAGNER") ~= true then
			tunables.set_bool("ENABLE_VAGNER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_AKUMA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_AKUMA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ALEUTIAN") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ALEUTIAN", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ALKONOST") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ALKONOST", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ALPHA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ALPHA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ANNIHILATOR2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ANNIHILATOR2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ASBO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ASBO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ASEA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ASEA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ASTEROPE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ASTEROPE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ASTEROPE2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ASTEROPE2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ASTRON") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ASTRON", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BALLER2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BALLER2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BALLER3") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BALLER3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BALLER4") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BALLER4", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BALLER5") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BALLER5", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BALLER6") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BALLER6", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BALLER7") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BALLER7", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BALLER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BALLER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BALLER8") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BALLER8", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BANDITO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BANDITO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BATI2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BATI2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BENSON2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BENSON2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BESTIAGTS") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BESTIAGTS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BFINJECTION") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BFINJECTION", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BIFTA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BIFTA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BJXL") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BJXL", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BLADE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BLADE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BLAZER2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BLAZER2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BLAZER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BLAZER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BLAZER3") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BLAZER3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BODHI2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BODHI2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BOOR") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BOOR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BOXVILLE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BOXVILLE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BOXVILLE6") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BOXVILLE6", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BRAWLER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BRAWLER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BRICKADE2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BRICKADE2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BRIGHAM") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BRIGHAM", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BRIOSO2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BRIOSO2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BRIOSO3") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BRIOSO3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BROADWAY") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BROADWAY", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BTYPE2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BTYPE2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BTYPE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BTYPE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BTYPE3") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BTYPE3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BUFFALO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BUFFALO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BUFFALO2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BUFFALO2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BUFFALO4") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BUFFALO4", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BUFFALO5") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BUFFALO5", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BULLET") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BULLET", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_BURRITO2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_BURRITO2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CALICO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_CALICO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CARACARA2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_CARACARA2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CARBONIZZARE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_CARBONIZZARE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CASTIGATOR") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_CASTIGATOR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CAVALCADE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_CAVALCADE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CAVALCADE2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_CAVALCADE2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CAVALCADE3") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_CAVALCADE3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CHAMPION") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_CHAMPION", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CHEETAH") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_CHEETAH", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CINQUEMILA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_CINQUEMILA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CLIQUE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_CLIQUE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CLIQUE2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_CLIQUE2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COG55") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_COG55", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COG552") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_COG552", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COGCABRIO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_COGCABRIO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COGNOSCENTI") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_COGNOSCENTI", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COGNOSCENTI2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_COGNOSCENTI2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COMET6") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_COMET6", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COMET7") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_COMET7", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CONADA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_CONADA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CONADA2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_CONADA2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COQUETTE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_COQUETTE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COQUETTE2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_COQUETTE2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COQUETTE3") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_COQUETTE3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COQUETTE5") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_COQUETTE5", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CORSITA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_CORSITA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_COUREUR") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_COUREUR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_CYPHER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_CYPHER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DEITY") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_DEITY", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DEVESTE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_DEVESTE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DEVIANT") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_DEVIANT", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DILETTANTE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_DILETTANTE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DINGY5") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_DINGY5", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DOMINATOR7") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_DOMINATOR7", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DOMINATOR8") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_DOMINATOR8", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DOMINATOR9") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_DOMINATOR9", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DOMINATOR10") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_DOMINATOR10", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DORADO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_DORADO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DOUBLE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_DOUBLE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DRAFTER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_DRAFTER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DRAUGUR") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_DRAUGUR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DUNE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_DUNE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_DYNASTY") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_DYNASTY", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_EMERUS") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_EMERUS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ENDURO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ENDURO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ENTITY3") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ENTITY3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ENTITYXF") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ENTITYXF", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ENVISAGE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ENVISAGE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_EUDORA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_EUDORA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_EUROS") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_EUROS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_EUROSX32") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_EUROSX32", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_EVERON") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_EVERON", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_EVERON2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_EVERON2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_EXEMPLAR") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_EXEMPLAR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_F620") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_F620", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FAGGIO2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FAGGIO2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FELON") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FELON", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FELON2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FELON2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FELTZER2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FELTZER2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FELTZER3") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FELTZER3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FIRETRUCK") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FIRETRUCK", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FMJ") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FMJ", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FORMULA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FORMULA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FORMULA2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FORMULA2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FQ2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FQ2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FR36") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FR36", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FUGITIVE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FUGITIVE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FURIA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FURIA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FUROREGT") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FUROREGT", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FUSILADE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FUSILADE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FUTO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FUTO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_FUTO2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_FUTO2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_GAUNTLET") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_GAUNTLET", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_GAUNTLET3") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_GAUNTLET3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_GAUNTLET4") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_GAUNTLET4", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_GAUNTLET6") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_GAUNTLET6", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_GRANGER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_GRANGER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_GRANGER2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_GRANGER2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_GREENWOOD") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_GREENWOOD", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_GRESLEY") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_GRESLEY", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_GROWLER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_GROWLER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_HABANERO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_HABANERO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_HAKUCHOU") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_HAKUCHOU", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_HELLION") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_HELLION", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_HEXER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_HEXER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_IGNUS") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_IGNUS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_IMORGEN") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_IMORGEN", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_IMPALER5") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_IMPALER5", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_IMPALER6") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_IMPALER6", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_INDUCTOR") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_INDUCTOR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_INFERNUS") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_INFERNUS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_INGOT") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_INGOT", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_INNOVATION") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_INNOVATION", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_INTRUDER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_INTRUDER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ISSI2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ISSI2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ISSI7") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ISSI7", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ISSI8") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ISSI8", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ITALIGTO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ITALIGTO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ITALIRSX") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ITALIRSX", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_IWAGEN") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_IWAGEN", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_JACKAL") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_JACKAL", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_JB700") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_JB700", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_JB7002") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_JB7002", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_JESTER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_JESTER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_JESTER2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_JESTER2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_JESTER4") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_JESTER4", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_JOURNEY2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_JOURNEY2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_JUBILEE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_JUBILEE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_JUGULAR") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_JUGULAR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_KALAHARI") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_KALAHARI", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_KANJO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_KANJO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_KANJOSJ") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_KANJOSJ", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_KOMODA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_KOMODA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_KRIEGER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_KRIEGER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_L35") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_L35", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_LANDSTALKER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_LANDSTALKER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_LGUARD") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_LGUARD", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_LM87") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_LM87", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_LOCUST") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_LOCUST", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_LONGFIN") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_LONGFIN", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_MAMBA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_MAMBA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_MANCHEZ2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_MANCHEZ2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_MASSACRO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_MASSACRO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_MASSACRO2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_MASSACRO2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_MESA3") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_MESA3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_MINITANK") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_MINITANK", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_MODEL_CZ1") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_MODEL_CZ1", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_MONROE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_MONROE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_MONSTER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_MONSTER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_MONSTROCITI") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_MONSTROCITI", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_NEBULA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_NEBULA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_NEMESIS") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_NEMESIS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_NEO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_NEO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_NINEF") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_NINEF", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_NINEF2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_NINEF2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_NIOBE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_NIOBE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_NOVAK") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_NOVAK", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_OMNISEGT") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_OMNISEGT", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ORACLE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ORACLE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ORACLE2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ORACLE2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_OUTLAW") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_OUTLAW", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PANTHERE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_PANTHERE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PARAGON") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_PARAGON", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PARAGON3") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_PARAGON3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PATRIOT") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_PATRIOT", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PATRIOT3") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_PATRIOT3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PATROLBOAT") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_PATROLBOAT", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PCJ") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_PCJ", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PENUMBRA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_PENUMBRA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PEYOTE2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_PEYOTE2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PICADOR") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_PICADOR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PIGALLE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_PIGALLE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PIPISTRELLO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_PIPISTRELLO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PIZZABOY") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_PIZZABOY", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_POLDOMINATOR10") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_POLDOMINATOR10", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_POLDORADO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_POLDORADO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_POLGAUNTLET") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_POLGAUNTLET", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_POLGREENWOOD") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_POLGREENWOOD", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_POLICE4") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_POLICE4", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_POLICE5") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_POLICE5", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_POLIMPALER5") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_POLIMPALER5", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_POLIMPALER6") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_POLIMPALER6", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_POSTLUDE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_POSTLUDE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_POWERSURGE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_POWERSURGE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PRAIRIE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_PRAIRIE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PRANGER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_PRANGER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PREMIER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_PREMIER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_PREVION") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_PREVION", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_R300") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_R300", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RADI") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_RADI", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RAIJU") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_RAIJU", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RANCHERXL") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_RANCHERXL", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RAPIDGT") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_RAPIDGT", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RAPIDGT2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_RAPIDGT2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RATEL") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_RATEL", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RATLOADER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_RATLOADER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_REBEL") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_REBEL", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_REBEL2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_REBEL2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_REBLA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_REBLA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_REEVER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_REEVER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_REGINA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_REGINA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_REMUS") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_REMUS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RETINUE2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_RETINUE2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RHINEHART") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_RHINEHART", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RIOT") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_RIOT", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ROCOTO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ROCOTO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ROMERO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ROMERO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RROCKET") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_RROCKET", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RT3000") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_RT3000", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RUFFIAN") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_RUFFIAN", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RUINER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_RUINER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_RUINER4") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_RUINER4", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_S80") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_S80", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SANCHEZ") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SANCHEZ", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SANCHEZ2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SANCHEZ2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SANDKING2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SANDKING2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SCHAFTER2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SCHAFTER2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SCHAFTER4") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SCHAFTER4", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SCHAFTER6") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SCHAFTER6", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SCHLAGEN") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SCHLAGEN", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SCHWARZER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SCHWARZER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SEMINOLE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SEMINOLE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SENTINEL2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SENTINEL2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SENTINEL4") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SENTINEL4", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SERRANO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SERRANO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SEVEN70") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SEVEN70", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SHEAVA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SHEAVA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SHINOBI") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SHINOBI", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SLAMTRUCK") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SLAMTRUCK", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SM722") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SM722", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SOVEREIGN") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SOVEREIGN", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SQUADDIE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SQUADDIE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_STANIER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_STANIER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_STINGER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_STINGER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_STINGERGT") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_STINGERGT", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_STINGERTT") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_STINGERTT", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_STOCKADE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_STOCKADE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_STRATUM") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_STRATUM", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_STREAMER216") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_STREAMER216", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_STRYDER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_STRYDER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SUGOI") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SUGOI", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SULTAN2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SULTAN2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SULTAN3") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SULTAN3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SUPERD") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SUPERD", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SURANO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SURANO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SURFER3") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SURFER3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_SURGE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_SURGE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TAHOMA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_TAHOMA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TAILGATER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_TAILGATER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TAILGATER2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_TAILGATER2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TAMPA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_TAMPA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TAXI") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_TAXI", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TENF") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_TENF", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TENF2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_TENF2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TERMINUS") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_TERMINUS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_THRAX") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_THRAX", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_THRUST") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_THRUST", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TOREADOR") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_TOREADOR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TORERO2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_TORERO2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TOROS") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_TOROS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TULIP") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_TULIP", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TULIP2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_TULIP2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_TURISMO3") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_TURISMO3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VACCA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VACCA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VADER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VADER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VAGRANT") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VAGRANT", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VAMOS") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VAMOS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VECTRE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VECTRE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VERLIERER2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VERLIERER2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VERUS") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VERUS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VETIR") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VETIR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VETO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VETO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VETO2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VETO2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VIGERO2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VIGERO2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VIGERO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VIGERO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VIGERO3") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VIGERO3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VINDICATOR") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VINDICATOR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VIRTUE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VIRTUE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VIVANITE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VIVANITE", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VOLTIC") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VOLTIC", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VORSCHLAGHAMMER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VORSCHLAGHAMMER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_VSTR") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_VSTR", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_WARRENER") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_WARRENER", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_WARRENER2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_WARRENER2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_WASHINGTON") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_WASHINGTON", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_WEEVIL") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_WEEVIL", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_WEEVIL2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_WEEVIL2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_WINKY") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_WINKY", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_XLS") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_XLS", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_XLS2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_XLS2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_YOSEMITE2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_YOSEMITE2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_YOSEMITE1500") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_YOSEMITE1500", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ZENO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ZENO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ZHABA") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ZHABA", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ZION") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ZION", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ZION2") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ZION2", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ZION3") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ZION3", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ZORRUSSO") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ZORRUSSO", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ZR350") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ZR350", true)
		end
		if tunables.get_bool("ENABLE_VEHICLE_ZTYPE") ~= true then
			tunables.set_bool("ENABLE_VEHICLE_ZTYPE", true)
		end
		if tunables.get_bool("ENABLE_VEH_CLUB") ~= true then
			tunables.set_bool("ENABLE_VEH_CLUB", true)
		end
		if tunables.get_bool("ENABLE_VEH_COQUETTE4") ~= true then
			tunables.set_bool("ENABLE_VEH_COQUETTE4", true)
		end
		if tunables.get_bool("ENABLE_VEH_DUKES3") ~= true then
			tunables.set_bool("ENABLE_VEH_DUKES3", true)
		end
		if tunables.get_bool("ENABLE_VEH_GAUNTLET5") ~= true then
			tunables.set_bool("ENABLE_VEH_GAUNTLET5", true)
		end
		if tunables.get_bool("ENABLE_VEH_GLENDALE2") ~= true then
			tunables.set_bool("ENABLE_VEH_GLENDALE2", true)
		end
		if tunables.get_bool("ENABLE_VEH_LANDSTALKER2") ~= true then
			tunables.set_bool("ENABLE_VEH_LANDSTALKER2", true)
		end
		if tunables.get_bool("ENABLE_VEH_MANANA2") ~= true then
			tunables.set_bool("ENABLE_VEH_MANANA2", true)
		end
		if tunables.get_bool("ENABLE_VEH_OPENWHEEL1") ~= true then
			tunables.set_bool("ENABLE_VEH_OPENWHEEL1", true)
		end
		if tunables.get_bool("ENABLE_VEH_OPENWHEEL2") ~= true then
			tunables.set_bool("ENABLE_VEH_OPENWHEEL2", true)
		end
		if tunables.get_bool("ENABLE_VEH_PENUMBRA2") ~= true then
			tunables.set_bool("ENABLE_VEH_PENUMBRA2", true)
		end
		if tunables.get_bool("ENABLE_VEH_PEYOTE3") ~= true then
			tunables.set_bool("ENABLE_VEH_PEYOTE3", true)
		end
		if tunables.get_bool("ENABLE_VEH_POLGREENWOOD") ~= true then
			tunables.set_bool("ENABLE_VEH_POLGREENWOOD", true)
		end
		if tunables.get_bool("ENABLE_VEH_SEMINOLE2") ~= true then
			tunables.set_bool("ENABLE_VEH_SEMINOLE2", true)
		end
		if tunables.get_bool("ENABLE_VEH_TIGON") ~= true then
			tunables.set_bool("ENABLE_VEH_TIGON", true)
		end
		if tunables.get_bool("ENABLE_VEH_YOSEMITE3") ~= true then
			tunables.set_bool("ENABLE_VEH_YOSEMITE3", true)
		end
		if tunables.get_bool("ENABLE_VEH_YOUGA3") ~= true then
			tunables.set_bool("ENABLE_VEH_YOUGA3", true)
		end
		if tunables.get_bool("ENABLE_VIGILANTE") ~= true then
			tunables.set_bool("ENABLE_VIGILANTE", true)
		end
		if tunables.get_bool("ENABLE_VISERIS") ~= true then
			tunables.set_bool("ENABLE_VISERIS", true)
		end
		if tunables.get_bool("ENABLE_VISIONE") ~= true then
			tunables.set_bool("ENABLE_VISIONE", true)
		end
		if tunables.get_bool("ENABLE_VOLATOL") ~= true then
			tunables.set_bool("ENABLE_VOLATOL", true)
		end
		if tunables.get_bool("ENABLE_XA21") ~= true then -- null tunable
			tunables.set_bool("ENABLE_XA21", true)
		end
		if tunables.get_bool("ENABLE_YOSEMITE") ~= true then
			tunables.set_bool("ENABLE_YOSEMITE", true)
		end
		if tunables.get_bool("ENABLE_Z190") ~= true then
			tunables.set_bool("ENABLE_Z190", true)
		end
	--else
	--	tunables.set_bool("ENABLEEXEC1_DEWBAUCHEE", false)
	--	tunables.set_bool("ENABLEEXEC1_GROTTI_PROTO", false)
	--	tunables.set_bool("ENABLEEXEC1_PFISTER", false)
	--	tunables.set_bool("ENABLEGP1", false)
	--	tunables.set_bool("ENABLEINFERNUS2", false)
	--	tunables.set_bool("ENABLERUSTON", false)
	--	tunables.set_bool("ENABLETURISMO2", false)
	--	tunables.set_bool("ENABLE_AKULA", false)
	--	tunables.set_bool("ENABLE_ALPHAZ1", false)
	--	tunables.set_bool("ENABLE_ARDENT", false)
	--	tunables.set_bool("ENABLE_AUTARCH", false)
	--	tunables.set_bool("ENABLE_BALLER", false)
	--	tunables.set_bool("ENABLE_BARRAGE", false)
	--	tunables.set_bool("ENABLE_BEEJAY_XL", false)
	--	tunables.set_bool("ENABLE_BIKER_AVARUS", false)
	--	tunables.set_bool("ENABLE_BIKER_BAGGER", false)
	--	tunables.set_bool("ENABLE_BIKER_BLAZER4", false)
	--	tunables.set_bool("ENABLE_BIKER_CHIMERA", false)
	--	tunables.set_bool("ENABLE_BIKER_DEFILER", false)
	--	tunables.set_bool("ENABLE_BIKER_ESSKEY", false)
	--	tunables.set_bool("ENABLE_BIKER_FAGGIO", false)
	--	tunables.set_bool("ENABLE_BIKER_FAGGIO3", false)
	--	tunables.set_bool("ENABLE_BIKER_HAKUCHOU2", false)
	--	tunables.set_bool("ENABLE_BIKER_MANCHEZ", false)
	--	tunables.set_bool("ENABLE_BIKER_NIGHTBLADE", false)
	--	tunables.set_bool("ENABLE_BIKER_PROPERTY", false)
	--	tunables.set_bool("ENABLE_BIKER_RAPTOR", false)
	--	tunables.set_bool("ENABLE_BIKER_RATBIKE", false)
	--	tunables.set_bool("ENABLE_BIKER_SANCTUS", false)
	--	tunables.set_bool("ENABLE_BIKER_SHOTARO", false)
	--	tunables.set_bool("ENABLE_BIKER_TORNADO6", false)
	--	tunables.set_bool("ENABLE_BIKER_VORTEX", false)
	--	tunables.set_bool("ENABLE_BIKER_WESTERNDAEMON", false)
	--	tunables.set_bool("ENABLE_BIKER_WOLFSBANE", false)
	--	tunables.set_bool("ENABLE_BIKER_YOUGA2", false)
	--	tunables.set_bool("ENABLE_BIKER_ZOMBIEA", false)
	--	tunables.set_bool("ENABLE_BIKER_ZOMBIEB", false)
	--	tunables.set_bool("ENABLE_BLIMP3", false)
	--	tunables.set_bool("ENABLE_BOMBUSHKA", false)
	--	tunables.set_bool("ENABLE_CARACARA", false)
	--	tunables.set_bool("ENABLE_CHEBUREK", false)
	--	tunables.set_bool("ENABLE_CHEETAH2", false)
	--	tunables.set_bool("ENABLE_CHERNOBOG", false)
	--	tunables.set_bool("ENABLE_COMET4", false)
	--	tunables.set_bool("ENABLE_COMET5", false)
	--	tunables.set_bool("ENABLE_CYCLONE", false)
	--	tunables.set_bool("ENABLE_DELUXO", false)
	--	tunables.set_bool("ENABLE_DOMINATOR3", false)
	--	tunables.set_bool("ENABLE_ELLIE", false)
	--	tunables.set_bool("ENABLE_ENTITY2", false)
	--	tunables.set_bool("ENABLE_FAGALOA", false)
	--	tunables.set_bool("ENABLE_FLASHGT", false)
	--	tunables.set_bool("ENABLE_FQ2", false)
	--	tunables.set_bool("ENABLE_FREECRAWLER", false)
	--	tunables.set_bool("ENABLE_FUTO", false)
	--	tunables.set_bool("ENABLE_GB200", false)
	--	tunables.set_bool("ENABLE_GT500", false)
	--	tunables.set_bool("ENABLE_HABANERO", false)
	--	tunables.set_bool("ENABLE_HAVOK", false)
	--	tunables.set_bool("ENABLE_HEARSE", false)
	--	tunables.set_bool("ENABLE_HERMES", false)
	--	tunables.set_bool("ENABLE_HOTRING", false)
	--	tunables.set_bool("ENABLE_HOWARD", false)
	--	tunables.set_bool("ENABLE_HUNTER", false)
	--	tunables.set_bool("ENABLE_HUSTLER", false)
	--	tunables.set_bool("ENABLE_IE_BLAZER5", false)
	--	tunables.set_bool("ENABLE_IE_BOXVILLE5", false)
	--	tunables.set_bool("ENABLE_IE_COMET2", false)
	--	tunables.set_bool("ENABLE_IE_COMET3", false)
	--	tunables.set_bool("ENABLE_IE_DIABLOUS", false)
	--	tunables.set_bool("ENABLE_IE_DIABLOUS2", false)
	--	tunables.set_bool("ENABLE_IE_DUNE4", false)
	--	tunables.set_bool("ENABLE_IE_DUNE5", false)
	--	tunables.set_bool("ENABLE_IE_ELEGY", false)
	--	tunables.set_bool("ENABLE_IE_ELEGY2", false)
	--	tunables.set_bool("ENABLE_IE_FCR", false)
	--	tunables.set_bool("ENABLE_IE_FCR2", false)
	--	tunables.set_bool("ENABLE_IE_ITALIGTB", false)
	--	tunables.set_bool("ENABLE_IE_ITALIGTB2", false)
	--	tunables.set_bool("ENABLE_IE_NERO", false)
	--	tunables.set_bool("ENABLE_IE_NERO2", false)
	--	tunables.set_bool("ENABLE_IE_PENETRATOR", false)
	--	tunables.set_bool("ENABLE_IE_PHANTOM2", false)
	--	tunables.set_bool("ENABLE_IE_RUINER2", false)
	--	tunables.set_bool("ENABLE_IE_SPECTER", false)
	--	tunables.set_bool("ENABLE_IE_SPECTER2", false)
	--	tunables.set_bool("ENABLE_IE_TECHNICAL2", false)
	--	tunables.set_bool("ENABLE_IE_TEMPESTA", false)
	--	tunables.set_bool("ENABLE_IE_VOLTIC2", false)
	--	tunables.set_bool("ENABLE_IE_WASTELANDER", false)
	--	tunables.set_bool("ENABLE_ISSI3", false)
	--	tunables.set_bool("ENABLE_JESTER3", false)
	--	tunables.set_bool("ENABLE_KAMACHO", false)
	--	tunables.set_bool("ENABLE_KHANJALI", false)
	--	tunables.set_bool("ENABLE_LAZER", false)
	--	tunables.set_bool("ENABLE_LOWRIDER2_FACTION", false)
	--	tunables.set_bool("ENABLE_LOWRIDER2_MINIVAN", false)
	--	tunables.set_bool("ENABLE_LOWRIDER2_SABREGT", false)
	--	tunables.set_bool("ENABLE_LOWRIDER2_SLAMVAN", false)
	--	tunables.set_bool("ENABLE_LOWRIDER2_TORNADO5", false)
	--	tunables.set_bool("ENABLE_LOWRIDER2_VIRGO3", false)
	--	tunables.set_bool("ENABLE_MENACER", false)
	--	tunables.set_bool("ENABLE_MICHELLI", false)
	--	tunables.set_bool("ENABLE_MOGUL", false)
	--	tunables.set_bool("ENABLE_MOLOTOK", false)
	--	tunables.set_bool("ENABLE_MULE4", false)
	--	tunables.set_bool("ENABLE_NEON", false)
	--	tunables.set_bool("ENABLE_NIGHTSHARK", false)
	--	tunables.set_bool("ENABLE_NOKOTA", false)
	--	tunables.set_bool("ENABLE_OPPRESSOR2", false)
	--	tunables.set_bool("ENABLE_PARIAH", false)
	--	tunables.set_bool("ENABLE_PATRIOT", false)
	--	tunables.set_bool("ENABLE_PATRIOT2", false)
	--	tunables.set_bool("ENABLE_PBUS2", false)
	--	tunables.set_bool("ENABLE_POUNDER2", false)
	--	tunables.set_bool("ENABLE_PRAIRIE", false)
	--	tunables.set_bool("ENABLE_PYRO", false)
	--	tunables.set_bool("ENABLE_RAIDEN", false)
	--	tunables.set_bool("ENABLE_RAPIDGT3", false)
	--	tunables.set_bool("ENABLE_RETINUE", false)
	--	tunables.set_bool("ENABLE_REVOLTER", false)
	--	tunables.set_bool("ENABLE_RIATA", false)
	--	tunables.set_bool("ENABLE_RIOT2", false)
	--	tunables.set_bool("ENABLE_ROGUE", false)
	--	tunables.set_bool("ENABLE_RUINER", false)
	--	tunables.set_bool("ENABLE_SAVESTRA", false)
	--	tunables.set_bool("ENABLE_SC1", false)
	--	tunables.set_bool("ENABLE_SCRAMJET", false)
	--	tunables.set_bool("ENABLE_SEABREEZE", false)
	--	tunables.set_bool("ENABLE_SEASPARROW", false)
	--	tunables.set_bool("ENABLE_SENTINEL3", false)
	--	tunables.set_bool("ENABLE_SERRANO", false)
	--	tunables.set_bool("ENABLE_STAFFORD", false)
	--	tunables.set_bool("ENABLE_STARLING", false)
	--	tunables.set_bool("ENABLE_STREITER", false)
	--	tunables.set_bool("ENABLE_STRIKEFORCE", false)
	--	tunables.set_bool("ENABLE_STROMBERG", false)
	--	tunables.set_bool("ENABLE_SWINGER", false)
	--	tunables.set_bool("ENABLE_TAIPAN", false)
	--	tunables.set_bool("ENABLE_TERBYTE", false)
	--	tunables.set_bool("ENABLE_TEZERACT", false)
	--	tunables.set_bool("ENABLE_THRUSTER", false)
	--	tunables.set_bool("ENABLE_TORERO", false)
	--	tunables.set_bool("ENABLE_TULA", false)
	--	tunables.set_bool("ENABLE_TYRANT", false)
	--	tunables.set_bool("ENABLE_ULTRALIGHT", false)
	--	tunables.set_bool("ENABLE_VAGNER", false)
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
	--	tunables.set_bool("ENABLE_VIGILANTE", false)
	--	tunables.set_bool("ENABLE_VISERIS", false)
	--	tunables.set_bool("ENABLE_VISIONE", false)
	--	tunables.set_bool("ENABLE_VOLATOL", false)
	--	tunables.set_bool("ENABLE_XA21", false)
	--	tunables.set_bool("ENABLE_YOSEMITE", false)
	--	tunables.set_bool("ENABLE_Z190", false)
	end
	
    if StoneHatchetRampage then
		--if StoneHatchetRampage_Toggle == 0 then
			if tunables.get_int("BB_HATCHET_RAMPAGE_DURATION_MAX") ~= INT_MAX_TIME3 then -- Duration
				tunables.set_int("BB_HATCHET_RAMPAGE_DURATION_MAX", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_HATCHET_RAMPAGE_DURATION_EXTENSION") ~= INT_MAX_TIME3 then -- Added Duration per Kill
				tunables.set_int("BB_HATCHET_RAMPAGE_DURATION_EXTENSION", INT_MAX_TIME3)
			end
			if tunables.get_int("BB_HATCHET_RAMPAGE_COOLDOWN") ~= 0 then -- Cooldown
				tunables.set_int("BB_HATCHET_RAMPAGE_COOLDOWN", 0)
			end
			if tunables.get_float("BB_HATCHET_RAMPAGE_DAMAGE_RECIEVED") ~= INT_MAX_TIME3 then -- Weapon Defense
				tunables.set_float("BB_HATCHET_RAMPAGE_DAMAGE_RECIEVED", INT_MAX_TIME3)
			end
			if tunables.get_float("BB_HATCHET_RAMPAGE_HEALTH_REGEN_RATE") ~= INT_MAX_TIME3 then -- Health Recharge Multiplier
				tunables.set_float("BB_HATCHET_RAMPAGE_HEALTH_REGEN_RATE", INT_MAX_TIME3)
			end
			if tunables.get_float("BB_HATCHET_RAMPAGE_HEALTH_REGEN_MAX") ~= INT_MAX_TIME3 then -- Health Recharge Limit
				tunables.set_float("BB_HATCHET_RAMPAGE_HEALTH_REGEN_MAX", INT_MAX_TIME3)
			end
		--end
		StoneHatchetRampage_Toggle = 1
    else
		if StoneHatchetRampage_Toggle == 1 then
			tunables.set_int("BB_HATCHET_RAMPAGE_DURATION_MAX", 12000) -- Duration
			tunables.set_int("BB_HATCHET_RAMPAGE_DURATION_EXTENSION", 6000) -- Added Duration per Kill
			tunables.set_int("BB_HATCHET_RAMPAGE_COOLDOWN", 60000) -- Cooldown
			tunables.set_float("BB_HATCHET_RAMPAGE_DAMAGE_RECIEVED", 0.500) -- Weapon Defense
			tunables.set_float("BB_HATCHET_RAMPAGE_HEALTH_REGEN_RATE", 2.000) -- Health Recharge Multiplier
			tunables.set_float("BB_HATCHET_RAMPAGE_HEALTH_REGEN_MAX", 1.000) -- Health Recharge Limit
			StoneHatchetRampage_Toggle = 0
		end
    end
	
	if MaxBetLimit then
		--if MaxBetLimit_Toggle == 0 then
			if tunables.get_float("MIN_BET_LIMIT") ~= 0 then
				tunables.set_float("MIN_BET_LIMIT", 0)
			end
			if tunables.get_float("MAX_BET_LIMIT") ~= INT_MAX_TIME3 then
				tunables.set_float("MAX_BET_LIMIT", INT_MAX_TIME3)
			end
		--end
		MaxBetLimit_Toggle = 1
	else
		if MaxBetLimit_Toggle == 1 then
			tunables.set_float("MIN_BET_LIMIT", 100.000)
			tunables.set_float("MAX_BET_LIMIT", 1000.000)
			MaxBetLimit_Toggle = 0
		end
	end
	
	if not TunableMultplier then
		CashMultiplier = tunables.get_float("CASH_MULTIPLIER")
		XPMultiplier = tunables.get_float("XP_MULTIPLIER")
		TimeMultiplier = tunables.get_float("TIME_MULTIPLIER")
		APMultiplier = tunables.get_float("AP_MULTIPLIER")
		MinMissionPayout = tunables.get_float("LOW_ROCKSTAR_MISSIONS_MODIFIER")
		MaxMissionPayout = tunables.get_float("HIGH_ROCKSTAR_MISSIONS_MODIFIER")
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
	end
	if TunableMultplier then		
		if tunables.get_float("CASH_MULTIPLIER") ~= CashMultiplier then
			tunables.set_float("CASH_MULTIPLIER", CashMultiplier)
		end
		if tunables.get_float("XP_MULTIPLIER") ~= XPMultiplier then
			tunables.set_float("XP_MULTIPLIER", XPMultiplier)
		end
		if tunables.get_float("TIME_MULTIPLIER") ~= TimeMultiplier then
			tunables.set_float("TIME_MULTIPLIER", TimeMultiplier)
		end
		if tunables.get_float("AP_MULTIPLIER") ~= APMultiplier then
			tunables.set_float("AP_MULTIPLIER", APMultiplier)
		end
		if tunables.get_float("LOW_ROCKSTAR_MISSIONS_MODIFIER") ~= MinMissionPayout then
			tunables.set_float("LOW_ROCKSTAR_MISSIONS_MODIFIER", MinMissionPayout)
		end
		if tunables.get_float("HIGH_ROCKSTAR_MISSIONS_MODIFIER") ~= MaxMissionPayout then
			tunables.set_float("HIGH_ROCKSTAR_MISSIONS_MODIFIER", MaxMissionPayout)
		end
		if tunables.get_int("AW_ARENA_WAR_WHEEL_AP_LOW_WIN") ~= ArenaWheelAP then
			tunables.set_int("AW_ARENA_WAR_WHEEL_AP_LOW_WIN", ArenaWheelAP)
		end		
		if tunables.get_int("AW_ARENA_WAR_WHEEL_AP_MED_WIN") ~= ArenaWheelAP then
			tunables.set_int("AW_ARENA_WAR_WHEEL_AP_MED_WIN", ArenaWheelAP)
		end		
		if tunables.get_int("AW_ARENA_WAR_WHEEL_AP_HIGH_WIN") ~= ArenaWheelAP then
			tunables.set_int("AW_ARENA_WAR_WHEEL_AP_HIGH_WIN", ArenaWheelAP)
		end		
		if tunables.get_int("AW_FREE_ARENA_WAR_WHEEL_AP_LOW_WIN") ~= ArenaWheelAP then
			tunables.set_int("AW_FREE_ARENA_WAR_WHEEL_AP_LOW_WIN", ArenaWheelAP)
		end		
		if tunables.get_int("AW_FREE_ARENA_WAR_WHEEL_AP_MED_WIN") ~= ArenaWheelAP then
			tunables.set_int("AW_FREE_ARENA_WAR_WHEEL_AP_MED_WIN", ArenaWheelAP)
		end		
		if tunables.get_int("AW_FREE_ARENA_WAR_WHEEL_AP_HIGH_WIN") ~= ArenaWheelAP then
			tunables.set_int("AW_FREE_ARENA_WAR_WHEEL_AP_HIGH_WIN", ArenaWheelAP)
		end		
		if tunables.get_int("AW_ARENA_WAR_WHEEL_RP_LOW_WIN") ~= ArenaWheelRP then
			tunables.set_int("AW_ARENA_WAR_WHEEL_RP_LOW_WIN", ArenaWheelRP)
		end		
		if tunables.get_int("AW_ARENA_WAR_WHEEL_RP_MED_WIN") ~= ArenaWheelRP then
			tunables.set_int("AW_ARENA_WAR_WHEEL_RP_MED_WIN", ArenaWheelRP)
		end		
		if tunables.get_int("AW_ARENA_WAR_WHEEL_RP_HIGH_WIN") ~= ArenaWheelRP then
			tunables.set_int("AW_ARENA_WAR_WHEEL_RP_HIGH_WIN", ArenaWheelRP)
		end		
		if tunables.get_int("AW_FREE_ARENA_WAR_WHEEL_RP_LOW_WIN") ~= ArenaWheelRP then
			tunables.set_int("AW_FREE_ARENA_WAR_WHEEL_RP_LOW_WIN", ArenaWheelRP)
		end		
		if tunables.get_int("AW_FREE_ARENA_WAR_WHEEL_RP_MED_WIN") ~= ArenaWheelRP then
			tunables.set_int("AW_FREE_ARENA_WAR_WHEEL_RP_MED_WIN", ArenaWheelRP)
		end		
		if tunables.get_int("AW_FREE_ARENA_WAR_WHEEL_RP_HIGH_WIN") ~= ArenaWheelRP then
			tunables.set_int("AW_FREE_ARENA_WAR_WHEEL_RP_HIGH_WIN", ArenaWheelRP)
		end		
		if tunables.get_int("AW_ARENA_WAR_WHEEL_CASH_LOW_WIN") ~= ArenaWheelCash then
			tunables.set_int("AW_ARENA_WAR_WHEEL_CASH_LOW_WIN", ArenaWheelCash)
		end		
		if tunables.get_int("AW_ARENA_WAR_WHEEL_CASH_MED_WIN") ~= ArenaWheelCash then
			tunables.set_int("AW_ARENA_WAR_WHEEL_CASH_MED_WIN", ArenaWheelCash)
		end		
		if tunables.get_int("AW_ARENA_WAR_WHEEL_CASH_HIGH_WIN") ~= ArenaWheelCash then
			tunables.set_int("AW_ARENA_WAR_WHEEL_CASH_HIGH_WIN", ArenaWheelCash)
		end		
		if tunables.get_int("AW_FREE_ARENA_WAR_WHEEL_CASH_LOW_WIN") ~= ArenaWheelCash then
			tunables.set_int("AW_FREE_ARENA_WAR_WHEEL_CASH_LOW_WIN", ArenaWheelCash)
		end		
		if tunables.get_int("AW_FREE_ARENA_WAR_WHEEL_CASH_MED_WIN") ~= ArenaWheelCash then
			tunables.set_int("AW_FREE_ARENA_WAR_WHEEL_CASH_MED_WIN", ArenaWheelCash)
		end		
		if tunables.get_int("AW_FREE_ARENA_WAR_WHEEL_CASH_HIGH_WIN") ~= ArenaWheelCash then
			tunables.set_int("AW_FREE_ARENA_WAR_WHEEL_CASH_HIGH_WIN", ArenaWheelCash)
		end		
		if tunables.get_float("XM22_TAXI_DRIVER_FARE_MULTIPLIER") ~= TaxiWork then
			tunables.set_float("XM22_TAXI_DRIVER_FARE_MULTIPLIER", TaxiWork)
		end		
		if tunables.get_float("TUNER_SPRINT_FIRST_TIME_BONUS_XP_MULTIPLIER") ~= LSCarMeetFirst then
			tunables.set_float("TUNER_SPRINT_FIRST_TIME_BONUS_XP_MULTIPLIER", LSCarMeetFirst)
		end		
		if tunables.get_float("TUNER_SPRINT_RACE_PLACE_XP_MULTIPLIER") ~= LSCarMeetSprint then
			tunables.set_float("TUNER_SPRINT_RACE_PLACE_XP_MULTIPLIER", LSCarMeetSprint)
		end		
		if tunables.get_float("TUNER_STREET_RACE_PLACE_XP_MULTIPLIER") ~= LSCarMeetStreet then
			tunables.set_float("TUNER_STREET_RACE_PLACE_XP_MULTIPLIER", LSCarMeetStreet)
		end		
		if tunables.get_float("TUNER_PURSUIT_RACE_PLACE_XP_MULTIPLIER") ~= LSCarMeetPursuit then
			tunables.set_float("TUNER_PURSUIT_RACE_PLACE_XP_MULTIPLIER", LSCarMeetPursuit)
		end		
		if tunables.get_float("TUNER_CHECKPOINT_RACE_PLACE_XP_MULTIPLIER") ~= LSCarMeetCheckpoint then
			tunables.set_float("TUNER_CHECKPOINT_RACE_PLACE_XP_MULTIPLIER", LSCarMeetCheckpoint)
		end		
		if tunables.get_float("TUNER_HEADTOHEAD_RACE_PLACE_XP_MULTIPLIER") ~= LSCarMeetHeadtohead then
			tunables.set_float("TUNER_HEADTOHEAD_RACE_PLACE_XP_MULTIPLIER", LSCarMeetHeadtohead)
		end		
		if tunables.get_float("TUNER_CARCLUB_TIME_XP_MULTIPLIER") ~= LSCarMeet then
			tunables.set_float("TUNER_CARCLUB_TIME_XP_MULTIPLIER", LSCarMeet)
		end		
		if tunables.get_float("TUNER_SANDBOX_TIME_XP_MULTIPLIER") ~= LSCarMeetTrack then
			tunables.set_float("TUNER_SANDBOX_TIME_XP_MULTIPLIER", LSCarMeetTrack)
		end		
		if tunables.get_float("TUNER_MERCH_PURCHASE_XP_MULTIPLIER") ~= LSCarMeetMerch then
			tunables.set_float("TUNER_MERCH_PURCHASE_XP_MULTIPLIER", LSCarMeetMerch)
		end
	end
	
	if LSCarMeetAllMultiplier then		
		if tunables.get_float("TUNER_SPRINT_FIRST_TIME_BONUS_XP_MULTIPLIER") ~= LSCarMeetAll then -- globals#1
			tunables.set_float("TUNER_SPRINT_FIRST_TIME_BONUS_XP_MULTIPLIER", LSCarMeetAll)
		end		
		if tunables.get_float("TUNER_STREET_FIRST_TIME_BONUS_XP_MULTIPLIER") ~= LSCarMeetAll then
			tunables.set_float("TUNER_STREET_FIRST_TIME_BONUS_XP_MULTIPLIER", LSCarMeetAll)
		end		
		if tunables.get_float("TUNER_PURSUIT_FIRST_TIME_BONUS_XP_MULTIPLIER") ~= LSCarMeetAll then
			tunables.set_float("TUNER_PURSUIT_FIRST_TIME_BONUS_XP_MULTIPLIER", LSCarMeetAll)
		end		
		if tunables.get_float("TUNER_MOD_FIRST_TIME_BONUS_XP_MULTIPLIER") ~= LSCarMeetAll then
			tunables.set_float("TUNER_MOD_FIRST_TIME_BONUS_XP_MULTIPLIER", LSCarMeetAll)
		end		
		if tunables.get_float("TUNER_SANDBOX_TEST_FIRST_TIME_BONUS_XP_MULTIPLIER") ~= LSCarMeetAll then
			tunables.set_float("TUNER_SANDBOX_TEST_FIRST_TIME_BONUS_XP_MULTIPLIER", LSCarMeetAll)
		end		
		if tunables.get_float("TUNER_TIMETRIAL_FIRST_TIME_BONUS_XP_MULTIPLIER") ~= LSCarMeetAll then
			tunables.set_float("TUNER_TIMETRIAL_FIRST_TIME_BONUS_XP_MULTIPLIER", LSCarMeetAll)
		end		
		if tunables.get_float("TUNER_CHECKPOINT_FIRST_TIME_BONUS_XP_MULTIPLIER") ~= LSCarMeetAll then
			tunables.set_float("TUNER_CHECKPOINT_FIRST_TIME_BONUS_XP_MULTIPLIER", LSCarMeetAll)
		end		
		if tunables.get_float("TUNER_HEADTOHEAD_FIRST_TIME_BONUS_XP_MULTIPLIER") ~= LSCarMeetAll then
			tunables.set_float("TUNER_HEADTOHEAD_FIRST_TIME_BONUS_XP_MULTIPLIER", LSCarMeetAll)
		end		
		if tunables.get_float("TUNER_PRIVATE_INSTANCE_FIRST_TIME_BONUS_XP_MULTIPLIER") ~= LSCarMeetAll then
			tunables.set_float("TUNER_PRIVATE_INSTANCE_FIRST_TIME_BONUS_XP_MULTIPLIER", LSCarMeetAll)
		end		
		if tunables.get_float("TUNER_CARCLUB_FIRST_TIME_DAILY_XP_MULTIPLIER") ~= LSCarMeetAll then
			tunables.set_float("TUNER_CARCLUB_FIRST_TIME_DAILY_XP_MULTIPLIER", LSCarMeetAll)
		end		
		if tunables.get_float("TUNER_CARCLUB_PV_FIRST_TIME_DAILY_XP_MULTIPLIER") ~= LSCarMeetAll then
			tunables.set_float("TUNER_CARCLUB_PV_FIRST_TIME_DAILY_XP_MULTIPLIER", LSCarMeetAll)
		end		
		if tunables.get_float("TUNER_SPRINT_FIRST_TIME_DAILY_XP_MULTIPLIER") ~= LSCarMeetAll then
			tunables.set_float("TUNER_SPRINT_FIRST_TIME_DAILY_XP_MULTIPLIER", LSCarMeetAll)
		end		
		if tunables.get_float("TUNER_STREET_FIRST_TIME_DAILY_XP_MULTIPLIER") ~= LSCarMeetAll then
			tunables.set_float("TUNER_STREET_FIRST_TIME_DAILY_XP_MULTIPLIER", LSCarMeetAll)
		end		
		if tunables.get_float("TUNER_PURSUIT_FIRST_TIME_DAILY_XP_MULTIPLIER") ~= LSCarMeetAll then
			tunables.set_float("TUNER_PURSUIT_FIRST_TIME_DAILY_XP_MULTIPLIER", LSCarMeetAll)
		end		
		if tunables.get_float("TUNER_MOD_FIRST_TIME_DAILY_XP_MULTIPLIER") ~= LSCarMeetAll then
			tunables.set_float("TUNER_MOD_FIRST_TIME_DAILY_XP_MULTIPLIER", LSCarMeetAll)
		end		
		if tunables.get_float("TUNER_SANDBOX_TEST_FIRST_TIME_DAILY_XP_MULTIPLIERER") ~= LSCarMeetAll then
			tunables.set_float("TUNER_SANDBOX_TEST_FIRST_TIME_DAILY_XP_MULTIPLIERER", LSCarMeetAll)
		end		
		if tunables.get_float("TUNER_SANDBOX_PV_FIRST_TIME_DAILY_XP_MULTIPLIER") ~= LSCarMeetAll then
			tunables.set_float("TUNER_SANDBOX_PV_FIRST_TIME_DAILY_XP_MULTIPLIER", LSCarMeetAll)
		end		
		if tunables.get_float("TUNER_TIMETRIAL_FIRST_TIME_DAILY_XP_MULTIPLIER") ~= LSCarMeetAll then
			tunables.set_float("TUNER_TIMETRIAL_FIRST_TIME_DAILY_XP_MULTIPLIER", LSCarMeetAll)
		end		
		if tunables.get_float("TUNER_CHECKPOINT_FIRST_TIME_DAILY_XP_MULTIPLIER") ~= LSCarMeetAll then
			tunables.set_float("TUNER_CHECKPOINT_FIRST_TIME_DAILY_XP_MULTIPLIER", LSCarMeetAll)
		end		
		if tunables.get_float("TUNER_HEADTOHEAD_FIRST_TIME_DAILY_XP_MULTIPLIER") ~= LSCarMeetAll then
			tunables.set_float("TUNER_HEADTOHEAD_FIRST_TIME_DAILY_XP_MULTIPLIER", LSCarMeetAll)
		end		
		if tunables.get_float("TUNER_PRIVATE_INSTANCE_FIRST_TIME_DAILY_XP_MULTIPLIER") ~= LSCarMeetAll then
			tunables.set_float("TUNER_PRIVATE_INSTANCE_FIRST_TIME_DAILY_XP_MULTIPLIER", LSCarMeetAll)
		end		
		if tunables.get_float("TUNER_SPRINT_RACE_PLACE_XP_MULTIPLIER") ~= LSCarMeetAll then
			tunables.set_float("TUNER_SPRINT_RACE_PLACE_XP_MULTIPLIER", LSCarMeetAll)
		end		
		if tunables.get_float("TUNER_STREET_RACE_PLACE_XP_MULTIPLIER") ~= LSCarMeetAll then
			tunables.set_float("TUNER_STREET_RACE_PLACE_XP_MULTIPLIER", LSCarMeetAll)
		end		
		if tunables.get_float("TUNER_PURSUIT_RACE_PLACE_XP_MULTIPLIER") ~= LSCarMeetAll then
			tunables.set_float("TUNER_PURSUIT_RACE_PLACE_XP_MULTIPLIER", LSCarMeetAll)
		end		
		if tunables.get_float("TUNER_CHECKPOINT_RACE_PLACE_XP_MULTIPLIER") ~= LSCarMeetAll then
			tunables.set_float("TUNER_CHECKPOINT_RACE_PLACE_XP_MULTIPLIER", LSCarMeetAll)
		end		
		if tunables.get_float("TUNER_HEADTOHEAD_RACE_PLACE_XP_MULTIPLIER") ~= LSCarMeetAll then
			tunables.set_float("TUNER_HEADTOHEAD_RACE_PLACE_XP_MULTIPLIER", LSCarMeetAll)
		end		
		if tunables.get_float("TUNER_CARCLUB_VISITS_STREAK_XP_MULTIPLIER") ~= LSCarMeetAll then
			tunables.set_float("TUNER_CARCLUB_VISITS_STREAK_XP_MULTIPLIER", LSCarMeetAll)
		end		
		if tunables.get_float("TUNER_CARCLUB_TIME_XP_MULTIPLIER") ~= LSCarMeetAll then
			tunables.set_float("TUNER_CARCLUB_TIME_XP_MULTIPLIER", LSCarMeetAll)
		end		
		if tunables.get_float("TUNER_SANDBOX_TIME_XP_MULTIPLIER") ~= LSCarMeetAll then
			tunables.set_float("TUNER_SANDBOX_TIME_XP_MULTIPLIER", LSCarMeetAll)
		end		
		if tunables.get_float("TUNER_MERCH_PURCHASE_XP_MULTIPLIER") ~= LSCarMeetAll then -- globals#30
			tunables.set_float("TUNER_MERCH_PURCHASE_XP_MULTIPLIER", LSCarMeetAll)
		end		
		if tunables.get_float("TUNER_CARCLUB_TIME_XP_MERCH_MULTIPLIER") ~= LSCarMeetAll then -- globals#41
			tunables.set_float("TUNER_CARCLUB_TIME_XP_MERCH_MULTIPLIER", LSCarMeetAll)
		end		
		if tunables.get_float("TUNER_SANDBOX_TIME_XP_MERCH_MULTIPLIER") ~= LSCarMeetAll then -- globals#42
			tunables.set_float("TUNER_SANDBOX_TIME_XP_MERCH_MULTIPLIER", LSCarMeetAll)
		end
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