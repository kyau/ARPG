--file: Core/SharedMedia.lua

--get the addon namespace
local addon, namespace = ...
--get ARPG namespace (just in case needed)
local ARPG = namespace.ARPG or ARPG
--get SharedMedia
local LSM = LibStub("LibSharedMedia-3.0") 

--backgrounds

--borders
--LSM:Register("border", "AfterHours: Tooltip", [[Interface\Addons\SharedMedia_AfterHours\border\gUI4_Border_256x32_Tooltip_Warcraft.tga]])

--fonts
LSM:Register("font", "Bree", "Interface\\Addons\\"..addon.."\\Media\\fonts\\Bree-Regular.ttf")
LSM:Register("font", "Economica", "Interface\\Addons\\"..addon.."\\Media\\fonts\\Economica-Bold.ttf")
LSM:Register("font", "Verlag", "Interface\\Addons\\"..addon.."\\Media\\fonts\\VerlagCondensed-Bold.ttf")
--LSM:Register("font", "Frutiger", [[Interface\Addons\SharedMedia_AfterHours\font\FrutigerLTStd-Cn.ttf]])
--LSM:Register("font", "Px437_Amstrad", [[Interface\Addons\SharedMedia_AfterHours\font\Px437_AmstradPC1512-2y.ttf]])

--sounds

--statusbars
--LSM:Register("statusbar", "AfterHours: Backdrop", [[Interface\Addons\SharedMedia_AfterHours\statusbar\gUI4_StatusBar_512x64_Backdrop_Warcraft.tga]])
--LSM:Register("statusbar", "AfterHours: Dark", [[Interface\Addons\SharedMedia_AfterHours\statusbar\gUI4_StatusBar_512x64_Dark_Warcraft.tga]])
--LSM:Register("statusbar", "AfterHours: Normal", [[Interface\Addons\SharedMedia_AfterHours\statusbar\gUI4_StatusBar_512x64_Normal_Warcraft.tga]])
--LSM:Register("statusbar", "AfterHours: Overlay", [[Interface\Addons\SharedMedia_AfterHours\statusbar\gUI4_StatusBar_512x64_Overlay_Warcraft.tga]])
--LSM:Register("statusbar", "AfterHours: Power", [[Interface\Addons\SharedMedia_AfterHours\statusbar\gUI4_StatusBar_512x64_Power_Warcraft.tga]])
--LSM:Register("statusbar", "AfterHours: ResourceOverlay", [[Interface\Addons\SharedMedia_AfterHours\statusbar\gUI4_StatusBar_512x64_ResourceOverlay_Warcraft.tga]])
--LSM:Register("statusbar", "AfterHours: Resource", [[Interface\Addons\SharedMedia_AfterHours\statusbar\gUI4_StatusBar_512x64_Resource_Warcraft.tga]])