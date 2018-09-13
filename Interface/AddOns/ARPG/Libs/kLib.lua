--file: kLib.lua

--get the addon namespace
local addon, namespace = ...
kLib = {}
local SpellFlyout = SpellFlyout
--create message frame
local ARPG_MessageFrame = CreateFrame("Frame", "ARPG_MessageFrame", UIParent)
ARPG_MessageFrame:SetWidth(1000)
ARPG_MessageFrame:SetHeight(40)
ARPG_MessageFrame:SetFrameStrata("BACKGROUND")
ARPG_MessageFrame:SetPoint("TOP", 0, -96)
ARPG_MessageFrame:Show()
local ARPG_MessageFrameText = ARPG_MessageFrame:CreateFontString(ARPG_MessageFrame:GetName() .. "Text", "OVERLAY")
ARPG_MessageFrameText:SetFont(STANDARD_TEXT_FONT, 36, "OUTLINE")
ARPG_MessageFrameText:SetPoint("TOP", 0, 0)

--copyTable
local function copyTable(orig)
	local orig_type = type(orig)
	local copy
	if orig_type == 'table' then
		copy = {}
		for orig_key, orig_value in next, orig, nil do
			copy[copyTable(orig_key)] = copyTable(orig_value)
		end
		setmetatable(copy, copyTable(getmetatable(orig)))
	else -- number, string, boolean, etc
		copy = orig
	end
	return copy
end
kLib.CopyTable = copyTable

--kLib:Print
function kLib:Print(msg)
	vbm_print("|cffff69b4<ARPG>|r "..msg);
end

--kLib:RegisterCallback
function kLib:RegisterCallback(event, callback, ...)
	if not namespace.EventFrame then
		namespace.EventFrame = CreateFrame("Frame")
		function namespace.EventFrame:OnEvent(event, ...)
			for callback, args in next, self.callbacks[event] do
				callback(self, event, args, ...)
			end
		end
		namespace.EventFrame:SetScript("OnEvent", namespace.EventFrame.OnEvent)
	end
	if not namespace.EventFrame.callbacks then namespace.EventFrame.callbacks = {} end
	if not namespace.EventFrame.callbacks[event] then namespace.EventFrame.callbacks[event] = {} end
	namespace.EventFrame.callbacks[event][callback] = {...}
	namespace.EventFrame:RegisterEvent(event)
end

--kLib:CallElementFunction
function kLib:CallElementFunction(element, func, ...)
	if element and func and element[func] then
		element[func](element, ...)
	end
end

--kLib:GetPoint
function kLib:GetPoint(frame)
	if not frame then return end
	local point = {}
	point.a1, point.af, point.a2, point.x, point.y = frame:GetPoint()
	if point.af and point.af:GetName() then
		point.af = point.af:GetName()
	end
	return point
end

--kLib:GetSize
function kLib:GetSize(frame)
	if not frame then return end
	local size = {}
	size.w, size.h = frame:GetWidth(), frame:GetHeight()
	return size
end

--kLib:ResetPoint
function kLib:ResetPoint(frame)
	if not frame then return end
	if not frame.defaultPoint then return end
	if InCombatLockdown() then return end
	local point = frame.defaultPoint
	frame:ClearAllPoints()
	if point.af and point.a2 then
		frame:SetPoint(point.a1 or "CENTER", point.af, point.a2, point.x or 0, point.y or 0)
	elseif point.af then
		frame:SetPoint(point.a1 or "CENTER", point.af, point.x or 0, point.y or 0)
	else
		frame:SetPoint(point.a1 or "CENTER", point.x or 0, point.y or 0)
	end
end

--kLib:ResetSize
function kLib:ResetSize(frame)
	if not frame then return end
	if not frame.defaultSize then return end
	if InCombatLockdown() then return end
	frame:SetSize(frame.defaultSize.w,frame.defaultSize.h)
end

--kLib:UnlockFrame
function kLib:UnlockFrame(frame)
	if not frame then return end
	if not frame:IsUserPlaced() then return end
	if frame.frameVisibility then
		if frame.frameVisibilityFunc then
			UnregisterStateDriver(frame,frame.frameVisibilityFunc)
		end
		RegisterStateDriver(frame, "visibility", "show")
	end
	frame.dragFrame:Show()
end

--kLib:LockFrame
function kLib:LockFrame(frame)
	if not frame then return end
	if not frame:IsUserPlaced() then return end
	if frame.frameVisibility then
		if frame.frameVisibilityFunc then
			UnregisterStateDriver(frame, "visibility")
			--hack to make it refresh properly, otherwise if you had state n (no vehicle exit button) it would not update properly because the state n is still in place
			RegisterStateDriver(frame, frame.frameVisibilityFunc, "zorkwashere")
			RegisterStateDriver(frame, frame.frameVisibilityFunc, frame.frameVisibility)
		else
			RegisterStateDriver(frame, "visibility", frame.frameVisibility)
		end
	end
	frame.dragFrame:Hide()
end

--kLib:UnlockFrames
function kLib:UnlockFrames(frames,str)
	if not frames then return end
	for idx, frame in next, frames do
		self:UnlockFrame(frame)
	end
	print(str)
end

--kLib:LockFrames
function kLib:LockFrames(frames,str)
	if not frames then return end
	for idx, frame in next, frames do
		self:LockFrame(frame)
	end
	print(str)
end

--kLib:ResetFrames
function kLib:ResetFrames(frames,str)
	if not frames then return end
	if InCombatLockdown() then
		print("|c00FF0000ERROR:|r "..str.." not allowed while in combat!")
		return
	end
	for idx, frame in next, frames do
		self:ResetPoint(frame)
		self:ResetSize(frame)
	end
	print(str)
end

--Dragable Frames
local function OnDragStart(self, button)
	if IsAltKeyDown() and IsShiftKeyDown() then
		if button == "LeftButton" then
			self:GetParent():StartMoving()
		end
		if button == "RightButton" then
			self:GetParent():StartSizing()
		end
	end
end
local function OnDragStop(self)
	self:GetParent():StopMovingOrSizing()
end
local function OnEnter(self)
	GameTooltip:SetOwner(self, "ANCHOR_TOP")
	GameTooltip:AddLine(self:GetParent():GetName(), 0, 1, 0.5, 1, 1, 1)
	GameTooltip:AddLine("Hold ALT+SHIFT+LeftButton to drag!", 1, 1, 1, 1, 1, 1)
	if self:GetParent().__resizable then
		GameTooltip:AddLine("Hold ALT+SHIFT+RightButton to resize!", 1, 1, 1, 1, 1, 1)
	end
	GameTooltip:Show()
end
local function OnLeave(self)
	GameTooltip:Hide()
end
local function OnShow(self)
	local frame = self:GetParent()
	if frame.fader then
		kLib:StartFadeIn(frame)
	end
end
local function OnHide(self)
	local frame = self:GetParent()
	if frame.fader then
		kLib:StartFadeOut(frame)
	end
end

--kLib:CreateDragFrame
function kLib:CreateDragFrame(frame, frames, inset, clamp)
	if not frame or not frames then return end
	--save the default position for later
	frame.defaultPoint = kLib:GetPoint(frame)
	table.insert(frames,frame) --add frame object to the list
	--anchor a dragable frame on frame
	local df = CreateFrame("Frame",nil,frame)
	df:SetAllPoints(frame)
	df:SetFrameStrata("HIGH")
	df:SetHitRectInsets(inset or 0, inset or 0, inset or 0, inset or 0)
	df:EnableMouse(true)
	df:RegisterForDrag("LeftButton")
	df:SetScript("OnDragStart", OnDragStart)
	df:SetScript("OnDragStop", OnDragStop)
	df:SetScript("OnEnter", OnEnter)
	df:SetScript("OnLeave", OnLeave)
	df:SetScript("OnShow", OnShow)
	df:SetScript("OnHide", OnHide)
	df:Hide()
	--overlay texture
	local t = df:CreateTexture(nil,"OVERLAY",nil,6)
	t:SetAllPoints(df)
	t:SetColorTexture(1,1,1)
	t:SetVertexColor(0,1,0)
	t:SetAlpha(0.3)
	df.texture = t
	--frame stuff
	frame.dragFrame = df
	frame:SetClampedToScreen(clamp or false)
	frame:SetMovable(true)
	frame:SetUserPlaced(true)
end

--kLib:CreateDragResizeFrame
function kLib:CreateDragResizeFrame(frame, frames, inset, clamp)
	if not frame or not frames then return end
	kLib:CreateDragFrame(frame, frames, inset, clamp)
	frame.defaultSize = kLib:GetSize(frame)
	frame:SetResizable(true)
	frame.__resizable = true
	frame.dragFrame:RegisterForDrag("LeftButton","RightButton")
end
local function FaderOnFinished(self)
	--print("FaderOnFinished",self.__owner:GetName(),self.finAlpha)
	self.__owner:SetAlpha(self.finAlpha)
end
local function FaderOnUpdate(self)
	--print("FaderOnUpdate",self.__owner:GetName(),self.__animFrame:GetAlpha())
	self.__owner:SetAlpha(self.__animFrame:GetAlpha())
end
local function CreateFaderAnimation(frame)
	if frame.fader then return end
	local animFrame = CreateFrame("Frame",nil,frame)
	animFrame.__owner = frame
	frame.fader = animFrame:CreateAnimationGroup()
	frame.fader.__owner = frame
	frame.fader.__animFrame = animFrame
	frame.fader.direction = nil
	frame.fader.setToFinalAlpha = false
	frame.fader.anim = frame.fader:CreateAnimation("Alpha")
	frame.fader:HookScript("OnFinished", FaderOnFinished)
	frame.fader:HookScript("OnUpdate", FaderOnUpdate)
end

--kLib:StartFadeIn
function kLib:StartFadeIn(frame)
	if frame.fader.direction == "in" then return end
	frame.fader:Pause()
	frame.fader.anim:SetFromAlpha(frame.faderConfig.fadeOutAlpha or 0)
	frame.fader.anim:SetToAlpha(frame.faderConfig.fadeInAlpha or 1)
	frame.fader.anim:SetDuration(frame.faderConfig.fadeInDuration or 0.3)
	frame.fader.anim:SetSmoothing(frame.faderConfig.fadeInSmooth or "OUT")
	--start right away
	frame.fader.anim:SetStartDelay(frame.faderConfig.fadeInDelay or 0)
	frame.fader.finAlpha = frame.faderConfig.fadeInAlpha
	frame.fader.direction = "in"
	frame.fader:Play()
end

--kLib:StartFadeOut
function kLib:StartFadeOut(frame)
	if frame.fader.direction == "out" then return end
	frame.fader:Pause()
	frame.fader.anim:SetFromAlpha(frame.faderConfig.fadeInAlpha or 1)
	frame.fader.anim:SetToAlpha(frame.faderConfig.fadeOutAlpha or 0)
	frame.fader.anim:SetDuration(frame.faderConfig.fadeOutDuration or 0.3)
	frame.fader.anim:SetSmoothing(frame.faderConfig.fadeOutSmooth or "OUT")
	--wait for some time before starting the fadeout
	frame.fader.anim:SetStartDelay(frame.faderConfig.fadeOutDelay or 0)
	frame.fader.finAlpha = frame.faderConfig.fadeOutAlpha
	frame.fader.direction = "out"
	frame.fader:Play()
end
local function IsMouseOverFrame(frame)
	if MouseIsOver(frame) then return true end
	if not SpellFlyout:IsShown() then return false end
	if not SpellFlyout.__faderParent then return false end
	if SpellFlyout.__faderParent == frame and MouseIsOver(SpellFlyout) then return true end
	return false
end
local function FrameHandler(frame)
	if IsMouseOverFrame(frame) then
		kLib:StartFadeIn(frame)
	else
		kLib:StartFadeOut(frame)
	end
end
local function OffFrameHandler(self)
	if not self.__faderParent then return end
	FrameHandler(self.__faderParent)
end
local function SpellFlyoutOnShow(self)
	local frame = self:GetParent():GetParent():GetParent()
	if not frame.fader then return end
	--set new frame parent
	self.__faderParent = frame
	if not self.__faderHook then
		SpellFlyout:HookScript("OnEnter", OffFrameHandler)
		SpellFlyout:HookScript("OnLeave", OffFrameHandler)
		self.__faderHook = true
	end
	for i=1, NUM_ACTIONBAR_BUTTONS do --hopefully 12 is enough
		local button = _G["SpellFlyoutButton"..i]
		if not button then break end
		button.__faderParent = frame
		if not button.__faderHook then
			button:HookScript("OnEnter", OffFrameHandler)
			button:HookScript("OnLeave", OffFrameHandler)
			button.__faderHook = true
		end
	end
end
SpellFlyout:HookScript("OnShow", SpellFlyoutOnShow)

--kLib:CreateFrameFader
function kLib:CreateFrameFader(frame, faderConfig)
	if frame.faderConfig then return end
	frame.faderConfig = faderConfig
	frame:EnableMouse(true)
	CreateFaderAnimation(frame)
	frame:HookScript("OnEnter", FrameHandler)
	frame:HookScript("OnLeave", FrameHandler)
	FrameHandler(frame)
end

--kLib:CreateButtonFrameFader
function kLib:CreateButtonFrameFader(frame, buttonList, faderConfig)
	kLib:CreateFrameFader(frame, faderConfig)
	for i, button in next, buttonList do
		if not button.__faderParent then
			button.__faderParent = frame
			button:HookScript("OnEnter", OffFrameHandler)
			button:HookScript("OnLeave", OffFrameHandler)
		end
	end
end

-- kLib:CreateArtFrame
function kLib:CreateArtFrame(name, texture, strata, strataNum, width, height, position, xPos, yPos, scale, flip, mouse)
	local f = CreateFrame("Frame", name, UIParent)
	--frame strata ("Background", "Low", "Medium", "High", "Dialog", "Fullscreen", "Fullscreen_Dialog", "Tooltip")
	f:SetFrameStrata(strata)
	--frame strata level (0-20)
	f:SetFrameLevel(strataNum)
	--frame size
	f:SetSize(width, height)
	--frame position
	f:SetPoint(position, xPos, yPos)
	--frame scale
	f:SetScale(scale)
	--create a texture on the frame
	local t = f:CreateTexture("Texture", "Background")
	--set the texture
	t:SetTexture(texture)
	--vertical flip
	local ULx, ULy, LLx, LLy, URx, URy, LRx, LRy = t:GetTexCoord()
	if (flip) then
		--inverse-y
		t:SetTexCoord(LLx, LLy, ULx, ULy, LRx, LRy, URx, URy)
	else
		--normal
		t:SetTexCoord(ULx, ULy, LLx, LLy, URx, URy, LRx, LRy)
	end
	t:SetAllPoints(f)
	f:Show()
	if mouse then
		f:EnableMouse(true)
	end
end

--kLib:CreateSlashCmd
function kLib:CreateSlashCmd(shortcut, func)
	SlashCmdList[shortcut] = func
	_G["SLASH_"..shortcut.."1"] = "/"..shortcut
end

--kLib:MessageFrameWarn
local function MessageFrameTimerEnd()
	ARPG_MessageFrameText:SetText("")
end
local function isint(n)
	return n==math.floor(n)
end
function kLib:MessageFrameWarn(msg, time)
	ARPG_MessageFrameText:SetText(msg)
	if isint(time) then
		C_Timer.After(time, function()
			ARPG_MessageFrameText:SetText("")
		end)
	end
end
kLib:CreateSlashCmd("test", function()
	kLib:MessageFrameWarn("Testing", 5)
end)

--kLib:Band
function kLib:Band(mask, ...)
	args = {...}
	local i
	for i = 1, #args do
		if bit.band(mask, args[i]) == 0 then
			return false
		end
	end
	return true
end

--kLib:Bor
function kLib:Bor(b1, ...)
	args = {...}
	local i
	for i = 1, #args do
		b1 = bit.bor(b1, args[i])
	end
	return b1
end

-- kLib:FlagsColor
function kLib:FlagsColor(flags)
	if kLib:Band(flags, COMBATLOG_OBJECT_REACTION_HOSTILE) then
		return "|cFFFF0000"
	elseif kLib:Band(flags,COMBATLOG_OBJECT_REACTION_NEUTRAL) then
		return "|cFFFFFF00"
	elseif kLib:Band(flags,COMBATLOG_OBJECT_REACTION_FRIENDLY) then
		return "|cFF00FF00"
	end
	return ""
end
