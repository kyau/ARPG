--file: Core/Minimap.lua

--get the addon namespace
local addon, namespace = ...
--get ARPG namespace (just in case needed)
local ARPG = namespace.ARPG or ARPG
--set minimap frame
namespace.MinimapDragFrame = {}

local cfg = {
	scale = 1,
	point = { "TOPRIGHT", 0, 110},
}

--MinimapCluster
MinimapCluster:SetScale(cfg.scale)
MinimapCluster:ClearAllPoints()
--MinimapCluster:SetPoint(unpack(cfg.point))
MinimapCluster:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", 0, -20)
--Minimap
local mediapath = "Interface\\AddOns\\"..addon.."\\Media\\Textures\\Minimap\\"
Minimap:SetMaskTexture(mediapath.."mask2")
Minimap:ClearAllPoints()
Minimap:SetPoint("CENTER")
Minimap:SetSize(190,190) --correct the cluster offset
--hide regions
MinimapBackdrop:Hide()
MinimapBorder:Hide()
MinimapZoomIn:Hide()
MinimapZoomOut:Hide()
MinimapBorderTop:Hide()
MiniMapWorldMapButton:Hide()
--MinimapZoneText:Hide()

--dungeon info
MiniMapInstanceDifficulty:ClearAllPoints()
MiniMapInstanceDifficulty:SetPoint("TOP",Minimap,"TOP",0,-5)
MiniMapInstanceDifficulty:SetScale(0.8)
GuildInstanceDifficulty:ClearAllPoints()
GuildInstanceDifficulty:SetPoint("TOP",Minimap,"TOP",0,-5)
GuildInstanceDifficulty:SetScale(0.7)
MiniMapChallengeMode:ClearAllPoints()
MiniMapChallengeMode:SetPoint("TOP",Minimap,"TOP",0,-10)
MiniMapChallengeMode:SetScale(0.6)

--QueueStatusMinimapButton (lfi)
QueueStatusMinimapButton:SetParent(Minimap)
QueueStatusMinimapButton:SetScale(1)
QueueStatusMinimapButton:ClearAllPoints()
QueueStatusMinimapButton:SetPoint("TOPLEFT",Minimap,6,-40)
QueueStatusMinimapButtonBorder:Hide()
QueueStatusMinimapButton:SetHighlightTexture (nil)
QueueStatusMinimapButton:SetPushedTexture(nil)
ARPG_EYE_TEXTURES = {}
ARPG_EYE_TEXTURES["default"] = { file = "Interface\\AddOns\\"..addon.."\\Media\\Textures\\Minimap\\LFG.tga", width = 1024, height = 1024, frames = 15, iconSize = 256, delay = 0.1 }
ARPG_EYE_TEXTURES["raid"] = { file = "Interface\\AddOns\\"..addon.."\\Media\\Textures\\Minimap\\LFG.tga", width = 1024, height = 1024, frames = 15, iconSize = 256, delay = 0.1 }
ARPG_EYE_TEXTURES["unknown"] = { file = "Interface\\AddOns\\"..addon.."\\Media\\Textures\\Minimap\\LFG.tga", width = 1024, height = 1024, frames = 15, iconSize = 256, delay = 0.1 }
local function ARPG_EyeTemplate_OnUpdate(self, elapsed)
	local tI = ARPG_EYE_TEXTURES[self.queueType or "default"]
	--self.texture:SetTexture("Interface\\AddOns\\ARPG\\Media\\Textures\\Minimap\\LFG.tga")
	self.texture:SetTexture(tI.file)
	self:SetSize(42,42)
	--self.texture:SetTexCoord(0, tI.iconSize / tI.width, 0, tI.iconSize / tI.height)
	AnimateTexCoords(self.texture, tI.width, tI.height, tI.iconSize, tI.iconSize, tI.frames, elapsed, tI.delay)
end
local function ARPG_EyeTemplate_StartAnimating(eye)
	eye:SetScript("OnUpdate", ARPG_EyeTemplate_OnUpdate)
end
hooksecurefunc("EyeTemplate_OnUpdate", ARPG_EyeTemplate_OnUpdate)
hooksecurefunc("EyeTemplate_StartAnimating", ARPG_EyeTemplate_StartAnimating)

--garrison/classorder/warcampaign
GarrisonLandingPageMinimapButton:SetParent(Minimap)
GarrisonLandingPageMinimapButton:SetScale(0.75)
GarrisonLandingPageMinimapButton:ClearAllPoints()
GarrisonLandingPageMinimapButton:SetPoint("TOPRIGHT",Minimap,-12,-188)
GarrisonLandingPageMinimapButton:SetAlpha(0.65)
GarrisonLandingPageMinimapButton:Show()

--MiniMapTracking
MiniMapTracking:SetParent(Minimap)
MiniMapTracking:SetScale(1)
MiniMapTracking:ClearAllPoints()
MiniMapTracking:SetPoint("TOPRIGHT",Minimap,-32,-8)
MiniMapTrackingButton:SetHighlightTexture (nil)
MiniMapTrackingButton:SetPushedTexture(nil)
MiniMapTrackingBackground:Hide()
MiniMapTrackingButtonBorder:Hide()

--MiniMapNorthTag
MinimapNorthTag:ClearAllPoints()
MinimapNorthTag:SetPoint("TOP",Minimap,0,-3)
MinimapNorthTag:SetAlpha(0)

--Blizzard_TimeManager
LoadAddOn("Blizzard_TimeManager")
TimeManagerClockButton:GetRegions():Hide()
TimeManagerClockButton:ClearAllPoints()
TimeManagerClockButton:SetPoint("TOPRIGHT",5,-28)
TimeManagerClockTicker:SetFont(STANDARD_TEXT_FONT,12,"OUTLINE")
TimeManagerClockTicker:SetTextColor(0.8,0.8,0.6,1)

--GameTimeFrame
GameTimeFrame:SetParent(Minimap)
GameTimeFrame:SetScale(0.6)
GameTimeFrame:ClearAllPoints()
GameTimeFrame:SetPoint("TOPRIGHT",Minimap,-18,-18)
GameTimeFrame:SetHitRectInsets(0, 0, 0, 0)
GameTimeFrame:GetNormalTexture():SetTexCoord(0,1,0,1)
GameTimeFrame:SetNormalTexture(mediapath.."calendar")
GameTimeFrame:SetPushedTexture(nil)
GameTimeFrame:SetHighlightTexture (nil)
local fs = GameTimeFrame:GetFontString()
fs:ClearAllPoints()
fs:SetPoint("CENTER",0,-5)
fs:SetFont(STANDARD_TEXT_FONT,20)
fs:SetTextColor(0.2,0.2,0.1,0.9)

--zoom
Minimap:EnableMouseWheel()
local function Zoom(self, direction)
	if(direction > 0) then Minimap_ZoomIn()
	else Minimap_ZoomOut() end
end
Minimap:SetScript("OnMouseWheel", Zoom)

--mail
local function UpdateMail()
	inbox_items = GetInboxNumItems()
	if (inbox_items > 0) then
		MiniMapMailIcon:SetTexture(mediapath.."mail")
	else
		MiniMapMailIcon:SetTexture(nil)
	end
end
local function ARPG_Minimap_Mail()
	MiniMapMailFrame:ClearAllPoints()
	MiniMapMailFrame:SetPoint("TOPRIGHT",Minimap,-52,-8)
	--MiniMapMailIcon:SetTexture(mediapath.."mail")
	MiniMapMailIcon:SetSize(18,18)
	MiniMapMailBorder:Hide()
	UpdateMail()
end

local function ARPG_Minimap_Update()
	local pvpType, isSubZonePvP, factionName = GetZonePVPInfo()
	local colorValue = ""
	if not MinimapZoneTextTitle then
		local MinimapZoneTextTitle = Minimap:CreateFontString("MinimapZoneTextTitle", "BACKGROUND")
	end
	MinimapZoneTextTitle:SetPoint("TOPRIGHT", Minimap, "TOPRIGHT",-11, 30)
	MinimapZoneTextTitle:SetWidth(190)
	MinimapZoneTextTitle:SetHeight(40)
	MinimapZoneTextTitle:SetJustifyH("RIGHT")
	MinimapZoneTextTitle:SetFont("Interface\\AddOns\\"..addon.."\\Media\\Fonts\\Bree-Regular.ttf", 14, "OUTLINE")

	MinimapZoneText:ClearAllPoints()
	MinimapZoneText:SetFont("Interface\\AddOns\\"..addon.."\\Media\\Fonts\\VerlagCondensed-Bold.ttf", 12, "OUTLINE")
	MinimapZoneText:SetPoint("TOPRIGHT", Minimap, "TOPRIGHT",-10, 4)
	MinimapZoneText:SetWidth(190)
	MinimapZoneText:SetJustifyH("RIGHT")
	if ( pvpType == "sanctuary" ) then
		--MinimapZoneText:SetTextColor(0.41, 0.8, 0.94)
		colorValue = "|cff69ccf0"
	elseif ( pvpType == "arena" ) then
		--MinimapZoneText:SetTextColor(1.0, 0.1, 0.1)
		colorValue = "|cffff1a1a"
	elseif ( pvpType == "friendly" ) then
		--MinimapZoneText:SetTextColor(0.1, 1.0, 0.1)
		colorValue = "|cff1aff1a"
	elseif ( pvpType == "hostile" ) then
		--MinimapZoneText:SetTextColor(1.0, 0.1, 0.1)
		colorValue = "|cffff1a1a"
	elseif ( pvpType == "contested" ) then
		--MinimapZoneText:SetTextColor(1.0, 0.7, 0.0)
		colorValue = "|cffffb300"
	else
		MinimapZoneText:SetTextColor(NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b)
	end
	MinimapZoneTextTitle:SetText("|cffffffff"..GetZoneText().."|r")
	MinimapZoneText:SetText(colorValue..GetMinimapZoneText().."|r")
	MinimapZoneTextTitle:Show()
	Minimap_SetTooltip( pvpType, factionName )
end
--ARPG_Minimap_Update()

local function ARPG_Minimap_Enter()
	ARPG_Minimap_Update()
	ARPG_Minimap_Mail()
end

hooksecurefunc("Minimap_Update", ARPG_Minimap_Enter)
kLib:RegisterCallback("PLAYER_ENTERING_WORLD", ARPG_Minimap_Enter)
kLib:RegisterCallback("MAIL_INBOX_UPDATE", UpdateMail)
kLib:RegisterCallback("UPDATE_PENDING_MAIL", UpdateMail)
kLib:RegisterCallback("MAIL_SHOW", UpdateMail)
kLib:RegisterCallback("MAIL_CLOSED", UpdateMail)
kLib:RegisterCallback("ZONE_CHANGED_NEW_AREA", ARPG_Minimap_Enter)
kLib:RegisterCallback("ZONE_CHANGED_INDOORS", ARPG_Minimap_Enter)

--drag frame
--kLib:CreateDragFrame(MinimapCluster, namespace.MinimapDragFrame, -2, true)
MinimapCluster:Show()
