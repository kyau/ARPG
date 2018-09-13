
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
    self:RegisterForClicks("AnyDown")
    self:SetScript("OnEnter", UnitFrame_OnEnter)
    self:SetScript("OnLeave", UnitFrame_OnLeave)
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
  -- PARTY STYLE FUNC
  ---------------------------------------------

  local function createStyle(self)

    --apply config to self
    self.cfg = cfg.units.party
    self.cfg.style = "party"

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
      if self.PortraitHolder then
        if(InCombatLockdown()) then
          self.PortraitHolder:RegisterEvent("PLAYER_REGEN_ENABLED")
        else
          self:SetHitRectInsets(0, 0, -100, 0)
        end
        self.PortraitHolder:SetScript("OnEvent", function(...)
          self.PortraitHolder:UnregisterEvent("PLAYER_REGEN_ENABLED")
          self:SetHitRectInsets(0, 0, -100, 0)
        end)
      end
    end

    --auras
    if self.cfg.auras.show then
      func.createDebuffs(self)
      self.Debuffs.PostCreateIcon = func.createAuraIcon
    end

    --aurawatch
    if self.cfg.aurawatch.show then
      func.createAuraWatch(self)
    end

    --debuffglow
    func.createDebuffGlow(self)

    --range
    self.Range = {
      insideAlpha = 1,
      outsideAlpha = self.cfg.alpha.notinrange
    }

    --icons
    --self.RaidIcon = func.createIcon(self,"BACKGROUND",18,self.Name,"RIGHT","LEFT",0,0,-1)
    local RaidTargetIndicator = self:CreateTexture(nil, 'OVERLAY')
    RaidTargetIndicator:SetSize(18, 18)
    RaidTargetIndicator:SetPoint('RIGHT', self.Name,'LEFT',0,0)
    self.RaidTargetIndicator = RaidTargetIndicator

    --self.ReadyCheck = func.createIcon(self.Health,"OVERLAY",24,self.Health,"CENTER","CENTER",0,0,-1)
    local ReadyCheckIndicator = self:CreateTexture(nil, 'OVERLAY')
    ReadyCheckIndicator:SetSize(24, 24)
    ReadyCheckIndicator:SetPoint('CENTER',self.Health,'CENTER',0,0)
    self.ReadyCheckIndicator = ReadyCheckIndicator

    if self.Border then
      --self.Leader = func.createIcon(self,"BACKGROUND",13,self.Border,"BOTTOMRIGHT","BOTTOMLEFT",16,18,-1)
      local LeaderIndicator = self:CreateTexture(nil, 'OVERLAY')
      LeaderIndicator:SetSize(13, 13)
      LeaderIndicator:SetPoint('BOTTOMRIGHT', self.Border, 'BOTTOMLEFT',16,18)
      self.LeaderIndicator = LeaderIndicator

      --if self.cfg.portrait.use3D then
        --self.LFDRole = func.createIcon(self.BorderHolder,"OVERLAY",12,self.Portrait,"TOP","BOTTOM",0,5,5)
      --else
        --self.LFDRole = func.createIcon(self.PortraitHolder,"OVERLAY",12,self.Portrait,"TOP","BOTTOM",0,5,5)
      local GroupRoleIndicator = self:CreateTexture(nil, 'OVERLAY')
      GroupRoleIndicator:SetSize(14, 14)
      GroupRoleIndicator:SetPoint('TOP', self.Portrait,'BOTTOM',0,5)
      GroupRoleIndicator:SetTexture("Interface\\AddOns\\ARPG\\Media\\Textures\\UnitFrames\\lfd_role")
      self.GroupRoleIndicator = GroupRoleIndicator
      --end
    else
      --self.Leader = func.createIcon(self,"BACKGROUND",13,self,"RIGHT","LEFT",16,-18,-1)
      local LeaderIndicator = self:CreateTexture(nil, 'OVERLAY')
      LeaderIndicator:SetSize(13, 13)
      LeaderIndicator:SetPoint('RIGHT', self, 'LEFT',32,12)
      self.LeaderIndicator = LeaderIndicator

      --self.LFDRole = func.createIcon(self,"BACKGROUND",12,self,"RIGHT","LEFT",16,18,-1)
      local GroupRoleIndicator = self:CreateTexture(nil, 'OVERLAY')
      GroupRoleIndicator:SetSize(14, 14)
      GroupRoleIndicator:SetPoint('TOP', self.Health,'BOTTOM',0,-2)
      GroupRoleIndicator:SetTexture("Interface\\AddOns\\ARPG\\Media\\Textures\\UnitFrames\\lfd_role")
      self.GroupRoleIndicator = GroupRoleIndicator
    end
    --self.LFDRole:SetTexture("Interface\\AddOns\\ARPG\\Media\\Textures\\UnitFrames\\lfd_role")
    --self.LFDRole:SetDesaturated(1)

    --add heal prediction
    --func.healPrediction(self)

    --add total absorb
    --func.totalAbsorb(self)

    -- Position and size
    local myBar = CreateFrame('StatusBar', nil, self.Health)
    myBar:SetPoint('TOP')
    myBar:SetPoint('BOTTOM')
    myBar:SetPoint('LEFT', self.Health:GetStatusBarTexture(), 'RIGHT')
    myBar:SetWidth(100)
    myBar:SetStatusBarTexture(self.cfg.healprediction.texture)
    myBar:SetStatusBarColor(self.cfg.healprediction.color.myself.r,self.cfg.healprediction.color.myself.g,self.cfg.healprediction.color.myself.b,self.cfg.healprediction.color.myself.a)

    local otherBar = CreateFrame('StatusBar', nil, self.Health)
    otherBar:SetPoint('TOP')
    otherBar:SetPoint('BOTTOM')
    otherBar:SetPoint('LEFT', myBar:GetStatusBarTexture(), 'RIGHT')
    otherBar:SetWidth(100)
    otherBar:SetStatusBarTexture(self.cfg.healprediction.texture)
    otherBar:SetStatusBarColor(self.cfg.healprediction.color.other.r,self.cfg.healprediction.color.other.g,self.cfg.healprediction.color.other.b,self.cfg.healprediction.color.other.a)

    local healAbsorbBar = CreateFrame('StatusBar', nil, self.Health)
    healAbsorbBar:SetPoint('TOP')
    healAbsorbBar:SetPoint('BOTTOM')
    healAbsorbBar:SetPoint('RIGHT', self.Health:GetStatusBarTexture())
    healAbsorbBar:SetWidth(100)
    healAbsorbBar:SetStatusBarTexture(self.cfg.totalabsorb.texture)
    healAbsorbBar:SetStatusBarColor(self.cfg.totalabsorb.color.bar.r,self.cfg.totalabsorb.color.bar.g,self.cfg.totalabsorb.color.bar.b,self.cfg.totalabsorb.color.bar.a)
    healAbsorbBar:SetReverseFill(true)

    local overHealAbsorb = self.Health:CreateTexture(nil, "OVERLAY")
    overHealAbsorb:SetPoint('TOP')
    overHealAbsorb:SetPoint('BOTTOM')
    overHealAbsorb:SetPoint('RIGHT', self.Health, 'LEFT')
    overHealAbsorb:SetWidth(10)

    -- Register with oUF
    self.HealthPrediction = {
        myBar = myBar,
        otherBar = otherBar,
        healAbsorbBar = healAbsorbBar,
        overHealAbsorb = overHealAbsorb,
        maxOverflow = 1.05,
        frequentUpdates = true,
    }

    --threat
    self:RegisterEvent("UNIT_THREAT_SITUATION_UPDATE", func.checkThreat)

  end

  ---------------------------------------------
  -- SPAWN PARTY UNIT
  ---------------------------------------------

  if cfg.units.party.show then
    oUF:RegisterStyle("diablo:party", createStyle)
    oUF:SetActiveStyle("diablo:party")

    local attr = cfg.units.party.attributes

    local partyDragFrame = CreateFrame("Frame", "ARPG_UnitFramesPartyDragFrame", UIParent)
    partyDragFrame:SetSize(50,50)
    partyDragFrame:SetPoint(cfg.units.party.pos.a1,cfg.units.party.pos.af,cfg.units.party.pos.a2,cfg.units.party.pos.x,cfg.units.party.pos.y)
    func.applyDragFunctionality(partyDragFrame)
    table.insert(ARPG_UnitFrames_Units,"ARPG_UnitFramesPartyDragFrame") --add frames to the slash command function

    local party = oUF:SpawnHeader(
      "ARPG_UnitFramesPartyHeader",
      nil,
      attr.visibility,
      "showPlayer",         attr.showPlayer,
      "showSolo",           attr.showSolo,
      "showParty",          attr.showParty,
      "showRaid",           attr.showRaid,
      "point",              attr.point,
      "oUF-initialConfigFunction", ([[
        self:SetWidth(%d)
        self:SetHeight(%d)
        self:SetScale(%f)
      ]]):format(128, 64, cfg.units.party.scale)
    )
    party:SetPoint("TOPLEFT",partyDragFrame,0,0)


  end