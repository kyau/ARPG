--file: Modules/SellGrey.lua

--get the addon namespace
local addon, namespace = ...
--get ARPG namespace (just in case needed)
local ARPG = namespace.ARPG or ARPG

local unpack, type = unpack, type
local RAID_CLASS_COLORS, FACTION_BAR_COLORS, ICON_LIST = RAID_CLASS_COLORS, FACTION_BAR_COLORS, ICON_LIST
local GameTooltip, GameTooltipStatusBar = GameTooltip, GameTooltipStatusBar
local GameTooltipTextRight1, GameTooltipTextRight2, GameTooltipTextRight3, GameTooltipTextRight4, GameTooltipTextRight5, GameTooltipTextRight6, GameTooltipTextRight7, GameTooltipTextRight8 = GameTooltipTextRight1, GameTooltipTextRight2, GameTooltipTextRight3, GameTooltipTextRight4, GameTooltipTextRight5, GameTooltipTextRight6, GameTooltipTextRight7, GameTooltipTextRight8
local GameTooltipTextLeft1, GameTooltipTextLeft2, GameTooltipTextLeft3, GameTooltipTextLeft4, GameTooltipTextLeft5, GameTooltipTextLeft6, GameTooltipTextLeft7, GameTooltipTextLeft8 = GameTooltipTextLeft1, GameTooltipTextLeft2, GameTooltipTextLeft3, GameTooltipTextLeft4, GameTooltipTextLeft5, GameTooltipTextLeft6, GameTooltipTextLeft7, GameTooltipTextLeft8
local classColorHex, factionColorHex = {}, {}

--config
local cfg = {}
cfg.textColor = {0.4,0.4,0.4}
cfg.bossColor = {1,0,0}
cfg.eliteColor = {1,0,0.5}
cfg.rareeliteColor = {1,0.5,0}
cfg.rareColor = {1,0.5,0}
cfg.levelColor = {0.8,0.8,0.5}
cfg.deadColor = {0.5,0.5,0.5}
cfg.targetColor = {1,0.5,0.5}
cfg.guildColor = {1,0,1}
cfg.afkColor = {0,1,1}
cfg.scale = 0.95
cfg.fontFamily = STANDARD_TEXT_FONT
cfg.backdrop = {
	bgFile = "Interface\\Buttons\\WHITE8x8",
	bgColor = {0.08,0.08,0.1,0.92},
	edgeFile = "Interface\\AddOns\\"..addon.."\\Media\\Textures\\TooltipBorder.tga",
	borderColor = {0.1,0.1,0.1,0.6},
	itemBorderColorAlpha = 0.8,
	azeriteBorderColor = {1,0.3,0,0.9},
	tile = false,
	tileEdge = false,
	tileSize = 16,
	edgeSize = 16,
	insets = {left=3, right=3, top=3, bottom=3}
}
cfg.azerite = {
	RemoveBlizzard = true,
	OnlySpec = true,
	Compact = false
}
--pos can be either a point table or a anchor string
cfg.pos = { "BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -10, 10 }
--cfg.pos = "ANCHOR_NONE" --"ANCHOR_CURSOR"

--functions
local function isempty(s)
	return s == nil or s == ''
end

local function GetHexColor(color)
	if color.r then
		return ("%.2x%.2x%.2x"):format(color.r*255, color.g*255, color.b*255)
	else
		local r,g,b,a = unpack(color)
		return ("%.2x%.2x%.2x"):format(r*255, g*255, b*255)
	end
end

local function GetTarget(unit)
	if UnitIsUnit(unit, "player") then
		return ("|cffff0000%s|r"):format("<YOU>")
	elseif UnitIsPlayer(unit, "player") then
		local _, class = UnitClass(unit)
		return ("|cff%s%s|r"):format(classColorHex[class], UnitName(unit))
	elseif UnitReaction(unit, "player") then
		return ("|cff%s%s|r"):format(factionColorHex[UnitReaction(unit, "player")], UnitName(unit))
	else
		return ("|cffffffff%s|r"):format(UnitName(unit))
	end
end

local function OnTooltipSetUnit(self)
	local unitName, unit = self:GetUnit()
	if not unit then return end
	--color tooltip textleft2..8
	if not isempty(GameTooltipTextLeft2) then
		GameTooltipTextLeft2:SetTextColor(unpack(cfg.textColor))
	end
	if not isempty(GameTooltipTextLeft3) then
		GameTooltipTextLeft3:SetTextColor(unpack(cfg.textColor))
	end
	if not isempty(GameTooltipTextLeft4) then
		GameTooltipTextLeft4:SetTextColor(unpack(cfg.textColor))
	end
	if not isempty(GameTooltipTextLeft5) then
		GameTooltipTextLeft5:SetTextColor(unpack(cfg.textColor))
	end
	if not isempty(GameTooltipTextLeft6) then
		GameTooltipTextLeft6:SetTextColor(unpack(cfg.textColor))
	end
	if not isempty(GameTooltipTextLeft7) then
		GameTooltipTextLeft7:SetTextColor(unpack(cfg.textColor))
	end
	if not isempty(GameTooltipTextLeft8) then
		GameTooltipTextLeft8:SetTextColor(unpack(cfg.textColor))
	end
	--GameTooltipTextLeft3:SetTextColor(unpack(cfg.textColor))
	--GameTooltipTextLeft4:SetTextColor(unpack(cfg.textColor))
	--GameTooltipTextLeft5:SetTextColor(unpack(cfg.textColor))
	--GameTooltipTextLeft6:SetTextColor(unpack(cfg.textColor))
	--GameTooltipTextLeft7:SetTextColor(unpack(cfg.textColor))
	--GameTooltipTextLeft8:SetTextColor(unpack(cfg.textColor))
	--position raidicon
	--local raidIconIndex = GetRaidTargetIndex(unit)
	--if raidIconIndex then
	--  GameTooltipTextLeft1:SetText(("%s %s"):format(ICON_LIST[raidIconIndex].."14|t", unitName))
	--end
	if not UnitIsPlayer(unit) then
		--unit is not a player
		--color textleft1 and statusbar by faction color
		local reaction = UnitReaction(unit, "player")
		if reaction then
			local color = FACTION_BAR_COLORS[reaction]
			if color then
				cfg.barColor = color
				GameTooltipStatusBar:SetStatusBarColor(color.r,color.g,color.b)
				GameTooltipTextLeft1:SetTextColor(color.r,color.g,color.b)
			end
		end
		--color textleft2 by classificationcolor
		local unitClassification = UnitClassification(unit)
		local levelLine
        if not isempty(GameTooltipTextLeft2) then
		--if string.find(GameTooltipTextLeft2:GetText() or "empty", "%a%s%d") then
			levelLine = GameTooltipTextLeft2
		--elseif string.find(GameTooltipTextLeft3:GetText() or "empty", "%a%s%d") then
        elseif not isempty(GameTooltipTextLeft3) then
			GameTooltipTextLeft2:SetTextColor(unpack(cfg.guildColor)) --seems like the npc has a description, use the guild color for this
			levelLine = GameTooltipTextLeft3
		end
		if levelLine then
			local l = UnitLevel(unit)
			local color = GetCreatureDifficultyColor((l > 0) and l or 999)
			levelLine:SetTextColor(color.r,color.g,color.b)
		end
		if unitClassification == "worldboss" or UnitLevel(unit) == -1 then
			self:AppendText(" |cffff0000{B}|r")
			GameTooltipTextLeft2:SetTextColor(unpack(cfg.bossColor))
		elseif unitClassification == "rare" then
			self:AppendText(" |cffff9900{R}|r")
		elseif unitClassification == "rareelite" then
			self:AppendText(" |cffff0000{R+}|r")
		elseif unitClassification == "elite" then
			self:AppendText(" |cffff6666{E}|r")
		end
	else
		--unit is any player
		local _, unitClass = UnitClass(unit)
		--color textleft1 and statusbar by class color
		local color = RAID_CLASS_COLORS[unitClass]
		cfg.barColor = color
		GameTooltipStatusBar:SetStatusBarColor(color.r,color.g,color.b)
		GameTooltipTextLeft1:SetTextColor(color.r,color.g,color.b)
		--color textleft2 by guildcolor
		local unitGuild = GetGuildInfo(unit)
		if unitGuild then
			GameTooltipTextLeft2:SetText("<"..unitGuild..">")
			GameTooltipTextLeft2:SetTextColor(unpack(cfg.guildColor))
		end
		local levelLine = unitGuild and GameTooltipTextLeft3 or GameTooltipTextLeft2
		local l = UnitLevel(unit)
		local color = GetCreatureDifficultyColor((l > 0) and l or 999)
		levelLine:SetTextColor(color.r,color.g,color.b)
		--afk?
		if UnitIsAFK(unit) then
			self:AppendText((" |cff%s<AFK>|r"):format(cfg.afkColorHex))
		end
	end
	--dead?
	if UnitIsDeadOrGhost(unit) then
		GameTooltipTextLeft1:SetTextColor(unpack(cfg.deadColor))
	end
	--target line
	if (UnitExists(unit.."target")) then
		GameTooltip:AddDoubleLine(("|cff%s%s|r"):format(cfg.targetColorHex, "Target"),GetTarget(unit.."target") or "Unknown")
	end
end

local function SetBackdropStyle(self,style)
	if self.TopOverlay then self.TopOverlay:Hide() end
	if self.BottomOverlay then self.BottomOverlay:Hide() end
	self:SetBackdrop(cfg.backdrop)
	self:SetBackdropColor(unpack(cfg.backdrop.bgColor))
	local _, itemLink = self:GetItem()
	if itemLink then
		local azerite = C_AzeriteEmpoweredItem.IsAzeriteEmpoweredItemByID(itemLink) or C_AzeriteItem.IsAzeriteItemByID(itemLink) or false
		local _, _, itemRarity = GetItemInfo(itemLink)
		local r,g,b = 1,1,1
		if itemRarity then r,g,b = GetItemQualityColor(itemRarity) end
		--print("r:", r, " g:", g, " b:", b)
		--use azerite coloring or item rarity
		if azerite and cfg.backdrop.azeriteBorderColor then
			self:SetBackdropBorderColor(unpack(cfg.backdrop.azeriteBorderColor))
		else
			self:SetBackdropBorderColor(r,g,b,cfg.backdrop.itemBorderColorAlpha)
		end
	else
		--no item, use default border
		self:SetBackdropBorderColor(unpack(cfg.backdrop.borderColor))
	end
end

local function SetStatusBarColor(self,r,g,b)
	if not cfg.barColor then return end
	if r == cfg.barColor.r and g == cfg.barColor.g and b == cfg.barColor.b then return end
	self:SetStatusBarColor(cfg.barColor.r,cfg.barColor.g,cfg.barColor.b)
end

local function SetDefaultAnchor(self,parent)
	if not cfg.pos then return end
	if type(cfg.pos) == "string" then
		self:SetOwner(parent, cfg.pos)
	else
		self:SetOwner(parent, "ANCHOR_NONE")
		self:ClearAllPoints()
		self:SetPoint(unpack(cfg.pos))
	end
end

--init
--hex class colors
for class, color in next, RAID_CLASS_COLORS do
  classColorHex[class] = GetHexColor(color)
end
--hex reaction colors
--for idx, color in next, FACTION_BAR_COLORS do
for i = 1, #FACTION_BAR_COLORS do
  factionColorHex[i] = GetHexColor(FACTION_BAR_COLORS[i])
end

cfg.targetColorHex = GetHexColor(cfg.targetColor)
cfg.afkColorHex = GetHexColor(cfg.afkColor)

GameTooltipHeaderText:SetFont(cfg.fontFamily, 14, "NONE")
GameTooltipHeaderText:SetShadowOffset(1,-2)
GameTooltipHeaderText:SetShadowColor(0,0,0,0.75)
GameTooltipText:SetFont(cfg.fontFamily, 12, "NONE")
GameTooltipText:SetShadowOffset(1,-2)
GameTooltipText:SetShadowColor(0,0,0,0.75)
Tooltip_Small:SetFont(cfg.fontFamily, 11, "NONE")
Tooltip_Small:SetShadowOffset(1,-2)
Tooltip_Small:SetShadowColor(0,0,0,0.75)

--gametooltip statusbar
GameTooltipStatusBar:ClearAllPoints()
GameTooltipStatusBar:SetPoint("LEFT",5,0)
GameTooltipStatusBar:SetPoint("RIGHT",-5,0)
GameTooltipStatusBar:SetPoint("TOP",0,-2.5)
GameTooltipStatusBar:SetHeight(4)
--gametooltip statusbar bg
GameTooltipStatusBar.bg = GameTooltipStatusBar:CreateTexture(nil,"BACKGROUND",nil,-8)
GameTooltipStatusBar.bg:SetAllPoints()
GameTooltipStatusBar.bg:SetColorTexture(1,1,1)
GameTooltipStatusBar.bg:SetVertexColor(0,0,0,0.5)

local function OnUIDropDownMenuClick(level, value, dropDownFrame, anchorName, xOffset, yOffset, menuList, button, autoHideDelay)
	if level then
		_G["DropDownList"..level.."MenuBackdrop"]:SetBackdrop(cfg.backdrop)
		_G["DropDownList"..level.."MenuBackdrop"]:SetBackdropColor(unpack(cfg.backdrop.bgColor))
		_G["DropDownList"..level.."MenuBackdrop"]:SetBackdropBorderColor(unpack(cfg.backdrop.borderColor))
	end
end

local function ChatMenuOnClick()
	ChatMenu:SetBackdrop(cfg.backdrop)
	ChatMenu:SetBackdropColor(unpack(cfg.backdrop.bgColor))
	ChatMenu:SetBackdropBorderColor(unpack(cfg.backdrop.borderColor))
	--[[
	LanguageMenu:SetBackdrop(cfg.backdrop)
	LanguageMenu:SetBackdropColor(unpack(cfg.backdrop.bgColor))
	LanguageMenu:SetBackdropBorderColor(unpack(cfg.backdrop.borderColor))
	EmoteMenu:SetBackdrop(cfg.backdrop)
	EmoteMenu:SetBackdropColor(unpack(cfg.backdrop.bgColor))
	EmoteMenu:SetBackdropBorderColor(unpack(cfg.backdrop.borderColor))
	VoiceMacroMenu:SetBackdrop(cfg.backdrop)
	VoiceMacroMenu:SetBackdropColor(unpack(cfg.backdrop.bgColor))
	VoiceMacroMenu:SetBackdropBorderColor(unpack(cfg.backdrop.borderColor))
	]]
end

local function FriendsFrameTooltip(self)
	FriendsTooltip:SetBackdrop(cfg.backdrop)
	FriendsTooltip:SetBackdropColor(unpack(cfg.backdrop.bgColor))
	FriendsTooltip:SetBackdropBorderColor(unpack(cfg.backdrop.borderColor))
end

--GameTooltipStatusBar:SetStatusBarColor()
hooksecurefunc(GameTooltipStatusBar,"SetStatusBarColor", SetStatusBarColor)
--GameTooltip_SetDefaultAnchor()
if cfg.pos then hooksecurefunc("GameTooltip_SetDefaultAnchor", SetDefaultAnchor) end
--GameTooltip_SetBackdropStyle
hooksecurefunc("GameTooltip_SetBackdropStyle", SetBackdropStyle)
--hooksecurefunc("GameTooltip_OnTooltipSetItem", SetBackdropStyle)

--[[
hooksecurefunc("CreateFrame", function(type, name, parent, template)
	if strfind(tostring(name), "LibExtraTip") then
		local frame = _G[name]
		frame:SetBackdrop(GameTooltip:GetBackdrop())
		frame:SetBackdropColor(GameTooltip:GetBackdropColor())
		frame:SetBackdropBorderColor(GameTooltip:GetBackdropBorderColor())
	end
end)]]
--hooksecurefunc("GameTooltip_UpdateStyle", SetBackdropStyle)
--hooksecurefunc("GameTooltip_OnLoad", SetBackdropStyle)
--OnTooltipSetUnit
GameTooltip:HookScript("OnTooltipSetUnit", OnTooltipSetUnit)
--UIDropDownMenu
hooksecurefunc("ToggleDropDownMenu", OnUIDropDownMenuClick)
--ChatMenu
hooksecurefunc("ChatFrame_ToggleMenu", ChatMenuOnClick)
--FriendsFrame Tooltip
--hooksecurefunc("FriendsFrameTooltip_Show", FriendsFrameTooltip)

--loop over tooltips
local tooltips = { GameTooltip,ShoppingTooltip1,ShoppingTooltip2,ItemRefTooltip,ItemRefShoppingTooltip1,ItemRefShoppingTooltip2,WorldMapTooltip,
WorldMapCompareTooltip1,WorldMapCompareTooltip2,SmallTextTooltip,AraBrokerGuildFriends }
for i, tooltip in next, tooltips do
	tooltip:SetScale(cfg.scale)
	if tooltip:HasScript("OnTooltipCleared") then
		tooltip:HookScript("OnTooltipCleared", SetBackdropStyle)
	end
end

--loop over menues
local menues = {
	DropDownList1MenuBackdrop,
	DropDownList2MenuBackdrop,
}
for i, menu in next, menues do
	menu:SetScale(cfg.scale)
end

--spellid line
local function TooltipAddSpellID(self,spellid)
	if not spellid then return end
	self:AddDoubleLine("|cff0099ffspellid|r",spellid)
	self:Show()
end

--hooksecurefunc GameTooltip SetUnitBuff
hooksecurefunc(GameTooltip, "SetUnitBuff", function(self,...)
	TooltipAddSpellID(self,select(10,UnitBuff(...)))
end)
--hooksecurefunc GameTooltip SetUnitDebuff
hooksecurefunc(GameTooltip, "SetUnitDebuff", function(self,...)
	TooltipAddSpellID(self,select(10,UnitDebuff(...)))
end)
--hooksecurefunc GameTooltip SetUnitAura
hooksecurefunc(GameTooltip, "SetUnitAura", function(self,...)
	TooltipAddSpellID(self,select(10,UnitAura(...)))
end)
--hooksecurefunc SetItemRef
hooksecurefunc("SetItemRef", function(link)
	local type, value = link:match("(%a+):(.+)")
	if type == "spell" then
		TooltipAddSpellID(ItemRefTooltip,value:match("([^:]+)"))
	end
end)
--HookScript GameTooltip OnTooltipSetSpell
GameTooltip:HookScript("OnTooltipSetSpell", function(self)
	TooltipAddSpellID(self,select(2,self:GetSpell()))
end)

--AzeriteTooltip
local addText = ""
local AzeriteTooltipDB = cfg.azerite

function AzeriteTooltip_GetSpellID(powerID)
	local powerInfo = C_AzeriteEmpoweredItem.GetPowerInfo(powerID)
  	if (powerInfo) then
    	local azeriteSpellID = powerInfo["spellID"]
    	return azeriteSpellID
  	end
end

function AzeriteTooltip_ScanSelectedTraits(tooltip, powerName)
	for i = 8, tooltip:NumLines() do
		local left = _G[tooltip:GetName().."TextLeft"..i]
		local text = left:GetText()
        if text and text:find(powerName) then
        	return true
        end
    end
end

function AzeriteTooltip_GetAzeriteLevel()
	local level
	local azeriteItemLocation = C_AzeriteItem.FindActiveAzeriteItem()
	if azeriteItemLocation then
		level = C_AzeriteItem.GetPowerLevel(azeriteItemLocation)
	else
		level = 0
	end
	return level
end		

-- Thanks muxxon@Curse for help
function AzeriteTooltip_ClearBlizzardText(tooltip)
	local textLeft = tooltip.textLeft
	if not textLeft then
		local tooltipName = tooltip:GetName()
		textLeft = setmetatable({}, { __index = function(t, i)
			local line = _G[tooltipName .. "TextLeft" .. i]
			t[i] = line
			return line
		end })
		tooltip.textLeft = textLeft
	end
	for i = 7, tooltip:NumLines() do
		if textLeft then
			local line = textLeft[i]		
			local text = line:GetText()
			local r, g, b = line:GetTextColor()
			if text then
				local ActiveAzeritePowers = strsplit("(%d/%d)", CURRENTLY_SELECTED_AZERITE_POWERS) -- Active Azerite Powers (%d/%d)
				local AzeritePowers = strsplit("(0/%d)", TOOLTIP_AZERITE_UNLOCK_LEVELS) -- Azerite Powers (0/%d)
				local AzeriteUnlock = strsplit("%d", AZERITE_POWER_UNLOCKED_AT_LEVEL) -- Unlocked at Heart of Azeroth Level %d
				local Durability = strsplit("%d / %d", DURABILITY_TEMPLATE)

				if text:match(CURRENTLY_SELECTED_AZERITE_POWERS_INSPECT) then return end

				if text:find(ActiveAzeritePowers) or text:find(AzeritePowers) then
					textLeft[i-1]:SetText("")
					line:SetText("")
					textLeft[i+1]:SetText(addText)
				end

				if text:find(AzeriteUnlock) or text:find(NEW_AZERITE_POWER_AVAILABLE) then
					line:SetText("")
				end

				if text:find(Durability) then
					textLeft[i-1]:SetText("")
				end
			end
		end
	end
end

function AzeriteTooltip_RemovePowerText(tooltip, powerName)
	local textLeft = tooltip.textLeft
	if not textLeft then
		local tooltipName = tooltip:GetName()
		textLeft = setmetatable({}, { __index = function(t, i)
			local line = _G[tooltipName .. "TextLeft" .. i]
			t[i] = line
			return line
		end })
		tooltip.textLeft = textLeft
	end
	for i = 7, tooltip:NumLines() do
		if textLeft then
			local line = textLeft[i]		
			local text = line:GetText()
			local r, g, b = line:GetTextColor()
			if text then				
				if text:match(CURRENTLY_SELECTED_AZERITE_POWERS_INSPECT) then return end

				if text:find("- "..powerName) then
					line:SetText("")
				end
				if r < 0.1 and g > 0.9 and b < 0.1 and not text:match(ITEM_AZERITE_EMPOWERED_VIEWABLE) then
					line:SetText("")
				end
			end
		end
	end
end

function AzeriteTooltip_BuildTooltip(self)
	local name, link = self:GetItem()
  	if not name then return end

  	if C_AzeriteEmpoweredItem.IsAzeriteEmpoweredItemByID(link) then

  		addText = ""
		
		local currentLevel = AzeriteTooltip_GetAzeriteLevel()

		local specID = GetSpecializationInfo(GetSpecialization())
		local allTierInfo = C_AzeriteEmpoweredItem.GetAllTierInfoByItemID(link)

		if not allTierInfo then return end

		local activePowers = {}
		local activeAzeriteTrait = false

		if AzeriteTooltipDB.Compact then
			for j=1, 3 do
				local tierLevel = allTierInfo[j]["unlockLevel"]
				local azeritePowerID = allTierInfo[j]["azeritePowerIDs"][1]

				if azeritePowerID == 13 then break end -- Ignore +5 item level tier

				if not allTierInfo[1]["azeritePowerIDs"][1] then return end

				local azeriteTooltipText = " "
				for i, _ in pairs(allTierInfo[j]["azeritePowerIDs"]) do
					local azeritePowerID = allTierInfo[j]["azeritePowerIDs"][i]
					local azeriteSpellID = AzeriteTooltip_GetSpellID(azeritePowerID)				
					local azeritePowerName, _, icon = GetSpellInfo(azeriteSpellID)	

					if tierLevel <= currentLevel then
						if AzeriteTooltip_ScanSelectedTraits(self, azeritePowerName) then
							local azeriteIcon = '|T'..icon..':24:24:0:0:64:64:4:60:4:60:255:255:255|t'
							azeriteTooltipText = azeriteTooltipText.."  >"..azeriteIcon.."<"

							tinsert(activePowers, {name = azeritePowerName})
							activeAzeriteTrait = true
						elseif C_AzeriteEmpoweredItem.IsPowerAvailableForSpec(azeritePowerID, specID) then
							local azeriteIcon = '|T'..icon..':24:24:0:0:64:64:4:60:4:60:150:150:150|t'
							azeriteTooltipText = azeriteTooltipText.."  "..azeriteIcon
						elseif not AzeriteTooltipDB.OnlySpec then
							local azeriteIcon = '|T'..icon..':24:24:0:0:64:64:4:60:4:60:150:150:150|t'
							azeriteTooltipText = azeriteTooltipText.."  "..azeriteIcon
						end
					elseif C_AzeriteEmpoweredItem.IsPowerAvailableForSpec(azeritePowerID, specID) then						
						local azeriteIcon = '|T'..icon..':24:24:0:0:64:64:4:60:4:60:150:150:150|t'
						azeriteTooltipText = azeriteTooltipText.."  "..azeriteIcon
					elseif not AzeriteTooltipDB.OnlySpec then
						local azeriteIcon = '|T'..icon..':24:24:0:0:64:64:4:60:4:60:150:150:150|t'
						azeriteTooltipText = azeriteTooltipText.."  "..azeriteIcon
					end				
				end

				if tierLevel <= currentLevel then
					if j > 1 then 
						addText = addText.."\n \n|cFFffcc00Azerite Level "..tierLevel..azeriteTooltipText.."|r"
					else
						addText = addText.."|cFFffcc00Azerite Level "..tierLevel..azeriteTooltipText.."|r"
					end
				else
					if j > 1 then 
						addText = addText.."\n \n|cFF7a7a7aAzerite Level "..tierLevel..azeriteTooltipText.."|r"
					else
						addText = addText.."|cFF7a7a7aAzerite Level "..tierLevel..azeriteTooltipText.."|r"
					end
				end
				
			end
		else
			for j=1, 3 do
				local tierLevel = allTierInfo[j]["unlockLevel"]
				local azeritePowerID = allTierInfo[j]["azeritePowerIDs"][1]

				if azeritePowerID == 13 then break end -- Ignore +5 item level tier	

				if not allTierInfo[1]["azeritePowerIDs"][1] then return end

				if tierLevel <= currentLevel then
					if j > 1 then 
						addText = addText.."\n \n|cFFffcc00 Azerite Level "..tierLevel.."|r"
					else
						addText = addText.."|cFFffcc00 Azerite Level "..tierLevel.."|r"
					end
				else
					if j > 1 then 
						addText = addText.."\n \n|cFF7a7a7a Azerite Level "..tierLevel.."|r"
					else
						addText = addText.."|cFF7a7a7a Azerite Level "..tierLevel.."|r"
					end
				end

				for i, v in pairs(allTierInfo[j]["azeritePowerIDs"]) do
					local azeritePowerID = allTierInfo[j]["azeritePowerIDs"][i]
					local azeriteSpellID = AzeriteTooltip_GetSpellID(azeritePowerID)
						
					local azeritePowerName, _, icon = GetSpellInfo(azeriteSpellID)
					local azeriteIcon = '|T'..icon..':20:20:0:0:64:64:4:60:4:60|t'
					local azeriteTooltipText = "  "..azeriteIcon.."  "..azeritePowerName

					if tierLevel <= currentLevel then
						if AzeriteTooltip_ScanSelectedTraits(self, azeritePowerName) then
							tinsert(activePowers, {name = azeritePowerName})
							activeAzeriteTrait = true	

							addText = addText.."\n|cFF00FF00"..azeriteTooltipText.."|r"			
						elseif C_AzeriteEmpoweredItem.IsPowerAvailableForSpec(azeritePowerID, specID) then
							addText = addText.."\n|cFFFFFFFF"..azeriteTooltipText.."|r"
						elseif not AzeriteTooltipDB.OnlySpec then
							addText = addText.."\n|cFF7a7a7a"..azeriteTooltipText.."|r"
						end
					elseif C_AzeriteEmpoweredItem.IsPowerAvailableForSpec(azeritePowerID, specID) then
						addText = addText.."\n|cFF7a7a7a"..azeriteTooltipText.."|r"
					elseif not AzeriteTooltipDB.OnlySpec then
						addText = addText.."\n|cFF7a7a7a"..azeriteTooltipText.."|r"
					end		
				end	
			end
		end

		if AzeriteTooltipDB.RemoveBlizzard then
			if activeAzeriteTrait then
				for k, v in pairs(activePowers) do
					AzeriteTooltip_RemovePowerText(self, v.name)
				end
			end
			AzeriteTooltip_ClearBlizzardText(self)
		else
			self:AddLine(addText)
			--self:AddLine(" ")
		end
		wipe(activePowers)
	end
end

GameTooltip:HookScript("OnTooltipSetItem", AzeriteTooltip_BuildTooltip)
ItemRefTooltip:HookScript("OnTooltipSetItem", AzeriteTooltip_BuildTooltip)
ShoppingTooltip1:HookScript("OnTooltipSetItem", AzeriteTooltip_BuildTooltip)
WorldMapTooltip.ItemTooltip.Tooltip:HookScript('OnTooltipSetItem', AzeriteTooltip_BuildTooltip)
