--file: Modules/LDB-Azerite.lua

--get the addon namespace
local addon, namespace = ...
--get ARPG namespace (just in case needed)
local ARPG = namespace.ARPG or ARPG

local LDB = LibStub:GetLibrary("LibDataBroker-1.1")
local AzeriteFrame = CreateFrame("Frame", "ARPG_Azerite")
local HasActiveAzeriteItem, FindActiveAzeriteItem, GetAzeriteItemXPInfo, GetPowerLevel = C_AzeriteItem.HasActiveAzeriteItem, C_AzeriteItem.FindActiveAzeriteItem, C_AzeriteItem.GetAzeriteItemXPInfo, C_AzeriteItem.GetPowerLevel

local AzeriteIcon = GetItemIcon(158075)
local AzeriteItemLocation, AzeriteMaxXP, AzeriteLevel, AzeriteItemLevel
local AzeriteAP = {}
local AzeriteAPMaxes =    {350,400, 450, 500, 550, 600, 650, 700,1050,1580,2370, 3560, 5350, 8000,10400,13500,17550,22800, 29650, 38600, 50100, 65150, 84700,110100,143150,186100, 241950, 314550, 408900, 531550, 691000, 898300}
local AzeriteAPTotals = {0,350,750,1200,1700,2250,2850,3500,4200,5250,6830,9200,12760,18110,26110,36510,50010,67560,90360,120010,158610,208710,273860,358560,468660,611810,797910,1039860,1354410,1763310,2294860,2985860,3884160}
local r, g, b, hex = GetItemQualityColor(6)

local dataobj = LDB:NewDataObject("Azerite", {
	type = "launcher",
	label = "Azerite",
	icon = "Interface\\AddOns\\"..addon.."\\Media\\Textures\\DataBroker\\Azerite.tga",
	text = "0",
	OnClick = function(clickedFrame, button)
		Azerite:Toggle()
	end,
})
function dataobj:OnTooltipShow()
	self:AddLine("|T"..AzeriteIcon..":0|t Heart of Azeroth",r,g,b)
	self:AddLine(" ")
	self:AddDoubleLine("Level", AzeriteLevel, 1, 1, 1, 0, 0.5, 1)
	self:AddDoubleLine("Item Level", AzeriteItemLevel, 1, 1, 1, 0, 0.5, 1)
	self:AddDoubleLine("Artifact Power", string.format("%d/%d [%d%%]", AzeriteXP, AzeriteMaxXP, AzeriteXP/AzeriteMaxXP*100), 1, 1, 1, 0, 0.5, 1)
end
function dataobj:OnEnter()
	GameTooltip:SetOwner(self, "ANCHOR_NONE")
	GameTooltip:SetPoint("TOPLEFT", self, "BOTTOMLEFT")
	GameTooltip:ClearLines()
	dataobj.OnTooltipShow(GameTooltip)
	GameTooltip:Show()
end
function dataobj:OnLeave()
	GameTooltip:Hide()
end
local function UpdateAzerite()
	if not HasActiveAzeriteItem() then
		return
	end
	if not AzeriteItemLocation then
			AzeriteMaxXP = AzeriteMaxXP or 1
		AzeriteItemLocation = FindActiveAzeriteItem()
		--AzeriteStartXP = GetAzeriteItemXPInfo(AzeriteItemLocation)
		--AzeriteStartLevel, AzeriteMaxXP = GetPowerLevel(AzeriteItemLocation)
		_, AzeriteMaxXP = GetPowerLevel(AzeriteItemLocation)
	end
	AzeriteXP, AzeriteMaxXP = GetAzeriteItemXPInfo(AzeriteItemLocation)
	AzeriteLevel = GetPowerLevel(AzeriteItemLocation)
	AzeriteAP[AzeriteLevel] = AzeriteAP[AzeriteLevel] or AzeriteMaxXP
	local item = Item:CreateFromEquipmentSlot(AzeriteItemLocation.equipmentSlotIndex)
	local ilvl = item:GetCurrentItemLevel()
	AzeriteItemLevel = ilvl
end
local function UpdateAzeriteLDB()
	local text
	if not HasActiveAzeriteItem() then
		text = "|cffaa0000N/A|r"
	else
		--text = "|c"..hex..AzeriteLevel.."|r — "..string.format("%d/%d (%d%%)", AzeriteXP, AzeriteMaxXP, AzeriteXP/AzeriteMaxXP*100)
		text = "|c"..hex..AzeriteLevel.."|r "..string.format("|cff696969[%d%%]|r", AzeriteXP/AzeriteMaxXP*100)
	end
	dataobj.text = text
end
local function ARPG_AzeriteUpdate(event, ...)
	UpdateAzerite()
	UpdateAzeriteLDB()
end

kLib:RegisterCallback("PLAYER_ENTERING_WORLD", ARPG_AzeriteUpdate)
kLib:RegisterCallback("AZERITE_ITEM_EXPERIENCE_CHANGED", ARPG_AzeriteUpdate)
kLib:RegisterCallback("AZERITE_ITEM_POWER_LEVEL_CHANGED", ARPG_AzeriteUpdate)