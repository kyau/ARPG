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
		GameMenuFrame:SetBackdropColor(1,1,1,0)
		GameMenuFrame:SetBackdropBorderColor(1,1,1,0)
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

	if CharacterFrame:IsShown() then
		_G.CharacterFrame:ClearAllPoints()
		_G.CharacterFrame:SetPoint("TOPLEFT", "ARPG_CharacterFrame", "TOPLEFT", 157, -388)
		_G.CharacterFrame.TitleText:ClearAllPoints()
		_G.CharacterFrame.TitleText:SetPoint("BOTTOM", _G.CharacterFrameInset, "TOP", 0, 73)
	else
		ARPG_CharacterFrame:Hide()
	end

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

	if CharacterFrame:IsShown() then
		_G.CharacterFrame:ClearAllPoints()
		_G.CharacterFrame:SetPoint("TOPLEFT", "ARPG_CharacterFrame", "TOPLEFT", 157, -388)
		_G.CharacterFrame.TitleText:ClearAllPoints()
		_G.CharacterFrame.TitleText:SetPoint("BOTTOM", _G.CharacterFrameInset, "TOP", 0, 73)
	else
		ARPG_CharacterFrame:Hide()
	end

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

--StaticPopup
local function ARPG_StaticPopup_OnShow(self)
	--local dialog = StaticPopupDialogs[self.which]
	ARPG_StaticPopup:Show()
	self:SetBackdropBorderColor(0,0,0,0)
	self:SetBackdropColor(0,0,0,0)
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

--characterframe
function Skin_UIPanelCloseButton(Button)
	Button:SetSize(17, 17)
	Button:SetNormalTexture("")
	Button:SetHighlightTexture("")
	Button:SetPushedTexture("")

	local dis = Button:GetDisabledTexture()
	if dis then
		dis:SetColorTexture(0, 0, 0, .4)
		dis:SetDrawLayer("OVERLAY")
		dis:SetAllPoints()
	end

	--Base.SetBackdrop(Button, Color.button)

	local cross = Button:CreateTexture(nil, "ARTWORK")
	cross:SetPoint("TOPLEFT", 4, -4)
	cross:SetPoint("BOTTOMRIGHT", -4, 4)
	--Base.SetTexture(cross, "lineCross")

	Button._auroraHighlight = {cross}
	--Base.SetHighlight(Button, "texture")
end
function Skin_PortraitFrameTemplateNoCloseButton(Frame)
	Frame.Bg:Hide()
	Frame.TitleBg:Hide()
	Frame.portrait:SetAlpha(0)
	Frame.PortraitFrame:SetTexture("")
	Frame.TopRightCorner:Hide()
	Frame.TopLeftCorner:SetTexture("")
	Frame.TopBorder:SetTexture("")

	Frame.TopTileStreaks:SetTexture("")
	Frame.BotLeftCorner:Hide()
	Frame.BotRightCorner:Hide()
	Frame.BottomBorder:Hide()
	Frame.LeftBorder:Hide()
	Frame.RightBorder:Hide()

	--Base.SetBackdrop(Frame)

	--[[ Scale ]]--
	--Frame:SetSize(Frame:GetSize())
end
function Skin_PortraitFrameTemplate(Frame)
	Skin_PortraitFrameTemplateNoCloseButton(Frame)
	--Skin_UIPanelCloseButton(Frame.CloseButton)
	Frame.CloseButton:SetNormalTexture(nil)
	Frame.CloseButton:SetPushedTexture(nil)
	Frame.CloseButton:SetPoint("TOPRIGHT", -176, 120)
end
function Skin_InsetFrameTemplate(Frame)
	Frame.Bg:Hide()

	Frame.InsetBorderTopLeft:Hide()
	Frame.InsetBorderTopRight:Hide()

	Frame.InsetBorderBottomLeft:Hide()
	Frame.InsetBorderBottomRight:Hide()

	Frame.InsetBorderTop:Hide()
	Frame.InsetBorderBottom:Hide()
	Frame.InsetBorderLeft:Hide()
	Frame.InsetBorderRight:Hide()
end
function Skin_ButtonFrameTemplate(Frame)
	Skin_PortraitFrameTemplate(Frame)
	local name = Frame:GetName()

	_G[name.."BtnCornerLeft"]:SetTexture("")
	_G[name.."BtnCornerRight"]:SetTexture("")
	_G[name.."ButtonBottomBorder"]:SetTexture("")
	Skin_InsetFrameTemplate(Frame.Inset)

	--[[ Scale ]]--
	--Frame.Inset:SetPoint("TOPLEFT", 4, -60)
	--Frame.Inset:SetPoint("BOTTOMRIGHT", -6, 26)
end
function Skin_CropIcon(texture, parent)
	texture:SetTexCoord(.08, .92, .08, .92)
	if parent then
		local layer, subLevel = texture:GetDrawLayer()
		local iconBorder = parent:CreateTexture(nil, layer, nil, subLevel - 1)
		iconBorder:SetPoint("TOPLEFT", texture, -1, 1)
		iconBorder:SetPoint("BOTTOMRIGHT", texture, 1, -1)
		iconBorder:SetColorTexture(0, 0, 0)
		return iconBorder
	end
end
function Skin_ItemButtonTemplate(Button)
	--Skin_CropIcon(Button.icon)

	Button.Count:SetPoint("BOTTOMRIGHT", -2, 2)

	local bg = _G.CreateFrame("Frame", nil, Button)
	bg:SetFrameLevel(Button:GetFrameLevel())
	bg:SetPoint("TOPLEFT", -1, 1)
	bg:SetPoint("BOTTOMRIGHT", 1, -1)
	bg:SetBackdropColor(0,0,0,0.3)
	Button._auroraIconBorder = bg

	Button:SetNormalTexture("")
	--Skin_CropIcon(Button:GetPushedTexture())
	--Skin_CropIcon(Button:GetHighlightTexture())

	--[[ Scale ]]--
	Button:SetSize(Button:GetSize())
end
function Skin_PaperDollAzeriteItemOverlayTemplate(Frame)
	Frame.RankFrame.Label:SetPoint("CENTER", Frame.RankFrame.Texture, 0, 0)
	--print(Frame.IconOverlay:GetAtlas():GetTexture())
end
function Skin_EquipmentFlyoutPopoutButtonTemplate(Button)
	local tex = Button:GetNormalTexture()
	--Base.SetTexture(tex, "arrowRight")
	--tex:SetVertexColor(Color.highlight:GetRGB())
	--Button._auroraArrow = tex
	Button:SetHighlightTexture("")
end
function Skin_PaperDollItemSlotButtonTemplate(Button)
	Skin_ItemButtonTemplate(Button)
	Skin_PaperDollAzeriteItemOverlayTemplate(Button)
	_G[Button:GetName().."Frame"]:Hide()

	Skin_EquipmentFlyoutPopoutButtonTemplate(Button.popoutButton)
	if Button.verticalFlyout then
		Button.popoutButton:SetPoint("LEFT", Button, "BOTTOM")
		Button.popoutButton:SetSize(38, 8)
		--Base.SetTexture(Button.popoutButton._auroraArrow, "arrowDown")
	else
		Button.popoutButton:SetPoint("LEFT", Button, "RIGHT")
		Button.popoutButton:SetSize(8, 38)
	end
end
local function Skin_ItemButtonSize(button, size)
	button:SetSize(size,size)
	--button.AzeriteTexture:Hide()
	button.AzeriteTexture:SetSize(size,size)
	button.IconBorder:SetSize(size,size)
	button.IconOverlay:SetSize(size,size)
	button.RankFrame:SetSize(size,size)
end
local function ARPG_CharacterCloseButton(self, button)
	ARPG_CharacterFrame:Hide()
end
function firstToUpper(str)
	return (str:gsub("^%l", string.upper))
end
--ARPG_CreateStatIcon
local prevFrame
local function ARPG_CreateStatIcon(title)
	local name = firstToUpper(string.lower(title))
	if title == "CRITICALSTRIKE" then name = "CriticalStrike" title = "CRITICAL STRIKE" end
	if title == "ITEMLEVEL" then name = "ItemLevel" end
	if title == "RUNICPOWER" then name = "RunicPower" title = "RUNIC POWER" end
	local frame = "ARPG_CharStats"..name
	if not _G[frame] then
		_G.CharacterFrame:CreateTexture(frame, "ARTWORK")
		_G[frame]:ClearAllPoints()
		if frame == "ARPG_CharStatsHealth" then
			_G[frame]:SetPoint("TOPLEFT", "ARPG_CharStatsFrame", "BOTTOMLEFT", 48, 182)
		elseif frame == "ARPG_CharStatsCriticalStrike" then
			_G[frame]:SetPoint("TOPLEFT", "ARPG_CharStatsFrame", "BOTTOMLEFT", 186, 182)
		elseif frame == "ARPG_CharStatsItemLevel" then
			_G[frame]:SetPoint("LEFT", "ARPG_CharStatsAchievementsLabel", "RIGHT", 8, 0)
		elseif frame == "ARPG_CharStatsAchievements" then
			_G[frame]:SetPoint("BOTTOMLEFT", "ARPG_CharStatsPlayer", "TOPLEFT", 0, 6)
		else
			_G[frame]:SetPoint("TOP", _G[prevFrame], "BOTTOM", 0, -8)
		end
		_G[frame]:SetTexture("Interface\\AddOns\\"..addon.."\\Media\\Textures\\StatIcons\\Icon-"..name..".tga")
		if frame == "ARPG_CharStatsItemLevel" or frame == "ARPG_CharStatsAchievements" then
			_G[frame]:SetSize(14,14)
			_G.CharacterFrame:CreateFontString(frame.."Label", "ARTWORK")
			_G[frame.."Label"]:SetFont("Interface\\AddOns\\"..addon.."\\Media\\Fonts\\Economica-Bold.ttf", 12, "OUTLINE")
			_G[frame.."Label"]:ClearAllPoints()
			_G[frame.."Label"]:SetPoint("LEFT", frame, "RIGHT", 4, 0)
		else
			_G[frame]:SetSize(36,36)
			_G.CharacterFrame:CreateFontString(frame.."Label", "ARTWORK")
			_G.CharacterFrame:CreateFontString(frame.."Value", "ARTWORK")
			_G[frame.."Label"]:SetFont("Interface\\AddOns\\"..addon.."\\Media\\Fonts\\VerlagCondensed-Bold.ttf", 11, "OUTLINE")
			_G[frame.."Value"]:SetFont("Interface\\AddOns\\"..addon.."\\Media\\Fonts\\Economica-Bold.ttf", 12, "OUTLINE")
			_G[frame.."Label"]:ClearAllPoints()
			_G[frame.."Value"]:ClearAllPoints()
			_G[frame.."Label"]:SetPoint("BOTTOMLEFT", frame, "BOTTOMRIGHT", 6, 4)
			_G[frame.."Value"]:SetPoint("TOPLEFT", frame, "TOPRIGHT", 6, -4)
			--_G[frame.."Value"]:SetTextColor(0.15294, 0.8, 0.30588)
			_G[frame.."Label"]:SetTextColor(0.9,0.9,0.9)
			_G[frame.."Label"]:SetText(title)
			_G[frame.."Value"]:Hide()
		end
		_G[frame]:Hide()
		_G[frame.."Label"]:Hide()
		kLib:Print("Created "..name.." Icon/Text")
		prevFrame = frame
	end
end
--ARPG_CharacterFrameUpdate
local function ARPG_CharacterFrameUpdate()
	if CharacterFrame:IsShown() then
		local CharacterStatsPane = _G.CharacterStatsPane
		CharacterStatsPane:Hide()
		--[[
		local level = UnitLevel("player")
		if level >= MIN_PLAYER_LEVEL_FOR_ITEM_LEVEL_DISPLAY then
			CharacterStatsPane.ItemLevelFrame.Background:Hide()
			CharacterStatsPane.ItemLevelCategory:Hide()
			CharacterStatsPane.ItemLevelFrame:ClearAllPoints()
			CharacterStatsPane.ItemLevelFrame:SetPoint("TOP", CharacterStatsPane, "TOP", 0, -10)
			CharacterStatsPane.ItemLevelFrame.Value:SetFont("Interface\\AddOns\\"..addon.."\\Media\\Fonts\\VerlagCondensed-Bold.ttf", 20, "OUTLINE")
			local p_itemlevel = tostring(CharacterStatsPane.ItemLevelFrame.numericValue)
			CharacterStatsPane.ItemLevelFrame.Value:SetText("|cffc0c0c0Item Level: |r"..p_itemlevel)
			--left stats
			CharacterStatsPane.AttributesCategory:ClearAllPoints()
			CharacterStatsPane.AttributesCategory:SetSize(170,35)
			CharacterStatsPane.AttributesCategory.Background:SetSize(170,35)
			CharacterStatsPane.AttributesCategory:SetPoint("TOPLEFT", CharacterFrameInsetRight, "TOPLEFT", -72, -48)
			--right stats
			CharacterStatsPane.EnhancementsCategory:ClearAllPoints()
			CharacterStatsPane.EnhancementsCategory:SetSize(170,35)
			CharacterStatsPane.EnhancementsCategory.Background:SetSize(170,35)
			CharacterStatsPane.EnhancementsCategory:SetPoint("TOPRIGHT", CharacterFrameInsetRight, "TOPRIGHT", 68, -48)
			CharacterStatsPane.EnhancementsCategory.Title:SetText("Secondary")
		else
			CharacterStatsPane.AttributesCategory:ClearAllPoints()
			CharacterStatsPane.AttributesCategory:SetPoint("TOP", CharacterStatsPane, "TOP", 0, -2)
		end
		CharacterStatsPane.ClassBackground:Hide()
		]]
		if not _G["ARPG_CharStatsFrame"] then
			local charFrame = _G.CharacterFrame
			local f = CreateFrame("Frame", "ARPG_CharStatsFrame", charFrame)
			f:SetFrameStrata("MEDIUM", 2)
			f:ClearAllPoints()
			f:SetSize(365,240)
			f:SetPoint("BOTTOMLEFT", -12, 4)
			--f.texture = f:CreateTexture(nil, "BACKGROUND")
			--f.texture:SetAllPoints(true)
			--f.texture:SetColorTexture(0,0.5,1)
			f:Show()
		end
		if not _G["ARPG_CharStatsPlayer"] then
			_G.CharacterFrame:CreateFontString("ARPG_CharStatsPlayer", "ARTWORK")
			_G["ARPG_CharStatsPlayer"]:SetFont("Interface\\AddOns\\"..addon.."\\Media\\Fonts\\VerlagCondensed-Bold.ttf", 11, "OUTLINE")
			_G["ARPG_CharStatsPlayer"]:ClearAllPoints()
			_G["ARPG_CharStatsPlayer"]:SetPoint("TOP", "ARPG_CharStatsFrame", "TOP", 0, -36)
		end
		ARPG_CreateStatIcon("ACHIEVEMENTS")
		ARPG_CreateStatIcon("ITEMLEVEL")

		ARPG_CreateStatIcon("HEALTH")
		ARPG_CreateStatIcon("MANA")
		prevFrame = "ARPG_CharStatsHealth"
		ARPG_CreateStatIcon("RAGE")
		prevFrame = "ARPG_CharStatsHealth"
		ARPG_CreateStatIcon("RAGE")
		prevFrame = "ARPG_CharStatsHealth"
		ARPG_CreateStatIcon("ENERGY")
		prevFrame = "ARPG_CharStatsHealth"
		ARPG_CreateStatIcon("RUNICPOWER")
		prevFrame = "ARPG_CharStatsHealth"
		ARPG_CreateStatIcon("MAELSTROM")
		prevFrame = "ARPG_CharStatsHealth"
		ARPG_CreateStatIcon("INSANITY")
		prevFrame = "ARPG_CharStatsHealth"
		ARPG_CreateStatIcon("FURY")
		prevFrame = "ARPG_CharStatsHealth"
		ARPG_CreateStatIcon("PAIN")
		ARPG_CreateStatIcon("STAMINA")
		ARPG_CreateStatIcon("STRENGTH")
		prevFrame = "ARPG_CharStatsStamina"
		ARPG_CreateStatIcon("INTELLECT")
		prevFrame = "ARPG_CharStatsStamina"
		ARPG_CreateStatIcon("AGILITY")
		ARPG_CreateStatIcon("CRITICALSTRIKE")
		ARPG_CreateStatIcon("HASTE")
		ARPG_CreateStatIcon("MASTERY")
		ARPG_CreateStatIcon("VERSATILITY")
		--ARPG_CreateStateIcon(CharStats["PRIMARY-STAT"])
		--[[
		if not ARPG_CharStatsHealth then
			_G.CharacterFrame:CreateTexture("ARPG_CharStatsHealth", "ARTWORK")
			ARPG_CharStatsHealth:ClearAllPoints()
			ARPG_CharStatsHealth:SetPoint("TOPLEFT", "CharacterFrame", "BOTTOMLEFT", 20, 200)
			ARPG_CharStatsHealth:SetTexture("Interface\\AddOns\\"..addon.."\\Media\\Textures\\StatIcons\\Icon-Health.tga")
			ARPG_CharStatsHealth:SetSize(32,32)
			ARPG_CharStatsHealth:SetAlpha(1)
			_G.CharacterFrame:CreateFontString("ARPG_CharStatsHealthLabel", "ARTWORK")
			_G.CharacterFrame:CreateFontString("ARPG_CharStatsHealthValue", "ARTWORK")
			ARPG_CharStatsHealthLabel:SetFont("Interface\\AddOns\\"..addon.."\\Media\\Fonts\\VerlagCondensed-Bold.ttf", 10, "OUTLINE")
			ARPG_CharStatsHealthValue:SetFont("Interface\\AddOns\\"..addon.."\\Media\\Fonts\\Economica-Bold.ttf", 10, "OUTLINE")
			ARPG_CharStatsHealthLabel:ClearAllPoints()
			ARPG_CharStatsHealthValue:ClearAllPoints()
			ARPG_CharStatsHealthLabel:SetPoint("BOTTOMLEFT", "ARPG_CharStatsHealth", "BOTTOMRIGHT", 2, 4)
			ARPG_CharStatsHealthValue:SetPoint("TOPLEFT", "ARPG_CharStatsHealth", "TOPRIGHT", 2, -4)
			ARPG_CharStatsHealthValue:SetTextColor(0.15294, 0.8, 0.30588)
			ARPG_CharStatsHealthLabel:SetText("HEALTH")
			--kLib:Print("Created Health Icon/Text")
		end
		]]
		--stats: player
		if _G["ARPG_CharStatsPlayer"] then
			local playerName = UnitName("player")
			local playerLevel = UnitLevel("player")
			local playerRace = UnitRace("player")
			local playerClass = UnitClass("player")
			local _, playerSpec = GetSpecializationInfo(GetSpecialization())
			local playerGuild = GetGuildInfo("player")
			local playerRealm = GetRealmName()
			_G["ARPG_CharStatsPlayer"]:SetText(playerLevel.." "..playerRace.." "..playerSpec.." "..playerClass.." |cfff8b700<"..playerGuild..">|r "..playerRealm)
		end
		--staticons: achievements
		if CharStats["ACHIEVEMENTS"] ~= nil then
			local achievements = CharStats["ACHIEVEMENTS"]
			if achievements then
				ARPG_CharStatsAchievementsLabel:SetText("|cfff8b700"..achievements.."|r")
			else
				ARPG_CharStatsAchievementsLabel:SetText("|cfff8b7000|r")
			end
			ARPG_CharStatsAchievements:Show()
			ARPG_CharStatsAchievementsLabel:Show()
		else
			ARPG_CharStatsAchievements:Hide()
			ARPG_CharStatsAchievementsLabel:Hide()
		end
		--staticons: item level
		if CharStats["ITEM-LEVEL"] ~= nil and CharStats["ITEM-LEVEL-EQUIPPED"] ~= nil then
			local itemLevel = CharStats["ITEM-LEVEL"]
			local itemLevelEquipped = CharStats["ITEM-LEVEL-EQUIPPED"]
			if itemLevel == itemLevelEquipped then
				ARPG_CharStatsItemLevelLabel:SetText("|cfff8b700"..itemLevel.." ILVL|r")
			else
				ARPG_CharStatsItemLevelLabel:SetText("|cfff8b700"..itemLevelEquipped.."/"..itemLevel.." ILVL|r")
			end
			ARPG_CharStatsItemLevel:Show()
			ARPG_CharStatsItemLevelLabel:Show()
		else
			ARPG_CharStatsItemLevel:Hide()
			ARPG_CharStatsItemLevelLabel:Hide()
		end
		--staticons: health
		if CharStats["HEALTH"] ~= nil then
			local health = BreakUpLargeNumbers(CharStats["HEALTH"])
			if health then
				ARPG_CharStatsHealthValue:SetText("|cff27cc4e"..health.."|r")
				--kLib:Print("Health Icon/Text: Updated")
			else
				ARPG_CharStatsHealthValue:SetText("|cff27cc4e0|r")
			end
			ARPG_CharStatsHealth:Show()
			ARPG_CharStatsHealthLabel:Show()
			ARPG_CharStatsHealthValue:Show()
		end
		--staticons: mana
		if CharStats["MANA"] ~= nil then
			local stat = BreakUpLargeNumbers(CharStats["MANA"])
			if stat then
				ARPG_CharStatsManaValue:SetText("|cff1c8aff"..stat.."|r")
				ARPG_CharStatsMana:Show()
				ARPG_CharStatsManaLabel:Show()
				ARPG_CharStatsManaValue:Show()
			else
				ARPG_CharStatsMana:Hide()
				ARPG_CharStatsManaLabel:Hide()
				ARPG_CharStatsManaValue:Hide()
			end
		end
		--staticons: rage
		if CharStats["RAGE"] ~= nil then
			local stat = BreakUpLargeNumbers(CharStats["RAGE"])
			if stat then
				ARPG_CharStatsRageValue:SetText("|cffab0000"..stat.."|r")
				ARPG_CharStatsRage:Show()
				ARPG_CharStatsRageLabel:Show()
				ARPG_CharStatsRageValue:Show()
			else
				ARPG_CharStatsRage:Hide()
				ARPG_CharStatsRageLabel:Hide()
				ARPG_CharStatsRageValue:Hide()
			end
		end
		--staticons: focus
		if CharStats["FOCUS"] ~= nil then
			local stat = BreakUpLargeNumbers(CharStats["FOCUS"])
			if stat then
				ARPG_CharStatsFocusValue:SetText("|cffd45719"..stat.."|r")
				ARPG_CharStatsFocus:Show()
				ARPG_CharStatsFocusLabel:Show()
				ARPG_CharStatsFocusValue:Show()
			else
				ARPG_CharStatsFocus:Hide()
				ARPG_CharStatsFocusLabel:Hide()
				ARPG_CharStatsFocusValue:Hide()
			end
		end
		--staticons: energy
		if CharStats["ENERGY"] ~= nil then
			local stat = BreakUpLargeNumbers(CharStats["ENERGY"])
			if stat then
				ARPG_CharStatsEnergyValue:SetText("|cffcb9501"..stat.."|r")
				ARPG_CharStatsEnergy:Show()
				ARPG_CharStatsEnergyLabel:Show()
				ARPG_CharStatsEnergyValue:Show()
			else
				ARPG_CharStatsEnergy:Hide()
				ARPG_CharStatsEnergyLabel:Hide()
				ARPG_CharStatsEnergyValue:Hide()
			end
		end
		--staticons: runic-power
		if CharStats["RUNIC-POWER"] ~= nil then
			local stat = BreakUpLargeNumbers(CharStats["RUNIC-POWER"])
			if stat then
				ARPG_CharStatsRunicPowerValue:SetText("|cff00bcde"..stat.."|r")
				ARPG_CharStatsRunicPower:Show()
				ARPG_CharStatsRunicPowerLabel:Show()
				ARPG_CharStatsRunicPowerValue:Show()
			else
				ARPG_CharStatsRunicPower:Hide()
				ARPG_CharStatsRunicPowerLabel:Hide()
				ARPG_CharStatsRunicPowerValue:Hide()
			end
		end
		--staticons: maelstrom
		if CharStats["MAELSTROM"] ~= nil then
			local stat = BreakUpLargeNumbers(CharStats["MAELSTROM"])
			if stat then
				ARPG_CharStatsMaelstromValue:SetText("|cff008fff"..stat.."|r")
				ARPG_CharStatsMaelstrom:Show()
				ARPG_CharStatsMaelstromLabel:Show()
				ARPG_CharStatsMaelstromValue:Show()
			else
				ARPG_CharStatsMaelstrom:Hide()
				ARPG_CharStatsMaelstromLabel:Hide()
				ARPG_CharStatsMaelstromValue:Hide()
			end
		end
		--staticons: insanity
		if CharStats["INSANITY"] ~= nil then
			local stat = BreakUpLargeNumbers(CharStats["INSANITY"])
			if stat then
				ARPG_CharStatsInsanityValue:SetText("|cff60f60f"..stat.."|r")
				ARPG_CharStatsInsanity:Show()
				ARPG_CharStatsInsanityLabel:Show()
				ARPG_CharStatsInsanityValue:Show()
			else
				ARPG_CharStatsInsanity:Hide()
				ARPG_CharStatsInsanityLabel:Hide()
				ARPG_CharStatsInsanityValue:Hide()
			end
		end
		--staticons: fury
		if CharStats["FURY"] ~= nil then
			local stat = BreakUpLargeNumbers(CharStats["FURY"])
			if stat then
				ARPG_CharStatsFuryValue:SetText("|cff8400ff"..stat.."|r")
				ARPG_CharStatsFury:Show()
				ARPG_CharStatsFuryLabel:Show()
				ARPG_CharStatsFuryValue:Show()
			else
				ARPG_CharStatsFury:Hide()
				ARPG_CharStatsFuryLabel:Hide()
				ARPG_CharStatsFuryValue:Hide()
			end
		end
		--staticons: pain
		if CharStats["PAIN"] ~= nil then
			local stat = BreakUpLargeNumbers(CharStats["PAIN"])
			if stat then
				ARPG_CharStatsPainValue:SetText("|cffd45719"..stat.."|r")
				ARPG_CharStatsPain:Show()
				ARPG_CharStatsPainLabel:Show()
				ARPG_CharStatsPainValue:Show()
			else
				ARPG_CharStatsPain:Hide()
				ARPG_CharStatsPainLabel:Hide()
				ARPG_CharStatsPainValue:Hide()
			end
		end
		--staicons: stamina
		if CharStats["STAMINA"] ~= nil then
			local stamina = BreakUpLargeNumbers(CharStats["STAMINA"])
			if stamina then
				ARPG_CharStatsStaminaValue:SetText("|cffff8b2d"..stamina.."|r")
			else
				ARPG_CharStatsStaminaValue:SetText("|cffff8b2d0|r")
			end
			ARPG_CharStatsStamina:Show()
			ARPG_CharStatsStaminaLabel:Show()
			ARPG_CharStatsStaminaValue:Show()
		end
		--staticons: agility
		if CharStats["AGILITY"] ~= nil then
			local agi = BreakUpLargeNumbers(CharStats["AGILITY"])
			if agi and CharStats["PRIMARY-STAT"] == "AGILITY" then
				ARPG_CharStatsAgilityValue:SetText("|cffffd955"..agi.."|r")
				ARPG_CharStatsAgility:Show()
				ARPG_CharStatsAgilityLabel:Show()
				ARPG_CharStatsAgilityValue:Show()
			else
				ARPG_CharStatsAgility:Hide()
				ARPG_CharStatsAgilityLabel:Hide()
				ARPG_CharStatsAgilityValue:Hide()
			end
		end
		--staticons: intellect
		if CharStats["INTELLECT"] ~= nil then
			local intel = BreakUpLargeNumbers(CharStats["INTELLECT"])
			if intel and CharStats["PRIMARY-STAT"] == "INTELLECT" then
				ARPG_CharStatsIntellectValue:SetText("|cffd26cd1"..intel.."|r")
				ARPG_CharStatsIntellect:Show()
				ARPG_CharStatsIntellectLabel:Show()
				ARPG_CharStatsIntellectValue:Show()
			else
				ARPG_CharStatsIntellect:Hide()
				ARPG_CharStatsIntellectLabel:Hide()
				ARPG_CharStatsIntellectValue:Hide()
			end
		end
		--staticons: strength
		if CharStats["STRENGTH"] ~= nil then
			local str = BreakUpLargeNumbers(CharStats["STRENGTH"])
			if str and CharStats["PRIMARY-STAT"] == "STRENGTH" then
				ARPG_CharStatsStrengthValue:SetText("|cfff33232"..str.."|r")
				ARPG_CharStatsStrength:Show()
				ARPG_CharStatsStrengthLabel:Show()
				ARPG_CharStatsStrengthValue:Show()
			else
				ARPG_CharStatsStrength:Hide()
				ARPG_CharStatsStrengthLabel:Hide()
				ARPG_CharStatsStrengthValue:Hide()
			end
		end
		--staticons: critical strike
		if CharStats["CRITICAL-STRIKE"] ~= nil then
			local crit = kLib:FormatNumber(CharStats["CRITICAL-STRIKE"], 2)
			if crit then
				ARPG_CharStatsCriticalStrikeValue:SetText("|cffe01c1c"..crit.."%|r")
				ARPG_CharStatsCriticalStrike:Show()
				ARPG_CharStatsCriticalStrikeLabel:Show()
				ARPG_CharStatsCriticalStrikeValue:Show()
			else
				ARPG_CharStatsCriticalStrike:Hide()
				ARPG_CharStatsCriticalStrikeLabel:Hide()
				ARPG_CharStatsCriticalStrikeValue:Hide()
			end
		end
		--staticons: haste
		if CharStats["HASTE"] ~= nil then
			local haste = kLib:FormatNumber(CharStats["HASTE"], 2)
			if haste then
				ARPG_CharStatsHasteValue:SetText("|cff0ed59b"..haste.."%|r")
				ARPG_CharStatsHaste:Show()
				ARPG_CharStatsHasteLabel:Show()
				ARPG_CharStatsHasteValue:Show()
			else
				ARPG_CharStatsHaste:Hide()
				ARPG_CharStatsHasteLabel:Hide()
				ARPG_CharStatsHasteValue:Hide()
			end
		end
		--staticons: haste
		if CharStats["MASTERY"] ~= nil then
			local mastery = kLib:FormatNumber(CharStats["MASTERY"], 2)
			if mastery then
				ARPG_CharStatsMasteryValue:SetText("|cff9256ff"..mastery.."%|r")
				ARPG_CharStatsMastery:Show()
				ARPG_CharStatsMasteryLabel:Show()
				ARPG_CharStatsMasteryValue:Show()
			else
				ARPG_CharStatsMastery:Hide()
				ARPG_CharStatsMasteryLabel:Hide()
				ARPG_CharStatsMasteryValue:Hide()
			end
		end
		--staticons: haste
		if CharStats["VERSATILITY"] ~= nil then
			local vers = kLib:FormatNumber(CharStats["VERSATILITY"], 2)
			if vers then
				ARPG_CharStatsVersatilityValue:SetText("|cffbfbfbf"..vers.."%|r")
				ARPG_CharStatsVersatility:Show()
				ARPG_CharStatsVersatilityLabel:Show()
				ARPG_CharStatsVersatilityValue:Show()
			else
				ARPG_CharStatsVersatility:Hide()
				ARPG_CharStatsVersatilityLabel:Hide()
				ARPG_CharStatsVersatilityValue:Hide()
			end
		end

		--item slots
		local EquipmentSlots = {
			"CharacterHeadSlot", "CharacterNeckSlot", "CharacterShoulderSlot", "CharacterBackSlot", "CharacterChestSlot", "CharacterShirtSlot", "CharacterTabardSlot", "CharacterWristSlot",
			"CharacterHandsSlot", "CharacterWaistSlot", "CharacterLegsSlot", "CharacterFeetSlot", "CharacterFinger0Slot", "CharacterFinger1Slot", "CharacterTrinket0Slot", "CharacterTrinket1Slot"
		}
		local WeaponSlots = {
			"CharacterMainHandSlot", "CharacterSecondaryHandSlot"
		}
		local prevSlot
		local chestSlot
		for i = 1, #EquipmentSlots do
			local button = _G[EquipmentSlots[i]]
			local noSize = false
			local equipSlotName = tostring(EquipmentSlots[i])
			if equipSlotName == "CharacterHeadSlot" then
				button:ClearAllPoints()
				button:SetPoint("TOPLEFT", _G.CharacterFrameInset, 16, 56)
				button.AzeriteTexture:SetTexture(nil)
			elseif equipSlotName == "CharacterChestSlot" then
				chestSlot = button
				button:ClearAllPoints()
				button:SetPoint("TOPLEFT", prevSlot, "BOTTOMLEFT", 0, -6)
				button.AzeriteTexture:SetTexture(nil)
			elseif equipSlotName == "CharacterNeckSlot" then
				button:ClearAllPoints()
				button:SetPoint("TOPLEFT", _G.CharacterFrameInset, 64, 51)
				noSize = true
				button:SetSize(32,32)
				button.AzeriteTexture:SetSize(45,45)
			elseif equipSlotName == "CharacterShoulderSlot" then
				button:ClearAllPoints()
				button:SetPoint("TOPLEFT", _G.CharacterFrameInset, 16, 20)
				button.AzeriteTexture:SetTexture(nil)
			elseif equipSlotName == "CharacterShirtSlot" then
				button:ClearAllPoints()
				button:SetPoint("TOPRIGHT", _G.CharacterFrameInset, -46, 56)
				Skin_ItemButtonSize(button, 24)
				noSize = true
			elseif equipSlotName == "CharacterTabardSlot" then
				button:ClearAllPoints()
				button:SetPoint("TOPLEFT", prevSlot, "BOTTOMLEFT", 0, -6)
				Skin_ItemButtonSize(button, 24)
				noSize = true
			elseif equipSlotName == "CharacterWristSlot" then
				button:ClearAllPoints()
				button:SetPoint("TOPLEFT", chestSlot, "BOTTOMLEFT", 0, -6)
			elseif equipSlotName == "CharacterHandsSlot" then
				button:ClearAllPoints()
				button:SetPoint("TOPRIGHT", _G.CharacterFrameInset, -10, 56)
			elseif equipSlotName == "CharacterFinger0Slot" or equipSlotName == "CharacterTrinket0Slot" then
				button:ClearAllPoints()
				if equipSlotName == "CharacterFinger0Slot" then
					button:SetPoint("TOPRIGHT", _G.CharacterFrameInset, -43.5, -146)
				else
					button:SetPoint("TOPLEFT", prevSlot, "BOTTOMLEFT", -32, -4)
				end
				Skin_ItemButtonSize(button, 28)
				noSize = true
			elseif equipSlotName == "CharacterFinger1Slot" or equipSlotName == "CharacterTrinket1Slot" then
				button:ClearAllPoints()
				button:SetPoint("LEFT", prevSlot, "RIGHT", 4, 0)
				Skin_ItemButtonSize(button, 28)
				noSize = true
			else
				button:SetPoint("TOPLEFT", prevSlot, "BOTTOMLEFT", 0, -4)
			end
			if not noSize then Skin_ItemButtonSize(button, 32) end
			if button.IsLeftSide then
				Skin_PaperDollItemSlotButtonTemplate(button)
			elseif button.IsLeftSide == false then
				Skin_PaperDollItemSlotButtonTemplate(button)
			end
			prevSlot = button
		end
		--weapon and offhand
		for i = 1, #WeaponSlots do
			local button = _G[WeaponSlots[i]]
			if i == 1 then
				-- main hand
				button:ClearAllPoints()
				button:SetPoint("BOTTOMLEFT", _G.CharacterFrameInset, 16, 254)
			end
			Skin_PaperDollItemSlotButtonTemplate(button)
			_G.select(13, button:GetRegions()):Hide()
		end
	end
end
--character armory stats
local function ARPG_CharacterStatsPowerUpdate(type, power)
	--null all power values
	CharStats["MANA"] = nil
	CharStats["RAGE"] = nil
	CharStats["FOCUS"] = nil
	CharStats["ENERGY"] = nil
	CharStats["RUNIC-POWER"] = nil
	CharStats["MAELSTROM"] = nil
	CharStats["INSANITY"] = nil
	CharStats["FURY"] = nil
	CharStats["PAIN"] = nil
	--actually set power
	CharStats[type] = power
end
function GetRealCritChance()
	local rating;
	local spellCrit, rangedCrit, meleeCrit;
	local critChance;
	-- Start at 2 to skip physical damage
	local holySchool = 2;
	local minCrit = GetSpellCritChance(holySchool);
	--statFrame.spellCrit = {};
	--statFrame.spellCrit[holySchool] = minCrit;
	local spellCrit;
	for i=(holySchool+1), MAX_SPELL_SCHOOLS do
		spellCrit = GetSpellCritChance(i);
		minCrit = min(minCrit, spellCrit);
		--statFrame.spellCrit[i] = spellCrit;
	end
	spellCrit = minCrit
	rangedCrit = GetRangedCritChance();
	meleeCrit = GetCritChance();
	if (spellCrit >= rangedCrit and spellCrit >= meleeCrit) then
		critChance = spellCrit;
		rating = CR_CRIT_SPELL;
	elseif (rangedCrit >= meleeCrit) then
		critChance = rangedCrit;
		rating = CR_CRIT_RANGED;
	else
		critChance = meleeCrit;
		rating = CR_CRIT_MELEE;
	end
	--local extraCritChance = GetCombatRatingBonus(rating)
	return critChance;
end
--character armory update
local function ARPG_CharacterStatsUpdate()
	--if not PaperDollFrame:IsVisible() and not InterfaceOptionsFrame:IsVisible() then
		--return
	--end
	--achievements
	CharStats["ACHIEVEMENTS"] = GetTotalAchievementPoints(IN_GUILD_VIEW)
	--item level
	local AvgItemLevel, AvgItemLevelEquipped = GetAverageItemLevel()
	local DecimalPlaces = ("%.2f")
	local multiplier = 100
	CharStats["ITEM-LEVEL"] = floor(multiplier*AvgItemLevel)/multiplier;
	CharStats["ITEM-LEVEL-EQUIPPED"] = floor(multiplier*AvgItemLevelEquipped)/multiplier;
	--power
	--local manaType = Enum.PowerType.Mana
	local powerType, powerToken = UnitPowerType("player");
	local power = UnitPowerMax("player",powerType);
	local powerText = BreakUpLargeNumbers(power);
	if power > 0 and powerToken == "MANA" then
		CharStats["MANA"] = power
		--PaperDollFrame_SetLabelAndText(statFrame, MANA, powerText, false, power);
		--statFrame.tooltip = highlight_code..dcs_format(doll_tooltip_format, MANA).." "..powerText..font_color_close;
		--statFrame.tooltip2 = _G["STAT_MANA_TOOLTIP"];
		--statFrame:Show();
	elseif power > 0 and powerToken == "RAGE" then
		ARPG_CharacterStatsPowerUpdate("RAGE", power)
	elseif power > 0 and powerToken == "FOCUS" then
		ARPG_CharacterStatsPowerUpdate("FOCUS", power)
	elseif power > 0 and powerToken == "ENERGY" then
		ARPG_CharacterStatsPowerUpdate("ENERGY", power)
	elseif power > 0 and powerToken == "RUNIC_POWER" then
		ARPG_CharacterStatsPowerUpdate("RUNIC_POWER", power)
	elseif power > 0 and powerToken == "MAELSTROM_POWER" then
		ARPG_CharacterStatsPowerUpdate("MAELSTROM_POWER", power)
	elseif power > 0 and powerToken == "INSANITY_POWER" then
		ARPG_CharacterStatsPowerUpdate("INSANITY_POWER", power)
	elseif power > 0 and powerToken == "FURY" then
		ARPG_CharacterStatsPowerUpdate("FURY", power)
	elseif power > 0 and powerToken == "PAIN" then
		ARPG_CharacterStatsPowerUpdate("PAIN", power)
	else
		--error?
	end
	--primary stats
	local primaryStat, spec;
	spec = GetSpecialization();
	local role = GetSpecializationRole(spec);
	if (spec) then
		primaryStat = select(6, GetSpecializationInfo(spec, nil, nil, nil, UnitSex("player")));
		if primaryStat == 1 then
			CharStats["PRIMARY-STAT"] = "STRENGTH"
		elseif primaryStat == 2 then
			CharStats["PRIMARY-STAT"] = "AGILITY"
		elseif primaryStat == 3 then
			CharStats["PRIMARY-STAT"] = "STAMINA"
		elseif primaryStat == 4 then
			CharStats["PRIMARY-STAT"] = "INTELLECT"
		end
	end
	CharStats["HEALTH"] = UnitHealthMax("player")
	--local healthText = BreakUpLargeNumbers(CharStats["HEALTH"])
	CharStats["STAMINA"] = UnitStat("player", 3)
	CharStats["STRENGTH"] = UnitStat("player", 1)
	CharStats["AGILITY"] = UnitStat("player", 2)
	CharStats["INTELLECT"] = UnitStat("player", 4)
	--secondary stats
	CharStats["CRITICAL-STRIKE"] = GetRealCritChance()
	CharStats["HASTE"] = GetHaste()
	local rating = CR_HASTE_MELEE
	local mastery, bonusCoeff = GetMasteryEffect()
	local masteryBonus = GetCombatRatingBonus(CR_MASTERY) * bonusCoeff
	CharStats["MASTERY"] = mastery
	local versatilityDamageBonus = GetCombatRatingBonus(CR_VERSATILITY_DAMAGE_DONE) + GetVersatilityBonus(CR_VERSATILITY_DAMAGE_DONE)
	local versatilityDamageTakenReduction = GetCombatRatingBonus(CR_VERSATILITY_DAMAGE_TAKEN) + GetVersatilityBonus(CR_VERSATILITY_DAMAGE_TAKEN)
	CharStats["VERSATILITY"] = versatilityDamageBonus
	CharStats["SPEED"] = GetSpeed()
	--update frame
	ARPG_CharacterFrameUpdate()
end
--toggle characterframe
local function ARPG_ToggleCharacter(tab, onlyShow)
	local subFrame = _G[tab]
	if subFrame then
		if not subFrame.hidden then
			if CharacterFrame:IsShown() then
				local className,_ = select(2, UnitClass("player"))
				local r,g,b = GetClassColor(className)
				ARPG_CharacterFrame:Show()
				--remove unwanted blizzard art
				Skin_ButtonFrameTemplate(_G.CharacterFrame)
				Skin_InsetFrameTemplate(_G.CharacterFrameInsetRight)
				_G.PaperDollSidebarTabs.DecorLeft:Hide()
				_G.PaperDollSidebarTabs.DecorRight:Hide()
				_G.CharacterModelFrameBackgroundTopLeft:Hide()
				_G.CharacterModelFrameBackgroundTopRight:Hide()
				_G.CharacterModelFrameBackgroundBotLeft:Hide()
				_G.CharacterModelFrameBackgroundBotRight:Hide()
				--character background image
				_G.CharacterModelFrameBackgroundOverlay:SetTexture("Interface\\DRESSUPFRAME\\DressingRoom"..firstToUpper(string.lower(className)))
				_G.CharacterModelFrameBackgroundOverlay:SetTexCoord(0, 0.9375, 0, 0.98046875)
				_G.CharacterModelFrameBackgroundOverlay:SetAlpha(1)
				_G.CharacterModelFrameBackgroundOverlay:ClearAllPoints()
				_G.CharacterModelFrameBackgroundOverlay:SetWidth(314)
				_G.CharacterModelFrameBackgroundOverlay:SetHeight(276)
				_G.CharacterModelFrameBackgroundOverlay:SetDrawLayer("BACKGROUND", 0)
				_G.CharacterModelFrameBackgroundOverlay:SetPoint("BOTTOM", _G.CharacterFrameInset, "TOP", 2, -214)
				_G.PaperDollInnerBorderTopLeft:Hide()
				_G.PaperDollInnerBorderTopRight:Hide()
				_G.PaperDollInnerBorderBottomLeft:Hide()
				_G.PaperDollInnerBorderBottomRight:Hide()
				_G.PaperDollInnerBorderLeft:Hide()
				_G.PaperDollInnerBorderRight:Hide()
				_G.PaperDollInnerBorderTop:Hide()
				_G.PaperDollInnerBorderBottom:Hide()
				_G.PaperDollInnerBorderBottom2:Hide()
				--gearmanager
				local GearManagerDialogPopup = _G.GearManagerDialogPopup
				GearManagerDialogPopup.BG:Hide()
				local BorderBox = GearManagerDialogPopup.BorderBox
				for i = 1, 8 do
					select(i, BorderBox:GetRegions()):Hide()
				end
				_G.GearManagerDialogPopupEditBoxLeft:Hide()
				_G.GearManagerDialogPopupEditBoxMiddle:Hide()
				_G.GearManagerDialogPopupEditBoxRight:Hide()
				local BorderBox = GearManagerDialogPopup.BorderBox
				for i = 1, 8 do
					select(i, BorderBox:GetRegions()):Hide()
				end
				_G.GearManagerDialogPopupEditBoxLeft:Hide()
				_G.GearManagerDialogPopupEditBoxMiddle:Hide()
				_G.GearManagerDialogPopupEditBoxRight:Hide()
				--title: character name
				_G.CharacterFrame.TitleText:ClearAllPoints()
				_G.CharacterFrame.TitleText:SetPoint("BOTTOM", _G.CharacterFrameInset, "TOP", 0, 73)
				_G.CharacterFrame.TitleText:SetTextColor(r,g,b)
				_G.CharacterFrame.TitleText:SetFont("Interface\\AddOns\\"..addon.."\\Media\\Fonts\\Bree-Regular.ttf", 14, "OUTLINE")
				--character model
				_G.CharacterModelFrame:ClearAllPoints()
				_G.CharacterModelFrame:SetPoint("TOP", _G.CharacterFrameInset, "TOP", 0, 70)
				_G.CharacterModelFrame:SetSize(310,280)
				_G.CharacterModelFrameControlFrame:ClearAllPoints()
				_G.CharacterModelFrameControlFrame:SetPoint("TOP", _G.CharacterModelFrame, "BOTTOM", 0, 64)
				--characterframe location
				_G.CharacterFrame:ClearAllPoints()
				_G.CharacterFrame:SetPoint("TOPLEFT", "ARPG_CharacterFrame", "TOPLEFT", 157, -388)
				--frame sizes
				local _sizex, _sizey = _G.CharacterFrame:GetSize()
				_G.CharacterFrame:SetSize(_sizex,522)
				_sizex, _sizey = _G.CharacterFrameInset:GetSize()
				_G.CharacterFrameInset:SetSize(_sizex,458)
				--reanchor right frame
				_sizey = 288
				--_G.CharacterFrameInsetRight:ClearAllPoints()
				--_G.CharacterFrameInsetRight:SetPoint("TOPLEFT", "CharacterFrameInset", "BOTTOMLEFT", 64, 244)
				--_G.CharacterFrameInsetRight:SetSize(_sizex - 120, _sizey + 56)
				--titles
				_G.PaperDollTitlesPane:ClearAllPoints()
				_G.PaperDollTitlesPane:SetFrameStrata("HIGH")
				_G.PaperDollTitlesPane:SetPoint("LEFT", "ARPG_CharacterFrame", "RIGHT", -144, 136)
				--_G.PaperDollTitlesPaneScrollBar.doNotHide = 0
				_G.PaperDollTitlesPaneScrollBarMiddle:Hide()
				_G.PaperDollTitlesPaneScrollBarBottom:Hide()
				_G.PaperDollTitlesPaneScrollBarTop:Hide()
				_G.PaperDollTitlesPaneScrollBar:Hide()
				_G.PaperDollTitlesPaneScrollBarThumbTexture:SetTexture(nil)
				_G.PaperDollTitlesPaneScrollBarScrollUpButton:Hide()
				_G.PaperDollTitlesPaneScrollBarScrollDownButton:Hide()
				_G.PaperDollTitlesPane:SetSize(_sizex, _sizey)
				_G.PaperDollEquipmentManagerPane:ClearAllPoints()
				_G.PaperDollEquipmentManagerPane:SetFrameStrata("HIGH")
				_G.PaperDollEquipmentManagerPane:SetPoint("LEFT", "ARPG_CharacterFrame", "RIGHT", -144, 136)
				_G.PaperDollEquipmentManagerPaneEquipSet.ButtonBackground:Hide()
				_G.PaperDollEquipmentManagerPaneScrollBarMiddle:Hide()
				_G.PaperDollEquipmentManagerPaneScrollBarBottom:Hide()
				_G.PaperDollEquipmentManagerPaneScrollBarTop:Hide()
				_G.PaperDollEquipmentManagerPaneScrollBar:Hide()
				_G.PaperDollEquipmentManagerPaneScrollBarThumbTexture:SetTexture(nil)
				_G.PaperDollEquipmentManagerPaneScrollBarScrollUpButton:Hide()
				_G.PaperDollEquipmentManagerPaneScrollBarScrollDownButton:Hide()
				_G.PaperDollEquipmentManagerPane:SetSize(_sizex, _sizey)
				_G.PaperDollSidebarTabs:ClearAllPoints()
				_G.PaperDollSidebarTabs:SetPoint("TOPRIGHT", "CharacterFrame", "BOTTOMRIGHT", -160, -2)
				--ARPG logo
				if not ARPG_CharacterFrameLogo then
					_G.CharacterFrame:CreateTexture("ARPG_CharacterFrameLogo", "ARTWORK")
					ARPG_CharacterFrameLogo:ClearAllPoints()
					ARPG_CharacterFrameLogo:SetPoint("TOP", "CharacterFrame", "BOTTOM", -72, -108)
					ARPG_CharacterFrameLogo:SetTexture("Interface\\AddOns\\"..addon.."\\Media\\Logo.tga")
					ARPG_CharacterFrameLogo:SetSize(128,16)
					ARPG_CharacterFrameLogo:SetAlpha(0.8)
					ARPG_CharacterFrameLogo:Show()
				end
				--update statsframe and equipment icons
				ARPG_CharacterFrameUpdate()
			else
				--hide bg on frame close
				ARPG_CharacterFrame:Hide()
			end
		end
	end
end
local function ARPG_CharacterFrame_Hide()
	ARPG_CharacterFrame:Hide()
end
hooksecurefunc("ToggleCharacter", ARPG_ToggleCharacter)
CharacterFrameCloseButton:HookScript("OnClick", ARPG_CharacterCloseButton)
hooksecurefunc("CharacterFrame_OnHide", ARPG_CharacterFrame_Hide)
local function ARPG_CloseAllWindows(ignoreCenter)
	ARPG_CharacterFrame:Hide()
end
hooksecurefunc("CloseAllWindows", ARPG_CloseAllWindows)
hooksecurefunc("PaperDollFrame_UpdateStats", function()
	ARPG_CharacterFrameUpdate()
end)
hooksecurefunc("PaperDollFrame_SetSidebar", function()
	CharacterStatsPane:Hide()
end)
kLib:RegisterCallback("UPDATE_INVENTORY_ALERTS", ARPG_CharacterFrameUpdate)

kLib:RegisterCallback("PLAYER_LOGIN", ARPG_CharacterStatsUpdate)
kLib:RegisterCallback("PLAYER_SPECIALIZATION_CHANGED", ARPG_CharacterStatsUpdate)
kLib:RegisterCallback("UNIT_AURA", ARPG_CharacterStatsUpdate)
kLib:RegisterCallback("UPDATE_INVENTORY_DURABILITY", ARPG_CharacterStatsUpdate)
kLib:RegisterCallback("PLAYER_EQUIPMENT_CHANGED", ARPG_CharacterStatsUpdate)

-- item level on items
local ITEMLEVEL_SLOT_FRAMES = {
	CharacterHeadSlot,CharacterNeckSlot,CharacterShoulderSlot,CharacterBackSlot,CharacterChestSlot,CharacterWristSlot,
	CharacterHandsSlot,CharacterWaistSlot,CharacterLegsSlot,CharacterFeetSlot,
	CharacterFinger0Slot,CharacterFinger1Slot,CharacterTrinket0Slot,CharacterTrinket1Slot,
	CharacterMainHandSlot,CharacterSecondaryHandSlot,
}
for _, v in ipairs(ITEMLEVEL_SLOT_FRAMES) do
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
	delpos(self)
	setpos(self, "TOPLEFT", 32, -4)
	self:SetHeight(GetScreenHeight() * .65)
	ObjectiveTrackerBlocksFrame.QuestHeader.Text:SetFont("Interface\\AddOns\\"..addon.."\\Media\\Fonts\\Bree-Regular.ttf", 14, "OUTLINE")
	ObjectiveTrackerBlocksFrame.QuestHeader.Text:SetText("  |cffffffffActive Quests|r")
	ObjectiveTrackerFrame.HeaderMenu.Title:SetFont("Interface\\AddOns\\"..addon.."\\Media\\Fonts\\Bree-Regular.ttf", 14, "OUTLINE")
	--ObjectiveTrackerFrame.HeaderMenu.Title:SetText("Quests |cffaa0000(Closed)|r")
	ObjectiveTrackerFrame.HeaderMenu.Title:SetText(" ")
	ObjectiveTrackerFrame.HeaderMenu.MinimizeButton:SetNormalTexture("Interface\\AddOns\\"..addon.."\\Media\\Textures\\Buttons\\ObjectiveTrackerButton.tga")
	ObjectiveTrackerFrame.HeaderMenu.MinimizeButton:SetPushedTexture("Interface\\AddOns\\"..addon.."\\Media\\Textures\\Buttons\\ObjectiveTrackerButton.tga")
	ObjectiveTrackerFrame.HeaderMenu.MinimizeButton:SetWidth(22)
	ObjectiveTrackerFrame.HeaderMenu.MinimizeButton:SetHeight(22)
	ObjectiveTrackerFrame.HeaderMenu.MinimizeButton:ClearAllPoints()
	ObjectiveTrackerFrame.HeaderMenu.MinimizeButton:SetPoint("TOPLEFT", ObjectiveTrackerFrame, -28, -1)
	ObjectiveTrackerBlocksFrame.QuestHeader.Background:SetTexture(nil)
end)

hooksecurefunc(DEFAULT_OBJECTIVE_TRACKER_MODULE,"SetStringText",function(self, fontString, text, useFullHeight, colorStyle, useHighlight)
	fontString:SetTextColor(0.88235, 0.88235, 0.88235, 1)
	fontString:SetFont("Interface\\Addons\\"..addon.."\\Media\\fonts\\VerlagCondensed-Bold.ttf", 12, "OUTLINE")
end)

hooksecurefunc("ObjectiveTracker_AddBlock", ARPG_ObjectiveTracker_AddBlock)
hooksecurefunc("QuestPOI_GetButton", ARPG_QuestPOI_GetButton)
hooksecurefunc("QuestPOI_SelectButton", ARPG_QuestPOI_SelectButton)
hooksecurefunc("QuestPOI_ClearSelection", ARPG_QuestPOI_ClearSelection)

kLib:CreateArtFrame("ARPG_TopBar", "Interface\\AddOns\\ARPG\\Media\\Textures\\TopBar.tga", "BACKGROUND", 3, 1024, 64, "TOP", 0, 6, 0.64, false, false)
kLib:CreateArtFrame("ARPG_BottomBarBG", "Interface\\AddOns\\ARPG\\Media\\Textures\\BottomBarBG.tga", "BACKGROUND", 0, 2048, 255, "BOTTOM", 0, 0, 0.64, false, false)
kLib:CreateArtFrame("ARPG_BottomBar", "Interface\\AddOns\\ARPG\\Media\\Textures\\BottomBar.tga", "BACKGROUND", 4, 2048, 255, "BOTTOM", 0, 0, 0.64, false, false)
kLib:CreateArtFrame("ARPG_GameMenu", "Interface\\AddOns\\ARPG\\Media\\Textures\\GameMenu.tga", "BACKGROUND", 0, 512, 1024, "CENTER", 0, 0, 0.45, false, true)
kLib:CreateArtFrame("ARPG_CharacterFrame", "Interface\\AddOns\\ARPG\\Media\\Textures\\CharacterFrame.tga", "MEDIUM", 1, 1024, 2048, "LEFT", -220, 0, 0.641, false, true)
kLib:CreateArtFrame("ARPG_StaticPopup", "Interface\\AddOns\\ARPG\\Media\\Textures\\StaticPopup.tga", "DIALOG", 0, 512, 256, "CENTER", 0, 250, 0.85, false, true)
ARPG_GameMenu:Hide()
ARPG_CharacterFrame:Hide()
ARPG_StaticPopup:Hide()