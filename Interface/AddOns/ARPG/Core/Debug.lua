--Grab a copy various oft-used functions
local rawget = rawget
local type = type
local string_len = string.len
local string_sub = string.sub
local string_gsub = string.gsub
local string_format = string.format
local string_match = string.match

--default slash commands
kLib:CreateSlashCmd("rl", ReloadUI)
--SLASH_RELOADUI1 = "/rl"
--SlashCmdList.RELOADUI = ReloadUI

function ARPGDebug()
	--ARPG_DebugVar(GameMenuFrameHeader)
end



local DevTools_DumpValue
DEVTOOLS_MAX_ENTRY_CUTOFF = 30  --Maximum table entries shown
DEVTOOLS_LONG_STRING_CUTOFF = 200 --Maximum string size shown
DEVTOOLS_DEPTH_CUTOFF = 10 --Maximum table depth
DEVTOOLS_USE_TABLE_CACHE = true --Look up table names
DEVTOOLS_USE_FUNCTION_CACHE = true --Look up function names
DEVTOOLS_USE_USERDATA_CACHE = true --Look up userdata names
DEVTOOLS_INDENT='  ' --Indentation string
local DEVTOOLS_TYPE_COLOR="|cff88ff88"
local DEVTOOLS_TABLEREF_COLOR="|cffffcc00"
local DEVTOOLS_CUTOFF_COLOR="|cffff0000"
local DEVTOOLS_TABLEKEY_COLOR="|cff88ccff"
local FORMATS = {}
-- prefix type suffix
FORMATS["opaqueTypeVal"] = "%s" .. DEVTOOLS_TYPE_COLOR .. "<%s>|r%s"
-- prefix type name suffix
FORMATS["opaqueTypeValName"] = "%s" .. DEVTOOLS_TYPE_COLOR .. "<%s %s>|r%s"
-- type
FORMATS["opaqueTypeKey"] = "<%s>"
-- type name
FORMATS["opaqueTypeKeyName"] = "<%s %s>"
-- value
FORMATS["bracketTableKey"] = "[%s]"
-- prefix value
FORMATS["tableKeyAssignPrefix"] = DEVTOOLS_TABLEKEY_COLOR .. "%s%s|r="
-- prefix cutoff
FORMATS["tableEntriesSkipped"] = "%s" .. DEVTOOLS_CUTOFF_COLOR .. "<skipped %s>|r"
-- prefix suffix
FORMATS["tableTooDeep"] = "%s" .. DEVTOOLS_CUTOFF_COLOR .. "<table (too deep)>|r%s"
-- prefix value suffix
FORMATS["simpleValue"] = "%s%s%s"
-- prefix tablename suffix
FORMATS["tableReference"] = "%s" .. DEVTOOLS_TABLEREF_COLOR .. "%s|r%s"

local function prepSimple(val, context)
    local valType = type(val)
    if (valType == "nil")  then
        return "nil"
    elseif (valType == "number") then
        return val
    elseif (valType == "boolean") then
        if (val) then
            return "true"
        else
            return "false"
        end
    elseif (valType == "string") then
        local l = string_len(val)
        if ((l > DEVTOOLS_LONG_STRING_CUTOFF) and
            (DEVTOOLS_LONG_STRING_CUTOFF > 0)) then
            local more = l - DEVTOOLS_LONG_STRING_CUTOFF
            val = string_sub(val, 1, DEVTOOLS_LONG_STRING_CUTOFF)
            return string_gsub(string_format("%q...+%s",val,more),"[|]", "||")
        else
            return string_gsub(string_format("%q",val),"[|]", "||")
        end
    elseif (valType == "function") then
        local fName = context:GetFunctionName(val)
        if (fName) then
            return string_format(FORMATS.opaqueTypeKeyName, valType, fName)
        else
            return string_format(FORMATS.opaqueTypeKey, valType)
        end
        return string_format(FORMATS.opaqueTypeKey, valType)
    elseif (valType == "userdata") then
        local uName = context:GetUserdataName(val)
        if (uName) then
            return string_format(FORMATS.opaqueTypeKeyName, valType, uName)
        else
            return string_format(FORMATS.opaqueTypeKey, valType)
        end
    elseif (valType == 'table') then
        local tName = context:GetTableName(val)
        if (tName) then
            return string_format(FORMATS.opaqueTypeKeyName, valType, tName)
        else
            return string_format(FORMATS.opaqueTypeKey, valType)
        end
    end
    error("Bad type '" .. valType .. "' to prepSimple")
end

local function prepSimpleKey(val, context)
    local valType = type(val)
    if (valType == "string") then
        local l = string_len(val)
        if ((l <= DEVTOOLS_LONG_STRING_CUTOFF) or
            (DEVTOOLS_LONG_STRING_CUTOFF <= 0)) then
            if (string_match(val, "^[a-zA-Z_][a-zA-Z0-9_]*$")) then
                return val
            end
        end
    end
    return string_format(FORMATS.bracketTableKey, prepSimple(val, context));
end
local function DevTools_InitUserdataCache(context)
	local ret = {};
	for _,k in ipairs(userdataSymbols) do
		local v = getglobal(k);
		if (type(v) == 'table') then
			local u = rawget(v,0);
			if (type(u) == 'userdata') then
				ret[u] = k .. '[0]';
			end
		end
	end
	for k,v in pairs(getfenv(0)) do
		if (type(v) == 'table') then
			local u = rawget(v, 0);
			if (type(u) == 'userdata') then
				if (not ret[u]) then
					ret[u] = k .. '[0]';
				end
			end
		end
	end
	return ret;
end
local function DevTools_InitFunctionCache(context)
	local ret = {};
	for _,k in ipairs(functionSymbols) do
		local v = getglobal(k);
		if (type(v) == 'function') then
			ret[v] = '[' .. k .. ']';
		end
	end
	for k,v in pairs(getfenv(0)) do
		if (type(v) == 'function') then
			if (not ret[v]) then
				ret[v] = '[' .. k .. ']';
			end
		end
	end
	return ret;
end
local function DevTools_Cache_Nil(self, value, newName)
	return nil;
end
local function DevTools_Cache_Function(self, value, newName)
	if (not self.fCache) then
		self.fCache = DevTools_InitFunctionCache(self)
	end
	local name = self.fCache[value]
	if ((not name) and newName) then
		self.fCache[value] = newName
	end
	return name
end

local function DevTools_Cache_Userdata(self, value, newName)
	if (not self.uCache) then
		self.uCache = DevTools_InitUserdataCache(self)
	end
	local name = self.uCache[value]
	if ((not name) and newName) then
		self.uCache[value] = newName
	end
	return name
end
local function DevTools_Cache_Table(self, value, newName)
	if (not self.tCache) then
		self.tCache = {}
	end
	local name = self.tCache[value]
	if ((not name) and newName) then
		self.tCache[value] = newName
	end
	return name
end
local function Pick_Cache_Function(func, setting)
	if (setting) then
		return func
	else
		return DevTools_Cache_Nil
	end
end
local function DevTools_DumpTableContents(val, prefix, firstPrefix, context)
	local showCount = 0
	local oldDepth = context.depth
	local oldKey = context.key
	-- Use this to set the cache name
	context:GetTableName(val, oldKey or 'value')
	local iter = pairs(val)
	local nextK, nextV = iter(val, nil)
	while (nextK) do
		local k,v = nextK, nextV
		nextK, nextV = iter(val, k)
		showCount = showCount + 1
		if ((showCount <= DEVTOOLS_MAX_ENTRY_CUTOFF) or
			(DEVTOOLS_MAX_ENTRY_CUTOFF <= 0)) then
			local prepKey = prepSimpleKey(k, context)
			if (oldKey == nil) then
				context.key = prepKey
			elseif (string_sub(prepKey, 1, 1) == "[") then
				context.key = oldKey .. prepKey
			else
				context.key = oldKey .. "." .. prepKey
			end
			context.depth = oldDepth + 1
			local rp = string_format(FORMATS.tableKeyAssignPrefix, firstPrefix, prepKey)
			firstPrefix = prefix
			DevTools_DumpValue(v, prefix, rp, (nextK and ",") or '', context)
		end
	end
	local cutoff = showCount - DEVTOOLS_MAX_ENTRY_CUTOFF
	if ((cutoff > 0) and (DEVTOOLS_MAX_ENTRY_CUTOFF > 0)) then
		context:Write(string_format(FORMATS.tableEntriesSkipped,firstPrefix, cutoff))
	end
	context.key = oldKey
	context.depth = oldDepth
	return (showCount > 0)
end
-- Return the specified value
function DevTools_DumpValue(val, prefix, firstPrefix, suffix, context)
	local valType = type(val)
	if (valType == "userdata") then
		local uName = context:GetUserdataName(val, 'value')
		if (uName) then
			context:Write(string_format(FORMATS.opaqueTypeValName, firstPrefix, valType, uName, suffix))
		else
			context:Write(string_format(FORMATS.opaqueTypeVal, firstPrefix, valType, suffix))
		end
		return
	elseif (valType == "function") then
		local fName = context:GetFunctionName(val, 'value')
		if (fName) then
			context:Write(string_format(FORMATS.opaqueTypeValName, firstPrefix, valType, fName, suffix))
		else
			context:Write(string_format(FORMATS.opaqueTypeVal, firstPrefix, valType, suffix))
		end
		return
	elseif (valType ~= "table")  then
		context:Write(string_format(FORMATS.simpleValue, firstPrefix,prepSimple(val, context), suffix))
		return
	end
	local cacheName = context:GetTableName(val)
	if (cacheName) then
		context:Write(string_format(FORMATS.tableReference, firstPrefix, cacheName, suffix))
		return
	end
	if ((context.depth >= DEVTOOLS_DEPTH_CUTOFF) and
		(DEVTOOLS_DEPTH_CUTOFF > 0)) then
		context:Write(string_format(FORMATS.tableTooDeep, firstPrefix, suffix))
		return
	end
	firstPrefix = firstPrefix .. "{"
	local oldPrefix = prefix
	prefix = prefix .. DEVTOOLS_INDENT
	context:Write(firstPrefix)
	firstPrefix = prefix
	local anyContents = DevTools_DumpTableContents(val, prefix, firstPrefix, context)
	context:Write(oldPrefix .. "}" .. suffix)
end
function DevTools_RunDump(value, context)
	local prefix = ""
	local firstPrefix = prefix
	local valType = type(value)
	if (type(value) == 'table') then
		local any =
			DevTools_DumpTableContents(value, prefix, firstPrefix, context)
		if (context.Result) then
			return context:Result()
		end
		if (not any) then
			context:Write("empty result")
		end
		return
	end
	DevTools_DumpValue(value, '', '', '', context)
	if (context.Result) then
		return context:Result()
	end
end
--Dump the specified list of value
function DevTools_Dump(value, startKey)
	local context = {
		depth = 0,
		key = startKey,
	}
	context.GetTableName = Pick_Cache_Function(DevTools_Cache_Table, DEVTOOLS_USE_TABLE_CACHE)
	context.GetFunctionName = Pick_Cache_Function(DevTools_Cache_Function, DEVTOOLS_USE_FUNCTION_CACHE)
	context.GetUserdataName = Pick_Cache_Function(DevTools_Cache_Userdata, DEVTOOLS_USE_USERDATA_CACHE)
	context.Write = print
	DevTools_RunDump(value, context)
end
local function DevTools_DumpCommand(msg, editBox)
	if (string_match(msg,"^[A-Za-z_][A-Za-z0-9_]*$")) then
		print("|cffff69b4ARPG Debug:|r " .. msg)
		local val = getglobal(msg)
		local tmp = {}
		if (val == nil) then
			local key = string_format(FORMATS.tableKeyAssignPrefix, '', prepSimpleKey(msg, {}))
			print(key .. "nil,")
		else
			tmp[msg] = val
		end
		DevTools_Dump(tmp)
		return
	end

	print("DevTools: value=" .. msg)
	local func,err = loadstring("return " .. msg)
	if (not func) then
		print("|cffff69b4ARPG Debug:|r |cffaa0000ERROR:|r " .. err)
	else
		DevTools_Dump({ func() }, "value")
	end
end
kLib:CreateSlashCmd("dump", DevTools_DumpCommand)
--SLASH_DEVTOOLSDUMP1 = "/dump"
--SlashCmdList["DEVTOOLSDUMP"] = DevTools_DumpCommand





local freePool = {}
local lastIndex = 0

-- Table of methods, with additional boolean placeholders for values to
-- preserve between uses.
local visMethods = {
	fontStrings = true,
	lines = true,
	lineHeight = true,
	lineWidth = true,
	lineSpacing = true,
	handlers = true,
	SetScript = true,
	[0] = true,
}

function visMethods:Clear()
	local sfs = self.fontStrings
	for i=1,self.lines do
		local fs = sfs[i]
		fs:Hide()
	end
	self.lines = 0
	self.lineHeight = 0
	self.lineWidth = 0
end

function visMethods:AddLine(msg)
	local sfs = self.fontStrings
	local l = self.lines + 1
	local fs = sfs[l]
	local spc = self.lineSpacing or 1
	if (not fs) then
		fs = self:CreateFontString()
		fs:SetFontObject(GameFontNormalSmall)
		fs:SetJustifyH("LEFT")
		sfs[l] = fs
		fs:ClearAllPoints()
		if (l == 1) then
			fs:SetPoint("TOPLEFT", self, "TOPLEFT", 5, -5)
		else
			fs:SetPoint("TOPLEFT", sfs[l-1], "BOTTOMLEFT", 0, -spc)
		end
	end
	self.lines = l
	fs:SetText(msg or "")
	self.lineHeight = self.lineHeight + fs:GetHeight() + spc
	local w = fs:GetWidth()
	if (w > self.lineWidth) then
		self.lineWidth = w
		self:SetWidth(self.lineWidth + 15)
	end
	fs:Show()
	self:SetHeight(self.lineHeight + 15)
end

function visMethods:Free()
	if (self.inFreePool) then
		message("visFrame:Free() called on free frame!")
		return
	end
	self:UnregisterAllEvents()
	self:Hide()
	for h in pairs(self.handlers) do
		self:SetScript(h, nil)
	end

	for k,v in pairs(self) do
		if (not visMethods[k]) then
			self[k] = nil
		end
	end

	self.inFreePool = true
	self:SetClampedToScreen(false)
	table.insert(freePool, self)
end

local function createNewVisFrame()
	local n = lastIndex + 1
	lastIndex = n
	local visFrame = CreateFrame("Frame", "ARPG_VisFrame" .. n, UIParent)
	visFrame:SetFrameStrata("TOOLTIP")
	visFrame:SetWidth(100)
	visFrame:SetHeight(200)
	visFrame:ClearAllPoints()
	visFrame:SetPoint("CENTER", "UIParent", "CENTER")
	visFrame:SetBackdrop({bgFile = "Interface/Buttons/WHITE8x8",
							 edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
							 tile = false, tileEdge = false, tileSize = 16, edgeSize = 16,
							 insets = { left = 3, right = 3,
								 top = 3, bottom = 3 }}
					 )
	visFrame:SetBackdropBorderColor(0.1,0.1,0.1,0.5)
	visFrame:SetBackdropColor(0.08,0.08,0.1,0.92)
	visFrame:SetScale(1.25)
	visFrame:Hide()
	visFrame:SetFrameLevel(2)

	visFrame.fontStrings = {}
	visFrame.lines = 0
	visFrame.lineHeight = 0
	visFrame.lineWidth = 0
	visFrame.lineSpacing = 1

	visFrame.handlers = {}
	local oldSetScript = visFrame.SetScript
	function visFrame:SetScript(handler, script, ...)
		if (script ~= nil) then
			self.handlers[handler] = true
		else
			self.handlers[handler] = nil
		end
		return oldSetScript(self, handler, script, ...)
	end

	for k,v in pairs(visMethods) do
		if (type(v) == "function") then
			visFrame[k] = v
		end
	end

	visFrame:EnableMouse(true)

	return visFrame
end

function ARPG_GetVisFrame()
	local fp = table.getn(freePool)
	if (fp == 0) then
		return createNewVisFrame()
	end
	local vf = table.remove(freePool)
	vf.inFreePool = false
	return vf
end

local cornerVisMethods = {}

function cornerVisMethods:OnEnter(...)
	self:OnShow()
end

function cornerVisMethods:OnShow(...)
	local parent = self:GetParent() or UIParent
	local ps = parent:GetEffectiveScale()
	local px, py = parent:GetCenter()
	px, py = px * ps, py * ps
	local x, y = GetCursorPosition()
	self:ClearAllPoints()
	if (x > px) then
		if (y > py) then
			self:SetPoint("BOTTOMLEFT", parent, "BOTTOMLEFT", 20, 20)
		else
			self:SetPoint("TOPLEFT", parent, "TOPLEFT", 20, -20)
		end
	else
		if (y > py) then
			self:SetPoint("BOTTOMRIGHT", parent, "BOTTOMRIGHT", -20, 20)
		else
			self:SetPoint("TOPRIGHT", parent, "TOPRIGHT", -20, -20)
		end
	end
end


function ARPG_GetCornerVisFrame()
	local visFrame = ARPG_GetVisFrame()

	for k,v in pairs(cornerVisMethods) do
		visFrame[k] = v
	end

	visFrame:SetScript("OnShow", function(self, ...) self:OnShow(...) end)
	visFrame:SetScript("OnEnter", function(self, ...) self:OnEnter(...) end)

	return visFrame
end
local stratas = {
	"UNKNOWN", "BACKGROUND","LOW","MEDIUM",
	"HIGH", "DIALOG", "FULLSCREEN", "FULLSCREEN_DIALOG",
	"TOOLTIP"
}
local strataLevels = {}
for i,v in ipairs(stratas) do
	strataLevels[v] = i
end

local frameStackStrata = {}
local frameStackLevels = {}
local frameStackActive = {}
local frameStackList = {}

local MOD = math.mod or math.fmod

local function FrameStackSort(b,a)
	local sa = strataLevels[frameStackStrata[a]] or -1
	local sb = strataLevels[frameStackStrata[b]] or -1
	if (sa < sb) then
		return true
	elseif (sa > sb) then
		return
	end
	local sa = frameStackLevels[a] or -1
	local sb = frameStackLevels[b] or -1
	if (sa < sb) then
		return true
	elseif (sa > sb) then
		return
	end
	return a < b
end

local colorSpecs = {
	"|cff6699ff",
	"|cff88dddd"
}

local activeColorSpecs = {
	"|cffff9966",
	"|cffdddd88"
}

local hiddenColorSpecs = {
	"|cff666666",
	"|cff888888"
}

local function UpdateFrameStack(visFrame, x, y)
	if (not (x and y)) then
		x,y = GetCursorPosition()
	end
	local nf = EnumerateFrames()
	local f
	local l = table.getn(frameStackList)
	for i=1,l do frameStackList[i] = nil end
	if (not table.maxn) then table.setn(frameStackList, 0) end
	for k in pairs(frameStackLevels) do
		frameStackLevels[k] = nil
		frameStackStrata[k] = nil
		frameStackActive[k] = nil
	end
	while (nf) do
		f,nf = nf,EnumerateFrames(nf)
		local es = f:GetEffectiveScale() or 1

		local Fl,Fb,Fr,Ft = f:GetRect()
		Fl = Fl or -1
		Fb = Fb or -1
		Fr = Fl + (Fr or -1)
		Ft = Fb + (Ft or -1)

		if ((x >= Fl * es) and (x <= Fr * es) and
			(y >= Fb * es) and (y <= Ft * es)) then
			local n = f:GetName()
			if (n and (getglobal(n) == f)) then
				-- Name is ok
			elseif (n) then
				n =  tostring(f) .. "(" .. n .. ")"
			else
				n =  tostring(f)
			end

			local s = f:GetFrameStrata() or 'nil'
			local l = f:GetFrameLevel() or -1
			local a
			if (f:IsVisible()) then
				if (f:IsMouseEnabled()) then
					a = activeColorSpecs
				else
					a = colorSpecs
				end
			else
				-- Change this to display hidden frames
				-- a = hiddenColorSpecs
				a = nil
			end
			if (a) then
				frameStackLevels[n] = l
				frameStackStrata[n] = s
				frameStackActive[n] = a
				table.insert(frameStackList, n)
			end
		end
	end
	frameStackList[table.getn(frameStackList)+1] = nil

	table.sort(frameStackList, FrameStackSort)
	visFrame:Clear()

	visFrame:AddLine("|cffff69b4ARPG Debug|r")
	visFrame:AddLine(string.format("Frame stack (%.2f,%.2f)", x, y))
	visFrame:AddLine(" ")

	local cs, os, ol = 1,nil,nil
	local cn = table.getn(colorSpecs)
	for _,n in ipairs(frameStackList) do
		local s,l,a = frameStackStrata[n], frameStackLevels[n], frameStackActive[n]
		if (os ~= s) then
			visFrame:AddLine("|cffffffff" .. s .. "|r")
			os = s
			ol = nil
			cs = 1
		end
		if (l ~= ol) then
			cs = MOD(cs, cn) + 1
			ol = l
		end
		visFrame:AddLine("  " ..  (a[cs] or "|cff444444") .. "<" .. l .. "> " .. n .. "|r")
	end
	visFrame:Show()
end

local curVisFrame
local t = 0
local REFRESH_TIME = 0.1

local function FrameOnUpdate(self, elapsed)
	if (self ~= curVisFrame) then
		self:Free()
		return
	end
	t = t - elapsed
	if (t > 0) then
		return
	end
	local x,y = GetCursorPosition()
	t = REFRESH_TIME
	UpdateFrameStack(curVisFrame, x, y)
end

local function EnableStack()
	if (not curVisFrame) then
		curVisFrame = ARPG_GetCornerVisFrame()
		curVisFrame:SetScript("OnUpdate", FrameOnUpdate)
	end
	local x,y = GetCursorPosition()
	t = REFRESH_TIME
	UpdateFrameStack(curVisFrame, x, y)
end

local function DisableStack()
	if (curVisFrame) then
		curVisFrame:Free()
		curVisFrame = nil
	end
end

function ARPG_FrameStack_Toggle(newState)
	if (newState == true) then
		EnableStack()
	elseif (newState == false) then
		DisableStack()
	else
		if (curVisFrame) then
			DisableStack()
		else
			EnableStack()
		end
	end
end

kLib:CreateSlashCmd("fs", ARPG_FrameStack_Toggle)
--SlashCmdList["DEVTOOLS_FRAMESTACK"] = function() ARPG_FrameStack_Toggle() end
--SLASH_DEVTOOLS_FRAMESTACK1 = "/afs"

BINDING_HEADER_DEVTOOLS = "ARPG Debug"
BINDING_NAME_DEVTOOLS_FRAMESTACK_ONHOLD = "Hold to toggle FrameStack display"
BINDING_NAME_DEVTOOLS_FRAMESTACK_CYCLE = "Toggle FrameStack display"
functionSymbols = {};
userdataSymbols = {};
local funcSyms = functionSymbols;
local userSyms = userdataSymbols;
