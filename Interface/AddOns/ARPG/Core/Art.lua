--file: Core/Art.lua

--get the addon namespace
local addon, namespace = ...
--get ARPG namespace (just in case needed)
local ARPG = namespace.ARPG or ARPG

local CharStats = {
	["ACHIEVEMENTS"] = nil,
	["ITEM-LEVEL"] = nil,
	["ITEM-LEVEL-EQUIPPED"] = nil,
	["PRIMARY-STAT"] = nil,
	--primary stats
	["HEALTH"] = nil,
	["STAMINA"] = nil,
	["AGILITY"] = nil,
	["INTELLECT"] = nil,
	["STRENGTH"] = nil,
	--secondary stats
	["CRITICAL-STRIKE"] = nil,
	["HASTE"] = nil,
	["MASTERY"] = nil,
	["VERSATILITY"] = nil,
	["SPEED"] = nil,
	--power types
	["MANA"] = nil,
	["RAGE"] = nil,
	["FOCUS"] = nil,
	["ENERGY"] = nil,
	["RUNIC-POWER"] = nil,
	["MAELSTROM"] = nil,
	["INSANITY"] = nil,
	["FURY"] = nil,
	["PAIN"] = nil,
}

--GameMenuFrame
local function ARPG_ReSkinGameButton(frame)
	frame:SetSize(128, 32)
	frame.Left:SetTexture("Interface\\AddOns\\"..addon.."\\Media\\Textures\\Buttons\\UI-Panel-Button.tga")
	frame.Left:SetTexCoord(0, 0.3333, 0, 1)
	frame.Middle:SetTexture("Interface\\AddOns\\"..addon.."\\Media\\Textures\\Buttons\\UI-Panel-Button.tga")
	frame.Middle:SetTexCoord(0.3334, 0.6666, 0, 1)
	frame.Right:SetTexture("Interface\\AddOns\\"..addon.."\\Media\\Textures\\Buttons\\UI-Panel-Button.tga")
	frame.Right:SetTexCoord(0.6667, 1, 0, 1)
	frame.Text:SetFont("Interface\\AddOns\\"..addon.."\\Media\\Fonts\\Bree-Regular.ttf", 10, "OUTLINE")
	frame:SetScript("OnMouseDown", nil)
	frame:SetScript("OnMouseUp", nil)
end
local function ARPG_ShowUIPanel(frame, force)
	if frame == GameMenuFrame then
		--ARPG_DebugVar(GameMenuFrameMover)
		ARPG_GameMenu:Show()
		GameMenuFrame:SetPoint("CENTER", "UIParent", "CENTER", 0, 11)
		GameMenuFrame:SetBackdrop(nil)
		GameMenuFrame.Border:Hide()
		--GameMenuFrame:SetBackdropBorderColor(1,1,1,0)
		if GameMenuFrameMover then
			GameMenuFrameMover:Hide()
		end
		if GameMenuFrameHeader then
			GameMenuFrameHeader:SetTexture(nil)
			GameMenuFrameHeader:Hide()
		end
		--Return to Game
		if GameMenuButtonContinue then
			GameMenuButtonContinue.Text:SetText("")
			GameMenuButtonContinue.Left:SetColorTexture(1,1,1,0)
			GameMenuButtonContinue.Middle:SetColorTexture(1,1,1,0)
			GameMenuButtonContinue.Right:SetColorTexture(1,1,1,0)
			GameMenuButtonContinue:ClearAllPoints()
			GameMenuButtonContinue:SetPoint("TOPRIGHT", "ARPG_GameMenu", "TOPRIGHT", -8, -22)
			GameMenuButtonContinue:SetSize(16,22)
			GameMenuButtonContinue:SetScript("OnMouseDown", nil)
			GameMenuButtonContinue:SetScript("OnMouseUp", nil)
		end
		--Help
		if GameMenuButtonHelp then
			ARPG_ReSkinGameButton(GameMenuButtonHelp)
			GameMenuButtonHelp:SetPoint("CENTER", "GameMenuFrame", "TOP", 0, -40)
		end
		--Store
		if GameMenuButtonStore then
			ARPG_ReSkinGameButton(GameMenuButtonStore)
			GameMenuButtonStore:SetPoint("TOP", GameMenuButtonHelp, "BOTTOM", 0, 6)
		end
		--WhatsNew
		if GameMenuButtonWhatsNew then GameMenuButtonWhatsNew:Hide() end
		--Options
		if GameMenuButtonOptions then
			ARPG_ReSkinGameButton(GameMenuButtonOptions)
			GameMenuButtonOptions:SetPoint("TOP", GameMenuButtonStore, "BOTTOM", 0, -8)
		end
		--Interface
		if GameMenuButtonUIOptions then
			ARPG_ReSkinGameButton(GameMenuButtonUIOptions)
			GameMenuButtonUIOptions:SetPoint("TOP", GameMenuButtonOptions, "BOTTOM", 0, 6)
		end
		--Keybindings
		if GameMenuButtonKeybindings then
			ARPG_ReSkinGameButton(GameMenuButtonKeybindings)
			GameMenuButtonKeybindings:SetPoint("TOP", GameMenuButtonUIOptions, "BOTTOM", 0, 6)
		end
		--Macros
		if GameMenuButtonMacros then
			ARPG_ReSkinGameButton(GameMenuButtonMacros)
			GameMenuButtonMacros:SetPoint("TOP", GameMenuButtonKeybindings, "BOTTOM", 0, 6)
		end
		--AddOns
		if GameMenuButtonAddons then
			ARPG_ReSkinGameButton(GameMenuButtonAddons)
			GameMenuButtonAddons:SetPoint("TOP", GameMenuButtonMacros, "BOTTOM", 0, 6)
		end
		--Ratings
		if GameMenuButtonRatings then
			ARPG_ReSkinGameButton(GameMenuButtonRatings)
			GameMenuButtonRatings:SetPoint("TOP", GameMenuButtonAddons, "BOTTOM", 0, 6)
		end
		--Logout
		if GameMenuButtonLogout then
			ARPG_ReSkinGameButton(GameMenuButtonLogout)
			GameMenuButtonLogout:SetPoint("TOP", GameMenuButtonAddons, "BOTTOM", 0, -8)
		end
		--Quit
		if GameMenuButtonQuit then
			ARPG_ReSkinGameButton(GameMenuButtonQuit)
			GameMenuButtonQuit:SetPoint("TOP", GameMenuButtonLogout, "BOTTOM", 0, 6)
		end
		MAINMENU_BUTTON = "GAME MENU"
	end

--[[
	if CharacterFrame:IsShown() then
		_G.CharacterFrame:ClearAllPoints()
		_G.CharacterFrame:SetPoint("TOPLEFT", "ARPG_CharacterFrame", "TOPLEFT", 157, -388)
		_G.CharacterFrame.TitleText:ClearAllPoints()
		_G.CharacterFrame.TitleText:SetPoint("BOTTOM", _G.CharacterFrameInset, "TOP", 0, 73)
	else
		ARPG_CharacterFrame:Hide()
	end
]]--

	if _G.DressUpFrame:IsShown() or frame == DressUpFrame then
		_G.DressUpFrame:ClearAllPoints()
		_G.DressUpFrame:SetPoint("TOP", "UIParent", "TOP", 0, -80)
	end

	if _G.TradeSkillFrame:IsShown() then
		_G.TradeSkillFrame:ClearAllPoints()
		_G.TradeSkillFrame:SetPoint("TOP", "UIParent", "TOP", 0, -90)
	end
	
end
local function ARPG_HideUIPanel(frame, skipSetPoint)
	if frame == GameMenuFrame then
		ARPG_GameMenu:Hide()
	end

--[[
	if CharacterFrame:IsShown() then
		_G.CharacterFrame:ClearAllPoints()
		_G.CharacterFrame:SetPoint("TOPLEFT", "ARPG_CharacterFrame", "TOPLEFT", 157, -388)
		_G.CharacterFrame.TitleText:ClearAllPoints()
		_G.CharacterFrame.TitleText:SetPoint("BOTTOM", _G.CharacterFrameInset, "TOP", 0, 73)
	else
		ARPG_CharacterFrame:Hide()
	end
]]--

	if _G.DressUpFrame:IsShown() then
		_G.DressUpFrame:ClearAllPoints()
		_G.DressUpFrame:SetPoint("TOP", "UIParent", "TOP", 0, -80)
	end

	if IsAddOnLoaded("Blizzard_TradeSkillUI") then
		if _G.TradeSkillFrame:IsShown() then
			_G.TradeSkillFrame:ClearAllPoints()
			_G.TradeSkillFrame:SetPoint("TOP", "UIParent", "TOP", 0, -90)
		end
	end
end
hooksecurefunc("ShowUIPanel", ARPG_ShowUIPanel)
hooksecurefunc("HideUIPanel", ARPG_HideUIPanel)
hooksecurefunc("GameMenuFrame_UpdateVisibleButtons", ARPG_ShowUIPanel)

--StaticPopup
local function ARPG_StaticPopup_OnShow(self)
	local dialog = StaticPopupDialogs[self.which]
	ARPG_StaticPopup:Show()
	self:SetBackdropBorderColor(0,0,0,0)
	self:SetBackdropColor(0,0,0,0)
	if ( self.insertedFrame ) then
		self.insertedFrame:SetBackdropBorderColor(0,0,0,0)
		self.insertedFrame:SetBackdropColor(0,0,0,0)
	end
	self.Border:Hide()
	for i = 1,4 do
		_G[self:GetName().."Button"..i]:SetNormalTexture("Interface\\AddOns\\"..addon.."\\Media\\Textures\\Buttons\\UI-Panel-Button.tga")
		_G[self:GetName().."Button"..i]:GetNormalTexture():SetTexCoord(0,1,0,1)
		_G[self:GetName().."Button"..i]:SetDisabledTexture("Interface\\AddOns\\"..addon.."\\Media\\Textures\\Buttons\\UI-Panel-Button-Disabled.tga")
		_G[self:GetName().."Button"..i]:GetDisabledTexture():SetTexCoord(0,1,0,1)
		_G[self:GetName().."Button"..i]:SetPushedTexture("Interface\\AddOns\\"..addon.."\\Media\\Textures\\Buttons\\UI-Panel-Button-Pushed.tga")
		_G[self:GetName().."Button"..i]:GetPushedTexture():SetTexCoord(0,1,0,1)
		_G[self:GetName().."Button"..i]:SetHighlightTexture("Interface\\AddOns\\"..addon.."\\Media\\Textures\\Buttons\\UI-Panel-Button.tga")
		_G[self:GetName().."Button"..i]:GetHighlightTexture():SetTexCoord(0,1,0,1)
	end
end
local function ARPG_StaticPopup_OnHide(self)
	ARPG_StaticPopup:Hide()
end
hooksecurefunc("StaticPopup_OnShow", ARPG_StaticPopup_OnShow)
hooksecurefunc("StaticPopup_OnHide", ARPG_StaticPopup_OnHide)

-- item level on items
local ITEMLEVEL_SLOT_FRAMES = {
	CharacterHeadSlot,CharacterNeckSlot,CharacterShoulderSlot,CharacterBackSlot,CharacterChestSlot,CharacterWristSlot,
	CharacterHandsSlot,CharacterWaistSlot,CharacterLegsSlot,CharacterFeetSlot,
	CharacterFinger0Slot,CharacterFinger1Slot,CharacterTrinket0Slot,CharacterTrinket1Slot,
	CharacterMainHandSlot,CharacterSecondaryHandSlot,
}
for _, v in ipairs(ITEMLEVEL_SLOT_FRAMES) do
	--kLib:Print("Creating Item Level Frame #"..v:GetName())
	v.ilevel = v:CreateFontString("FontString","OVERLAY","GameTooltipText")
	v.ilevel:SetFormattedText("")
end
local getItemQualityColor = GetItemQualityColor
local function DCS_Item_Level_Center()
	for _, v in ipairs(ITEMLEVEL_SLOT_FRAMES) do
		local item = Item:CreateFromEquipmentSlot(v:GetID())
		local value = item:GetCurrentItemLevel()
		v.ilevel:ClearAllPoints()
		v.ilevel:SetPoint("TOP", 0, -2)
		v.ilevel:SetFont("Interface\\AddOns\\"..addon.."\\Media\\Fonts\\Economica-Bold.ttf", 12, "OUTLINE")
		if value and item:GetItemQuality() then
			v.ilevel:SetTextColor(getItemQualityColor(item:GetItemQuality()))
			v.ilevel:SetText(value)
		else
			v.ilevel:SetText("")
		end
	end
end
PaperDollFrame:HookScript("OnShow", function(self)
	DCS_Item_Level_Center()
end)
kLib:RegisterCallback("PLAYER_AVG_ITEM_LEVEL_UPDATE", function()
	if PaperDollFrame then
		DCS_Item_Level_Center()
	end
end)

--tradeskills
local function ARPG_TradeSkillFrame()
	_G.TradeSkillFrame:ClearAllPoints()
	_G.TradeSkillFrame:SetPoint("TOP", "UIParent", "TOP", 0, -90)
end
--_G.TradeSkillFrame:HookScript("OnShow", ARPG_TradeSkillFrame)
kLib:RegisterCallback("TRADE_SKILL_SHOW", ARPG_TradeSkillFrame)
--hooksecurefunc("FramePositionDelegate_OnAttributeChanged", ARPG_TradeSkillFrame)

--kLib:RegisterCallback("")

--functions
local function ARPG_ObjectiveTracker_AddBlock(block, forceAdd)
	if not block.HeaderText then return end
	block.HeaderText:SetText("|cffe2d07a"..block.HeaderText:GetText().."|r")
	block.HeaderText:SetFont("Interface\\AddOns\\"..addon.."\\Media\\Fonts\\Bree-Regular.ttf", 12, "OUTLINE")
end
--objective tracker quest icons
local function ResetQuestIcon(poiButton)
	if poiButton.FullHighlightTexture then
		poiButton.FullHighlightTexture:SetTexture(nil)
		poiButton.FullHighlightTexture:Hide()
	end
	if poiButton.IconHighlightTexture then
		poiButton.IconHighlightTexture:SetTexture(nil)
		poiButton.IconHighlightTexture:Hide()
	end
	poiButton:SetNormalTexture(nil)
	poiButton.NormalTexture:Hide()
	poiButton:SetPushedTexture(nil)
	poiButton.PushedTexture:Hide()
	poiButton.Glow:Hide()
	if poiButton.style == "numeric" then
		poiButton.Number:SetPoint("CENTER", 0, 1)
	else
		poiButton.Icon:SetPoint("CENTER", 0, 1)
	end
end
local function ARPG_QuestPOI_GetButton(parent, questID, style, index)
	local poiButton
	if ( style == "numeric" ) then
		-- numbered POI
		poiButton = parent.poiTable["numeric"][index]
		if ( not poiButton ) then return end
		ResetQuestIcon(poiButton)
	else
		-- completed POI
		for _, button in pairs(parent.poiTable["completed"]) do
			if ( not button.used ) then
				poiButton = button
				break
			end
		end
		if ( not poiButton ) then return end
		ResetQuestIcon(poiButton)
	end
end
local function ARPG_QuestPOI_SelectButton(poiButton)
	ResetQuestIcon(poiButton)
end
local function ARPG_QuestPOI_ClearSelection(parent)
	local poiButton = parent.poiSelectedButton
	if ( not poiButton ) then return end
	ResetQuestIcon(poiButton)
end
--objective tracker: moved to upper left corner and max height set to 65%
delpos = ObjectiveTrackerFrame.ClearAllPoints
setpos = ObjectiveTrackerFrame.SetPoint
hooksecurefunc(ObjectiveTrackerFrame, "SetPoint", function(self, anchorpoint, relativeto, xoffset, yoffset)
	--delpos(self)
	setpos(self, "TOPRIGHT", 3, -228)
	--self:SetHeight(GetScreenHeight() * .5)
	ObjectiveTrackerBlocksFrame.QuestHeader.Text:SetFont("Interface\\AddOns\\"..addon.."\\Media\\Fonts\\Bree-Regular.ttf", 14, "OUTLINE")
	if ObjectiveTrackerBlocksFrame.ScenarioHeader then
		ObjectiveTrackerBlocksFrame.ScenarioHeader.Text:SetFont("Interface\\AddOns\\"..addon.."\\Media\\Fonts\\Bree-Regular.ttf", 14, "OUTLINE")
	end
	if ObjectiveTrackerBlocksFrame.AchievementHeader then
		ObjectiveTrackerBlocksFrame.AchievementHeader.Text:SetFont("Interface\\AddOns\\"..addon.."\\Media\\Fonts\\Bree-Regular.ttf", 14, "OUTLINE")
	end
	if ObjectiveTrackerBlocksFrame.UIWidgetsHeader then
		ObjectiveTrackerBlocksFrame.UIWidgetsHeader.Text:SetFont("Interface\\AddOns\\"..addon.."\\Media\\Fonts\\Bree-Regular.ttf", 14, "OUTLINE")
	end
	ObjectiveTrackerBlocksFrame.QuestHeader.Text:SetText("  |cffffffffActive Quests|r")
	ObjectiveTrackerFrame.HeaderMenu.Title:SetFont("Interface\\AddOns\\"..addon.."\\Media\\Fonts\\Bree-Regular.ttf", 14, "OUTLINE")
	--ObjectiveTrackerFrame.HeaderMenu.Title:SetText("Quests |cffaa0000(Closed)|r")
	ObjectiveTrackerFrame.HeaderMenu.Title:SetText(" ")
	
	ObjectiveTrackerFrame.HeaderMenu.MinimizeButton:SetNormalTexture("Interface\\AddOns\\"..addon.."\\Media\\Textures\\Buttons\\ObjectiveTrackerButton.tga")
	ObjectiveTrackerFrame.HeaderMenu.MinimizeButton:SetPushedTexture("Interface\\AddOns\\"..addon.."\\Media\\Textures\\Buttons\\ObjectiveTrackerButton.tga")
	ObjectiveTrackerFrame.HeaderMenu.MinimizeButton:SetWidth(22)
	ObjectiveTrackerFrame.HeaderMenu.MinimizeButton:SetHeight(22)
	ObjectiveTrackerFrame.HeaderMenu.MinimizeButton:ClearAllPoints()
	ObjectiveTrackerFrame.HeaderMenu.MinimizeButton:SetPoint("TOPLEFT", ObjectiveTrackerFrame, 200, 22)
	
	--ObjectiveTrackerBlocksFrame.QuestHeader.Background:SetTexture(nil)
end)
hooksecurefunc(DEFAULT_OBJECTIVE_TRACKER_MODULE,"SetStringText",function(self, fontString, text, useFullHeight, colorStyle, useHighlight)
	fontString:SetTextColor(0.88235, 0.88235, 0.88235, 1)
	fontString:SetFont("Interface\\Addons\\"..addon.."\\Media\\fonts\\VerlagCondensed-Bold.ttf", 12, "OUTLINE")
end)
hooksecurefunc("ObjectiveTracker_AddBlock", ARPG_ObjectiveTracker_AddBlock)
hooksecurefunc("QuestPOI_GetButton", ARPG_QuestPOI_GetButton)
hooksecurefunc("QuestPOI_SelectButton", ARPG_QuestPOI_SelectButton)
hooksecurefunc("QuestPOI_ClearSelection", ARPG_QuestPOI_ClearSelection)

--pet battle interface
kLib:RegisterCallback("PET_BATTLE_OPENING_START", function()
	if C_PetBattles.IsInBattle() == false then return end
	--ARPG_BottomBarBG:Hide()
	ARPG_BottomBar:Hide()
	ARPG_BottomBarPetBattle:Show()
	--TopArea
	PetBattleFrame.TopArtLeft:SetScale(0.8)
	PetBattleFrame.TopArtRight:SetScale(0.8)
	PetBattleFrame.TopVersus:SetScale(0.8)
	PetBattleFrame.TopVersusText:Hide()
	PetBattleFrame.TopVersus:Hide()
	PetBattleFrame.ActiveAlly:SetScale(0.8)
	PetBattleFrame.Ally2:SetScale(0.8)
	PetBattleFrame.Ally3:SetScale(0.8)
	PetBattleFrame.AllyPadBuffFrame:SetScale(0.8)
	PetBattleFrame.ActiveEnemy:SetScale(0.8)
	PetBattleFrame.Enemy2:SetScale(0.8)
	PetBattleFrame.Enemy3:SetScale(0.8)
	PetBattleFrame.EnemyPadBuffFrame:SetScale(0.8)

	PetBattleFrame.WeatherFrame:SetScale(0.8)
	PetBattleFrame.WeatherFrame:ClearAllPoints()
	PetBattleFrame.WeatherFrame:SetPoint("TOP", PetBattleFrame.TopVersus, "BOTTOM", 0, 0)
	PetBattleFrame.WeatherFrame:SetFrameStrata("BACKGROUND")
	--BottomArea
	PetBattleFrame.BottomFrame.Delimiter:Hide()
	PetBattleFrame.BottomFrame.Background:Hide()
	PetBattleFrame.BottomFrame.LeftEndCap:Hide()
	PetBattleFrame.BottomFrame.RightEndCap:Hide()
	PetBattleFrame.BottomFrame.FlowFrame.LeftEndCap:Hide()
	PetBattleFrame.BottomFrame.FlowFrame.RightEndCap:Hide()
	PetBattleFrame.BottomFrame.FlowFrame:DisableDrawLayer("BACKGROUND")
	PetBattleFrame.BottomFrame.FlowFrame:ClearAllPoints()
	PetBattleFrame.BottomFrame.FlowFrame:SetPoint("CENTER", -32, -18)
	-- Button scaling
	PetBattleFrame.BottomFrame.abilityButtons[1]:SetScale(0.6)
	PetBattleFrame.BottomFrame.abilityButtons[2]:SetScale(0.6)
	PetBattleFrame.BottomFrame.abilityButtons[3]:SetScale(0.6)
	PetBattleFrame.BottomFrame.SwitchPetButton:SetScale(0.6)
	PetBattleFrame.BottomFrame.CatchButton:SetScale(0.6)
	PetBattleFrame.BottomFrame.ForfeitButton:SetScale(0.6)
	-- Move Right Buttons
	PetBattleFrame.BottomFrame.ForfeitButton:ClearAllPoints()
	PetBattleFrame.BottomFrame.ForfeitButton:SetPoint("CENTER", 168, -12)
	PetBattleFrame.BottomFrame.CatchButton:ClearAllPoints()
	PetBattleFrame.BottomFrame.CatchButton:SetPoint("RIGHT", PetBattleFrame.BottomFrame.ForfeitButton, "LEFT", -10, 0)
	PetBattleFrame.BottomFrame.SwitchPetButton:ClearAllPoints()
	PetBattleFrame.BottomFrame.SwitchPetButton:SetPoint("RIGHT", PetBattleFrame.BottomFrame.CatchButton, "LEFT", -32, 0)
	PetBattleFrame.BottomFrame.abilityButtons[3]:ClearAllPoints()
	PetBattleFrame.BottomFrame.abilityButtons[3]:SetPoint("RIGHT", PetBattleFrame.BottomFrame.SwitchPetButton, "LEFT", -10, 0)
	PetBattleFrame.BottomFrame.abilityButtons[2]:ClearAllPoints()
	PetBattleFrame.BottomFrame.abilityButtons[2]:SetPoint("RIGHT", PetBattleFrame.BottomFrame.abilityButtons[3], "LEFT", -10, 0)
	PetBattleFrame.BottomFrame.abilityButtons[1]:ClearAllPoints()
	PetBattleFrame.BottomFrame.abilityButtons[1]:SetPoint("RIGHT", PetBattleFrame.BottomFrame.abilityButtons[2], "LEFT", -10, 0)
	-- Pass Turn button
	PetBattleFrame.BottomFrame.TurnTimer.ArtFrame2:Hide()
	PetBattleFrame.BottomFrame.TurnTimer.SkipButton:ClearAllPoints()
	PetBattleFrame.BottomFrame.TurnTimer.SkipButton:SetPoint("RIGHT", -6, -42)
	-- MicroButtonFrame
	PetBattleFrame.BottomFrame.MicroButtonFrame:ClearAllPoints()
	PetBattleFrame.BottomFrame.MicroButtonFrame:SetWidth(280)
	PetBattleFrame.BottomFrame.MicroButtonFrame:SetScale(0.8)
	PetBattleFrame.BottomFrame.MicroButtonFrame:SetPoint("TOP", UIParent, "TOP", -2, -3)
	PetBattleFrame.BottomFrame.MicroButtonFrame:SetFrameStrata("HIGH")
	PetBattleFrame.BottomFrame.MicroButtonFrame.LeftEndCap:Hide()
	PetBattleFrame.BottomFrame.MicroButtonFrame.RightEndCap:Hide()
	PetBattleFrame.BottomFrame.MicroButtonFrame:DisableDrawLayer("BACKGROUND")
	-- XP Bar
	PetBattleFrameXPBar:SetScale(0.95)
	PetBattleFrameXPBar:ClearAllPoints()
	PetBattleFrameXPBar:SetPoint("BOTTOM", UIParent, "BOTTOM", 0, 11)
	PetBattleFrameXPBarLeft:Hide()
	PetBattleFrameXPBarLeft:SetTexture(nil)
	PetBattleFrameXPBarMiddle:SetHorizTile(false)
	PetBattleFrameXPBarMiddle:Hide()
	PetBattleFrameXPBarMiddle:SetTexture(nil)
	PetBattleFrameXPBarRight:Hide()
	PetBattleFrameXPBarRight:SetTexture(nil)
	PetBattleFrameXPBar:DisableDrawLayer("BACKGROUND")
	PetBattleFrameXPBar:DisableDrawLayer("BORDER")
	PetBattleFrameXPBar:SetFrameStrata("BACKGROUND")
	PetBattleFrameXPBar:Lower()
end)

local function ARPG_PetBattle_MicroMenu(self)
	LFDMicroButton:ClearAllPoints()
	LFDMicroButton:SetPoint("TOPLEFT", GuildMicroButton, "TOPLEFT", 28, 0)
end
hooksecurefunc("PetBattleFrame_UpdateXpBar", ARPG_PetBattle_MicroMenu)
kLib:RegisterCallback("PET_BATTLE_ACTION_SELECTED", ARPG_PetBattle_MicroMenu)

kLib:RegisterCallback("PET_BATTLE_OPENING_DONE", function()
	LFDMicroButton:ClearAllPoints()
	LFDMicroButton:SetPoint("TOPLEFT", GuildMicroButton, "TOPLEFT", 28, 0)
end)

kLib:RegisterCallback("PET_BATTLE_CLOSE", function()
	ARPG_BottomBarPetBattle:Hide()
	ARPG_BottomBar:Show()
end)

-- PlayerPowerBar
--local PlayerPowerBarAlt = PlayerPowerBarAlt

delpos = PlayerPowerBarAlt.ClearAllPoints
setpos = PlayerPowerBarAlt.SetPoint
hooksecurefunc(PlayerPowerBarAlt, "SetPoint", function(self, anchorpoint, relativeto, xoffset, yoffset)
	delpos(self)
	setpos(self, "BOTTOM", 0, 220)
end)

delpos = ZoneAbilityFrame.ClearAllPoints
setpos = ZoneAbilityFrame.SetPoint
setscale = ZoneAbilityFrame.SetScale
hooksecurefunc(ZoneAbilityFrame, "SetPoint", function(self, anchorpoint, relativeto, xoffset, yoffset)
	delpos(self)
	setpos(self, "BOTTOM", -374, 210)
	setscale(self, 0.8)
end)

-- Vehicle Seats
local function ARPG_VehicleSeats()
	if VehicleSeatIndicator then
		--[[
		local point, relativeTo, relativePoint, xOfs, yOfs = VehicleSeatIndicator:GetPoint()
		DEFAULT_CHAT_FRAME:AddMessage(point)
		DEFAULT_CHAT_FRAME:AddMessage(relativeTo:GetName())
		DEFAULT_CHAT_FRAME:AddMessage(relativePoint)
		DEFAULT_CHAT_FRAME:AddMessage(xOfs)
		DEFAULT_CHAT_FRAME:AddMessage(yOfs)
		]]--
		--VehicleSeatIndicator:ClearAllPoints()
		VehicleSeatIndicator:SetPoint("TOPRIGHT", "MinimapCluster", "BOTTOMRIGHT", 0, -420)
	end
end
kLib:RegisterCallback("UPDATE_ALL_UI_WIDGETS", ARPG_VehicleSeats)
kLib:RegisterCallback("UNIT_ENTERING_VEHICLE", ARPG_VehicleSeats)
kLib:RegisterCallback("VEHICLE_UPDATE", ARPG_VehicleSeats)
kLib:RegisterCallback("UPDATE_VEHICLE_ACTIONBAR", ARPG_VehicleSeats)
kLib:RegisterCallback("VEHICLE_PASSENGERS_CHANGED", ARPG_VehicleSeats)

kLib:CreateArtFrame("ARPG_TopBar", "Interface\\AddOns\\ARPG\\Media\\Textures\\TopBar.tga", "BACKGROUND", 3, 1024, 64, "TOP", 0, 6, 0.64, false, false)
kLib:CreateArtFrame("ARPG_BottomBarBG", "Interface\\AddOns\\ARPG\\Media\\Textures\\BottomBarBG.tga", "BACKGROUND", 0, 2048, 255, "BOTTOM", 0, 0, 0.64, false, false)
kLib:CreateArtFrame("ARPG_BottomBar", "Interface\\AddOns\\ARPG\\Media\\Textures\\BottomBar.tga", "BACKGROUND", 6, 2048, 255, "BOTTOM", 0, 0, 0.64, false, false)
kLib:CreateArtFrame("ARPG_BottomBarPetBattle", "Interface\\AddOns\\ARPG\\Media\\Textures\\BottomBarPetBattle.tga", "BACKGROUND", 6, 2048, 255, "BOTTOM", 0, 0, 0.64, false, false)
kLib:CreateArtFrame("ARPG_GameMenu", "Interface\\AddOns\\ARPG\\Media\\Textures\\GameMenu.tga", "BACKGROUND", 0, 512, 1024, "CENTER", 0, 0, 0.45, false, true)
kLib:CreateArtFrame("ARPG_CharacterFrame", "Interface\\AddOns\\ARPG\\Media\\Textures\\CharacterFrame.tga", "MEDIUM", 1, 1024, 2048, "LEFT", -220, 0, 0.641, false, true)
kLib:CreateArtFrame("ARPG_StaticPopup", "Interface\\AddOns\\ARPG\\Media\\Textures\\StaticPopup.tga", "DIALOG", 0, 512, 256, "CENTER", 0, 250, 0.85, false, true)
ARPG_GameMenu:Hide()
ARPG_CharacterFrame:Hide()
ARPG_StaticPopup:Hide()
ARPG_BottomBarPetBattle:Hide()
