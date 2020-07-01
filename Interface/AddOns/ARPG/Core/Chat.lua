--file: Core/Art.lua

--get the addon namespace
local addon, namespace = ...
--get ARPG namespace (just in case needed)
local ARPG = namespace.ARPG or ARPG

--channel replacements
--guild
CHAT_GUILD_GET = "|Hchannel:GUILD|h(G)|h %s "
CHAT_OFFICER_GET = "|Hchannel:OFFICER|h(O)|h %s "
--raid
CHAT_RAID_GET = "|Hchannel:RAID|h(R)|h %s "
CHAT_RAID_WARNING_GET = "RW %s "
CHAT_RAID_LEADER_GET = "|Hchannel:RAID|h(RL)|h %s "
--party
CHAT_PARTY_GET = "|Hchannel:PARTY|h(P)|h %s "
CHAT_PARTY_LEADER_GET =  "|Hchannel:PARTY|h(PL)|h %s "
CHAT_PARTY_GUIDE_GET =  "|Hchannel:PARTY|h(PG)|h %s "
--instance
CHAT_INSTANCE_CHAT_GET = "|Hchannel:Battleground|hI.|h (%s): "
CHAT_INSTANCE_CHAT_LEADER_GET = "|Hchannel:Battleground|hIL.|h (%s): "
--whisper
CHAT_WHISPER_INFORM_GET = "to %s "
CHAT_WHISPER_GET = "from %s "
CHAT_BN_WHISPER_INFORM_GET = "to %s "
CHAT_BN_WHISPER_GET = "from %s "
--say/yell
CHAT_SAY_GET = "%s "
CHAT_YELL_GET = "%s "
--flags
CHAT_FLAG_AFK = "{AFK} "
CHAT_FLAG_DND = "{DND} "
CHAT_FLAG_GM = "[GM] "
--redo chatmode prefixes
local gsub = _G.string.gsub
for i = 1, NUM_CHAT_WINDOWS do
	if ( i ~= 2 ) then
		local f = _G["ChatFrame"..i]
		local am = f.AddMessage
		f.AddMessage = function(frame, text, ...)
			return am(frame, text:gsub('|h%[(%d+)%. .-%]|h', '|h(%1)|h'), ...)
		end
	end
end

--allow left/right arrow keys in chat editbox
for i = 1, NUM_CHAT_WINDOWS do
	local editbox = "ChatFrame"..i.."EditBox"
	if ( _G[editbox] ~= nil ) then
		_G[editbox]:SetAltArrowKeyMode(nil)
	end
end

--maximum lines
for i = 1, NUM_CHAT_WINDOWS do
	local chatFrameNumber = ("ChatFrame%d"):format(i)
	local ChatFrameNumberFrame = _G[chatFrameNumber]
	if ChatFrameNumberFrame then
		ChatFrameNumberFrame:SetMaxLines(500)
	end
end

--move ChatFrame
ChatFrame1:ClearAllPoints()
ChatFrame1:SetHeight(100)
ChatFrame1:SetWidth(400)
ChatFrame1:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", 0, -150)
ChatFrame1.SetHeight = function()
end
ChatFrame1.SetWidth = function()
end
ChatFrame1.SetSize = function()
end
ChatFrame1.ClearAllPoints = function()
end
ChatFrame1.SetPoint = function()
end
ChatFrame1:SetUserPlaced(true)

ChatFrame2:ClearAllPoints()
ChatFrame2:SetHeight(80)
ChatFrame2:SetWidth(400)
ChatFrame2:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", 0, -150)
ChatFrame2.ClearAllPoints = function()
end
ChatFrame2.SetPoint = function()
end
ChatFrame2:SetUserPlaced(true)

--hide generic blizzard chatframe stuff
CHAT_FRAME_FADE_OUT_TIME = 0
CHAT_TAB_HIDE_DELAY = 0
CHAT_FRAME_TAB_SELECTED_MOUSEOVER_ALPHA = 1
CHAT_FRAME_TAB_SELECTED_NOMOUSE_ALPHA = 0
CHAT_FRAME_TAB_ALERTING_MOUSEOVER_ALPHA = 1
CHAT_FRAME_TAB_ALERTING_NOMOUSE_ALPHA = 0
CHAT_FRAME_TAB_NORMAL_MOUSEOVER_ALPHA = 1
CHAT_FRAME_TAB_NORMAL_NOMOUSE_ALPHA = 0
BNToastFrame:SetClampedToScreen(true)
--ChatFrameMenuButton:HookScript("OnShow", ChatFrameMenuButton.Hide)
--ChatFrameMenuButton:Hide()
ChatFrameChannelButton:HookScript("OnShow", ChatFrameMenuButton.Hide)
ChatFrameChannelButton:Hide()
QuickJoinToastButton:HookScript("OnShow", QuickJoinToastButton.Hide)
QuickJoinToastButton:Hide()
ChatFrameToggleVoiceDeafenButton:HookScript("OnShow", ChatFrameToggleVoiceDeafenButton.Hide)
ChatFrameToggleVoiceDeafenButton:Hide()
ChatFrameToggleVoiceMuteButton:HookScript("OnShow", ChatFrameToggleVoiceMuteButton.Hide)
ChatFrameToggleVoiceMuteButton:Hide()
local frames = {}
local function ProcessFrame(frame)
	if frames[frame] then return end
	frame:SetClampRectInsets(0, 0, 0, 0)
	frame:SetMaxResize(UIParent:GetWidth(), UIParent:GetHeight())
	frame:SetMinResize(250, 100)
	local name = frame:GetName()
	_G[name .. "ButtonFrame"]:Hide()
	_G[name .. "EditBoxLeft"]:Hide()
	_G[name .. "EditBoxMid"]:Hide()
	_G[name .. "EditBoxRight"]:Hide()
	local editbox = _G[name .. "EditBox"]
	editbox:ClearAllPoints()
	editbox:SetPoint('BOTTOMLEFT', ChatFrame1, 'TOPLEFT', -7, 25)
	editbox:SetPoint('BOTTOMRIGHT', ChatFrame1, 'TOPRIGHT', 10, 25)
	editbox:SetAltArrowKeyMode(false)
	frames[frame] = true
end
for i = 1, NUM_CHAT_WINDOWS do
	local chat = _G["ChatFrame"..i]
	local font, size = chat:GetFont()
	chat:SetFont(font, size, "OUTLINE")
	chat:SetShadowOffset(0, 0)
	chat:SetShadowColor(0, 0, 0, 0)
	ProcessFrame(_G["ChatFrame" .. i])
end
local old_OpenTemporaryWindow = FCF_OpenTemporaryWindow
FCF_OpenTemporaryWindow = function(...)
	local frame = old_OpenTemporaryWindow(...)
	ProcessFrame(frame)
	return frame
end
function FloatingChatFrame_OnMouseScroll(self, delta)
	if delta > 0 then
		if IsShiftKeyDown() then
			self:ScrollToTop()
		else
			self:ScrollUp()
		end
	elseif delta < 0 then
		if IsShiftKeyDown() then
			self:ScrollToBottom()
		else
			self:ScrollDown()
		end
	end
end

--log clearing
SLASH_CHATCLEAR1 = '/clear'
function SlashCmdList.CHATCLEAR()
ChatFrame1:Clear()
end
SLASH_CLEARCOMBAT1 = '/clearlog'
function SlashCmdList.CLEARCOMBAT()
ChatFrame2:Clear()
end

--alt invite
local origSetItemRef = SetItemRef
SetItemRef = function(link, text, button)
	local linkType = string.sub(link, 1, 6)
	if IsAltKeyDown() and linkType == "player" then
		local name = string.match(link, "player:([^:]+)")
		InviteUnit(name)
		return nil
	end
	return origSetItemRef(link,text,button)
end

-- shift-scroll to top/bottom
FloatingChatFrame_OnMouseScroll = function(self, dir)
	if(dir > 0) then
		if(IsShiftKeyDown()) then
			self:ScrollToTop()
		else
			self:ScrollUp()
		end
	else
		if(IsShiftKeyDown()) then
			self:ScrollToBottom()
		else
			self:ScrollDown()
		end
	end
end

-- url copy
local color = "0099FF"
local foundurl = false
function string.color(text, color)
	return "|cff"..color..text.."|r"
end
function string.link(text, type, value, color)
	return "|H"..type..":"..tostring(value).."|h"..tostring(text):color(color or "ffffff").."|h"
end
local function highlighturl(before,url,after)
	foundurl = true
	return " "..string.link("["..url.."]", "url", url, color).." "
end
local function searchforurl(frame, text, ...)
	foundurl = false
	if string.find(text, "%pTInterface%p+") or string.find(text, "%pTINTERFACE%p+") then
		--disable interface textures (lol)
		foundurl = true
	end
	if not foundurl then
		--192.168.1.1:1234
		text = string.gsub(text, "(%s?)(%d%d?%d?%.%d%d?%d?%.%d%d?%d?%.%d%d?%d?:%d%d?%d?%d?%d?)(%s?)", highlighturl)
	end
	if not foundurl then
		--192.168.1.1
		text = string.gsub(text, "(%s?)(%d%d?%d?%.%d%d?%d?%.%d%d?%d?%.%d%d?%d?)(%s?)", highlighturl)
	end
	if not foundurl then
		--www.teamspeak.com:3333
		text = string.gsub(text, "(%s?)([%w_-]+%.?[%w_-]+%.[%w_-]+:%d%d%d?%d?%d?)(%s?)", highlighturl)
	end
	if not foundurl then
		--http://www.google.com
		text = string.gsub(text, "(%s?)(%a+://[%w_/%.%?%%=~&-'%-]+)(%s?)", highlighturl)
	end
	if not foundurl then
		--www.google.com
		text = string.gsub(text, "(%s?)(www%.[%w_/%.%?%%=~&-'%-]+)(%s?)", highlighturl)
	end
	if not foundurl then
		--lol@lol.com
		text = string.gsub(text, "(%s?)([_%w-%.~-]+@[_%w-]+%.[_%w-%.]+)(%s?)", highlighturl)
	end
	frame.am(frame,text,...)
end
for i = 1, NUM_CHAT_WINDOWS do
	if ( i ~= 2 ) then
		local cf = _G["ChatFrame"..i]
		cf.am = cf.AddMessage
		cf.AddMessage = searchforurl
	end
end
local orig = ChatFrame_OnHyperlinkShow
function ChatFrame_OnHyperlinkShow(frame, link, text, button)
	local type, value = link:match("(%a+):(.+)")
	if ( type == "url" ) then
		local eb = LAST_ACTIVE_CHAT_EDIT_BOX or _G[frame:GetName()..'EditBox']
		if eb then
			eb:SetText(value)
			eb:SetFocus()
			eb:HighlightText()
		end
	else
		orig(self, link, text, button)
	end
end

local chatIsShown = true or chatIsShown
--hide chatframe
local function ARPG_HideChat()
	--find visible windows
	for i = 1, NUM_CHAT_WINDOWS do
		local f = _G["ChatFrame"..i]
		if f then
			if f:IsVisible() then
				f:Hide()
			end
		end
	end
	--hide floating window tabs
	for i = 1, NUM_CHAT_WINDOWS do
		local f = _G["ChatFrame"..i.."Tab"]
		if f then
			if f:IsVisible() then
				f:Hide()
			end
		end
	end
	GeneralDockManager:Hide() --tabs
	--ChatFrameMenuButton:Hide() --menu button
	QuickJoinToastButton:Hide() --friends micro button
	chatIsShown = false --toggle shown state
end

-- show chatframe
local function ARPG_ShowChat()
	GeneralDockManager:Show() --the tabs
	--ChatFrameMenuButton:Show() --menu button
	QuickJoinToastButton:Show() --friends micro button
	--chats
	local f = _G["ChatFrame1"]
	if f then
		f:Show()
		f:SetPoint("BOTTOMLEFT", 6, 4)
	end
	-- tabs
	local f = _G["ChatFrame1Tab"]
	if f then
		f:Show()
		f:SetBackdropColor(0,0,0,0)
	end
	chatIsShown = true --toggle shown state
end

--chatmenu right click
local function ARPG_ChatToggle()
	if chatIsShown == false then
		ChatFrameMenuButton:SetNormalTexture("Interface\\AddOns\\"..addon.."\\Media\\Textures\\Chat\\ChatMenu-Normal.tga")
		ARPG_ShowChat()
	else
		ChatFrameMenuButton:SetNormalTexture("Interface\\AddOns\\"..addon.."\\Media\\Textures\\Chat\\ChatMenu-Disabled.tga")
		ARPG_HideChat()
	end
end
ChatFrameMenuButton:SetNormalTexture("Interface\\AddOns\\"..addon.."\\Media\\Textures\\Chat\\ChatMenu-Normal.tga")
ChatFrameMenuButton:GetNormalTexture():SetTexCoord(0.234375, 0.7734375, 0.2578125, 0.734375)
ChatFrameMenuButton:SetPushedTexture("Interface\\AddOns\\"..addon.."\\Media\\Textures\\Chat\\ChatMenu-Pushed.tga")
ChatFrameMenuButton:GetPushedTexture():SetTexCoord(0.234375, 0.7734375, 0.2578125, 0.734375)
ChatFrameMenuButton:SetHighlightTexture("Interface\\AddOns\\"..addon.."\\Media\\Textures\\Chat\\ChatMenu-Highlight.tga")
ChatFrameMenuButton:GetHighlightTexture():SetTexCoord(0.234375, 0.7734375, 0.2578125, 0.734375)
ChatFrameMenuButton:SetWidth(32)
ChatFrameMenuButton:SetHeight(32)
ChatFrameMenuButton:ClearAllPoints()
ChatFrameMenuButton:SetPoint("BOTTOMLEFT", "UIParent", "BOTTOMLEFT", 430, 4)
ChatFrameMenuButton:RegisterForClicks("AnyUp")
ChatFrameMenuButton:SetScript("OnClick", function(self, button, down)
	if button == "LeftButton" then
		PlaySound(SOUNDKIT.IG_CHAT_EMOTE_BUTTON)
		ChatFrame_ToggleMenu()
	elseif button == "RightButton" then
		ARPG_ChatToggle()
	end
end)

--scrolltobottom
for i = 1,2 do
	_G["ChatFrame"..i].ScrollToBottomButton:SetNormalTexture("Interface\\AddOns\\"..addon.."\\Media\\Textures\\Chat\\ScrollToBottomButton-Normal.tga")
	_G["ChatFrame"..i].ScrollToBottomButton:GetNormalTexture():SetTexCoord(0.203125, 0.796875, 0.203125, 0.796875)
	_G["ChatFrame"..i].ScrollToBottomButton:SetHighlightTexture("Interface\\AddOns\\"..addon.."\\Media\\Textures\\Chat\\ScrollToBottomButton-Highlight.tga")
	_G["ChatFrame"..i].ScrollToBottomButton:GetHighlightTexture():SetTexCoord(0.203125, 0.796875, 0.203125, 0.796875)
	_G["ChatFrame"..i].ScrollToBottomButton:SetPushedTexture("Interface\\AddOns\\"..addon.."\\Media\\Textures\\Chat\\ScrollToBottomButton-Pushed.tga")
	_G["ChatFrame"..i].ScrollToBottomButton:GetPushedTexture():SetTexCoord(0.203125, 0.796875, 0.203125, 0.796875)
end

--item level on items in chat
local PLH_RELIC_TOOLTIP_TYPE_PATTERN = _G.RELIC_TOOLTIP_TYPE:gsub('%%s', '(.+)')
local PLH_ITEM_LEVEL_PATTERN = _G.ITEM_LEVEL:gsub('%%d', '(%%d+)')
local tooltip
local socketTooltip
local function EscapeSearchString(str)
	return str:gsub("(%W)","%%%1")
end
local function CreateEmptyTooltip()
	local tip = CreateFrame('GameTooltip')
	local leftside = {}
	local rightside = {}
	local L, R
	for i = 1, 6 do
		L, R = tip:CreateFontString(), tip:CreateFontString()
		L:SetFontObject(GameFontNormal)
		R:SetFontObject(GameFontNormal)
		tip:AddFontStrings(L, R)
		leftside[i] = L
		rightside[i] = R
	end
	tip.leftside = leftside
	tip.rightside = rightside
	return tip
end
local function PLH_GetRelicType(item)
	local relicType = nil
	if item ~= nil then
		tooltip = tooltip or CreateEmptyTooltip()
		tooltip:SetOwner(UIParent, 'ANCHOR_NONE')
		tooltip:ClearLines()
		tooltip:SetHyperlink(item)
		local t = tooltip.leftside[2]:GetText()
		local index = 1
		local t
		while not relicType and tooltip.leftside[index] do
			t = tooltip.leftside[index]:GetText()
			if t ~= nil then
				relicType = t:match(PLH_RELIC_TOOLTIP_TYPE_PATTERN)
			end
			index = index + 1
		end
		tooltip:Hide()
	end
	return relicType
end
local function PLH_GetRealILVL(item)
	local realILVL = nil
	if item ~= nil then
		tooltip = tooltip or CreateEmptyTooltip()
		tooltip:SetOwner(UIParent, 'ANCHOR_NONE')
		tooltip:ClearLines()
		tooltip:SetHyperlink(item)
		local t = tooltip.leftside[2]:GetText()
		if t ~= nil then
			realILVL = t:match(PLH_ITEM_LEVEL_PATTERN)
		end
		if realILVL == nil then
			t = tooltip.leftside[3]:GetText()
			if t ~= nil then
				realILVL = t:match(PLH_ITEM_LEVEL_PATTERN)
			end
		end
		tooltip:Hide()
		if realILVL == nil then
			_, _, _, realILVL, _, _, _, _, _, _, _ = GetItemInfo(item)
		end
	end
	if realILVL == nil then
		return 0
	else		
		return tonumber(realILVL)
	end
end
local function ItemHasSockets(itemLink)
	local result = false
	socketTooltip = socketTooltip or CreateFrame("GameTooltip", "ItemLinkLevelSocketTooltip", nil, "GameTooltipTemplate")
	socketTooltip:SetOwner(UIParent, 'ANCHOR_NONE')
	socketTooltip:ClearLines()
	for i = 1, 30 do
		local texture = _G[socketTooltip:GetName().."Texture"..i]
		if texture then
			texture:SetTexture(nil)
		end
	end
	socketTooltip:SetHyperlink(itemLink)
	for i = 1, 30 do
		local texture = _G[socketTooltip:GetName().."Texture"..i]
		local textureName = texture and texture:GetTexture()
		if textureName then
			local canonicalTextureName = string.gsub(string.upper(textureName), "\\", "/")
			result = string.find(canonicalTextureName, EscapeSearchString("ITEMSOCKETINGFRAME/UI-EMPTYSOCKET-"))
		end
	end
	return result
end
local function Filter(self, event, message, user, ...)
	for itemLink in message:gmatch("|%x+|Hitem:.-|h.-|h|r") do
		local itemName, _, quality, _, _, itemType, itemSubType, _, itemEquipLoc, _, _, itemClassId, itemSubClassId = GetItemInfo(itemLink)
		if (quality ~= nil and quality >= 3 and (itemClassId == LE_ITEM_CLASS_WEAPON or itemClassId == LE_ITEM_CLASS_GEM or itemClassId == LE_ITEM_CLASS_ARMOR)) then
			local itemString = string.match(itemLink, "item[%-?%d:]+")
			local _, _, color = string.find(itemLink, "|?c?f?f?(%x*)|?H?([^:]*):?(%d+):?(%d*):?(%d*):?(%d*):?(%d*):?(%d*):?(%-?%d*):?(%-?%d*):?(%d*):?(%d*):?(%-?%d*)|?h?%[?([^%[%]]*)%]?|?h?|?r?")
			local iLevel = PLH_GetRealILVL(itemLink)
			local attrs = {}
			if (iLevel ~= nil) then 
				local txt = iLevel
				if (ItemHasSockets(itemLink)) then txt = txt .. "+S" end
				table.insert(attrs, txt)
			end
			local newItemName = itemName.." ("..table.concat(attrs, " ")..")"
			local newLink = "|cff"..color.."|H"..itemString.."|h["..newItemName.."]|h|r"
			message = string.gsub(message, EscapeSearchString(itemLink), newLink)
		end
	end
	return false, message, user, ...
end
local function EventHandler(self, event, ...)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_LOOT", Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_BATTLEGROUND", Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_BATTLEGROUND_LEADER", Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_CHANNEL", Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_EMOTE", Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_GUILD", Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_INSTANCE_CHAT", Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_INSTANCE_CHAT_LEADER", Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_OFFICER", Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY", Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY_LEADER", Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID", Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID_LEADER", Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID_WARNING", Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_SAY", Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER", Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER_INFORM", Filter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_YELL", Filter)
end
kLib:RegisterCallback("PLAYER_LOGIN", EventHandler)
