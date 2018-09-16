--file: Core/Art.lua

--get the addon namespace
local addon, namespace = ...
--get ARPG namespace (just in case needed)
local ARPG = namespace.ARPG or ARPG

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
local function ARPG_ToggleCharacter(tab, onlyShow)
	local subFrame = _G[tab]
	if subFrame then
		if not subFrame.hidden then
			if CharacterFrame:IsShown() then
				local className,_ = select(2, UnitClass("player"))
				local r,g,b = GetClassColor(className)
				ARPG_CharacterFrame:Show()
				Skin_ButtonFrameTemplate(_G.CharacterFrame)
				Skin_InsetFrameTemplate(_G.CharacterFrameInsetRight)
				--[[
				local _point, _relTo, _relPoint, _x, _y = _G.CharacterFrameInset:GetPoint()
				print(_G.CharacterFrameInset:GetPoint())
				_G.CharacterFrameInset:ClearAllPoints()
				_G.CharacterFrameInset:SetPoint("TOPLEFT", _relTo, 4, -61)
				_G.CharacterFrameInset:SetPoint("BOTTOMRIGHT", _relTo, -205, 4)]]
				local CharacterStatsPane = _G.CharacterStatsPane
				CharacterStatsPane.ItemLevelFrame.Background:Hide()
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
				_G.CharacterFrame.TitleText:ClearAllPoints()
				_G.CharacterFrame.TitleText:SetPoint("BOTTOM", _G.CharacterFrameInset, "TOP", 0, 73)
				_G.CharacterFrame.TitleText:SetTextColor(r,g,b)
				_G.CharacterFrame.TitleText:SetFont("Interface\\AddOns\\"..addon.."\\Media\\Fonts\\Bree-Regular.ttf", 14, "OUTLINE")

				--character model
				_G.CharacterModelFrame:ClearAllPoints()
				_G.CharacterModelFrame:SetPoint("TOP", _G.CharacterFrameInset, "TOP", 0, 70)
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
				_sizey = 218
				_G.CharacterFrameInsetRight:ClearAllPoints()
				_G.CharacterFrameInsetRight:SetPoint("TOPLEFT", "CharacterFrameInset", "BOTTOMLEFT", 64, 244)
				_G.CharacterFrameInsetRight:SetSize(_sizex - 120, _sizey + 56)
				StatScrollFrame:SetSize(_sizex, _sizey - 30)
				_G.PaperDollTitlesPane:SetSize(_sizex, _sizey)
				_G.PaperDollEquipmentManagerPane:SetSize(_sizex, _sizey)
				_G.PaperDollSidebarTabs:ClearAllPoints()
				_G.PaperDollSidebarTabs:SetPoint("TOPLEFT", "CharacterFrameInsetRight", "BOTTOMRIGHT", -64, -62)
				DCS_configButton:ClearAllPoints()
				DCS_configButton:SetPoint("TOPLEFT", "CharacterFrameInsetRight", "BOTTOMRIGHT", 50, 30)
				CharacterStatsPane.ClassBackground:Hide()

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
						--button:SetPoint("TOP", _G.CharacterFrameInset, 0, 52)
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
--hooksecurefunc(FramePositionDelegate, "SetAttribute", ARPG_FramePositionDelegateSetAttribute)

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

if (IsAddOnLoaded("DejaCharacterStats")) then
	local DCSITEM_SLOT_FRAMES = {
		CharacterHeadSlot,CharacterNeckSlot,CharacterShoulderSlot,CharacterBackSlot,CharacterChestSlot,CharacterWristSlot,
		CharacterHandsSlot,CharacterWaistSlot,CharacterLegsSlot,CharacterFeetSlot,
		CharacterFinger0Slot,CharacterFinger1Slot,CharacterTrinket0Slot,CharacterTrinket1Slot,
		CharacterMainHandSlot,CharacterSecondaryHandSlot,
	}
	PaperDollFrame:HookScript("OnShow", function(self)
		for _, v in ipairs(DCSITEM_SLOT_FRAMES) do
			--v.ilevel:SetPoint("TOPLEFT", 3, -3)
			v.ilevel:SetPoint("TOP", 0, -2)
			v.ilevel:SetFont("Interface\\AddOns\\"..addon.."\\Media\\Fonts\\Economica-Bold.ttf", 12, "OUTLINE")
		end
	end)
end
--hooksecurefunc("CharacterFrame_OnEvent", ARPG_CharacterFrame)
