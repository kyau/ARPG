--file: Core/ActionButtonStyle.lua

--get the addon namespace
local addon, namespace = ...
--get ARPG namespace (just in case needed)
local ARPG = namespace.ARPG or ARPG
--set BuffFrame
namespace.MinimapDragFrame = {}

--config
local cfg = {}
cfg.textures = {
	normal = "Interface\\AddOns\\"..addon.."\\Media\\Textures\\ActionButton\\gloss",
	flash = "Interface\\AddOns\\"..addon.."\\Media\\Textures\\ActionButton\\flash",
	hover = "Interface\\AddOns\\"..addon.."\\Media\\Textures\\ActionButton\\hover",
	pushed = "Interface\\AddOns\\"..addon.."\\Media\\Textures\\ActionButton\\pushed",
	checked = "Interface\\AddOns\\"..addon.."\\Media\\Textures\\ActionButton\\checked",
	equipped = "Interface\\AddOns\\"..addon.."\\Media\\Textures\\ActionButton\\gloss_grey",
	buttonback = "Interface\\AddOns\\"..addon.."\\Media\\Textures\\ActionButton\\button_background",
	buttonbackflat = "Interface\\AddOns\\"..addon.."\\Media\\Textures\\ActionButton\\button_background_flat",
	outer_shadow = "Interface\\AddOns\\"..addon.."\\Media\\Textures\\ActionButton\\outer_shadow",
}
cfg.background = {
	showbg = true, --show an background image?
	showshadow = true, --show an outer shadow?
	useflatbackground = false, --true uses plain flat color instead
	backgroundcolor = { r = 0.2, g = 0.2, b = 0.2, a = 0.3},
	shadowcolor = { r = 0, g = 0, b = 0, a = 0.9},
	classcolored = false,
	inset = 5,
}
cfg.color = {
	--normal = { r = 0.37, g = 0.3, b = 0.3, },
	normal = { r = 1, g = 1, b = 1, },
	equipped = { r = 0.1, g = 0.5, b = 0.1, },
	classcolored = false,
}
cfg.hotkeys = {
	show = true,
	fontsize = 12,
	pos1 = { a1 = "TOPRIGHT", x = -2, y = 0 },
	pos2 = { a1 = "TOPLEFT", x = 0, y = -4 }, --important! two points are needed to make the hotkeyname be inside of the button
}
cfg.macroname = {
	show = false,
	fontsize = 10,
	pos1 = { a1 = "BOTTOMLEFT", x = 0, y = 4 },
	pos2 = { a1 = "BOTTOMRIGHT", x = 0, y = 0 }, --important! two points are needed to make the macroname be inside of the button
}
cfg.itemcount = {
	show = true,
	fontsize = 12,
	pos1 = { a1 = "BOTTOMRIGHT", x = 0, y = 0 },
}
cfg.cooldown = {
	spacing = 0,
}
cfg.font = STANDARD_TEXT_FONT
cfg.fontnumber = "Interface\\AddOns\\"..addon.."\\Media\\Fonts\\Economica-Bold.ttf"

--variables
local classcolor = RAID_CLASS_COLORS[select(2, UnitClass("player"))]
local dominos = IsAddOnLoaded("Dominos")
local bartender4 = IsAddOnLoaded("Bartender4")
if cfg.color.classcolored then
	cfg.color.normal = classcolor
end
--backdrop settings
local bgfile, edgefile = "", ""
if cfg.background.showshadow then edgefile = cfg.textures.outer_shadow end
if cfg.background.useflatbackground and cfg.background.showbg then bgfile = cfg.textures.buttonbackflat end
--backdrop
local backdrop = {
	bgFile = bgfile,
	edgeFile = edgefile,
	tile = false,
	tileSize = 32,
	edgeSize = cfg.background.inset,
	insets = {
		left = cfg.background.inset,
		right = cfg.background.inset,
		top = cfg.background.inset,
		bottom = cfg.background.inset,
	},
}

--functions
local function applyBackground(bu)
	if not bu or (bu and bu.bg) then return end
	--shadows+background
	if bu:GetFrameLevel() < 1 then bu:SetFrameLevel(1) end
	if cfg.background.showbg or cfg.background.showshadow then
		bu.bg = CreateFrame("Frame", nil, bu)
		bu.bg:SetAllPoints(bu)
		bu.bg:SetPoint("TOPLEFT", bu, "TOPLEFT", -4, 4)
		bu.bg:SetPoint("BOTTOMRIGHT", bu, "BOTTOMRIGHT", 4, -4)
		bu.bg:SetFrameLevel(bu:GetFrameLevel()-1)
		if cfg.background.classcolored then
			cfg.background.backgroundcolor = classcolor
			cfg.background.shadowcolor = classcolor
		end
		if cfg.background.showbg and not cfg.background.useflatbackground then
			local t = bu.bg:CreateTexture(nil,"BACKGROUND",-8)
			t:SetTexture(cfg.textures.buttonback)
			t:SetAllPoints(bu)
			t:SetVertexColor(cfg.background.backgroundcolor.r,cfg.background.backgroundcolor.g,cfg.background.backgroundcolor.b,cfg.background.backgroundcolor.a)
		end
		bu.bg:SetBackdrop(backdrop)
		if cfg.background.useflatbackground then
			bu.bg:SetBackdropColor(cfg.background.backgroundcolor.r,cfg.background.backgroundcolor.g,cfg.background.backgroundcolor.b,cfg.background.backgroundcolor.a)
		end
		if cfg.background.showshadow then
			bu.bg:SetBackdropBorderColor(cfg.background.shadowcolor.r,cfg.background.shadowcolor.g,cfg.background.shadowcolor.b,cfg.background.shadowcolor.a)
		end
	end
end
--style extraactionbutton
local function styleExtraActionButton(bu)
	if not bu or (bu and bu.rabs_styled) then return end
	local name = bu:GetName()
	local ho = _G[name.."HotKey"]
	--remove the style background theme
	bu.style:SetTexture(nil)
	hooksecurefunc(bu.style, "SetTexture", function(self, texture)
		if texture then
			--print("reseting texture: "..texture)
			self:SetTexture(nil)
		end
	end)
	--icon
	bu.icon:SetTexCoord(0.1,0.9,0.1,0.9)
	bu.icon:SetAllPoints(bu)
	--cooldown
	bu.cooldown:SetAllPoints(bu.icon)
	--hotkey
	ho:Hide()
	--add button normaltexture
	bu:SetNormalTexture(cfg.textures.normal)
	local nt = bu:GetNormalTexture()
	nt:SetVertexColor(cfg.color.normal.r,cfg.color.normal.g,cfg.color.normal.b,1)
	nt:SetAllPoints(bu)
	--apply background
	if not bu.bg then applyBackground(bu) end
	bu.rabs_styled = true
end
--initial style func
local function styleActionButton(bu)
	if not bu or (bu and bu.rabs_styled) then
		return
	end
	local action = bu.action
	local name = bu:GetName()
	local ic  = _G[name.."Icon"]
	local co  = _G[name.."Count"]
	local bo  = _G[name.."Border"]
	local ho  = _G[name.."HotKey"]
	local cd  = _G[name.."Cooldown"]
	local na  = _G[name.."Name"]
	local fl  = _G[name.."Flash"]
	local nt  = _G[name.."NormalTexture"]
	local fbg  = _G[name.."FloatingBG"]
	local fob = _G[name.."FlyoutBorder"]
	local fobs = _G[name.."FlyoutBorderShadow"]
	if fbg then fbg:Hide() end  --floating background
	--flyout border stuff
	if fob then fob:SetTexture(nil) end
	if fobs then fobs:SetTexture(nil) end
	bo:SetTexture(nil) --hide the border (plain ugly, sry blizz)
	--hotkey
	ho:SetFont(cfg.fontnumber, cfg.hotkeys.fontsize, "OUTLINE")
	ho:ClearAllPoints()
	ho:SetPoint(cfg.hotkeys.pos1.a1,bu,cfg.hotkeys.pos1.x,cfg.hotkeys.pos1.y)
	ho:SetPoint(cfg.hotkeys.pos2.a1,bu,cfg.hotkeys.pos2.x,cfg.hotkeys.pos2.y)
	if not dominos and not bartender4 and not cfg.hotkeys.show then
		ho:Hide()
	end
	--macro name
	na:SetFont(cfg.font, cfg.macroname.fontsize, "OUTLINE")
	na:ClearAllPoints()
	na:SetPoint(cfg.macroname.pos1.a1,bu,cfg.macroname.pos1.x,cfg.macroname.pos1.y)
	na:SetPoint(cfg.macroname.pos2.a1,bu,cfg.macroname.pos2.x,cfg.macroname.pos2.y)
	if not dominos and not bartender4 and not cfg.macroname.show then
		na:Hide()
	end
	--item stack count
	co:SetFont(cfg.fontnumber, cfg.itemcount.fontsize, "OUTLINE")
	co:ClearAllPoints()
	co:SetPoint(cfg.itemcount.pos1.a1,bu,cfg.itemcount.pos1.x,cfg.itemcount.pos1.y)
	if not dominos and not bartender4 and not cfg.itemcount.show then
		co:Hide()
	end
	--applying the textures
	fl:SetTexture(cfg.textures.flash)
	bu:SetHighlightTexture(cfg.textures.hover)
	bu:SetPushedTexture(cfg.textures.pushed)
	bu:SetCheckedTexture(cfg.textures.checked)
	bu:SetNormalTexture(cfg.textures.normal)
	if not nt then
		--fix the non existent texture problem (no clue what is causing this)
		nt = bu:GetNormalTexture()
	end
	--cut the default border of the icons and make them shiny
	ic:SetTexCoord(0.1,0.9,0.1,0.9)
	ic:SetPoint("TOPLEFT", bu, "TOPLEFT", 2, -2)
	ic:SetPoint("BOTTOMRIGHT", bu, "BOTTOMRIGHT", -2, 2)
	--adjust the cooldown frame
	cd:SetPoint("TOPLEFT", bu, "TOPLEFT", cfg.cooldown.spacing, -cfg.cooldown.spacing)
	cd:SetPoint("BOTTOMRIGHT", bu, "BOTTOMRIGHT", -cfg.cooldown.spacing, cfg.cooldown.spacing)
	--apply the normaltexture
	if action and  IsEquippedAction(action) then
		bu:SetNormalTexture(cfg.textures.equipped)
		nt:SetVertexColor(cfg.color.equipped.r,cfg.color.equipped.g,cfg.color.equipped.b,1)
	else
		bu:SetNormalTexture(cfg.textures.normal)
		nt:SetVertexColor(cfg.color.normal.r,cfg.color.normal.g,cfg.color.normal.b,1)
	end
	--make the normaltexture match the buttonsize
	nt:SetAllPoints(bu)
	--hook to prevent Blizzard from reseting our colors
	hooksecurefunc(nt, "SetVertexColor", function(nt, r, g, b, a)
		local bu = nt:GetParent()
		local action = bu.action
		--print("bu"..bu:GetName().."R"..r.."G"..g.."B"..b)
		if r==1 and g==1 and b==1 and action and (IsEquippedAction(action)) then
			if cfg.color.equipped.r == 1 and  cfg.color.equipped.g == 1 and  cfg.color.equipped.b == 1 then
				nt:SetVertexColor(0.999,0.999,0.999,1)
			else
				nt:SetVertexColor(cfg.color.equipped.r,cfg.color.equipped.g,cfg.color.equipped.b,1)
			end
		elseif r==0.5 and g==0.5 and b==1 then
			--blizzard oom color
			if cfg.color.normal.r == 0.5 and  cfg.color.normal.g == 0.5 and  cfg.color.normal.b == 1 then
				nt:SetVertexColor(0.499,0.499,0.999,1)
			else
				nt:SetVertexColor(cfg.color.normal.r,cfg.color.normal.g,cfg.color.normal.b,1)
			end
		elseif r==1 and g==1 and b==1 then
			if cfg.color.normal.r == 1 and  cfg.color.normal.g == 1 and  cfg.color.normal.b == 1 then
				nt:SetVertexColor(0.999,0.999,0.999,1)
			else
				nt:SetVertexColor(cfg.color.normal.r,cfg.color.normal.g,cfg.color.normal.b,1)
			end
		end
	end)
	--shadows+background
	if not bu.bg then applyBackground(bu) end
	bu.rabs_styled = true
	if bartender4 then --fix the normaltexture
		nt:SetTexCoord(0,1,0,1)
		nt.SetTexCoord = function() return end
		bu.SetNormalTexture = function() return end
	end
end
local function styleLeaveButton(bu)
	if not bu or (bu and bu.rabs_styled) then return end
	--shadows+background
	if not bu.bg then applyBackground(bu) end
	bu.rabs_styled = true
end
--style pet buttons
local function stylePetButton(bu)
	if not bu or (bu and bu.rabs_styled) then return end
	local name = bu:GetName()
	local ic  = _G[name.."Icon"]
	local fl  = _G[name.."Flash"]
	local ho  = _G[name.."HotKey"]
	local nt  = _G[name.."NormalTexture2"]
	nt:SetAllPoints(bu)
	--applying color
	nt:SetVertexColor(cfg.color.normal.r,cfg.color.normal.g,cfg.color.normal.b,1)
	--setting the textures
	fl:SetTexture(cfg.textures.flash)
	bu:SetHighlightTexture(cfg.textures.hover)
	bu:SetPushedTexture(cfg.textures.pushed)
	bu:SetCheckedTexture(cfg.textures.checked)
	bu:SetNormalTexture(cfg.textures.normal)
	hooksecurefunc(bu, "SetNormalTexture", function(self, texture)
		--make sure the normaltexture stays the way we want it
		if texture and texture ~= cfg.textures.normal then
			self:SetNormalTexture(cfg.textures.normal)
		end
	end)
	--cut the default border of the icons and make them shiny
	ic:SetTexCoord(0.1,0.9,0.1,0.9)
	ic:SetPoint("TOPLEFT", bu, "TOPLEFT", 2, -2)
	ic:SetPoint("BOTTOMRIGHT", bu, "BOTTOMRIGHT", -2, 2)
	--hotkeys
	ho:SetFont(cfg.font, cfg.hotkeys.fontsize, "OUTLINE")
	ho:ClearAllPoints()
	ho:SetPoint(cfg.hotkeys.pos1.a1,bu,cfg.hotkeys.pos1.x,cfg.hotkeys.pos1.y)
	ho:SetPoint(cfg.hotkeys.pos2.a1,bu,cfg.hotkeys.pos2.x,cfg.hotkeys.pos2.y)
	--shadows+background
	if not bu.bg then applyBackground(bu) end
	bu.rabs_styled = true
end
--style stance buttons
local function styleStanceButton(bu)
	if not bu or (bu and bu.rabs_styled) then return end
	local name = bu:GetName()
	local ic  = _G[name.."Icon"]
	local fl  = _G[name.."Flash"]
	local nt  = _G[name.."NormalTexture2"]
	nt:SetAllPoints(bu)
	--applying color
	nt:SetVertexColor(cfg.color.normal.r,cfg.color.normal.g,cfg.color.normal.b,1)
	--setting the textures
	fl:SetTexture(cfg.textures.flash)
	bu:SetHighlightTexture(cfg.textures.hover)
	bu:SetPushedTexture(cfg.textures.pushed)
	bu:SetCheckedTexture(cfg.textures.checked)
	bu:SetNormalTexture(cfg.textures.normal)
	--cut the default border of the icons and make them shiny
	ic:SetTexCoord(0.1,0.9,0.1,0.9)
	ic:SetPoint("TOPLEFT", bu, "TOPLEFT", 2, -2)
	ic:SetPoint("BOTTOMRIGHT", bu, "BOTTOMRIGHT", -2, 2)
	--shadows+background
	if not bu.bg then applyBackground(bu) end
	bu.rabs_styled = true
end
--style possess buttons
local function stylePossessButton(bu)
	if not bu or (bu and bu.rabs_styled) then return end
	local name = bu:GetName()
	local ic  = _G[name.."Icon"]
	local fl  = _G[name.."Flash"]
	local nt  = _G[name.."NormalTexture"]
	nt:SetAllPoints(bu)
	--applying color
	nt:SetVertexColor(cfg.color.normal.r,cfg.color.normal.g,cfg.color.normal.b,1)
	--setting the textures
	fl:SetTexture(cfg.textures.flash)
	bu:SetHighlightTexture(cfg.textures.hover)
	bu:SetPushedTexture(cfg.textures.pushed)
	bu:SetCheckedTexture(cfg.textures.checked)
	bu:SetNormalTexture(cfg.textures.normal)
	--cut the default border of the icons and make them shiny
	ic:SetTexCoord(0.1,0.9,0.1,0.9)
	ic:SetPoint("TOPLEFT", bu, "TOPLEFT", 2, -2)
	ic:SetPoint("BOTTOMRIGHT", bu, "BOTTOMRIGHT", -2, 2)
	--shadows+background
	if not bu.bg then applyBackground(bu) end
	bu.rabs_styled = true
end
--update hotkey func
local function updateHotkey(self, actionButtonType)
	local ho = _G[self:GetName().."HotKey"]
	if ho and not cfg.hotkeys.show and ho:IsShown() then
		ho:Hide()
	end
end

--init
local function init()
	--style the actionbar buttons
	for i = 1, NUM_ACTIONBAR_BUTTONS do
		styleActionButton(_G["ActionButton"..i])
		styleActionButton(_G["MultiBarBottomLeftButton"..i])
		styleActionButton(_G["MultiBarBottomRightButton"..i])
		styleActionButton(_G["MultiBarRightButton"..i])
		styleActionButton(_G["MultiBarLeftButton"..i])
	end
	for i = 1, 6 do
		styleActionButton(_G["OverrideActionBarButton"..i])
	end
	--style leave button
	styleLeaveButton(OverrideActionBarLeaveFrameLeaveButton)
	styleLeaveButton(rABS_LeaveVehicleButton)
	--petbar buttons
	for i=1, NUM_PET_ACTION_SLOTS do
		stylePetButton(_G["PetActionButton"..i])
	end
	--stancebar buttons
	for i=1, NUM_STANCE_SLOTS do
		styleStanceButton(_G["StanceButton"..i])
	end
	--possess buttons
	for i=1, NUM_POSSESS_SLOTS do
		stylePossessButton(_G["PossessButton"..i])
	end
	--extraactionbutton1
	styleExtraActionButton(ExtraActionButton1)
	--spell flyout
	SpellFlyoutBackgroundEnd:SetTexture(nil)
	SpellFlyoutHorizontalBackground:SetTexture(nil)
	SpellFlyoutVerticalBackground:SetTexture(nil)
	local function checkForFlyoutButtons(self)
		local NUM_FLYOUT_BUTTONS = 10
		for i = 1, NUM_FLYOUT_BUTTONS do
			styleActionButton(_G["SpellFlyoutButton"..i])
		end
	end
	SpellFlyout:HookScript("OnShow",checkForFlyoutButtons)
	--dominos styling
	if dominos then
		--print("Dominos found")
		for i = 1, 60 do
			styleActionButton(_G["DominosActionButton"..i])
		end
	end
	--bartender4 styling
	if bartender4 then
		--print("Bartender4 found")
		for i = 1, 120 do
			styleActionButton(_G["BT4Button"..i])
		end
	end
	--hide the hotkeys if needed
	if not dominos and not bartender4 and not cfg.hotkeys.show then
		hooksecurefunc("ActionButton_UpdateHotkeys",  updateHotkey)
	end
end

--events
kLib:RegisterCallback("PLAYER_LOGIN", init)