
  --get the addon namespace
  local addon, ns = ...

  --get oUF namespace (just in case needed)
  local oUF = ns.oUF or oUF

  --get the config
  local cfg = ns.cfg

  --get the functions
  local func = ns.func

  --get the unit container
  local unit = ns.unit

  ---------------------------------------------
  -- UNIT SPECIFIC FUNCTIONS
  ---------------------------------------------

  --init parameters
  local initUnitParameters = function(self)
    self:SetFrameStrata("BACKGROUND")
    self:SetFrameLevel(1)
    self:SetSize(self.cfg.width, self.cfg.height)
    self:SetScale(self.cfg.scale)
    self:SetPoint(self.cfg.pos.a1,self.cfg.pos.af,self.cfg.pos.a2,self.cfg.pos.x,self.cfg.pos.y)
    self:RegisterForClicks("AnyDown")
    self:SetScript("OnEnter", UnitFrame_OnEnter)
    self:SetScript("OnLeave", UnitFrame_OnLeave)
    func.applyDragFunctionality(self)
  end

  --actionbar background
  local createArtwork = function(self)
    local t = self:CreateTexture(nil,"BACKGROUND",nil,-8)
    t:SetAllPoints(self)
    t:SetTexture("Interface\\AddOns\\ARPG\\Media\\Textures\\UnitFrames\\targettarget")
  end

  --create health frames
  local createHealthFrame = function(self)

    local cfg = self.cfg.health

    --health
    local h = CreateFrame("StatusBar", nil, self)
    h:SetPoint("TOP",0,-21.9)
    h:SetPoint("LEFT",24.5,0)
    h:SetPoint("RIGHT",-24.5,0)
    h:SetPoint("BOTTOM",0,28.7)

    h:SetStatusBarTexture(cfg.texture)
    h.bg = h:CreateTexture(nil,"BACKGROUND",nil,-6)
    h.bg:SetTexture(cfg.texture)
    h.bg:SetAllPoints(h)

    h.glow = h:CreateTexture(nil,"OVERLAY",nil,-5)
    h.glow:SetTexture("Interface\\AddOns\\ARPG\\Media\\Textures\\UnitFrames\\targettarget_hpglow")
    h.glow:SetAllPoints(self)
    h.glow:SetVertexColor(0,0,0,1)

    h.highlight = h:CreateTexture(nil,"OVERLAY",nil,-4)
    h.highlight:SetTexture("Interface\\AddOns\\ARPG\\Media\\Textures\\UnitFrames\\targettarget_highlight")
    h.highlight:SetAllPoints(self)

    self.Health = h
    self.Health.Smooth = true
  end

  --create power frames
  local createPowerFrame = function(self)
    local cfg = self.cfg.power

    --power
    local h = CreateFrame("StatusBar", nil, self)
    h:SetPoint("TOP",0,-38.5)
    h:SetPoint("LEFT",24.5,0)
    h:SetPoint("RIGHT",-24.5,0)
    h:SetPoint("BOTTOM",0,21.9)

    h:SetStatusBarTexture(cfg.texture)

    h.bg = h:CreateTexture(nil,"BACKGROUND",nil,-6)
    h.bg:SetTexture(cfg.texture)
    h.bg:SetAllPoints(h)

    h.glow = h:CreateTexture(nil,"OVERLAY",nil,-5)
    h.glow:SetTexture("Interface\\AddOns\\ARPG\\Media\\Textures\\UnitFrames\\targettarget_ppglow")
    h.glow:SetAllPoints(self)
    h.glow:SetVertexColor(0,0,0,1)

    self.Power = h
    self.Power.Smooth = true

  end

  --create health power strings
  local createHealthPowerStrings = function(self)

    local name = func.createFontString(self, cfg.font, 14, "THINOUTLINE")
    name:SetPoint("BOTTOM", self, "TOP", 0, -13)
    name:SetPoint("LEFT", self.Health, 0, 0)
    name:SetPoint("RIGHT", self.Health, 0, 0)
    self.Name = name

    local hpval = func.createFontString(self.Health, cfg.font, 11, "THINOUTLINE")
    hpval:SetPoint("RIGHT", -2,0)

    self:Tag(name, "[diablo:name]")
    self:Tag(hpval, self.cfg.health.tag or "")

  end

  ---------------------------------------------
  -- FOCUS STYLE FUNC
  ---------------------------------------------

  local function createStyle(self)

    --apply config to self
    self.cfg = cfg.units.focus
    self.cfg.style = "focus"

    self.cfg.width = 128
    self.cfg.height = 64

    --init
    initUnitParameters(self)

    --create the art
    createArtwork(self)

    --createhealthPower
    createHealthFrame(self)
    createPowerFrame(self)

    --health power strings
    createHealthPowerStrings(self)

    --health power update
    self.Health.PostUpdate = func.updateHealth
    self.Power.PostUpdate = func.updatePower

    --create portrait
    if self.cfg.portrait.show then
      func.createPortrait(self)
      self:SetHitRectInsets(0, 0, -100, 0);
    end

    --castbar
    if self.cfg.castbar.show then
      func.createCastbar(self)
    end

    --auras
    if self.cfg.auras.show then
      func.createDebuffs(self)
      self.Debuffs.PostCreateIcon = func.createAuraIcon
      if self.cfg.auras.showBuffs then
        func.createBuffs(self)
        self.Buffs.PostCreateIcon = func.createAuraIcon
      end
    end

    --aurawatch
    if self.cfg.aurawatch.show then
      func.createAuraWatch(self)
    end

    --debuffglow
    func.createDebuffGlow(self)

    --threat
    self:RegisterEvent("UNIT_THREAT_SITUATION_UPDATE", func.checkThreat)

    --icons
    self.RaidIcon = func.createIcon(self,"BACKGROUND",18,self.Name,"BOTTOM","TOP",0,0,-1)

    --add heal prediction
    func.healPrediction(self)

    --add total absorb
    func.totalAbsorb(self)

    --add self to unit container (maybe access to that unit is needed in another style)
    unit.focus = self

  end

  ---------------------------------------------
  -- SPAWN FOCUS UNIT
  ---------------------------------------------

  if cfg.units.focus.show then
    oUF:RegisterStyle("diablo:focus", createStyle)
    oUF:SetActiveStyle("diablo:focus")
    oUF:Spawn("focus", "ARPG_UnitFramesFocusFrame")
  end