--file: Core/InfoStrings.lua

--get the addon namespace
local addon, namespace = ...
--get ARPG namespace (just in case needed)
local ARPG = namespace.ARPG or ARPG

local cfg = {}
cfg.frame = {
	scale = 1.00,
	pos = { a1 = "TOPLEFT", af = Minimap, a2 = "TOPLEFT", x = 14, y = -14 },
}
local addonlist = 25
local frame, f1, f2 = {}

--functions
local addoncompare = function(a, b)
	return a.memory > b.memory
end
local memformat = function(number)
	if number > 1024 then
		return string.format("%.2fmb", (number / 1024))
	else
		return string.format("%.1fkb", floor(number))
	end
end
local numformat = function(v)
	if v > 1E10 then
		return (floor(v/1E9)).."b"
	elseif v > 1E9 then
		return (floor((v/1E9)*10)/10).."b"
	elseif v > 1E7 then
		return (floor(v/1E6)).."m"
	elseif v > 1E6 then
		return (floor((v/1E6)*10)/10).."m"
	elseif v > 1E4 then
		return (floor(v/1E3)).."k"
	elseif v > 1E3 then
		return (floor((v/1E3)*10)/10).."k"
	else
		return v
	end
end
local function rsiCreateFontString(f,size)
	local t = f:CreateFontString(nil, "BACKGROUND")
	t:SetFont("Interface\\AddOns\\"..addon.."\\Media\\Fonts\\Economica-Bold.ttf", size, "THINOUTLINE")
	t:SetPoint("TOPLEFT", f)
	return t
end
--garbage function from Lyn
local function rsiClearGarbage()
	UpdateAddOnMemoryUsage()
	local before = gcinfo()
	collectgarbage()
	UpdateAddOnMemoryUsage()
	local after = gcinfo()
	print("Cleaned: "..memformat(before-after))
end
--tooltip function from Lyn
local function rsiShowMemTooltip(self)
	local color = { r=0.45, g=0.45, b=0.45 }
	GameTooltip:SetOwner(self, "ANCHOR_NONE")
	GameTooltip:SetPoint("TOPRIGHT", self, "TOPLEFT")
	local blizz = collectgarbage("count")
	local addons = {}
	local enry, memory
	local total = 0
	local nr = 0
	UpdateAddOnMemoryUsage()
	GameTooltip:AddLine("|cff0099ffTop "..addonlist.." AddOns|r")
	GameTooltip:AddLine(" ")
	for i=1, GetNumAddOns(), 1 do
		if (GetAddOnMemoryUsage(i) > 0 ) then
			memory = GetAddOnMemoryUsage(i)
			entry = {name = GetAddOnInfo(i), memory = memory}
			table.insert(addons, entry)
			total = total + memory
		end
	end
	table.sort(addons, addoncompare)
	for _, entry in pairs(addons) do
		if nr < addonlist then
			GameTooltip:AddDoubleLine(entry.name, memformat(entry.memory), 1, 1, 1)
			nr = nr+1
		end
	end
	GameTooltip:AddLine(" ")
	GameTooltip:AddDoubleLine("Total", memformat(total), color.r, color.g, color.b, color.r, color.g, color.b)
	GameTooltip:AddDoubleLine("Total incl. Blizzard", memformat(blizz), color.r, color.g, color.b, color.r, color.g, color.b)
	GameTooltip:Show()
end
local function rsiFPS()
	local fps = floor(GetFramerate())
	if fps > 70 then
		fps = "|cff00aaaa"..fps
	elseif fps > 60 then
		fps = "|cff00aa00"..fps
	elseif fps > 50 then
		fps = "|cffaaaa00"..fps
	elseif fps > 30 then
		fps = "|cffaa4400"..fps
	else
		fps = "|cffaa0000"..fps
	end
	return fps.."fps|r"
end
local function rsiLatency()
	local latency = select(3, GetNetStats())
	if latency < 30 then
		latency = "|cff00aaaa"..latency
	elseif latency < 50 then
		latency = "|cff00aa00"..latency
	elseif latency < 75 then
		latency = "|cffaaaa00"..latency
	elseif latency < 100 then
		latency = "|cffaa4400"..latency
	else
		latency = "|cffaa0000"..latency
	end
	return latency.."ms|r"
end
local function rsiMemory()
	local t = 0
	UpdateAddOnMemoryUsage()
	for i=1, GetNumAddOns(), 1 do
	  t = t + GetAddOnMemoryUsage(i)
	end
	return memformat(t)
end
local MapRects = {}
local TempVec2D = CreateVector2D(0,0)
function GetPlayerMapPos(MapID)
	local R,P,_ = MapRects[MapID],TempVec2D
	if not R then
		R = {}
		_, R[1] = C_Map.GetWorldPosFromMapPos(MapID,CreateVector2D(0,0))
		_, R[2] = C_Map.GetWorldPosFromMapPos(MapID,CreateVector2D(1,1))
		R[2]:Subtract(R[1])
		MapRects[MapID] = R
	end
	P.x, P.y = UnitPosition('Player')
	--cannot find coords return 0,0
	if P.x == nil or P.y == nil then return 0,0 end
	P:Subtract(R[1])
	return (1/R[2].y)*P.y, (1/R[2].x)*P.x
end
local function rsiZoneCoords()
	local zone = ""
	local mapID = C_Map.GetBestMapForUnit("player")
	if mapID then
		local x, y = GetPlayerMapPos(mapID)
		local coords
		if x and y and x ~= 0 and y ~= 0 then
			coords = format("%.2d,%.2d",x*100,y*100)
		end
		if coords then
			zone = "|c00C9BCA8"..coords.."|c009C907D|r"
		else
			zone = ""
		end
		return zone
	else
		return ""
	end
end
local function rsiUpdateStrings()
	f2.text:SetText(rsiZoneCoords())
	f2:SetHeight(f2.text:GetStringHeight())
	f2:SetWidth(f2.text:GetStringWidth())

	f1.text:SetText(rsiLatency().." "..rsiFPS())
	f1:SetHeight(f1.text:GetStringHeight())
	f1:SetWidth(f1.text:GetStringWidth())
end
local function CreateInfoStrings()
	if not ARPG_InfoStrings then
		frame = CreateFrame("Frame", "ARPG_InfoStrings", Minimap)
	else
		frame = ARPG_InfoStrings
	end
	frame:SetSize(50,50)
	frame:SetScale(cfg.frame.scale)
	frame:SetPoint(cfg.frame.pos.a1,cfg.frame.pos.af,cfg.frame.pos.a2,cfg.frame.pos.x,cfg.frame.pos.y)
	if not ARPG_InfoStringsContainer1 then
		f1 = CreateFrame("Frame", "ARPG_InfoStringsContainer1", frame)
	else
		f1 = ARPG_InfoStringsContainer1
	end
	if not ARPG_InfoStringsContainer2 then
		f2 = CreateFrame("Frame", "ARPG_InfoStringsContainer2", frame)
	else
		f2 = ARPG_InfoStringsContainer2
	end
	f1:SetPoint("TOPLEFT", frame, 0, 0)
	f2:SetPoint("TOPLEFT", f1, "BOTTOMLEFT", 0, -3)
	f1.text = rsiCreateFontString(f1,12)
	f2.text = rsiCreateFontString(f2,12)
	f1:SetScript("OnEnter", function() rsiShowMemTooltip(f1) end)
	f1:SetScript("OnLeave", function() GameTooltip:Hide() end)
	--f2:SetScript("OnEnter", function() rsiShowMemTooltip(f2) end)
	--f2:SetScript("OnLeave", function() GameTooltip:Hide() end)
	f1:EnableMouse(true)
	f1:SetScript("OnMouseDown", function()
		rsiClearGarbage()
	end)
	--[[
	f2:EnableMouse(true)
	f2:SetScript("OnMouseDown", function()
		rsiClearGarbage()
	end)
	]]--
end
local function startSearch(self)
	CreateInfoStrings()
	--timer
	local ag = self:CreateAnimationGroup()
	ag.anim = ag:CreateAnimation()
	ag.anim:SetDuration(1)
	ag:SetLooping("REPEAT")
	ag:SetScript("OnLoop", function(self, event, ...)
		rsiUpdateStrings()
	end)
	ag:Play()
end
kLib:RegisterCallback("PLAYER_LOGIN", startSearch)
