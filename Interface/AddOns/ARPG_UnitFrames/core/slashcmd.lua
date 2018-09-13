
  ---------------------------------------------
  --  ARPG_UnitFrames - slashcmd
  ---------------------------------------------

  -- The slashcmd stuff

  --get the addon namespace
  local addon, ns = ...
  local oUF = ns.oUF or oUF

  ---------------------------------------------
  --FUNCTIONS
  ---------------------------------------------

  ARPG_UnitFrames_Bars = {
    "ARPG_UnitFramesExpBar",
    "ARPG_UnitFramesRepBar",
    "oUF_DemonicFuryPower",
    "ARPG_UnitFramesSoulShardPower",
    "ARPG_UnitFramesBurningEmberPower",
    "ARPG_UnitFramesHolyPower",
    "ARPG_UnitFramesHarmonyPower",
    "ARPG_UnitFramesShadowOrbPower",
    "ARPG_UnitFramesEclipsePower",
    "ARPG_UnitFramesRuneBar",
    "ARPG_UnitFramesComboPoints",
    "ARPG_UnitFramesPowerOrb", --special bar :)
  }

  ARPG_UnitFrames_Units = {
    "ARPG_UnitFramesPlayerFrame",
    "ARPG_UnitFramesTargetFrame",
    "ARPG_UnitFramesTargetTargetFrame",
    "ARPG_UnitFramesPetTargetFrame",
    "ARPG_UnitFramesPetFrame",
    "ARPG_UnitFramesFocusTargetFrame",
    "ARPG_UnitFramesFocusFrame",
  }

  ARPG_UnitFrames_Art = {
    "ARPG_UnitFramesActionBarBackground",
    "ARPG_UnitFramesAngelFrame",
    "ARPG_UnitFramesDemonFrame",
    "ARPG_UnitFramesBottomLine",
    "ARPG_UnitFramesPlayerPortrait",
    "ARPG_UnitFramesTargetPortrait",
  }

  function ARPG_UnitFramesUnlock(c)
    print("ARPG_UnitFrames: "..c.." unlocked")
    local a
    if c == "art" then
      a = ARPG_UnitFrames_Art
    elseif c == "bars" then
      a = ARPG_UnitFrames_Bars
    elseif c == "units" then
      a = ARPG_UnitFrames_Units
    end
    for _, v in pairs(a) do
      local f = _G[v]
      if f and f:IsUserPlaced() then
        --print(f:GetName())
        f.dragframe:Show()
        f.dragframe:EnableMouse(true)
        f.dragframe:RegisterForDrag("LeftButton")
        f.dragframe:SetScript("OnEnter", function(s)
          GameTooltip:SetOwner(s, "ANCHOR_TOP")
          GameTooltip:AddLine(s:GetParent():GetName(), 0, 1, 0.5, 1, 1, 1)
          GameTooltip:AddLine("Hold down ALT+SHIFT to drag!", 1, 1, 1, 1, 1, 1)
          GameTooltip:Show()
        end)
        f.dragframe:SetScript("OnLeave", function(s) GameTooltip:Hide() end)
      end
    end
  end

  function ARPG_UnitFramesLock(c)
    print("ARPG_UnitFrames: "..c.." locked")
    local a
    if c == "art" then
      a = ARPG_UnitFrames_Art
    elseif c == "bars" then
      a = ARPG_UnitFrames_Bars
    elseif c == "units" then
      a = ARPG_UnitFrames_Units
    end
    for _, v in pairs(a) do
      local f = _G[v]
      if f and f:IsUserPlaced() then
        f.dragframe:Hide()
        f.dragframe:EnableMouse(false)
        f.dragframe:RegisterForDrag(nil)
        f.dragframe:SetScript("OnEnter", nil)
        f.dragframe:SetScript("OnLeave", nil)
      end
    end
  end

  function ARPG_UnitFramesReset(c)
    if InCombatLockdown() then
      print("Reseting frames is not possible in combat.")
      return
    end
    print("ARPG_UnitFrames: "..c.." reset")
    local a
    if c == "art" then
      a = ARPG_UnitFrames_Art
    elseif c == "bars" then
      a = ARPG_UnitFrames_Bars
    elseif c == "units" then
      a = ARPG_UnitFrames_Units
    end
    for _, v in pairs(a) do
      local f = _G[v]
      if f and f.defaultPosition then
        f:ClearAllPoints()
        local pos = f.defaultPosition
        if pos.af and pos.a2 then
          f:SetPoint(pos.a1 or "CENTER", pos.af, pos.a2, pos.x or 0, pos.y or 0)
        elseif pos.af then
          f:SetPoint(pos.a1 or "CENTER", pos.af, pos.x or 0, pos.y or 0)
        else
          f:SetPoint(pos.a1 or "CENTER", pos.x or 0, pos.y or 0)
        end
      end
    end
  end

  local function SlashCmd(cmd)
    if (cmd:match"config") then
      if InCombatLockdown() then return end
      if ns.panel:IsShown() then
        ns.panel:Hide()
        --print("Hiding "..addon.." config panel")
      else
        ns.panel:Show()
        --print("Showing "..addon.." config panel")
      end
    elseif (cmd:match"resettemplates") then
      ns.db.resetTemplates()
    elseif (cmd:match"unlockart") then
      ARPG_UnitFramesUnlock("art")
    elseif (cmd:match"lockart") then
      ARPG_UnitFramesLock("art")
    elseif (cmd:match"unlockbars") then
      ARPG_UnitFramesUnlock("bars")
    elseif (cmd:match"lockbars") then
      ARPG_UnitFramesLock("bars")
    elseif (cmd:match"unlockunits") then
      ARPG_UnitFramesUnlock("units")
    elseif (cmd:match"lockunits") then
      ARPG_UnitFramesLock("units")
    elseif (cmd:match"resetart") then
      ARPG_UnitFramesReset("art")
    elseif (cmd:match"resetbars") then
      ARPG_UnitFramesReset("bars")
    elseif (cmd:match"resetunits") then
      ARPG_UnitFramesReset("units")
    else
      print("> |rAfter|c0000AAAAHours|r Commands:")
      print("> |c00008000\/af config|r, to open the orb config panel")
      print("> |c00008000\/af lockart|r, to lock the art")
      print("> |c00008000\/af unlockart|r, to unlock the art")
      print("> |c00008000\/af lockbars|r, to lock the bars")
      print("> |c00008000\/af unlockbars|r, to unlock the bars")
      print("> |c00008000\/af lockunits|r, to lock the units")
      print("> |c00008000\/af unlockunits|r, to unlock the units")
      print("> |c00008000\/af resetart|r, to reset the art")
      print("> |c00008000\/af resetbars|r, to reset the bars")
      print("> |c00008000\/af resetunits|r, to reset the units")
      print("> |rOther Commands:")
      print("> |c00008000\/rabs|r, |c00008000\/rbfs|r, |c00008000\/rfilter|r, |c00008000\/ris|r, |c00008000\/rmm|r, |c00008000\/rnp|r")
    end
  end

--SlashCmdList["af"] = SlashCmd;
--SLASH_af1 = "/af";
--SLASH_af2 = "/afterhours";

--print("> |rAfter|c0000AAAAHours|c00969696 loaded.|r")
--print("> |c00008000\/afterhours|c00969696 to display the command list|r")