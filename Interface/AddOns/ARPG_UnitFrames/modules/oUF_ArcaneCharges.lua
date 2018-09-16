--[[ Element: Arcane Charges Icons
 Toggles visibility of arcane charges for arcane mage

 Widget

 ACharges - An array consisting of four UI widgets.

 Notes

 The default arcane charge texture will be applied to textures within the ACharges
 array that don't have a texture or color defined.

 Examples

	local ACharges = {}
	for index = 1, 4 do
	   local ACharge = self:CreateTexture(nil, 'BACKGROUND')
	
	   -- Position and size of the arcane charge.
	   ACharge:SetSize(32, 32)
	   ACharge:SetPoint('TOPLEFT', self, 'BOTTOM', index * ACharge:GetWidth() - 96, 0)
	
	   ACharges[index] = ACharge
	end
	
	-- Register with oUF
	self.ACharges = ACharges

 Hooks

 Override(self) - Used to completely override the internal update function.
                  Removing the table key entry will make the element fall-back
                  to its internal function again.

Credits
	Written by McFLY
]]

local parent, ns = ...
local oUF = ns.oUF
local class = select(2, UnitClass("player"))

local Update = function(self, event, unit, ...)
	if self.unit ~= unit then return end

	local acharges = self.ACharges
	local bar = self.ArcaneBar
	if (acharges.PreUpdate) then
		acharges:PreUpdate()
	end

	--local ac = UnitPower(unit, 16)
	local ac = UnitPower("player", Enum.PowerType.ArcaneCharges)
	--print("ACHARGE: Update")
	--print ("ACHARGE: "..ac)

	if ac < 1 or (UnitHasVehicleUI("player") or class ~= "MAGE") then
		bar:Hide()
		return
	else
		bar:Show()
	end
	

	--[[
	for i=1, 4 do
		if(i <= ac) then
			acharges[i]:Show()
		else
			acharges[i]:Hide()
		end
	end
	]]
	for i=1, 4 do
		local orb = acharges[i]
		local full = ac/4
		if(i <= ac) then
			orb.fill:SetVertexColor(bar.color.r,bar.color.g,bar.color.b)
			orb.glow:SetVertexColor(bar.color.r,bar.color.g,bar.color.b)
			orb.fill:Show()
			orb.glow:Show()
			orb.highlight:Show()
		else
			orb.fill:Hide()
			orb.glow:Hide()
			orb.highlight:Hide()
		end
	end

	if(acharges.PostUpdate) then
		return acharges:PostUpdate(ac)
	end
end

local Path = function(self, ...)
	return (self.ACharges.Override or Update) (self, ...)
end

local ForceUpdate = function(element)
	return Path(element.__owner, 'ForceUpdate', element.__owner.unit)
end

local checkArcane = function(self)
	local acharges = self.ACharges
	if (acharges) then
		local spec = GetSpecialization()
		if spec == 1 then
			self:RegisterEvent('UNIT_POWER_FREQUENT', Update)
		else
			self:UnregisterEvent('UNIT_POWER_FREQUENT', Update)
			for index = 1, 4 do
				acharges[index]:Hide()
			end
		end
	end
end

local Enable = function(self)
	local class,_,_ = UnitClass("player")
	local spec = GetSpecialization()
	if class == "Mage" then
		--print("ACHARGE: Found Mage")
		local acharges = self.ACharges
		if(acharges) then
			--print("ACHARGE: Found Charges")
			acharges.__owner = self
			acharges.ForceUpdate = ForceUpdate

			if spec == 1 then self:RegisterEvent('UNIT_POWER_FREQUENT', Update) end
			self:RegisterEvent("PLAYER_TALENT_UPDATE", checkArcane)

			for index = 1, 4 do
				local acharge = acharges[index]
				if (acharge:IsObjectType'Texture' and not acharge:GetTexture()) then
					acharge:SetTexture[[Interface\PLAYERFRAME\MageArcaneCharges]]
					acharge:SetTexCoord(0.25, 0.375, 0.5, 0.75)
				end
			end

			return true
		end
	end
end

local Disable = function(self)
	local acharges = self.ACharges
	if (acharges) then
		for index = 1, 4 do
			acharges[index]:Hide()
		end
		self:UnregisterEvent('UNIT_POWER_UPDATE', Update)
		self:UnregisterEvent("PLAYER_TALENT_UPDATE", checkArcane)
	end
end

oUF:AddElement('ACharges', Update, Enable, Disable)
