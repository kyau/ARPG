--file: Core/CombatLog.lua

--get the addon namespace
local addon, namespace = ...
--get ARPG namespace (just in case needed)
local ARPG = namespace.ARPG or ARPG
--get config
local config = ARPG_CONFIG
--local stringfind = _G.string.find

--local function ARPG_SSDI_Alert(timestamp, combatEvent, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellId, spellName, spellSchool, arg15, arg16, arg17, arg18, arg19, arg20, arg21, arg22, arg23, arg24, arg25)
local function ARPG_SSDI_Alert()
	local timestamp, combatEvent, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellId, spellName, spellSchool = CombatLogGetCurrentEventInfo()
	--anyone gains a buff
	if((combatEvent == "SPELL_AURA_APPLIED" or combatEvent == "SPELL_AURA_REFRESH") and destName) then
		--check for di or ss
		if(spellName == "Soulstone Resurrection") then
			kLib:MessageFrameWarn("|cffffffff"..destName.."|r".." gains ".."|cff00ff00".."Soulstone Resurrection",5);
			kLib:Print(CombatLog_String_GetIcon(destFlags, "dest").."|cffffffff"..destName.."|cff8888cc".." gains ".."|cff00ff00".."Soulstone Resurrection");
		elseif(spellName == "Divine Intervention") then
			kLib:MessageFrameWarn("|cffffffff"..destName.."|r".." gains Divine Intervention",5,0,1,0);
			kLib:Print("|cFFFFFFFF"..destName.." |cFF8888CCgains |cFFFFFFFFDivine Intervention");
		end
	end
	--check for a summon of Jeeves
	if(combatEvent == "SPELL_SUMMON" and sourceName) then
		if(spellName == "Jeeves") then
			kLib:MessageFrameWarn("|cffffffff"..sourceName.."|r summoned |cff00ff00Jeeves",12);
			kLib:Print(CombatLog_String_GetIcon(sourceFlags, "source").."|cffffffff"..sourceName.."|cff8888cc summoned |cff00ff00Jeeves");
		end
	end
    --check for a summon of Blingtron 5000
    if(combatEvent == "SPELL_SUMMON" and sourceName) then
        if(spellName == "Blingtron 5000") then
			kLib:MessageFrameWarn("|cffffffff"..sourceName.."|r summoned |cff00ff00Blingtron 5000",12);
			kLib:Print(CombatLog_String_GetIcon(sourceFlags, "source").."|cffffffff"..sourceName.."|cff8888cc summoned |cff00ff00Blingtron 5000");
        end
    end
    --check for a cast of MOLL-E
	if(combatEvent == "SPELL_CAST_SUCCESS" and sourceName) then
		if(spellName == "MOLL-E") then
			kLib:MessageFrameWarn("|cffffffff"..sourceName.."|r summoned |cff00ff00MOLL-E",12);
			kLib:Print(CombatLog_String_GetIcon(sourceFlags, "source").."|cffffffff"..sourceName.."|cff8888cc summoned |cff00ff00MOLL-E");
		end
	end
end

local function ARPG_FeastRepairAlert(msg, from)
	if type(msg) == "string" then
		if _G.string.find(msg, "prepares a") then
			local pos = _G.string.find(msg, "prepares a")
			kLib:MessageFrameWarn("|cffffffff" .. from .. "|cff00ffff " .. _G.string.sub(msg, pos), 12)
		end
		if _G.string.find(msg, "is hosting a") then
			local pos = _G.string.find(msg, "is hosting a")
			kLib:MessageFrameWarn("|cffffffff" .. from .. "|cff00ffff " .. _G.string.sub(msg, pos), 12)
		end
		if _G.string.find(msg, "Goblin Barbecue") then
			kLib:MessageFrameWarn("|cffffffff" .. from .. "|cff00ffff " .. "Goblin Barbecue", 12)
		end
	end
end

--local function ARPG_InterruptAnnounce(timestamp, combatEvent, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellId, spellName, spellSchool, arg15, arg16, arg17, arg18, arg19, arg20, arg21, arg22, arg23, arg24, arg25)
local function ARPG_InterruptAnnounce()
	local timestamp, combatEvent, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellId, spellName, spellSchool, extraSpellId, extraSpellName, extraSchool = CombatLogGetCurrentEventInfo()
	if(combatEvent == "SPELL_INTERRUPT" and sourceName and sourceName == UnitName("player")) then
		--if you only whant to announce in a raid, and VBM_ZONE is not set, return
		local saymsg = ""..spellName.." - >>"..extraSpellName.."<<"
		SendChatMessage(saymsg, "SAY")
		--vbm_say(""..spellName.." - >>"..arg16.."<<");
	end
end

--local function ARPG_InterruptWatch(timestamp, combatEvent, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellId, spellName, spellSchool, arg15, arg16, arg17, arg18, arg19, arg20, arg21, arg22, arg23)
local function ARPG_InterruptWatch()
	local timestamp, combatEvent, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellId, spellName, spellSchool, extraSpellId, extraSpellName, extraSchool = CombatLogGetCurrentEventInfo()
	if(combatEvent == "SPELL_INTERRUPT" and destName) then
		if not sourceName then
			sourceName = "Unknown";
		else
			--if Only Friendly Source
			--if(not VBM_GetS("InterruptWatcherHS")) then
				--if Source is not friendly
				if(not kLib:Band(sourceFlags, COMBATLOG_OBJECT_REACTION_FRIENDLY)) then
					return;
				end
			--end
		end
		
		--if Only Hostile Targets
		--if(not VBM_GetS("InterruptWatcherFT")) then
			--if Target is something else then hostile or neutral
			if not kLib:Band(destFlags, kLib:Bor(COMBATLOG_OBJECT_REACTION_HOSTILE, COMBATLOG_OBJECT_REACTION_NEUTRAL)) then
				return;
			end
		--end
		
		--if Only NPC Targets
		--if(not VBM_GetS("InterruptWatcherPT")) then
			--if Target is something else then NPC
			if(not kLib:Band(destFlags, COMBATLOG_OBJECT_CONTROL_NPC) ) then
				return;
			end
		--end
		
		--local extraSpellName = arg16;
		kLib:Print("|cff8888cc["..CombatLog_String_GetIcon(sourceFlags, "source").."|cffb4b4b4"..sourceName.."|cff8888cc] |cffffffff"..spellName..
			kLib:FlagsColor(sourceFlags).." INTERRUPT |cff8888cc["..CombatLog_String_GetIcon(destFlags, "dest").."|cffb4b4b4"..destName.."|cff8888cc] |cffffffff"..extraSpellName);
	end	
end

local function ARPGEvent_COMBAT_LOG_EVENT_UNFILTERED(self, event, ...)
	if config.InterruptAnnounce then
		ARPG_InterruptAnnounce(...)
	end
	if config.InterruptWatch then
		ARPG_InterruptWatch(...)
	end
	if config.FeastRepairAlert then
		ARPG_SSDI_Alert(...)
	end
end

local function ARPGEvent_CHAT_MSG_MONSTER_EMOTE(self, event, ...)
	if config.FeastRepairAlert then
		ARPG_FeastRepairAlert(...)
	end
end

kLib:RegisterCallback("COMBAT_LOG_EVENT_UNFILTERED", ARPGEvent_COMBAT_LOG_EVENT_UNFILTERED)
kLib:RegisterCallback("CHAT_MSG_MONSTER_EMOTE", ARPGEvent_CHAT_MSG_MONSTER_EMOTE)