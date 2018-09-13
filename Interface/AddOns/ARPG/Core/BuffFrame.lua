--file: Core/BuffFrame.lua

--get the addon namespace
local addon, namespace = ...
--get ARPG namespace (just in case needed)
local ARPG = namespace.ARPG or ARPG
--set BuffFrame
namespace.MinimapDragFrame = {}

--config
local _cfg = {}
--adjust the oneletter abbrev?
_cfg.adjustOneletterAbbrev = false
--scale of the consolidated tooltip
_cfg.consolidatedTooltipScale = 1.2
--combine buff and debuff frame - should buffs and debuffs be displayed in one single frame?
--if you disable this it is intended that you unlock the buff and debuffs and move them apart!
_cfg.combineBuffsAndDebuffs = true
--buff frame settings
_cfg.buffFrame = {
	pos = { a1 = "TOPRIGHT", af = "Minimap", a2 = "TOPLEFT", x = 0, y = -8 },
	gap = 10, --gap between buff and debuff rows
	userplaced = true, --want to place the bar somewhere else?
	rowSpacing = 10,
	colSpacing = 7,
	buttonsPerRow = 10,
	button = {
		size = 28,
	},
	icon = {
		padding = -2,
	},
	border = {
		texture = "Interface\\AddOns\\ARPG\\Media\\Textures\\BuffFrame\\gloss",
		--color = { r = 0.4, g = 0.35, b = 0.35, },
		color = { r = 1, g = 1, b = 1, a = 1},
		classcolored = false,
	},
	background = {
		show = true,   --show backdrop
		edgeFile = "Interface\\AddOns\\ARPG\\Media\\Textures\\BuffFrame\\outer_shadow",
		color = { r = 0, g = 0, b = 0, a = 0.9},
		classcolored = false,
		inset = 6,
		padding = 4,
	},
	duration = {
		font = STANDARD_TEXT_FONT,
		size = 11,
		pos = { a1 = "BOTTOM", x = 0, y = 0 },
	},
	count = {
		font = STANDARD_TEXT_FONT,
		size = 11,
		pos = { a1 = "TOPRIGHT", x = 0, y = 0 },
	},
}
--debuff frame settings
_cfg.debuffFrame = {
	pos = { a1 = "TOPRIGHT", af = "ARPG_BuffDragFrame", a2 = "BOTTOMRIGHT", x = 0, y = -10 },
	userplaced = true, --want to place the bar somewhere else?
	rowSpacing = 10,
	colSpacing = 7,
	buttonsPerRow = 6,
	button = {
		size = 40,
	},
	icon = {
		padding = -2,
	},
	border = {
		texture = "Interface\\AddOns\\ARPG\\Media\\Textures\\BuffFrame\\gloss",
	},
	background = {
		show = true, --show backdrop
		edgeFile = "Interface\\AddOns\\ARPG\\Media\\Textures\\BuffFrame\\outer_shadow",
		color = { r = 0, g = 0, b = 0, a = 0.9},
		classcolored = false,
		inset = 6,
		padding = 4,
	},
	duration = {
		font = STANDARD_TEXT_FONT,
		size = 13,
		pos = { a1 = "TOP", x = 0, y = 0 },
	},
	count = {
		font = STANDARD_TEXT_FONT,
		size = 12,
		pos = { a1 = "TOPRIGHT", x = 0, y = 0 },
	},
}
local cfg = _cfg

--locals
--rewrite the oneletter shortcuts
if cfg.adjustOneletterAbbrev then
	HOUR_ONELETTER_ABBR = "%dh"
	DAY_ONELETTER_ABBR = "%dd"
	MINUTE_ONELETTER_ABBR = "%dm"
	SECOND_ONELETTER_ABBR = "%ds"
end
--class color
local classColor = RAID_CLASS_COLORS[select(2, UnitClass("player"))]
--backdrop debuff
local backdropDebuff = {
	bgFile = nil,
	edgeFile = cfg.debuffFrame.background.edgeFile,
	tile = false,
	tileSize = 32,
	edgeSize = cfg.debuffFrame.background.inset,
	insets = {
		left = cfg.debuffFrame.background.inset,
		right = cfg.debuffFrame.background.inset,
		top = cfg.debuffFrame.background.inset,
		bottom = cfg.debuffFrame.background.inset,
	},
}
--backdrop buff
local backdropBuff = {
	bgFile = nil,
	edgeFile = cfg.buffFrame.background.edgeFile,
	tile = false,
	tileSize = 32,
	edgeSize = cfg.buffFrame.background.inset,
	insets = {
		left = cfg.buffFrame.background.inset,
		right = cfg.buffFrame.background.inset,
		top = cfg.buffFrame.background.inset,
		bottom = cfg.buffFrame.background.inset,
	},
}
local ceil, min, max = ceil, min, max
local ShouldShowConsolidatedBuffFrame = ShouldShowConsolidatedBuffFrame
local buffFrameHeight = 0

--functions
--apply aura frame texture func
local function applySkin(b)
	if not b or (b and b.styled) then return end
	--button name
	local name = b:GetName()
	--check the button type
	local tempenchant, consolidated, debuff, buff = false, false, false, false
	if (name:match("TempEnchant")) then
		tempenchant = true
	elseif (name:match("Consolidated")) then
		consolidated = true
	elseif (name:match("Debuff")) then
		debuff = true
	else
		buff = true
	end
	--get cfg and backdrop
	local cfg, backdrop
	if debuff then
		cfg = _cfg.debuffFrame
		backdrop = backdropDebuff
	else
		cfg = _cfg.buffFrame
		backdrop = backdropBuff
	end
	--check class coloring options
	if cfg.border.classcolored then
		cfg.border.color = classColor
	end
	if cfg.background.classcolored then
		cfg.background.color = classColor
	end
	--button
	b:SetSize(cfg.button.size, cfg.button.size)
	--icon
	local icon = _G[name.."Icon"]
	if consolidated then
		icon:SetTexture(select(3,GetSpellInfo(1))) --wor
	end
	icon:SetTexCoord(0.1,0.9,0.1,0.9)
	icon:ClearAllPoints()
	icon:SetPoint("TOPLEFT", b, "TOPLEFT", -cfg.icon.padding, cfg.icon.padding)
	icon:SetPoint("BOTTOMRIGHT", b, "BOTTOMRIGHT", cfg.icon.padding, -cfg.icon.padding)
	icon:SetDrawLayer("BACKGROUND",-8)
	b.icon = icon
	--border
	local border = _G[name.."Border"] or b:CreateTexture(name.."Border", "BACKGROUND", nil, -7)
	border:SetTexture(cfg.border.texture)
	border:SetTexCoord(0,1,0,1)
	border:SetDrawLayer("BACKGROUND",-7)
	if tempenchant then
		border:SetVertexColor(0.7,0,1)
	elseif not debuff then
		border:SetVertexColor(cfg.border.color.r,cfg.border.color.g,cfg.border.color.b)
	end
	border:ClearAllPoints()
	border:SetAllPoints(b)
	b.border = border
	--duration
	b.duration:SetFont(cfg.duration.font, cfg.duration.size, "THINOUTLINE")
	b.duration:ClearAllPoints()
	--b.duration:SetPoint(cfg.duration.pos.a1,cfg.duration.pos.x,cfg.duration.pos.y)
	b.duration:SetPoint("BOTTOM", 2, 1)
	--count
	b.count:SetFont(cfg.count.font, cfg.count.size, "THINOUTLINE")
	b.count:ClearAllPoints()
	b.count:SetPoint(cfg.count.pos.a1,cfg.count.pos.x,cfg.count.pos.y)
	--shadow
	if cfg.background.show then
		local back = CreateFrame("Frame", nil, b)
		back:SetPoint("TOPLEFT", b, "TOPLEFT", -cfg.background.padding, cfg.background.padding)
		back:SetPoint("BOTTOMRIGHT", b, "BOTTOMRIGHT", cfg.background.padding, -cfg.background.padding)
		back:SetFrameLevel(b:GetFrameLevel()-1)
		back:SetBackdrop(backdrop)
		back:SetBackdropBorderColor(cfg.background.color.r,cfg.background.color.g,cfg.background.color.b,cfg.background.color.a)
		b.bg = back
	end
	--set button styled variable
	b.styled = true
end
--update debuff anchors
local function updateDebuffAnchors(buttonName,index)
	local button = _G[buttonName..index]
	if not button then return end
	--apply skin
	if not button.styled then applySkin(button) end
	--position button
	button:ClearAllPoints()
	if index == 1 then
		if cfg.combineBuffsAndDebuffs then
			button:SetPoint("TOPRIGHT", ARPG_BuffDragFrame, "TOPRIGHT", 0, -buffFrameHeight)
		else
			--debuffs and buffs are not combined anchor the debuffs to its own frame
			button:SetPoint("TOPRIGHT", ARPG_DebuffDragFrame, "TOPRIGHT", 0, 0)
		end
	elseif index > 1 and mod(index, cfg.debuffFrame.buttonsPerRow) == 1 then
		button:SetPoint("TOPRIGHT", _G[buttonName..(index-cfg.debuffFrame.buttonsPerRow)], "BOTTOMRIGHT", 0, -cfg.debuffFrame.rowSpacing)
	else
		button:SetPoint("TOPRIGHT", _G[buttonName..(index-1)], "TOPLEFT", -cfg.debuffFrame.colSpacing, 0)
	end
end
--update buff anchors
local function updateAllBuffAnchors()
	--variables
	local buttonName  = "BuffButton"
	local numEnchants = BuffFrame.numEnchants
	local numBuffs    = BUFF_ACTUAL_DISPLAY
	local offset      = numEnchants
	local realIndex, previousButton, aboveButton
	TempEnchant1:ClearAllPoints()
	TempEnchant1:SetPoint("TOPRIGHT", ARPG_BuffDragFrame, "TOPRIGHT", 0, 0)
	--calculate the previous button in case tempenchant or consolidated buff are loaded
	if BuffFrame.numEnchants > 0 then
		previousButton = _G["TempEnchant"..numEnchants]
	end
	if numEnchants > 0 then
		aboveButton = TempEnchant1
	end
	--loop on all active buff buttons
	local buffCounter = 0
	for index = 1, numBuffs do
		local button = _G[buttonName..index]
		if not button then return end
		if not button.consolidated then
			buffCounter = buffCounter + 1
			--apply skin
			if not button.styled then applySkin(button) end
			--position button
			button:ClearAllPoints()
			realIndex = buffCounter+offset
			if realIndex == 1 then
				button:SetPoint("TOPRIGHT", ARPG_BuffDragFrame, "TOPRIGHT", 0, 0)
				aboveButton = button
			elseif realIndex > 1 and mod(realIndex, cfg.buffFrame.buttonsPerRow) == 1 then
				button:SetPoint("TOPRIGHT", aboveButton, "BOTTOMRIGHT", 0, -cfg.buffFrame.rowSpacing)
				aboveButton = button
			else
				button:SetPoint("TOPRIGHT", previousButton, "TOPLEFT", -cfg.buffFrame.colSpacing, 0)
			end
			previousButton = button
		end
	end
	--calculate the height of the buff rows for the debuff frame calculation later
	local rows = ceil((buffCounter+offset)/cfg.buffFrame.buttonsPerRow)
	local height = cfg.buffFrame.button.size*rows + cfg.buffFrame.rowSpacing*rows + cfg.buffFrame.gap*min(1,rows)
	buffFrameHeight = height
	--make sure the debuff frames update the position asap
	if DebuffButton1 and cfg.combineBuffsAndDebuffs then
		updateDebuffAnchors("DebuffButton", 1)
	end
end

--init
--buff drag frame
local bf = CreateFrame("Frame", "ARPG_BuffDragFrame", UIParent)
bf:SetSize(cfg.buffFrame.button.size,cfg.buffFrame.button.size)
bf:SetPoint(cfg.buffFrame.pos.a1,cfg.buffFrame.pos.af,cfg.buffFrame.pos.a2,cfg.buffFrame.pos.x,cfg.buffFrame.pos.y)
if cfg.buffFrame.userplaced then
	kLib:CreateDragFrame(bf, dragFrameList, -2 , true) --frame, dragFrameList, inset, clamp
end
if not cfg.combineBuffsAndDebuffs then
	--debuff drag frame
	local df = CreateFrame("Frame", "ARPG_DebuffDragFrame", UIParent)
	df:SetSize(cfg.debuffFrame.button.size,cfg.debuffFrame.button.size)
	df:SetPoint(cfg.debuffFrame.pos.a1,cfg.debuffFrame.pos.af,cfg.debuffFrame.pos.a2,cfg.debuffFrame.pos.x,cfg.debuffFrame.pos.y)
	if cfg.debuffFrame.userplaced then
		kLib:CreateDragFrame(df, dragFrameList, -2 , true) --frame, dragFrameList, inset, clamp
	end
end
--temp enchant stuff
applySkin(TempEnchant1)
applySkin(TempEnchant2)
applySkin(TempEnchant3)
--position the temp enchant buttons
TempEnchant1:ClearAllPoints()
TempEnchant1:SetPoint("TOPRIGHT", ARPG_BuffDragFrame, "TOPRIGHT", 0, 0) --button will be repositioned later in case temp enchant and consolidated buffs are both available
TempEnchant2:ClearAllPoints()
TempEnchant2:SetPoint("TOPRIGHT", TempEnchant1, "TOPLEFT", -cfg.buffFrame.colSpacing, 0)
TempEnchant3:ClearAllPoints()
TempEnchant3:SetPoint("TOPRIGHT", TempEnchant2, "TOPLEFT", -cfg.buffFrame.colSpacing, 0)
--hook Blizzard functions
hooksecurefunc("BuffFrame_UpdateAllBuffAnchors", updateAllBuffAnchors)
hooksecurefunc("DebuffButton_UpdateAnchors", updateDebuffAnchors)