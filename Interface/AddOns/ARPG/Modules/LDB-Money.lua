--file: Modules/LDB-Money.lua

--get the addon namespace
local addon, namespace = ...
--get ARPG namespace (just in case needed)
local ARPG = namespace.ARPG or ARPG

local info = {}
-- fixed: when logging several days after your last time, it was considering the last time as yesterday, thus, reporting incorrect balance changes for days between.
--local addonName, info = ...
local f = CreateFrame"Frame"
local configMenu = CreateFrame("Frame", "AraBrokerMoneyDD")
local player, tip = UnitName"player"
local tipshown, config, realm, days, altd, chars, classes, factions, f1, f2, f3
local t, sorted, defaultClass, playerFaction, defaultFaction = {}, {}, { r=1, g=.8, b=0 }
local ByFactionMoney = function(a,b)
	if a.faction == b.faction then
		return a.money > b.money
	else
		return a.faction > b.faction
	end
end
local ByName = function(a,b) return a.name < b.name end
local altMoney, sepMoney, session, today, d = 0, 0
local RAID_CLASS_COLORS = CUSTOM_CLASS_COLORS or RAID_CLASS_COLORS

local block = LibStub("LibDataBroker-1.1"):NewDataObject("|cffff69b4ARPG:|r |cffffffffMoney|r", {
	type = "data source",
	icon = "Interface\\Minimap\\Tracking\\Auctioneer",
	OnLeave = function()
		GameTooltipTextLeft1:SetFont( f1, f2, f3 )
		GameTooltipTextRight1:SetFont( f1, f2, f3 )
		tipshown = nil
		tip:Hide()
	end,
	OnClick = function(self, button)
		if button == "RightButton" then
			tip:Hide()
			configMenu.scale = UIParent:GetScale()
			ToggleDropDownMenu( 1, nil, configMenu, self, 0, 0)
		end
	end
})

local function sortChars(func)
	for k, v in next, sorted do
		t[#t+1], sorted[k], v.name, v.money, v.faction = v
	end
	for charName, charMoney in next, chars do
		local i = tremove(t) or {}
		sorted[#sorted+1], i.name, i.money, i.faction = i, charName, charMoney, factions[charName] or playerFaction == defaultFaction and playerFaction or defaultFaction
	end
	sort( sorted, func )
	return sorted
end

local modes = { "full", "compact", "longText", "midText", "shortText", "color", "dotColor" }

local function GetMoneyText(money, mode)
	return (mode == "full" and (
			(money>9999 or money<-9999) and ("%i|TInterface\\MoneyFrame\\UI-GoldIcon:0:0:2:0|t %.2i|TInterface\\MoneyFrame\\UI-SilverIcon:0:0:2:0|t %.2i|TInterface\\MoneyFrame\\UI-CopperIcon:0:0:2:0|t"):format( money/1e4, money*.01%100, money%100 ) or
			(money > 99 or money < -99) and ("%i|TInterface\\MoneyFrame\\UI-SilverIcon:0:0:2:0|t %.2i|TInterface\\MoneyFrame\\UI-CopperIcon:0:0:2:0|t"):format( money*.01, money%100 ) or
			("%i|TInterface\\MoneyFrame\\UI-CopperIcon:0:0:2:0|t"):format(money) ) or
		mode == "compact" and ("%i"):format(money/1e4) or
		mode == "longText" and (
			(money>9999 or money<-9999) and ("%i|cffffd700g|r %.2i|cffc7c7cfs|r %.2i|cffeda55fc|r"):format( money/1e4, money*.01%100, money%100 ) or
			(money > 99 or money<  -99) and ("%i|cffc7c7cfs|r %.2i|cffeda55fc|r"):format( money*.01, money%100 ) or
			("%i|cffeda55fc|r"):format(money) ) or
		mode == "midText" and ("%.2f|cffffd700g|r"):format(money/1e4) or
		mode == "shortText" and ("%i|cffffd700g|r"):format(money/1e4) or
		(money>9999 or money<-9999) and (mode=="color"and"|cffffd700|1;;%i|r |cffc7c7cf%.2i|r |cffeda55f%.2i|r"or"|cffffd700|1;;%i|r.|cffc7c7cf%.2i|r.|cffeda55f%.2i|r"):format( money/1e4, money*.01%100, money%100 ) or
		(money > 99 or money<  -99) and (mode=="color"and"|cffc7c7cf%i|r |cffeda55f%.2i|r"or"|cffc7c7cf%i|r.|cffeda55f%.2i|r"):format( money*.01, money%100 ) or
		("|cffeda55f%i|r"):format(money)
		):gsub("^(.*%d)(%d%d%d%D*)","%1"..config.sep.."%2"),
		money <= 0 and 1 or 0, money < 0 and 0 or 1, 0, 1,1,1
end

--[[
local fmtModes = {
	full = {
		"%3$i|TInterface\\MoneyFrame\\UI-GoldIcon:0:0:2:0|t %4$.2i|TInterface\\MoneyFrame\\UI-SilverIcon:0:0:2:0|t %5$.2i|TInterface\\MoneyFrame\\UI-CopperIcon:0:0:2:0|t",
		"%2$i|TInterface\\MoneyFrame\\UI-SilverIcon:0:0:2:0|t %5$.2i|TInterface\\MoneyFrame\\UI-CopperIcon:0:0:2:0|t",
		"%i|TInterface\\MoneyFrame\\UI-CopperIcon:0:0:2:0|t" },
	compact = "%3$i",
	longText = {
		"%3$i|cffffd700g|r %4$.2i|cffc7c7cfs|r %5$.2i|cffeda55fc|r",
		"%2$i|cffc7c7cfs|r %5$.2i|cffeda55fc|r",
		"%i|cffeda55fc|r" },
	midText = "%3$.2f|cffffd700g|r",
	shortText = "%3$i|cffffd700g|r",
	color = {
		"|cffffd700|1;;%3$i|r |cffc7c7cf%4$.2i|r |cffeda55f%5$.2i|r",
		"|cffc7c7cf%2$i|r |cffeda55f%5$.2i|r",
		"|cffeda55f%i|r" },
	dotColor = {
		"|cffffd700|1;;%3$i|r.|cffc7c7cf%4$.2i|r.|cffeda55f%5$.2i|r",
		"|cffc7c7cf%2$i|r.|cffeda55f%5$.2i|r",
		"|cffeda55f%i|r" },
}

local function GetMoneyText(money, mode)
	local m = fmtModes[mode]
	return (type(m)=="table" and m[3-max(floor(log10(abs(money))/2),2)] or m)
		:format( money, money*.01, money/1e4, money*.01%100, money%100 )
		:gsub("^(.*%d)(%d%d%d%D*)","%1"..config.sep.."%2"),
		money <= 0 and 1 or 0, money < 0 and 0 or 1, 0, 1,1,1
end
--]]


block.OnEnter = function(self)
	CloseDropDownMenus()
	tipshown = self
	local showBelow = select(2, self:GetCenter()) > UIParent:GetHeight()/2
	tip:SetOwner( self, "ANCHOR_NONE" )
	tip:SetPoint( showBelow and "TOP" or "BOTTOM", self, showBelow and "BOTTOM" or "TOP" )

	local bothFaction = config.factionMode == "both"
	local total = altMoney + chars[player] + (bothFaction and sepMoney or 0)
	local mode = config.tipMode
	tip:AddDoubleLine( "Session",	GetMoneyText( total	   - session, mode ) )
	tip:AddDoubleLine( "Today",	GetMoneyText( total	   - days[today], mode ) )
	tip:AddDoubleLine( "Yesterday",	GetMoneyText( days[today]  - days[today-1], mode ) )
	if config.calendar then
		tip:AddDoubleLine( "This Week", GetMoneyText( total - days[today-d.wday+2], mode ) )
	else
		tip:AddDoubleLine( "Last 7 days", GetMoneyText( total - days[today-6], mode ) )
	end
	if days[today-29] then
		if config.calendar then
			tip:AddDoubleLine( "This Month",GetMoneyText( total - days[today-d.day+1], mode ) )
		else
			tip:AddDoubleLine( "Last 30 days",GetMoneyText( total - days[today-29], mode ) )
		end
	end
	tip:AddLine" "
	for _, char in ipairs(sortChars(ByFactionMoney)) do
		if bothFaction or playerFaction == char.faction or not char.faction and playerFaction == defaultFaction then
			local class = RAID_CLASS_COLORS[classes[char.name]] or defaultClass
			local tex = bothFaction and (char.faction and ("|TInterface\\Glues\\CharacterCreate\\UI-CharacterCreate-Factions:%%1$i:%%1$i:0:0:100:100:%s:3:97|t  "):format(char.faction~="Horde"and"3:47"or"53:97") or --[["|TInterface\\Icons\\INV_Misc_QuestionMark:%%1$i:%%1$i:0:0:25:25:2:23:2:23|t  "]] "|Tx:%%1$|t  ") or ""
			tip:AddDoubleLine( tex:format(config.iconSize)..char.name, GetMoneyText(char.money, mode), class.r, class.g, class.b, 1,1,1 )
		end
	end
	tip:AddLine" "
	if bothFaction then
		local a,h = total-sepMoney, sepMoney
		if realm.defaultFaction == "Horde" then a,h = h,a end
		tip:AddDoubleLine(FACTION_ALLIANCE, GetMoneyText(a, mode), 1,.8,0, 1,1,1)
		tip:AddDoubleLine(FACTION_HORDE, GetMoneyText(h, mode), 1,.8,0, 1,1,1)
	else
		tip:AddDoubleLine( "Total", GetMoneyText(total, mode), 1,.8,0, 1,1,1 )
	end

	f1, f2, f3 = GameTooltipTextLeft1:GetFont()
	GameTooltipTextLeft1:SetFont( GameTooltipTextLeft2:GetFont() )
	GameTooltipTextRight1:SetFont( GameTooltipTextLeft2:GetFont() )
	tip:Show()
end


-- TODO: handle config.blockInfo == "factionTotal"
local function UpdateText(playerMoney)
	local text = GetMoneyText( (config.blockInfo == "total" and altMoney or 0) + playerMoney, config.mode)
	if config.blockInfo == "both" then text = text .. " / " .. GetMoneyText(playerMoney+altMoney, config.mode) end
	block.text = text
end


local function OnEvent()
	local currentMoney = GetMoney()
	if not chars[player] then
		for i, v in next, days do
			days[i] = v + currentMoney
		end
	end

	d = date"*t" -- :'3
	today = (d.year-1970)*365+d.yday+floor((d.year-1973)/4) -- r9
	if d.wday == 1 then d.wday = 8 end
	if not days[today] then
		local oldestDay, oldestMoney, recentDay = today, altMoney + currentMoney, 0
		for day, money in next, days do
			if day < oldestDay then oldestDay, oldestMoney = day, money end
			if day > recentDay then recentDay = day end
		end
		for day, money in next, days do
			if day < today-30 then
				if day > oldestDay then oldestDay, oldestMoney = day, money end
				days[day] = nil
			end
		end
		for i=today-30, recentDay == 0 and today-1 or recentDay do
			if days[i] then oldestMoney = days[i] else days[i] = oldestMoney end
		end
		days[today] = altMoney + ( chars[player] or currentMoney )
	end
	chars[player] = currentMoney
	if not session then session = altMoney + currentMoney end
	UpdateText(currentMoney)
	return tipshown and block.OnEnter(tipshown)
end


local defaultRealmConfig = { days={}, altd={}, chars={}, classes={}, factions={} }
local defaultConfig = {
	[GetRealmName()] = defaultRealmConfig,
	mode = "compact",
	tipMode = "full",
	sep = GetLocale() == "enUS" and "," or "",
	factionMode = "both",
	blockInfo = "player",
	iconSize = 12,
}


function f:Init(event, addonName)
	if addon ~= addonName then return end
	f:UnregisterEvent(event)

	tip = GameTooltip
	configMenu.displayMode = "MENU"

	AraBrokerMoneyDB = AraBrokerMoneyDB or defaultConfig
	config = AraBrokerMoneyDB
	for k, v in next, defaultConfig do if config[k]==nil then config[k] = v end end
	realm = config[GetRealmName()]
	for k, v in next, defaultRealmConfig do if realm[k]==nil then realm[k] = v end end

	days, altd, chars, classes, factions = realm.days, realm.altd, realm.chars, realm.classes, realm.factions

	classes[player] = select(2,UnitClass"player")
	local hasFaction = factions[player]
	playerFaction = UnitFactionGroup"player"
	factions[player] = playerFaction

	defaultFaction = realm.defaultFaction or playerFaction
	realm.defaultFaction = defaultFaction

	-- move player data to own faction if necessary (temp)
	if not hasFaction and chars[player] and defaultFaction ~= playerFaction then
		local amount = chars[player]
		for k, v in next, days do days[k] = v - amount end
		for k, v in next, altd do altd[k] = v + amount end
	end
	if playerFaction ~= defaultFaction then days, altd = altd, days end

	-- sum money by faction; if no faction yet, treat as defaultFaction
	for k, v in next, chars do
		if k~=player then
			if factions[k] == playerFaction or playerFaction == defaultFaction and not factions[k] then
				altMoney = altMoney + v
			else	sepMoney = sepMoney + v end
		end
	end

	f:RegisterEvent"PLAYER_LOGIN"
	f:RegisterEvent"PLAYER_MONEY"
	f:RegisterEvent"PLAYER_TRADE_MONEY"
	f:RegisterEvent"TRADE_MONEY_CHANGED"
	f:RegisterEvent"SEND_MAIL_MONEY_CHANGED"
	f:RegisterEvent"SEND_MAIL_COD_CHANGED"

	f:SetScript( "OnEvent", OnEvent )
	f.Init = nil

	if IsLoggedIn() then OnEvent() end
end

f:RegisterEvent"ADDON_LOADED"
f:SetScript( "OnEvent", f.Init )


local function RemoveChar(_, char)
	local charMoney, charFaction = chars[char], factions[char]
	local d = (factions[char] == factions[player] or factions[player] == defaultFaction and not factions[char]) and days or altd
	for i, v in next, d do
		d[i] = v - charMoney
	end
	if d == days then
		session, altMoney = session - charMoney, altMoney - charMoney
	else
		sepMoney = sepMoney - charMoney
	end
	chars[char], classes[char], factions[char] = nil
	local c = RAID_CLASS_COLORS[classes[char]] or defaultClass
	print( ("[|cffffb366Ara|rBrokerMoney] |cff%.2x%.2x%.2x%s|r has been removed."):format(c.r*255, c.g*255, c.b*255, char) )
end

local function SetOption(_, var, val)
	config[var] = val or not config[var]
	if var == "mode" or var == "sep" or var == "blockInfo" then
		UpdateText(chars[player])
	end
end

local options = {
	{ text = "|cffff69b4ARPG:|r |cffffffffMoney|r", isTitle = true },
	{ text = "Block display mode",	submenu = "mode" },
	{ text = "Tooltip display mode",submenu = "tipMode" },
	{ text = "Use calendar mode",	var = "calendar" },
	{ text = "Block shows...", submenu = {
		{ text = "player money", var = "blockInfo", val = "player" },
		{ text = "total money", var = "blockInfo", val = "total" },
		{ text = "player and total money", var = "blockInfo", val = "both" },
	} },
	{ text = "Faction informations", submenu = {
		{ text = "Own faction only", var = "factionMode", val = "own" },
		{ text = "Both", var = "factionMode", val = "both" },
	} },
	{ text = "Thousand separator",	submenu = {
		{ text = "Space", var = "sep", val = " " },
		{ text = "Comma", var = "sep", val = "," },
		{ text = "None",  var = "sep", val = "" }, } },
--[[	{ text = "Faction icon size", submenu = {
		{ text = "10", var = "iconSize", val = 10 },
		{ text = "12", var = "iconSize", val = 12 },
		{ text = "14", var = "iconSize", val = 14 },
		{ text = "16", var = "iconSize", val = 16 },
		{ text = "18", var = "iconSize", val = 18 },
	} },--]]
	{ text = "Remove data from...",	submenu = "chars" },
}

configMenu.initialize = function(self, level)
	if not level then return end
	local items = level > 1 and UIDROPDOWNMENU_MENU_VALUE or options
	local table = items=="chars" and sortChars(ByName) or (items=="mode" or items=="tipMode") and modes or items
	for _, v in ipairs(table) do
		if not v.name or v.name ~= player then
			info = wipe(info)
			if items == "mode" or items == "tipMode" then
				info.checked = config[items] == v
				info.text = GetMoneyText(chars[player], v)
				info.func, info.arg1, info.arg2 = SetOption, items, v
			else
				info.text, info.hasArrow, info.value, info.isTitle = v.text, v.submenu, v.submenu, v.isTitle
				if items == "chars" then
					info.func, info.arg1 = RemoveChar, v.name
					local class = RAID_CLASS_COLORS[classes[v.name]] or defaultClass
					info.text = ("|cff%.2x%.2x%.2x%s|r  ("..GetMoneyText(chars[v.name], config.mode)..")"):format(class.r*255, class.g*255, class.b*255, v.name)
					info.notCheckable = true
				elseif v.val then
					info.checked = config[v.var] == v.val
					info.func, info.arg1, info.arg2 = SetOption, v.var, v.val
				elseif v.var then
					info.checked = config[v.var]
					info.func, info.arg1 = SetOption, v.var
					info.isNotRadio = true
					info.keepShownOnClick = true
				else
					info.notCheckable = true
					if level == 1 then adjust = true end
				end

				--if level == 1 and not info.func then-- info.notCheckable then
					--info.text = ("|Tx:%i|t%s"):format(18/self.scale, info.text)
				--end
			end
			UIDropDownMenu_AddButton( info, level )
			--if level == 1 and not info.func and v.submenu then
				--local frame = _G["DropDownList1Button"..DropDownList1.numButtons]
				--frame:SetPoint("TOPLEFT", 11, select(5,frame:GetPoint()))
			--end
			if adjust then
				local button = _G[("DropDownList1Button%i"):format(DropDownList1.numButtons)]
				local normalText = _G[("DropDownList1Button%iNormalText"):format(DropDownList1.numButtons)]

				normalText:ClearAllPoints()
				normalText:SetPoint("LEFT", button, "LEFT", 20, 0)

				local framePoint, relativeFrame, framePoint, _, offsetY =  button:GetPoint()
				button:SetPoint(framePoint, relativeFrame, framePoint, 11, offsetY)
			end
		end
	end
end