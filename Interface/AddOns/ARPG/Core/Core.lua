--file: Core/Core.lua

--get the addon namespace
local addon, namespace = ...
--set ARPG namespace
if not namespace.ARPG then
	local ARPG = {
		UIFrame = {},
		version = GetAddOnMetadata("ARPG", "Version"),
	}
	namespace.ARPG = ARPG
end
local ARPG = namespace.ARPG or ARPG

--setup default config
local DefaultConfig = {
	FeastRepairAlert = true,
	InterruptAnnounce = true,
	InterruptWatch = true,
	QuickLoot = true,
	ScreenSaver = true,
	SellGrey = true,
}
ARPG_CONFIG = ARPG_CONFIG or DefaultConfig

--functions
function ARPG_CurrentRealm()
	local realmName = GetRealmName()
	local normalizedRealmName = GetNormalizedRealmName()
	print("|cffF1D329Current Realm:|r |cff3DD341"..realmName.."|r")
	local connectedRealms = GetAutoCompleteRealms()
	tDeleteItem(connectedRealms, normalizedRealmName)
	if connectedRealms then
		for i=1, #connectedRealms do
			print("|cffF1D329Connected Realm:|r |cff3DD341"..connectedRealms[i].."|r")
		end
	end
end

--event functions
local function ARPG_Events_ADDON_FULLY_LOADED()
	local version, build, bdate, toc = GetBuildInfo()
	--print("|TInterface\\AddOns\\ARPG\\Media\\Logo.tga:32:128:0:0|t")
	print("|cffff69b4ARPG:|r "..ARPG.version.." — ".."|cffffc700WoW:|r v"..version.."-"..build.." ("..bdate..") — |cffffc700Interface:|r "..toc)
	print(" ")
	ARPG_CurrentRealm()
end

function ARPG_Events_ADDON_LOADED(self, event, args, addon, ...)
	if addon == "Blizzard_OrderHallUI" then
		OrderHallCommandBar:Hide()
		OrderHallCommandBar.Show = function() return end
		GarrisonLandingPageTutorialBox:SetClampedToScreen(true)
		self:UnregisterEvent("ADDON_LOADED")
	end
end

function ARPG_Events_PLAYER_LOGIN(self, event, args, ...)
	self:UnregisterEvent("UI_ERROR_MESSAGE")
	--set dynamic camera pitch
	local pitch = GetCVar("test_cameraDynamicPitch")
	local pitchFov = GetCVar("test_cameraDynamicPitchBaseFovPad")
	if not pitch == 1 then
		SetCVar("test_cameraDynamicPitch", 1)
	end
	if not pitchFov == 0.65 then
		SetCVar("test_cameraDynamicPitchBaseFovPad", 0.65)
	end
end

function ARPG_Events_PLAYER_ENTERING_WORLD(self, event, args, ...)
	ARPGDebug()
end

local epoch = 0
local LOOT_DELAY = 0.3
local function ARPG_Events_LOOT_READY(self, event, args, ...)
	if GetCVarBool("autoLootDefault") ~= IsModifiedClick("AUTOLOOTTOGGLE") then
		if (GetTime() - epoch) >= LOOT_DELAY then
			for i = GetNumLootItems(), 1, -1 do
				LootSlot(i)
			end
			epoch = GetTime()
		end
	end
end

--register events
kLib:RegisterCallback("ADDON_LOADED", ARPG_Events_ADDON_LOADED)
kLib:RegisterCallback("PLAYER_LOGIN", ARPG_Events_PLAYER_LOGIN)
kLib:RegisterCallback("PLAYER_ENTERING_WORLD", ARPG_Events_PLAYER_ENTERING_WORLD)
kLib:RegisterCallback("LOOT_READY", ARPG_Events_LOOT_READY)
ARPG_Events_ADDON_FULLY_LOADED()