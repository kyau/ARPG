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

--event functions
local function ARPG_Events_ADDON_FULLY_LOADED()
	local version, build, bdate, toc = GetBuildInfo()
	print("|TInterface\\AddOns\\ARPG\\Media\\Logo:44:242:0:0|t")
	print("|cffff69b4ARPG:|r "..ARPG.version.." — ".."|cffffc700WoW:|r v"..version.."-"..build.." ("..bdate..") — |cffffc700Interface:|r "..toc)
	print(" ")
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