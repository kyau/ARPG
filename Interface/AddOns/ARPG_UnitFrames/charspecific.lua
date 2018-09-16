--rewrite specific global config values based on character data
--example: use another party layout for healer etc.

--get the addon namespace
local addon, ns = ...
local oUF = ns.oUF or oUF

--get the config
local cfg = ns.cfg

--EXAMPLE HEALER
if cfg.playerclass == "PRIEST" then
	cfg.units.focus.auras.showBuffs = true
	cfg.units.target.healprediction.show = true
	cfg.units.focus.healprediction.show = true
	cfg.units.raid.pos = { a1 = "RIGHT", a2 = "CENTER", af = "UIParent", x = 300, y = -40 }
	--cfg.units.raid.attributes.visibility = "custom [nogroup][group:party][group:raid] show;hide"
	cfg.units.raid.attributes.showPlayer = true
	cfg.units.raid.attributes.showParty = true
	cfg.units.raid.attributes.showSolo = true
	cfg.units.player.combobar.show = false
end