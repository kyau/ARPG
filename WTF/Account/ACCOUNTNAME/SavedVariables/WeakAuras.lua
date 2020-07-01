
WeakAurasSaved = {
	["dynamicIconCache"] = {
		["Brain Freeze"] = {
			[190446] = 236206,
		},
		["Fingers of Frost"] = {
			[44544] = 236227,
		},
		["Battle Cry"] = {
			[1719] = 458972,
		},
		["Meat Cleaver"] = {
			[85739] = 132369,
		},
		["Battle Shout"] = {
			[6673] = 132333,
		},
		["Shield Block"] = {
			[132404] = 132110,
		},
	},
	["displays"] = {
		["RaidCDs_ButtonHandler"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["xOffset"] = -114.22207641602,
			["displayText"] = " ",
			["yOffset"] = -13.008357048035,
			["foregroundColor"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["sameTexture"] = true,
			["url"] = "https://wago.io/RaidCDs",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "BOTTOMLEFT",
			["desc"] = "Handles the Buttons. \n    \n    \n\nTo remove the button:\n\n    Go to RaidCDs_ButtonHandler --> Actions tab --> On Init > 'Expand Text Editor'\n    Change \"TehrsCDs_show_ParentButton\" to \"false\", and then reload your UI",
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["crop_y"] = 0.41,
			["startAngle"] = 0,
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["blendMode"] = "BLEND",
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["zoom"] = 0,
			["auto"] = true,
			["compress"] = false,
			["alpha"] = 1,
			["uid"] = "aTeeIkJ3Bi7",
			["displayIcon"] = 134062,
			["stacksPoint"] = "BOTTOMRIGHT",
			["backgroundOffset"] = 2,
			["outline"] = "OUTLINE",
			["color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["customText"] = "function()\n    if TehrsCDs_show_ParentButton then\n        if UnitAura(\"player\",\"Immolation Aura\") then\n            aura_env.parentButton:Show()\n            print(\"success\")\n        else\n            aura_env.parentButton:Hide()\n        end\n    end\nend\n\n\n\n",
			["shadowYOffset"] = -1,
			["desaturateBackground"] = true,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["desaturateForeground"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "status",
						["event"] = "Health",
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["names"] = {
						},
						["spellIds"] = {
						},
						["custom"] = "function()\n    local parentName = WeakAurasSaved.displays[WeakAuras.regions[aura_env.id].region:GetParent().id]\n    if (parentName[\"TehrsRaidCDs\"] == nil) then parentName[\"TehrsRaidCDs\"] = {} end    \n    if (parentName[\"TehrsRaidCDs\"][\"Show Settings\"] == nil) then parentName[\"TehrsRaidCDs\"][\"Show Settings\"] = {} end\n    local TehrsCDs = parentName[\"TehrsRaidCDs\"]    \n    if not TehrsCDs.minmaxDisplay then\n        return true\n    elseif TehrsCDs.minmaxDisplay then\n        return false\n    end\nend",
						["check"] = "update",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["custom"] = "function ()\n    return true\nend",
					},
				}, -- [1]
				["1"] = {
					["trigger"] = {
						["type"] = "custom",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["customName"] = "",
						["custom"] = "function()\n    local parentName = WeakAurasSaved.displays[WeakAuras.regions[aura_env.id].region:GetParent().id]\n    if (parentName[\"TehrsRaidCDs\"] == nil) then parentName[\"TehrsRaidCDs\"] = {} end    \n    if (parentName[\"TehrsRaidCDs\"][\"Show Settings\"] == nil) then parentName[\"TehrsRaidCDs\"][\"Show Settings\"] = {} end\n    local TehrsCDs = parentName[\"TehrsRaidCDs\"]    \n    if not TehrsCDs.minmaxDisplay then\n        return true\n    elseif TehrsCDs.minmaxDisplay then\n        return false\n    end\nend",
						["check"] = "update",
						["custom_type"] = "status",
						["event"] = "Conditions",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
						["custom"] = "function ()\n    return true\nend",
					},
				},
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 29,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["stickyDuration"] = false,
			["discrete_rotation"] = 0,
			["version"] = 1,
			["height"] = 44.85470199585,
			["rotate"] = false,
			["fontSize"] = 45,
			["displayStacks"] = " ",
			["anchorPoint"] = "CENTER",
			["mirror"] = false,
			["authorOptions"] = {
			},
			["parent"] = "!Tehr's CDs",
			["crop_x"] = 0.41,
			["orientation"] = "VERTICAL",
			["crop"] = 0.41,
			["fixedWidth"] = 200,
			["config"] = {
			},
			["width"] = 16.410272598267,
			["stacksContainment"] = "INSIDE",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "local TehrsCDs_show_ParentButton = true --Do you want the button? \n\n--------------------------------------------\n----- Don't change anything below this -----\n--------------------------------------------\n\nlocal parentID = WeakAurasSaved.displays[WeakAuras.regions[aura_env.id].region:GetParent().id]\nif (parentID[\"TehrsRaidCDs\"] == nil) then parentID[\"TehrsRaidCDs\"] = {} end    \nif (parentID[\"TehrsRaidCDs\"][\"Show Settings\"] == nil) then parentID[\"TehrsRaidCDs\"][\"Show Settings\"] = {} end\nif (parentID[\"TehrsRaidCDs\"][\"Translation Settings\"] == nil) then parentID[\"TehrsRaidCDs\"][\"Translation Settings\"] = {} end\nif (parentID[\"TehrsRaidCDs\"][\"Translation Settings\"][\"frFR\"] == nil) then parentID[\"TehrsRaidCDs\"][\"Translation Settings\"][\"frFR\"] = {} end\nif (parentID[\"TehrsRaidCDs\"][\"Translation Settings\"][\"zhCN\"] == nil) then parentID[\"TehrsRaidCDs\"][\"Translation Settings\"][\"zhCN\"] = {} end\nif (parentID[\"TehrsRaidCDs\"][\"Translation Settings\"][\"zhTW\"] == nil) then parentID[\"TehrsRaidCDs\"][\"Translation Settings\"][\"zhTW\"] = {} end\nif (parentID[\"TehrsRaidCDs\"][\"Translation Settings\"][\"deDE\"] == nil) then parentID[\"TehrsRaidCDs\"][\"Translation Settings\"][\"deDE\"] = {} end\nif (parentID[\"TehrsRaidCDs\"][\"Translation Settings\"][\"ruRU\"] == nil) then parentID[\"TehrsRaidCDs\"][\"Translation Settings\"][\"ruRU\"] = {} end\nif (parentID[\"TehrsRaidCDs\"][\"Translation Settings\"][\"koKR\"] == nil) then parentID[\"TehrsRaidCDs\"][\"Translation Settings\"][\"koKR\"] = {} end\nif (parentID[\"TehrsRaidCDs\"][\"Translation Settings\"][\"esES\"] == nil) then parentID[\"TehrsRaidCDs\"][\"Translation Settings\"][\"esES\"] = {} end\nif (parentID[\"TehrsRaidCDs\"][\"Translation Settings\"][\"itIT\"] == nil) then parentID[\"TehrsRaidCDs\"][\"Translation Settings\"][\"itIT\"] = {} end\nlocal TehrsCDs = parentID[\"TehrsRaidCDs\"]        \nlocal backgroundName = parentID[\"controlledChildren\"][6]\nlocal namesTextName = parentID[\"controlledChildren\"][3]\nlocal filename, fontHeight, flags = WeakAuras.regions[namesTextName].region.text:GetFont()\nlocal backgroundAlpha = \"Background Alpha\"\nlocal textSize = \"Text Size\"\nlocal locale = GetLocale()\nlocal RetrieveSpellName = function(spellID)\n    local name, rank, icon, castingTime, minRange, maxRange, spellID = GetSpellInfo(spellID) or \"something broke\"\n    return name\nend\nlocal buttonText = { }\nTehrsCDs.fontSize = TehrsCDs.fontSize or 0    \n\nif ((not TehrsCDs[\"Show Settings\"].allExterns) and (not TehrsCDs[\"Show Settings\"].allCDs) and (not TehrsCDs[\"Show Settings\"].allUtility) and (not TehrsCDs[\"Show Settings\"].allImmunityCDs) and (not TehrsCDs[\"Show Settings\"].allAoECCs) and (not TehrsCDs[\"Show Settings\"].allInterrupts) and (not TehrsCDs[\"Show Settings\"].allRezzes)) then\n    print(\"|cFF00A2E8Tehr's RaidCDs:|r If you disabled all of the sections on accident and want to re-enable them, type the following:\\n   /script WeakAuras.ScanEvents(\\\"TehrsCDs_ShowAll\\\")\")\nend\n\n-- Translation Handler\nif #parentID[\"controlledChildren\"] > 8 then\n    for i = 8,#parentID[\"controlledChildren\"] do\n        if parentID[\"controlledChildren\"][i] then\n            WeakAuras.ActivateAuraEnvironment(parentID[\"controlledChildren\"][i])\n            WeakAuras.ActivateAuraEnvironment()\n        end\n    end\nend\n\nif TehrsCDs[\"Translation Settings\"][\"frFR\"].Translation_French then\n    buttonText = TehrsCDs[\"Translation Settings\"][\"frFR\"].Translation_French_buttonText\nelseif TehrsCDs[\"Translation Settings\"][\"zhCN\"].Translation_Chinese then\n    buttonText = TehrsCDs[\"Translation Settings\"][\"zhCN\"].Translation_Chinese_buttonText\nelseif TehrsCDs[\"Translation Settings\"][\"zhTW\"].Translation_ChineseTraditional then\n    buttonText = TehrsCDs[\"Translation Settings\"][\"zhTW\"].Translation_ChineseTraditional_buttonText\nelseif TehrsCDs[\"Translation Settings\"][\"deDE\"].Translation_German then\n    buttonText = TehrsCDs[\"Translation Settings\"][\"deDE\"].Translation_German_buttonText\nelseif TehrsCDs[\"Translation Settings\"][\"koKR\"].Translation_Korean then\n    buttonText = TehrsCDs[\"Translation Settings\"][\"koKR\"].Translation_Korean_buttonText\nelseif TehrsCDs[\"Translation Settings\"][\"ruRU\"].Translation_Russian then\n    buttonText = TehrsCDs[\"Translation Settings\"][\"ruRU\"].Translation_Russian_buttonText    \nelseif TehrsCDs[\"Translation Settings\"][\"esES\"].Translation_Spanish then\n    buttonText = TehrsCDs[\"Translation Settings\"][\"esES\"].Translation_Spanish_buttonText    \nelseif TehrsCDs[\"Translation Settings\"][\"itIT\"].Translation_Italian then\n    buttonText = TehrsCDs[\"Translation Settings\"][\"itIT\"].Translation_Italian_buttonText        \nelse\n    buttonText = {\n        [\"Cancel\"] = \"Cancel\",\n        [\"print1\"] = \" in Raid\",\n        [\"printEnabled\"] = \"ENABLED\",\n        [\"printDisabled\"] = \"DISABLED\",\n        [\"allCDs\"] = \"All CDs\",\n        [\"resetSuccess\"] = \"Successfully reset\",\n        [\"L1N1\"] = \"Settings\",\n        [\"L1N2\"] = \"Toggle Display\",\n        [\"L1N3\"] = \"Toggle Sliders\",\n        [\"L1N4\"] = \"General Visibility Settings\",\n        [\"L1N8\"] = \"Check CDs\",\n        --[\"L1N9\"] = \"Sort CDs by Time\",\n        [\"L1N10\"] = \"Show Empty Groups\",\n        [\"L1N11\"] = \"Show Only On Cooldown\",\n        [\"L2N1.1\"] = \"General Settings\",\n        [\"L2N2.1\"] = \"Show All\",\n        [\"L2N3.1\"] = \"Show External CDs\",\n        [\"L2N4.1\"] = \"Show Raid CDs\",\n        [\"L2N5.1\"] = \"Show Utility CDs\",\n        [\"L2N6.1\"] = \"Show Immunities\",\n        [\"L2N7.1\"] = \"Show Crowd Control\",\n        [\"L2N8.1\"] = \"Show Interrupts\",\n        [\"L2N9.1\"] = \"Show Battle Rezzes\",    \n        [\"L1N5\"] = \"Raid Visibility Settings\",\n        [\"L2N1.2\"] = \"Raid Settings\",\n        [\"L2N2.2\"] = \"Show All\",\n        [\"L2N3.2\"] = \"Show External CDs\",\n        [\"L2N4.2\"] = \"Show Raid CDs\",\n        [\"L2N5.2\"] = \"Show Utility CDs\",\n        [\"L2N6.2\"] = \"Show Immunities\",\n        [\"L2N7.2\"] = \"Show Crowd Control\",\n        [\"L2N8.2\"] = \"Show Interrupts\",\n        [\"L2N9.2\"] = \"Show Battle Rezzes\",\n        [\"L2N10.2\"] = \"Show Ankh\",\n        [\"L2N11.2\"] = \"Show Battle Rez Timer\",\n        [\"L1N6\"] = \"Reset Cooldowns\",\n        [\"L2N1.3\"] = \"Reset Cooldowns\",\n        [\"L2N2.3\"] = \"Reset All CDs\",\n        [\"L2N3.3\"] = \"Reset External CDs\",\n        [\"L2N4.3\"] = \"Reset Raid CDs\",\n        [\"L2N5.3\"] = \"Reset Utility CDs\",\n        [\"L2N6.3\"] = \"Reset Immunities\",\n        [\"L2N7.3\"] = \"Reset Crowd Control\",\n        [\"L2N8.3\"] = \"Reset Interrupts\",\n        [\"L2N9.3\"] = \"Reset Battle Rezzes\",\n        [\"L1N7\"] = \"Show Individual CDs\",\n        [\"L2N1.4\"] = \"Show Individual CDs\",\n        [\"L2N2.4\"] = \"Utility |cFFF58CBABoP|r\",\n        [\"L2N3.4\"] = \"External CDs\",\n        [\"L2N4.4\"] = \"Raid CDs\",\n        [\"L2N5.4\"] = \"Utility CDs\",\n        [\"L2N6.4\"] = \"Immunities\",\n        [\"L2N7.4\"] = \"Crowd Control\",\n        [\"L2N8.4\"] = \"Interrupts\",\n        [\"L2N9.4\"] = \"Battle Rezzes\",\n        [\"L2N10.4\"] = \"Ankh\",\n        [\"L2N11.4\"] = \"Battle Rez Timer\"        \n    }\nend\n\n-- Buttons\n\nlocal alphaSlider = CreateFrame(\"Slider\",\"Background Alpha\",WeakAuras.regions[backgroundName].region,\"OptionsSliderTemplate\") --frameType, frameName, frameParent, frameTemplate   \nalphaSlider:SetPoint(\"TOP\",0,35)\nalphaSlider.textLow = _G[backgroundAlpha..\"Low\"]\nalphaSlider.textHigh = _G[backgroundAlpha..\"High\"]\nalphaSlider.text = _G[backgroundAlpha..\"Text\"]\nalphaSlider:SetMinMaxValues(0, 1)\nalphaSlider.minValue, alphaSlider.maxValue = alphaSlider:GetMinMaxValues() \nalphaSlider.textLow:SetText(alphaSlider.minValue)\nalphaSlider.textHigh:SetText(alphaSlider.maxValue)\nalphaSlider.text:SetText(backgroundAlpha)\nalphaSlider:SetValue(.5)\nalphaSlider:SetValueStep(.1)\nalphaSlider:SetScript(\"OnValueChanged\", function(self,event,arg1) WeakAuras.regions[backgroundName].region.texture:SetVertexColor(0,0,0,event) end)\nalphaSlider:Hide()\n\nlocal textSlider = CreateFrame(\"Slider\",\"Text Size\",alphaSlider,\"OptionsSliderTemplate\") --frameType, frameName, frameParent, frameTemplate   \ntextSlider:SetPoint(\"TOP\",0,35)\ntextSlider.textLow = _G[textSize..\"Low\"]\ntextSlider.textHigh = _G[textSize..\"High\"]\ntextSlider.text = _G[textSize..\"Text\"]\ntextSlider:SetMinMaxValues(11, 24)\ntextSlider.minValue, textSlider.maxValue = textSlider:GetMinMaxValues() \ntextSlider.textLow:SetText(textSlider.minValue)\ntextSlider.textHigh:SetText(textSlider.maxValue)\ntextSlider.text:SetText(textSize)\ntextSlider:SetValue(fontHeight)\ntextSlider:SetValueStep(1)\ntextSlider:SetScript(\"OnValueChanged\", function(self,event,arg1)\n        WeakAuras.regions[namesTextName].region.text:SetFont(filename,event,flags) \n        TehrsCDs.fontSize = event\nend)\ntextSlider:SetScript(\"OnMouseUp\", function(self,event,arg1)\n        print(\"|cFF00A2E8Tehr's RaidCDs:|r Reload your UI to re-align!\")\n        WeakAurasSaved.displays[namesTextName][\"fontSize\"] = TehrsCDs.fontSize\nend)\n\naura_env.maximizeButton = aura_env.maximizeButton or CreateFrame(\"Button\",\"mymaximizeButton\",WeakAuras.regions[aura_env.id].region,\"UIPanelButtonTemplate\")\naura_env.maximizeButton:SetPoint(\"CENTER\",0,0)\naura_env.maximizeButton:SetWidth(50)\naura_env.maximizeButton:SetHeight(20)\naura_env.maximizeButton:SetText(\"show\")\naura_env.maximizeButton:SetNormalFontObject(\"GameFontNormalSmall\")\naura_env.maximizeButton:SetDisabledFontObject(GameFontDisable)\naura_env.maximizeButton:SetHighlightFontObject(GameFontHighlight)\naura_env.maximizeButton:SetNormalFontObject(GameFontNormal)\naura_env.maximizeButton:RegisterForClicks(\"AnyDown\")\naura_env.maximizeButton:SetScript(\"OnClick\", function (self, button, down)\n        TehrsCDs.minmaxDisplay = not TehrsCDs.minmaxDisplay\n        print(\"|cFF00A2E8Tehr's RaidCDs:|r \"..( TehrsCDs.minmaxDisplay and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ));\nend)\n\nif TehrsCDs_show_ParentButton then\n    aura_env.parentButton = aura_env.parentButton or CreateFrame(\"Button\",\"myparentButton\",WeakAuras.regions[backgroundName].region,\"UIPanelButtonTemplate\")\n    aura_env.parentButton:SetPoint(\"TOPRIGHT\",0,0)\n    aura_env.parentButton:SetWidth(20)\n    aura_env.parentButton:SetHeight(20)\n    aura_env.parentButton:SetText(\"S\")\n    aura_env.parentButton:EnableMouse(true)\n    aura_env.parentButton:SetNormalFontObject(\"GameFontNormalSmall\")\n    aura_env.parentButton:SetDisabledFontObject(GameFontDisable)\n    aura_env.parentButton:SetHighlightFontObject(GameFontHighlight)\n    aura_env.parentButton:SetNormalFontObject(GameFontNormal)\n    aura_env.parentButton:RegisterForClicks(\"AnyDown\")\n    aura_env.parentButton:SetScript(\"OnClick\", function (self, button, down)\n            if button == \"LeftButton\" then\n                local menu = {    \n                    { text = buttonText[\"L1N1\"], notCheckable = 1, isTitle = true}, \n                    \n                    --Toggle Display\n                    { text = buttonText[\"L1N2\"], notCheckable = 1,\n                        func = function()\n                            TehrsCDs.minmaxDisplay = not TehrsCDs.minmaxDisplay\n                            print(\"|cFF00A2E8Tehr's RaidCDs:|r \"..( TehrsCDs.minmaxDisplay and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                    end },                   \n                    \n                    -- Toggle Sliders\n                    { text = buttonText[\"L1N3\"], notCheckable = 1,\n                        func = function()\n                            if alphaSlider:IsShown() then\n                                alphaSlider:Hide()\n                            else\n                                alphaSlider:Show()\n                            end\n                    end },    \n                    \n                    { text = \" \", notCheckable = 1, disabled = true},\n                    \n                    --Toggle Polling\n                    { text = buttonText[\"L1N8\"], isNotRadio = true, keepShownOnClick = true, checked = not (TehrsCDs._raidCDs_groupPoll_state == \"pause\"),\n                        func = function()\n                            if TehrsCDs._raidCDs_groupPoll_state == \"pause\" then\n                                TehrsCDs._raidCDs_groupPoll_state = \"nextPlayer\"\n                            else\n                                TehrsCDs._raidCDs_groupPoll_state = \"pause\"\n                            end\n                            print(\"|cFF00A2E8Tehr's RaidCDs:|r \"..buttonText[\"L1N8\"]..\" \"..(TehrsCDs._raidCDs_groupPoll_state == \"pause\" and \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" or \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" ))\n                    end },                        \n                    --[[\n                --Toggle Sorting by Timer\n                { text = buttonText[\"L1N9\"], isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].SortByTimer,\n                    func = function()\n                        TehrsCDs[\"Show Settings\"].SortByTimer = not TehrsCDs[\"Show Settings\"].SortByTimer\n                        print(\"|cFF00A2E8Tehr's RaidCDs:|r \"..buttonText[\"L1N9\"]..\" \"..(not TehrsCDs[\"Show Settings\"].SortByTimer and \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" or \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" ))\n                    end },                    \n                        ]]\n                    \n                    --Toggle Empty Sections\n                    { text = buttonText[\"L1N10\"], isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].ShowEmptySections,\n                        func = function()\n                            TehrsCDs[\"Show Settings\"].ShowEmptySections = not TehrsCDs[\"Show Settings\"].ShowEmptySections\n                            print(\"|cFF00A2E8Tehr's RaidCDs:|r \"..buttonText[\"L1N10\"]..\" \"..( TehrsCDs[\"Show Settings\"].ShowEmptySections and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                    end },          \n                    \n                    --Toggle On Cool\n                    { text = buttonText[\"L1N11\"], isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].ShowOnCooldownOnly,\n                        func = function()\n                            TehrsCDs[\"Show Settings\"].ShowOnCooldownOnly = not TehrsCDs[\"Show Settings\"].ShowOnCooldownOnly\n                            print(\"|cFF00A2E8Tehr's RaidCDs:|r \"..buttonText[\"L1N11\"]..\" \"..( TehrsCDs[\"Show Settings\"].ShowOnCooldownOnly and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                    end },                    \n                    \n                    { text = \" \", notCheckable = 1, disabled = true},\n                    \n                    --General Settings\n                    { text = buttonText[\"L1N4\"], keepShownOnClick = true, hasArrow = true, notCheckable = 1,\n                        menuList = {                \n                            { text = buttonText[\"L2N1.1\"], notCheckable = 1, isTitle = true}, \n                            { text = buttonText[\"L2N2.1\"], notCheckable = 1,\n                                func = function()\n                                    TehrsCDs[\"Show Settings\"].allExterns = true\n                                    TehrsCDs[\"Show Settings\"].allCDs = true\n                                    TehrsCDs[\"Show Settings\"].allUtility = true\n                                    TehrsCDs[\"Show Settings\"].allImmunityCDs = true\n                                    TehrsCDs[\"Show Settings\"].allAoECCs = true\n                                    TehrsCDs[\"Show Settings\"].allInterrupts = true\n                                    TehrsCDs[\"Show Settings\"].allRezzes = true\n                                    print(\"|cFF00A2E8Tehr's RaidCDs:|r All CDs |cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\") \n                            end },\n                            { text = \" \", notCheckable = 1, disabled = true},\n                            { text = buttonText[\"L2N3.1\"], isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].allExterns,\n                                func = function()\n                                    TehrsCDs[\"Show Settings\"].allExterns = not TehrsCDs[\"Show Settings\"].allExterns\n                                    print(\"|cFF00A2E8Tehr's RaidCDs:|r \"..buttonText[\"L2N3.4\"]..\" \"..( TehrsCDs[\"Show Settings\"].allExterns and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" )) \n                            end },\n                            { text = buttonText[\"L2N4.1\"], isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].allCDs,\n                                func = function()\n                                    TehrsCDs[\"Show Settings\"].allCDs = not TehrsCDs[\"Show Settings\"].allCDs\n                                    print(\"|cFF00A2E8Tehr's RaidCDs:|r \"..buttonText[\"L2N4.4\"]..\" \"..( TehrsCDs[\"Show Settings\"].allCDs and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" )) \n                            end },\n                            { text = buttonText[\"L2N5.1\"], isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].allUtility, \n                                func = function()\n                                    TehrsCDs[\"Show Settings\"].allUtility = not TehrsCDs[\"Show Settings\"].allUtility\n                                    print(\"|cFF00A2E8Tehr's RaidCDs:|r \"..buttonText[\"L2N5.4\"]..\" \"..( TehrsCDs[\"Show Settings\"].allUtility and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                            end },                       \n                            { text = buttonText[\"L2N6.1\"], isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].allImmunityCDs,\n                                func = function()\n                                    TehrsCDs[\"Show Settings\"].allImmunityCDs = not TehrsCDs[\"Show Settings\"].allImmunityCDs\n                                    print(\"|cFF00A2E8Tehr's RaidCDs:|r \"..buttonText[\"L2N6.4\"]..\" \"..( TehrsCDs[\"Show Settings\"].allImmunityCDs and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" )) \n                            end },      \n                            { text = buttonText[\"L2N7.1\"], isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].allAoECCs,\n                                func = function()\n                                    TehrsCDs[\"Show Settings\"].allAoECCs = not TehrsCDs[\"Show Settings\"].allAoECCs\n                                    print(\"|cFF00A2E8Tehr's RaidCDs:|r \"..buttonText[\"L2N7.4\"]..\" \"..( TehrsCDs[\"Show Settings\"].allAoECCs and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                            end },           \n                            { text = buttonText[\"L2N8.1\"], isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].allInterrupts,\n                                func = function()\n                                    TehrsCDs[\"Show Settings\"].allInterrupts = not TehrsCDs[\"Show Settings\"].allInterrupts\n                                    print(\"|cFF00A2E8Tehr's RaidCDs:|r \"..buttonText[\"L2N8.4\"]..\" \"..( TehrsCDs[\"Show Settings\"].allInterrupts and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                            end },       \n                            { text = buttonText[\"L2N9.1\"], isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].allRezzes,\n                                func = function()\n                                    TehrsCDs[\"Show Settings\"].allRezzes = not TehrsCDs[\"Show Settings\"].allRezzes\n                                    print(\"|cFF00A2E8Tehr's RaidCDs:|r \"..buttonText[\"L2N9.4\"]..\" \"..( TehrsCDs[\"Show Settings\"].allRezzes and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" )) \n                            end },    \n                            { text = buttonText[\"L2N11.2\"], isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].mythicDungeonBattleRezTimer,\n                                func = function()\n                                    TehrsCDs[\"Show Settings\"].mythicDungeonBattleRezTimer = not TehrsCDs[\"Show Settings\"].mythicDungeonBattleRezTimer\n                                    print(\"|cFF00A2E8Tehr's RaidCDs:|r \"..buttonText[\"L2N9.4\"]..\" \"..( TehrsCDs[\"Show Settings\"].mythicDungeonBattleRezTimer and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" )) \n                            end },                              \n                            { text = \" \", notCheckable = 1, disabled = true},    \n                            { text = buttonText[\"Cancel\"], notCheckable = 1},\n                        } \n                    }, \n                    \n                    --Raid Settings\n                    { text = buttonText[\"L1N5\"], keepShownOnClick = true, hasArrow = true, notCheckable = 1, \n                        menuList = {    \n                            { text = buttonText[\"L2N1.2\"], notCheckable = 1, isTitle = true},    \n                            { text = buttonText[\"L2N2.2\"], notCheckable = 1,\n                                func = function()\n                                    TehrsCDs[\"Show Settings\"].allExterns_inRaid = true\n                                    TehrsCDs[\"Show Settings\"].allCDs_inRaid = true\n                                    TehrsCDs[\"Show Settings\"].allUtility_inRaid = true\n                                    TehrsCDs[\"Show Settings\"].allImmunityCDs_inRaid = true\n                                    TehrsCDs[\"Show Settings\"].allAoECCs_inRaid = true\n                                    TehrsCDs[\"Show Settings\"].allInterrupts_inRaid = true\n                                    TehrsCDs[\"Show Settings\"].allRezzes_inRaid = true\n                                    TehrsCDs[\"Show Settings\"].raidBattleRezTimer = true\n                                    TehrsCDs[\"Show Settings\"].Ankh_inRaid = true\n                                    print(\"|cFF00A2E8Tehr's RaidCDs:|r \"..buttonText[\"allCDs\"]..\" |cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r \"..buttonText[\"print1\"]) \n                            end },\n                            { text = \" \", notCheckable = 1, disabled = true},\n                            { text = buttonText[\"L2N3.2\"], isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].allExterns_inRaid,\n                                func = function()\n                                    TehrsCDs[\"Show Settings\"].allExterns_inRaid = not TehrsCDs[\"Show Settings\"].allExterns_inRaid\n                                    print(\"|cFF00A2E8Tehr's RaidCDs:|r \"..buttonText[\"L2N3.4\"]..\" \"..( TehrsCDs[\"Show Settings\"].allExterns_inRaid and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" )..buttonText[\"print1\"]) \n                            end },\n                            { text = buttonText[\"L2N4.2\"], isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].allCDs_inRaid,\n                                func = function()\n                                    TehrsCDs[\"Show Settings\"].allCDs_inRaid = not TehrsCDs[\"Show Settings\"].allCDs_inRaid\n                                    print(\"|cFF00A2E8Tehr's RaidCDs:|r \"..buttonText[\"L2N4.4\"]..\" \"..( TehrsCDs[\"Show Settings\"].allCDs_inRaid and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" )..buttonText[\"print1\"]) \n                            end },\n                            { text = buttonText[\"L2N5.2\"], isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].allUtility_inRaid,\n                                func = function()\n                                    TehrsCDs[\"Show Settings\"].allUtility_inRaid = not TehrsCDs[\"Show Settings\"].allUtility_inRaid\n                                    print(\"|cFF00A2E8Tehr's RaidCDs:|r \"..buttonText[\"L2N5.4\"]..\" \"..( TehrsCDs[\"Show Settings\"].allUtility_inRaid and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" )..buttonText[\"print1\"]) \n                            end },                       \n                            { text = buttonText[\"L2N6.2\"], isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].allImmunityCDs_inRaid,\n                                func = function()\n                                    TehrsCDs[\"Show Settings\"].allImmunityCDs_inRaid = not TehrsCDs[\"Show Settings\"].allImmunityCDs_inRaid\n                                    print(\"|cFF00A2E8Tehr's RaidCDs:|r \"..buttonText[\"L2N6.4\"]..\" \"..( TehrsCDs[\"Show Settings\"].allImmunityCDs_inRaid and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" )..buttonText[\"print1\"]) \n                            end },        \n                            { text = buttonText[\"L2N7.2\"], isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].allAoECCs_inRaid,\n                                func = function()\n                                    TehrsCDs[\"Show Settings\"].allAoECCs_inRaid = not TehrsCDs[\"Show Settings\"].allAoECCs_inRaid\n                                    print(\"|cFF00A2E8Tehr's RaidCDs:|r \"..buttonText[\"L2N7.4\"]..\" \"..( TehrsCDs[\"Show Settings\"].allAoECCs_inRaid and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" )..buttonText[\"print1\"])\n                            end },           \n                            { text = buttonText[\"L2N8.2\"], isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].allInterrupts_inRaid,\n                                func = function()\n                                    TehrsCDs[\"Show Settings\"].allInterrupts_inRaid = not TehrsCDs[\"Show Settings\"].allInterrupts_inRaid\n                                    print(\"|cFF00A2E8Tehr's RaidCDs:|r \"..buttonText[\"L2N8.4\"]..\" \"..( TehrsCDs[\"Show Settings\"].allInterrupts_inRaid and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" )..buttonText[\"print1\"])\n                            end },        \n                            { text = buttonText[\"L2N9.2\"], isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].allRezzes_inRaid,\n                                func = function()\n                                    TehrsCDs[\"Show Settings\"].allRezzes_inRaid = not TehrsCDs[\"Show Settings\"].allRezzes_inRaid\n                                    print(\"|cFF00A2E8Tehr's RaidCDs:|r \"..buttonText[\"L2N9.4\"]..\" \"..( TehrsCDs[\"Show Settings\"].allRezzes_inRaid and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" )..buttonText[\"print1\"])  \n                            end },            \n                            { text = buttonText[\"L2N10.2\"], isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Ankh_inRaid,\n                                func = function()\n                                    TehrsCDs[\"Show Settings\"].Ankh_inRaid = not TehrsCDs[\"Show Settings\"].Ankh_inRaid\n                                    print(\"|cFF00A2E8Tehr's RaidCDs:|r \"..buttonText[\"L2N10.4\"]..\" \"..( TehrsCDs[\"Show Settings\"].Ankh_inRaid and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" )..buttonText[\"print1\"])  \n                            end },               \n                            { text = buttonText[\"L2N11.2\"], isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].raidBattleRezTimer,\n                                func = function()\n                                    TehrsCDs[\"Show Settings\"].raidBattleRezTimer = not TehrsCDs[\"Show Settings\"].raidBattleRezTimer\n                                    print(\"|cFF00A2E8Tehr's RaidCDs:|r \"..buttonText[\"L2N11.4\"]..\" \"..( TehrsCDs[\"Show Settings\"].raidBattleRezTimer and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" )..buttonText[\"print1\"])\n                            end },\n                            { text = \" \", notCheckable = 1, disabled = true},    \n                            { text = buttonText[\"Cancel\"], notCheckable = 1},\n                        } \n                    },    \n                    \n                    --Reset Cooldowns\n                    { text = buttonText[\"L1N6\"], keepShownOnClick = true, hasArrow = true, notCheckable = 1,    \n                        menuList = {    \n                            { text = buttonText[\"L2N1.3\"], notCheckable = 1, isTitle = true},   \n                            { text = buttonText[\"L2N2.3\"], notCheckable = 1,\n                                func = function()\n                                    TehrsCDs._externCDs_druids = nil\n                                    TehrsCDs._externCDs_monks = nil\n                                    TehrsCDs._externCDs_paladins = nil\n                                    TehrsCDs._externCDs_priests = nil\n                                    TehrsCDs._externCDs_warriors = nil\n                                    TehrsCDs._externCDs_dhs = nil\n                                    TehrsCDs._raidCDs_druids = nil\n                                    TehrsCDs._raidCDs_monks = nil\n                                    TehrsCDs._raidCDs_paladins = nil\n                                    TehrsCDs._raidCDs_priests = nil\n                                    TehrsCDs._raidCDs_shamans = nil\n                                    TehrsCDs._raidCDs_warriors = nil\n                                    TehrsCDs._raidCDs_dhs = nil\n                                    TehrsCDs._utilityCDs_dks = nil\n                                    TehrsCDs._utilityCDs_dhs = nil     \n                                    TehrsCDs._utilityCDs_shamans = nil\n                                    TehrsCDs._utilityCDs_druids = nil\n                                    TehrsCDs._utilityCDs_priests = nil\n                                    TehrsCDs._utilityCDs_paladins = nil\n                                    TehrsCDs._utilityCDs_hunters = nil\n                                    TehrsCDs._utilityCDs_rogues = nil        \n                                    TehrsCDs._interrupts_priests = nil\n                                    TehrsCDs._interrupts_mages = nil\n                                    TehrsCDs._interrupts_hunters = nil\n                                    TehrsCDs._interrupts_shamans = nil\n                                    TehrsCDs._interrupts_monks = nil\n                                    TehrsCDs._interrupts_paladins = nil\n                                    TehrsCDs._interrupts_dks = nil\n                                    TehrsCDs._interrupts_dhs = nil   \n                                    TehrsCDs._interrupts_rogues = nil\n                                    TehrsCDs._interrupts_warriors = nil\n                                    TehrsCDs._interrupts_druids = nil\n                                    TehrsCDs._interrupts_warlocks = nil\n                                    TehrsCDs._interrupts_belfs = nil \n                                    TehrsCDs._immunityCDs_mages = nil\n                                    TehrsCDs._immunityCDs_hunters = nil\n                                    TehrsCDs._immunityCDs_paladins = nil\n                                    TehrsCDs._immunityCDs_dhs = nil   \n                                    TehrsCDs._immunityCDs_rogues = nil         \n                                    TehrsCDs._aoeCCs_druids = nil\n                                    TehrsCDs._aoeCCs_priests = nil    \n                                    TehrsCDs._aoeCCs_hunters = nil\n                                    TehrsCDs._aoeCCs_mages = nil\n                                    TehrsCDs._aoeCCs_monks = nil   \n                                    TehrsCDs._aoeCCs_shamans = nil    \n                                    TehrsCDs._aoeCCs_warriors = nil\n                                    TehrsCDs._aoeCCs_dhs = nil\n                                    TehrsCDs._aoeCCs_warlocks = nil   \n                                    TehrsCDs._aoeCCs_dks = nil   \n                                    TehrsCDs._aoeCCs_tauren = nil    \n                                    TehrsCDs._aoeCCs_hmtauren = nil\n                                    TehrsCDs._rezCDs_dks = nil\n                                    TehrsCDs._rezCDs_druids = nil\n                                    TehrsCDs._rezCDs_warlocks = nil\n                                    TehrsCDs._rezCDs_shamans = nil\n                                    print(\"|cFF00A2E8Tehr's RaidCDs:|r \"..buttonText[\"resetSuccess\"]..\" \"..buttonText[\"allCDs\"])\n                            end },\n                            { text = \" \", notCheckable = 1, disabled = true},\n                            { text = buttonText[\"L2N3.3\"], notCheckable = 1,\n                                func = function()\n                                    TehrsCDs._externCDs_druids = nil\n                                    TehrsCDs._externCDs_monks = nil\n                                    TehrsCDs._externCDs_paladins = nil\n                                    TehrsCDs._externCDs_priests = nil\n                                    TehrsCDs._externCDs_warriors = nil\n                                    TehrsCDs._externCDs_dhs = nil\n                                    print(\"|cFF00A2E8Tehr's RaidCDs:|r \"..buttonText[\"resetSuccess\"]..\" \"..buttonText[\"L2N3.4\"])\n                            end },\n                            { text = buttonText[\"L2N4.3\"], notCheckable = 1,\n                                func = function()\n                                    TehrsCDs._raidCDs_druids = nil\n                                    TehrsCDs._raidCDs_monks = nil\n                                    TehrsCDs._raidCDs_paladins = nil\n                                    TehrsCDs._raidCDs_priests = nil\n                                    TehrsCDs._raidCDs_shamans = nil\n                                    TehrsCDs._raidCDs_warriors = nil\n                                    TehrsCDs._raidCDs_dhs = nil\n                                    print(\"|cFF00A2E8Tehr's RaidCDs:|r \"..buttonText[\"resetSuccess\"]..\" \"..buttonText[\"L2N4.4\"])  \n                            end },\n                            { text = buttonText[\"L2N5.3\"], notCheckable = 1,\n                                func = function()\n                                    TehrsCDs._utilityCDs_dks = nil\n                                    TehrsCDs._utilityCDs_dhs = nil     \n                                    TehrsCDs._utilityCDs_shamans = nil\n                                    TehrsCDs._utilityCDs_druids = nil\n                                    TehrsCDs._utilityCDs_priests = nil\n                                    TehrsCDs._utilityCDs_paladins = nil\n                                    TehrsCDs._utilityCDs_hunters = nil\n                                    TehrsCDs._utilityCDs_rogues = nil        \n                                    print(\"|cFF00A2E8Tehr's RaidCDs:|r \"..buttonText[\"resetSuccess\"]..\" \"..buttonText[\"L2N5.4\"]) \n                            end },\n                            { text = buttonText[\"L2N6.3\"], notCheckable = 1,\n                                func = function()\n                                    TehrsCDs._immunityCDs_mages = nil\n                                    TehrsCDs._immunityCDs_hunters = nil\n                                    TehrsCDs._immunityCDs_paladins = nil\n                                    TehrsCDs._immunityCDs_dhs = nil   \n                                    TehrsCDs._immunityCDs_rogues = nil         \n                                    print(\"|cFF00A2E8Tehr's RaidCDs:|r \"..buttonText[\"resetSuccess\"]..\" \"..buttonText[\"L2N6.4\"])  \n                            end },\n                            { text = buttonText[\"L2N7.3\"], notCheckable = 1,\n                                func = function()\n                                    TehrsCDs._aoeCCs_druids = nil\n                                    TehrsCDs._aoeCCs_priests = nil    \n                                    TehrsCDs._aoeCCs_hunters = nil\n                                    TehrsCDs._aoeCCs_mages = nil\n                                    TehrsCDs._aoeCCs_monks = nil   \n                                    TehrsCDs._aoeCCs_shamans = nil    \n                                    TehrsCDs._aoeCCs_warriors = nil\n                                    TehrsCDs._aoeCCs_dhs = nil\n                                    TehrsCDs._aoeCCs_warlocks = nil   \n                                    TehrsCDs._aoeCCs_dks = nil   \n                                    TehrsCDs._aoeCCs_tauren = nil    \n                                    TehrsCDs._aoeCCs_hmtauren = nil  \n                                    print(\"|cFF00A2E8Tehr's RaidCDs:|r \"..buttonText[\"resetSuccess\"]..\" \"..buttonText[\"L2N7.4\"]) \n                            end },\n                            { text = buttonText[\"L2N8.3\"], notCheckable = 1,\n                                func = function()\n                                    TehrsCDs._interrupts_priests = nil\n                                    TehrsCDs._interrupts_mages = nil\n                                    TehrsCDs._interrupts_hunters = nil\n                                    TehrsCDs._interrupts_shamans = nil\n                                    TehrsCDs._interrupts_monks = nil\n                                    TehrsCDs._interrupts_paladins = nil\n                                    TehrsCDs._interrupts_dks = nil\n                                    TehrsCDs._interrupts_dhs = nil   \n                                    TehrsCDs._interrupts_rogues = nil\n                                    TehrsCDs._interrupts_warriors = nil\n                                    TehrsCDs._interrupts_druids = nil\n                                    TehrsCDs._interrupts_warlocks = nil\n                                    TehrsCDs._interrupts_belfs = nil            \n                                    print(\"|cFF00A2E8Tehr's RaidCDs:|r \"..buttonText[\"resetSuccess\"]..\" \"..buttonText[\"L2N8.4\"])  \n                            end },\n                            { text = buttonText[\"L2N9.3\"], notCheckable = 1,\n                                func = function()\n                                    TehrsCDs._rezCDs_dks = nil\n                                    TehrsCDs._rezCDs_druids = nil\n                                    TehrsCDs._rezCDs_warlocks = nil\n                                    TehrsCDs._rezCDs_shamans = nil\n                                    print(\"|cFF00A2E8Tehr's RaidCDs:|r \"..buttonText[\"resetSuccess\"]..\" \"..buttonText[\"L2N9.4\"]) \n                            end },                \n                            { text = \" \", notCheckable = 1, disabled = true},    \n                            { text = buttonText[\"Cancel\"], notCheckable = 1}\n                        } \n                    },    \n                    \n                    --Individual CDs\n                    { text = buttonText[\"L1N7\"], keepShownOnClick = true, hasArrow = true, notCheckable = 1,\n                        menuList = {    \n                            { text = buttonText[\"L2N1.4\"], notCheckable = 1, isTitle = true},   \n                            { text = buttonText[\"L2N2.4\"], isNotRadio = true, keepShownOnClick = false, checked = TehrsCDs[\"Show Settings\"].BoPUtility,\n                                func = function()\n                                    TehrsCDs[\"Show Settings\"].BoPUtility = not TehrsCDs[\"Show Settings\"].BoPUtility\n                                    print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFF58CBA\"..RetrieveSpellName(1022)..\"|r: \"..( TehrsCDs[\"Show Settings\"].BoPUtility and \"|cFF00A2E8\"..buttonText[\"L2N5.4\"]..\"|r\" or \"|cFF00A2E8\"..buttonText[\"L2N3.4\"]..\"|r\" ))\n                                    print(\"|cFF00A2E8Tehr's RaidCDs:|r Remember to reload your UI for changes to take effect!\")\n                                end\n                            },         \n                            { text = \" \", notCheckable = 1, disabled = true},\n                            { text = buttonText[\"L2N3.4\"], keepShownOnClick = true, hasArrow = true, notCheckable = 1, \n                                menuList = {\n                                    { text = \"|cFFC79C6E\"..RetrieveSpellName(223657)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Safeguard,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Safeguard = not TehrsCDs[\"Show Settings\"].Safeguard\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFC79C6E\"..RetrieveSpellName(223657)..\"|r \"..( TehrsCDs[\"Show Settings\"].Safeguard and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },       \n                                    { text = \"|cFFFFFFFF\"..RetrieveSpellName(47788)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].GSpirit,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].GSpirit = not TehrsCDs[\"Show Settings\"].GSpirit\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFFFFFFF\"..RetrieveSpellName(47788)..\"|r \"..( TehrsCDs[\"Show Settings\"].GSpirit and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },   \n                                    { text = \"|cFFFFFFFF\"..RetrieveSpellName(33206)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].PSup,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].PSup = not TehrsCDs[\"Show Settings\"].PSup\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFFFFFFF\"..RetrieveSpellName(33206)..\"|r \"..( TehrsCDs[\"Show Settings\"].PSup and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },  \n                                    { text = \"|cFFFF7D0A\"..RetrieveSpellName(102342)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].IBark,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].IBark = not TehrsCDs[\"Show Settings\"].IBark\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFFF7D0A\"..RetrieveSpellName(102342)..\"|r \"..( TehrsCDs[\"Show Settings\"].IBark and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },      \n                                    { text = \"|cFFF58CBA\"..RetrieveSpellName(204018)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Spellward,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Spellward = not TehrsCDs[\"Show Settings\"].Spellward\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFF58CBA\"..RetrieveSpellName(204018)..\"|r \"..( TehrsCDs[\"Show Settings\"].Spellward and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },     \n                                    { text = \"|cFFF58CBA\"..RetrieveSpellName(6940)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Sac,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Sac = not TehrsCDs[\"Show Settings\"].Sac\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFF58CBA\"..RetrieveSpellName(6940)..\"|r \"..( TehrsCDs[\"Show Settings\"].Sac and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },    \n                                    { text = \"|cFFF58CBA\"..RetrieveSpellName(633)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].LoH,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].LoH = not TehrsCDs[\"Show Settings\"].LoH\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFF58CBA\"..RetrieveSpellName(633)..\"|r \"..( TehrsCDs[\"Show Settings\"].LoH and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },                                 \n                                    { text = \"|cFFF58CBA\"..RetrieveSpellName(1022)..\"|r\", notClickable = TehrsCDs[\"Show Settings\"].BoPUtility, isNotRadio = true, checked = (TehrsCDs[\"Show Settings\"].BoP and not TehrsCDs[\"Show Settings\"].BoPUtility), \n                                        func = function()                    \n                                            TehrsCDs[\"Show Settings\"].BoP = not TehrsCDs[\"Show Settings\"].BoP\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFF58CBA\"..RetrieveSpellName(1022)..\"|r \"..( TehrsCDs[\"Show Settings\"].BoP and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },      \n                                    { text = \"|cFF00FF96\"..RetrieveSpellName(116849)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].LCocoon,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].LCocoon = not TehrsCDs[\"Show Settings\"].LCocoon\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFF00FF96\"..RetrieveSpellName(116849)..\"|r \"..( TehrsCDs[\"Show Settings\"].LCocoon and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },                         \n                                    { text = \" \", notCheckable = 1, disabled = true},    \n                                    { text = \"|cFFFFFFFF\"..buttonText[\"Cancel\"], notCheckable = 1}\n                                } \n                            },        \n                            { text = buttonText[\"L2N4.4\"], keepShownOnClick = true, hasArrow = true, notCheckable = 1,\n                                menuList = { \n                                    { text = \"|cFFC79C6E\"..RetrieveSpellName(97462)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].CShout, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].CShout = not TehrsCDs[\"Show Settings\"].CShout\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFC79C6E\"..RetrieveSpellName(97462)..\"|r \"..( TehrsCDs[\"Show Settings\"].CShout and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },               \n                                    { text = \"|cFFFFFFFF\"..RetrieveSpellName(64843)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].DHymn,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].DHymn = not TehrsCDs[\"Show Settings\"].DHymn\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFFFFFFF\"..RetrieveSpellName(64843)..\"|r \"..( TehrsCDs[\"Show Settings\"].DHymn and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },    \n                                    { text = \"|cFFFFFFFF\"..RetrieveSpellName(200183)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Apotheosis,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Apotheosis = not TehrsCDs[\"Show Settings\"].Apotheosis\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFFFFFFF\"..RetrieveSpellName(200183)..\"|r \"..( TehrsCDs[\"Show Settings\"].Apotheosis and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },    \n                                    { text = \"|cFFFFFFFF\"..RetrieveSpellName(265202)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Salvation,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Salvation = not TehrsCDs[\"Show Settings\"].Salvation\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFFFFFFF\"..RetrieveSpellName(265202)..\"|r \"..( TehrsCDs[\"Show Settings\"].Salvation and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },                                    \n                                    { text = \"|cFFFFFFFF\"..RetrieveSpellName(15286)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].VE, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].VE = not TehrsCDs[\"Show Settings\"].VE\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFFFFFFF \"..RetrieveSpellName(15286)..\"|r \"..( TehrsCDs[\"Show Settings\"].VE and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },   \n                                    { text = \"|cFFFFFFFF\"..RetrieveSpellName(62618)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Barrier, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Barrier = not TehrsCDs[\"Show Settings\"].Barrier\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFFFFFFF\"..RetrieveSpellName(62618)..\"|r \"..( TehrsCDs[\"Show Settings\"].Barrier and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },    \n                                    { text = \"|cFFFFFFFF\"..RetrieveSpellName(47536)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Rapture, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Rapture = not TehrsCDs[\"Show Settings\"].Rapture\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFFFFFFF\"..RetrieveSpellName(47536)..\"|r \"..( TehrsCDs[\"Show Settings\"].Rapture and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },                                 \n                                    { text = \"|cFFA330C9\"..RetrieveSpellName(196718)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Darkness,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Darkness = not TehrsCDs[\"Show Settings\"].Darkness\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFA330C9\"..RetrieveSpellName(196718)..\"|r \"..( TehrsCDs[\"Show Settings\"].Darkness and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },    \n                                    { text = \"|cFFFF7D0A\"..RetrieveSpellName(740)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Tranq,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Tranq = not TehrsCDs[\"Show Settings\"].Tranq\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFFF7D0A\"..RetrieveSpellName(740)..\"|r \"..( TehrsCDs[\"Show Settings\"].Tranq and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },  \n                                    { text = \"|cFFFF7D0A\"..RetrieveSpellName(197721)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Flourish,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Flourish = not TehrsCDs[\"Show Settings\"].Flourish\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFFF7D0A\"..RetrieveSpellName(197721)..\"|r \"..( TehrsCDs[\"Show Settings\"].Flourish and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },                              \n                                    { text = \"|cFFFF7D0A\"..RetrieveSpellName(33891)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Tree,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Tree = not TehrsCDs[\"Show Settings\"].Tree\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFFF7D0A\"..RetrieveSpellName(33891)..\"|r \"..( TehrsCDs[\"Show Settings\"].Tree and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },                                        \n                                    { text = \"|cFFF58CBA\"..RetrieveSpellName(31821)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].AuraM,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].AuraM = not TehrsCDs[\"Show Settings\"].AuraM\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFF58CBA\"..RetrieveSpellName(31821)..\"|r \"..( TehrsCDs[\"Show Settings\"].AuraM and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },        \n                                    { text = \"|cFFF58CBA\"..RetrieveSpellName(204150)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Aegis, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Aegis = not TehrsCDs[\"Show Settings\"].Aegis\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFF58CBA\"..RetrieveSpellName(204150)..\"|r \"..( TehrsCDs[\"Show Settings\"].Aegis and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },       \n                                    { text = \"|cFFF58CBA\"..RetrieveSpellName(31884)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Wings, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Wings = not TehrsCDs[\"Show Settings\"].Wings\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFF58CBA\"..RetrieveSpellName(31884)..\"|r \"..( TehrsCDs[\"Show Settings\"].Wings and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },                                    \n                                    { text = \"|cFF0070DE\"..RetrieveSpellName(207399)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].AProt, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].AProt = not TehrsCDs[\"Show Settings\"].AProt\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFF0070DE\"..RetrieveSpellName(207399)..\"|r \"..( TehrsCDs[\"Show Settings\"].AProt and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },     \n                                    { text = \"|cFF0070DE\"..RetrieveSpellName(108281)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].AG,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].AG = not TehrsCDs[\"Show Settings\"].AG\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFF0070DE\"..RetrieveSpellName(108281)..\"|r \"..( TehrsCDs[\"Show Settings\"].AG and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },   \n                                    { text = \"|cFF0070DE\"..RetrieveSpellName(108280)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].HTide,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].HTide = not TehrsCDs[\"Show Settings\"].HTide\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFF0070DE\"..RetrieveSpellName(108280)..\"|r \"..( TehrsCDs[\"Show Settings\"].HTide and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },     \n                                    { text = \"|cFF0070DE\"..RetrieveSpellName(114052)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Ascendance,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Ascendance = not TehrsCDs[\"Show Settings\"].Ascendance\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFF0070DE\"..RetrieveSpellName(114052)..\"|r \"..( TehrsCDs[\"Show Settings\"].Ascendance and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },                                    \n                                    { text = \"|cFF0070DE\"..RetrieveSpellName(98008)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].SLT,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].SLT = not TehrsCDs[\"Show Settings\"].SLT\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFF0070DE\"..RetrieveSpellName(98008)..\"|r \"..( TehrsCDs[\"Show Settings\"].SLT and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },     \n                                    { text = \"|cFF00FF96\"..RetrieveSpellName(115310)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Revival, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Revival = not TehrsCDs[\"Show Settings\"].Revival\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFF00FF96\"..RetrieveSpellName(115310)..\"|r \"..( TehrsCDs[\"Show Settings\"].Revival and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },        \n                                    { text = \" \", notCheckable = 1, disabled = true},    \n                                    { text = \"|cFFFFFFFF\"..buttonText[\"Cancel\"], notCheckable = 1}\n                                }\n                            },    \n                            { text = buttonText[\"L2N5.4\"], keepShownOnClick = true, hasArrow = true, notCheckable = 1,\n                                menuList = { \n                                    { text = \"|cFFB4B4B4\"..RetrieveSpellName(58984)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Shadowmeld, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Shadowmeld = not TehrsCDs[\"Show Settings\"].Shadowmeld\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFB4B4B4\"..RetrieveSpellName(58984)..\"|r \"..( TehrsCDs[\"Show Settings\"].Shadowmeld and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },                              \n                                    { text = \"|cFFFFFFFF\"..RetrieveSpellName(64901)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Hope, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Hope = not TehrsCDs[\"Show Settings\"].Hope\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFFFFFFF\"..RetrieveSpellName(64901)..\"|r \"..( TehrsCDs[\"Show Settings\"].Hope and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },        \n                                    { text = \"|cFFFFFFFF\"..RetrieveSpellName(73325)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Grip, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Grip = not TehrsCDs[\"Show Settings\"].Grip\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFFFFFFF\"..RetrieveSpellName(73325)..\"|r \"..( TehrsCDs[\"Show Settings\"].Grip and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },    \n                                    { text = \"|cFFFF7D0A\"..RetrieveSpellName(29166)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Innervate, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Innervate = not TehrsCDs[\"Show Settings\"].Innervate\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFFF7D0A\"..RetrieveSpellName(29166)..\"|r \"..( TehrsCDs[\"Show Settings\"].Innervate and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },                                     \n                                    { text = \"|cFFFF7D0A\"..RetrieveSpellName(205636)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Treants, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Treants = not TehrsCDs[\"Show Settings\"].Treants\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFFF7D0A\"..RetrieveSpellName(205636)..\"|r \"..( TehrsCDs[\"Show Settings\"].Treants and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },                                    \n                                    { text = \"|cFFFF7D0A\"..RetrieveSpellName(106898)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Roar, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Roar = not TehrsCDs[\"Show Settings\"].Roar\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFFF7D0A\"..RetrieveSpellName(106898)..\"|r \"..( TehrsCDs[\"Show Settings\"].Roar and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },    \n                                    { text = \"|cFFF58CBA\"..RetrieveSpellName(1022)..\"|r\", notClickable = not TehrsCDs[\"Show Settings\"].BoPUtility, isNotRadio = true, checked = (TehrsCDs[\"Show Settings\"].BoP and TehrsCDs[\"Show Settings\"].BoPUtility), \n                                        func = function()                \n                                            TehrsCDs[\"Show Settings\"].BoP = not TehrsCDs[\"Show Settings\"].BoP\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFF58CBA\"..RetrieveSpellName(1022)..\"|r \"..( TehrsCDs[\"Show Settings\"].BoP and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },     \n                                    { text = \"|cFF0070DE\"..RetrieveSpellName(192077)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].WindRush,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].WindRush = not TehrsCDs[\"Show Settings\"].WindRush\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFF0070DE\"..RetrieveSpellName(192077)..\"|r \"..( TehrsCDs[\"Show Settings\"].WindRush and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },    \n                                    { text = \"|cFFABD473\"..RetrieveSpellName(34477)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Misdirect, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Misdirect = not TehrsCDs[\"Show Settings\"].Misdirect\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFABD473\"..RetrieveSpellName(34477)..\"|r \"..( TehrsCDs[\"Show Settings\"].Misdirect and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },        \n                                    { text = \"|cFFFFF569\"..RetrieveSpellName(57934)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Tricks, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Tricks = not TehrsCDs[\"Show Settings\"].Tricks\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFFFF569\"..RetrieveSpellName(57934)..\"|r \"..( TehrsCDs[\"Show Settings\"].Tricks and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },        \n                                    { text = \"|cFFFFF569\"..RetrieveSpellName(114018)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Shroud, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Shroud = not TehrsCDs[\"Show Settings\"].Shroud\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFFFF569\"..RetrieveSpellName(114018)..\"|r \"..( TehrsCDs[\"Show Settings\"].Shroud and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },                                     \n                                    { text = \" \", notCheckable = 1, disabled = true},    \n                                    { text = \"|cFFFFFFFF\"..buttonText[\"Cancel\"], notCheckable = 1}\n                                }\n                            },    \n                            { text = buttonText[\"L2N6.4\"], keepShownOnClick = true, hasArrow = true, notCheckable = 1,\n                                menuList = { \n                                    { text = \"|cFFA330C9\"..RetrieveSpellName(196555)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Netherwalk, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Netherwalk = not TehrsCDs[\"Show Settings\"].Netherwalk\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFA330C9\"..RetrieveSpellName(196555)..\"|r \"..( TehrsCDs[\"Show Settings\"].Netherwalk and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },         \n                                    { text = \"|cFFF58CBA\"..RetrieveSpellName(642)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Bubble, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Bubble = not TehrsCDs[\"Show Settings\"].Bubble\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFF58CBA\"..RetrieveSpellName(642)..\"|r \"..( TehrsCDs[\"Show Settings\"].Bubble and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },     \n                                    { text = \"|cFFABD473\"..RetrieveSpellName(186265)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Turtle, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Turtle = not TehrsCDs[\"Show Settings\"].Turtle\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFABD473\"..RetrieveSpellName(186265)..\"|r \"..( TehrsCDs[\"Show Settings\"].Turtle and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },     \n                                    { text = \"|cFFFFF569\"..RetrieveSpellName(31224)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Cloak, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Cloak = not TehrsCDs[\"Show Settings\"].Cloak\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFFFF569\"..RetrieveSpellName(31224)..\"|r \"..( TehrsCDs[\"Show Settings\"].Cloak and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },    \n                                    { text = \"|cFF69CCF0\"..RetrieveSpellName(45438)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Block, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Block = not TehrsCDs[\"Show Settings\"].Block\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFF69CCF0\"..RetrieveSpellName(45438)..\"|r \"..( TehrsCDs[\"Show Settings\"].Block and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },  \n                                    { text = \" \", notCheckable = 1, disabled = true},    \n                                    { text = \"|cFFFFFFFF\"..buttonText[\"Cancel\"], notCheckable = 1}\n                                }\n                            },    \n                            { text = buttonText[\"L2N7.4\"], keepShownOnClick = true, hasArrow = true, notCheckable = 1,\n                                menuList = { \n                                    { text = \"|cFFB4B4B4\"..RetrieveSpellName(20549)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Stomp, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Stomp = not TehrsCDs[\"Show Settings\"].Stomp\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFB4B4B4\"..RetrieveSpellName(20549)..\"|r \"..( TehrsCDs[\"Show Settings\"].Stomp and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },    \n                                    { text = \"|cFFB4B4B4\"..RetrieveSpellName(255654)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].BullRush, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].BullRush = not TehrsCDs[\"Show Settings\"].BullRush\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFB4B4B4\"..RetrieveSpellName(255654)..\"|r \"..( TehrsCDs[\"Show Settings\"].BullRush and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },  \n                                    { text = \"|cFFFF7D0A\"..RetrieveSpellName(102793)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Ursol,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Ursol = not TehrsCDs[\"Show Settings\"].Ursol\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFFF7D0A\"..RetrieveSpellName(102793)..\"|r \"..( TehrsCDs[\"Show Settings\"].Ursol and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    }, \n                                    { text = \"|cFFFF7D0A\"..RetrieveSpellName(61391)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Typhoon, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Typhoon = not TehrsCDs[\"Show Settings\"].Typhoon\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFFF7D0A\"..RetrieveSpellName(61391)..\"|r \"..( TehrsCDs[\"Show Settings\"].Typhoon and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },    \n                                    { text = \"|cFFFFFFFF\"..RetrieveSpellName(205369)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].MindBomb,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].MindBomb = not TehrsCDs[\"Show Settings\"].MindBomb\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFFFFFFF\"..RetrieveSpellName(205369)..\"|r \"..( TehrsCDs[\"Show Settings\"].MindBomb and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },    \n                                    { text = \"|cFFFFFFFF\"..RetrieveSpellName(204263)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Shining,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Shining = not TehrsCDs[\"Show Settings\"].Shining\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFFFFFFF\"..RetrieveSpellName(204263)..\"|r \"..( TehrsCDs[\"Show Settings\"].Shining and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },                                  \n                                    { text = \"|cFFC79C6E\"..RetrieveSpellName(46968)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Shockwave,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Shockwave = not TehrsCDs[\"Show Settings\"].Shockwave\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFC79C6E\"..RetrieveSpellName(46968)..\"|r \"..( TehrsCDs[\"Show Settings\"].Shockwave and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },    \n                                    { text = \"|cFFA330C9\"..RetrieveSpellName(202138)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Chains, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Chains = not TehrsCDs[\"Show Settings\"].Chains\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFA330C9\"..RetrieveSpellName(202138)..\"|r \"..( TehrsCDs[\"Show Settings\"].Chains and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },    \n                                    { text = \"|cFFC41F3B\"..RetrieveSpellName(108199)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Grasp,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Grasp = not TehrsCDs[\"Show Settings\"].Grasp\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFC41F3B\"..RetrieveSpellName(108199)..\"|r \"..( TehrsCDs[\"Show Settings\"].Grasp and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },         \n                                    { text = \"|cFF0070DE\"..RetrieveSpellName(192058)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].CapTotem, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].CapTotem = not TehrsCDs[\"Show Settings\"].CapTotem\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFF0070DE\"..RetrieveSpellName(192058)..\"|r \"..( TehrsCDs[\"Show Settings\"].CapTotem and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },      \n                                    { text = \"|cFF0070DE\"..RetrieveSpellName(51490)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Thunderstorm, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Thunderstorm = not TehrsCDs[\"Show Settings\"].Thunderstorm\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFF0070DE\"..RetrieveSpellName(51490)..\"|r \"..( TehrsCDs[\"Show Settings\"].Thunderstorm and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },                                  \n                                    { text = \"|cFFABD473\"..RetrieveSpellName(109248)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Binding,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Binding = not TehrsCDs[\"Show Settings\"].Binding\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFABD473\"..RetrieveSpellName(109248)..\"|r \"..( TehrsCDs[\"Show Settings\"].Binding and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },    \n                                    { text = \"|cFF9482C9\"..RetrieveSpellName(1122)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Infernal, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Infernal = not TehrsCDs[\"Show Settings\"].Infernal\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFF9482C9\"..RetrieveSpellName(1122)..\"|r \"..( TehrsCDs[\"Show Settings\"].Infernal and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },    \n                                    { text = \"|cFF9482C9\"..RetrieveSpellName(30283)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Shadowfury, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Shadowfury = not TehrsCDs[\"Show Settings\"].Shadowfury\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFF9482C9\"..RetrieveSpellName(30283)..\"|r \"..( TehrsCDs[\"Show Settings\"].Shadowfury and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },     \n                                    { text = \"|cFF00FF96\"..RetrieveSpellName(119381)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Sweep, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Sweep = not TehrsCDs[\"Show Settings\"].Sweep\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFF00FF96\"..RetrieveSpellName(119381)..\"|r \"..( TehrsCDs[\"Show Settings\"].Sweep and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },     \n                                    { text = \"|cFF00FF96\"..RetrieveSpellName(116844)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Ring, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Ring = not TehrsCDs[\"Show Settings\"].Ring\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFF00FF96\"..RetrieveSpellName(116844)..\"|r \"..( TehrsCDs[\"Show Settings\"].Ring and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },                                       \n                                    { text = \"|cFFA330C9\"..RetrieveSpellName(179057)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Nova, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Nova = not TehrsCDs[\"Show Settings\"].Nova\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFA330C9\"..RetrieveSpellName(179057)..\"|r \"..( TehrsCDs[\"Show Settings\"].Nova and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },                            \n                                    { text = \" \", notCheckable = 1, disabled = true},    \n                                    { text = \"|cFFFFFFFF\"..buttonText[\"Cancel\"], notCheckable = 1}\n                                }\n                            },    \n                            { text = buttonText[\"L2N8.4\"], keepShownOnClick = true, hasArrow = true, notCheckable = 1,\n                                menuList = { \n                                    --[[{ text = \"|cFFB4B4B4\"..RetrieveSpellName(28730)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Torrent, \n                                    func = function()\n                                        TehrsCDs[\"Show Settings\"].Torrent = not TehrsCDs[\"Show Settings\"].Torrent\n                                        print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFB4B4B4\"..RetrieveSpellName(28730)..\"|r \"..( TehrsCDs[\"Show Settings\"].Torrent and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                    end\n                                },               \n                                Arcane Torrent isn't an interrupt anymore! Holding onto this until I add dispels.\n                                ]]\n                                    { text = \"|cFFC79C6E\"..RetrieveSpellName(6552)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Pummel,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Pummel = not TehrsCDs[\"Show Settings\"].Pummel\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFC79C6E\"..RetrieveSpellName(6552)..\"|r \"..( TehrsCDs[\"Show Settings\"].Pummel and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },        \n                                    { text = \"|cFFFFFFFF\"..RetrieveSpellName(15487)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Silence, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Silence = not TehrsCDs[\"Show Settings\"].Silence\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFFFFFFF\"..RetrieveSpellName(15487)..\"|r \"..( TehrsCDs[\"Show Settings\"].Silence and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },          \n                                    { text = \"|cFFA330C9\"..RetrieveSpellName(183752)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Disrupt, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Disrupt = not TehrsCDs[\"Show Settings\"].Disrupt\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFA330C9\"..RetrieveSpellName(183752)..\"|r \"..( TehrsCDs[\"Show Settings\"].Disrupt and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },       \n                                    { text = \"|cFFA330C9\"..RetrieveSpellName(202137)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].SigilSilence, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].SigilSilence = not TehrsCDs[\"Show Settings\"].SigilSilence\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFA330C9\"..RetrieveSpellName(202137)..\"|r \"..( TehrsCDs[\"Show Settings\"].SigilSilence and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },                                   \n                                    { text = \"|cFFFF7D0A\"..RetrieveSpellName(106839)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].SBash,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].SBash = not TehrsCDs[\"Show Settings\"].SBash\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFFF7D0A\"..RetrieveSpellName(106839)..\"|r \"..( TehrsCDs[\"Show Settings\"].SBash and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },            \n                                    { text = \"|cFFFF7D0A\"..RetrieveSpellName(78675)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].SBeam, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].SBeam = not TehrsCDs[\"Show Settings\"].SBeam\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFFF7D0A\"..RetrieveSpellName(78675)..\"|r \"..( TehrsCDs[\"Show Settings\"].SBeam and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },           \n                                    { text = \"|cFFC41F3B\"..RetrieveSpellName(47528)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].MindFreeze,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].MindFreeze = not TehrsCDs[\"Show Settings\"].MindFreeze\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFC41F3B\"..RetrieveSpellName(47528)..\"|r \"..( TehrsCDs[\"Show Settings\"].MindFreeze and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },               \n                                    { text = \"|cFFF58CBA\"..RetrieveSpellName(96231)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Rebuke,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Rebuke = not TehrsCDs[\"Show Settings\"].Rebuke\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFF58CBA\"..RetrieveSpellName(96231)..\"|r \"..( TehrsCDs[\"Show Settings\"].Rebuke and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },               \n                                    { text = \"|cFF0070DE\"..RetrieveSpellName(57994)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].WShear, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].WShear = not TehrsCDs[\"Show Settings\"].WShear\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFF0070DE\"..RetrieveSpellName(57994)..\"|r \"..( TehrsCDs[\"Show Settings\"].WShear and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },           \n                                    { text = \"|cFFABD473\"..RetrieveSpellName(187707)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Muzzle, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Muzzle = not TehrsCDs[\"Show Settings\"].Muzzle\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFABD473\"..RetrieveSpellName(187707)..\"|r \"..( TehrsCDs[\"Show Settings\"].Muzzle and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },          \n                                    { text = \"|cFFABD473\"..RetrieveSpellName(147362)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].CShot, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].CShot = not TehrsCDs[\"Show Settings\"].CShot\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFABD473\"..RetrieveSpellName(147362)..\"|r \"..( TehrsCDs[\"Show Settings\"].CShot and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },            \n                                    { text = \"|cFFFFF569\"..RetrieveSpellName(1766)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Kick,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Kick = not TehrsCDs[\"Show Settings\"].Kick\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFFFF569\"..RetrieveSpellName(1766)..\"|r \"..( TehrsCDs[\"Show Settings\"].Kick and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },           \n                                    { text = \"|cFF69CCF0\"..RetrieveSpellName(2139)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].CSpell,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].CSpell = not TehrsCDs[\"Show Settings\"].CSpell\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFF69CCF0\"..RetrieveSpellName(2139)..\"|r \"..( TehrsCDs[\"Show Settings\"].CSpell and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },                   \n                                    { text = \"|cFF9482C9\"..RetrieveSpellName(171140)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].SpellLock,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].SpellLock = not TehrsCDs[\"Show Settings\"].SpellLock\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFF9482C9\"..RetrieveSpellName(171140)..\"|r \"..( TehrsCDs[\"Show Settings\"].SpellLock and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },            \n                                    { text = \"|cFF00FF96\"..RetrieveSpellName(116705)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].SStrike, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].SStrike = not TehrsCDs[\"Show Settings\"].SStrike\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFF00FF96\"..RetrieveSpellName(116705)..\"|r \"..( TehrsCDs[\"Show Settings\"].SStrike and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },                                   \n                                    { text = \" \", notCheckable = 1, disabled = true},    \n                                    { text = \"|cFFFFFFFF\"..buttonText[\"Cancel\"], notCheckable = 1}\n                                }\n                            },        \n                            { text = buttonText[\"L2N9.4\"], keepShownOnClick = true, hasArrow = true, notCheckable = 1,\n                                menuList = { \n                                    { text = \"|cFFFF7D0A\"..RetrieveSpellName(20484)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Rebirth, \n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Rebirth = not TehrsCDs[\"Show Settings\"].Rebirth\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFFF7D0A\"..RetrieveSpellName(20484)..\"|r \"..( TehrsCDs[\"Show Settings\"].Rebirth and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },            \n                                    { text = \"|cFFC41F3B\"..RetrieveSpellName(61999)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].RaiseAlly,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].RaiseAlly = not TehrsCDs[\"Show Settings\"].RaiseAlly\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFFC41F3B\"..RetrieveSpellName(61999)..\"|r \"..( TehrsCDs[\"Show Settings\"].RaiseAlly and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },            \n                                    { text = \"|cFF0070DE\"..RetrieveSpellName(20608)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Ankh,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Ankh = not TehrsCDs[\"Show Settings\"].Ankh\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFF0070DE\"..RetrieveSpellName(20608)..\"|r \"..( TehrsCDs[\"Show Settings\"].Ankh and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },            \n                                    { text = \"|cFF9482C9\"..RetrieveSpellName(20707)..\"|r\", isNotRadio = true, keepShownOnClick = true, checked = TehrsCDs[\"Show Settings\"].Soulstone,\n                                        func = function()\n                                            TehrsCDs[\"Show Settings\"].Soulstone = not TehrsCDs[\"Show Settings\"].Soulstone\n                                            print(\"|cFF00A2E8Tehr's RaidCDs:|r |cFF9482C9\"..RetrieveSpellName(20707)..\"|r \"..( TehrsCDs[\"Show Settings\"].Soulstone and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ))\n                                        end\n                                    },                                \n                                    { text = \" \", notCheckable = 1, disabled = true},    \n                                    { text = \"|cFFFFFFFF\"..buttonText[\"Cancel\"], notCheckable = 1}\n                                } \n                            },\n                            { text = \" \", notCheckable = 1, disabled = true},\n                            { text = buttonText[\"Cancel\"], notCheckable = 1}\n                        }\n                    },\n                    { text = \" \", notCheckable = 1, disabled = true},    \n                    { text = \"|cFFFFFFFF\"..buttonText[\"Cancel\"], notCheckable = 1}            \n                }\n                local menuFrame = CreateFrame(\"Frame\", \"ExampleMenuFrame\", UIParent, \"UIDropDownMenuTemplate\")\n                menuFrame:SetPoint(\"CENTER\", UIParent, \"Center\")\n                menuFrame:Hide()\n                EasyMenu(menu, menuFrame, \"cursor\", 0 , 0, \"MENU\");\n            elseif button == \"RightButton\" then \n                TehrsCDs.minmaxDisplay = not TehrsCDs.minmaxDisplay\n                print(\"|cFF00A2E8Tehr's RaidCDs:|r \"..( TehrsCDs.minmaxDisplay and \"|cFF00FF00\"..buttonText[\"printEnabled\"]..\"|r\" or \"|cFFFF0000\"..buttonText[\"printDisabled\"]..\"|r\" ));\n            end\n    end)\n    aura_env.parentButton:Show()\nelseif aura_env.parentButton then\n    aura_env.parentButton:Hide()\nend",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["justify"] = "LEFT",
			["desaturate"] = false,
			["id"] = "RaidCDs_ButtonHandler",
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["load"] = {
				["ingroup"] = {
					["single"] = "raid",
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_ingroup"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "ten",
					["multi"] = {
						["ten"] = true,
					},
				},
			},
			["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["inverse"] = false,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["wordWrap"] = "WordWrap",
		},
		["RaidCDs_Engine"] = {
			["outline"] = "OUTLINE",
			["parent"] = "!Tehr's CDs",
			["displayText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/RaidCDs",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "local parentName = WeakAurasSaved.displays[WeakAuras.regions[aura_env.id].region:GetParent().id]\nif (parentName[\"TehrsRaidCDs\"] == nil) then parentName[\"TehrsRaidCDs\"] = {} end    \nlocal TehrsCDs = parentName[\"TehrsRaidCDs\"]    \n\n-- This is just here so I can debug when shit hits the fan, you will never need to enable this\nTehrsCDs.DEBUG_Engine = true",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["unevent"] = "auto",
						["buffShowOn"] = "showOnActive",
						["custom_type"] = "event",
						["event"] = "Chat Message",
						["unit"] = "player",
						["custom_hide"] = "timed",
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED,ENCOUNTER_START,ENCOUNTER_END,TehrsCDs_ShowAll,CHALLENGE_MODE_START,TehrsCDs_DEBUGTOGGLE,TehrsCDs_ShowDisplay,TehrsCDs_RESETGROUP",
						["custom"] = "function (event, arg1, eventType, arg2, sourceGUID, sourceName, sourceFlags, sourceFlags2, destGUID, destName, destFlags, destFlags2, spellID, spellName, spellSchool, extraSpellID, extraSpellName, extraSpellSchool)\n    \n    local parentName = WeakAurasSaved.displays[WeakAuras.regions[aura_env.id].region:GetParent().id]\n    if (parentName[\"TehrsRaidCDs\"] == nil) then parentName[\"TehrsRaidCDs\"] = {} end    \n    if (parentName[\"TehrsRaidCDs\"][\"Show Settings\"] == nil) then parentName[\"TehrsRaidCDs\"][\"Show Settings\"] = {} end\n    if (parentName[\"TehrsRaidCDs\"][\"Custom Abilities\"] == nil) then parentName[\"TehrsRaidCDs\"][\"Custom Abilities\"] = {} end    \n    local TehrsCDs = parentName[\"TehrsRaidCDs\"]        \n    \n    if (event == \"TehrsCDs_DEBUGTOGGLE\") then -- /script WeakAuras.ScanEvents(\"TehrsCDs_DEBUGTOGGLE\")\n        TehrsCDs.DEBUG = not TehrsCDs.DEBUG\n        print(\"|cFF00A2E8Tehr's RaidCDs:|r Debugging is now \"..( TehrsCDs.DEBUG and \"|cFF00FF00ENABLED|r\" or \"|cFFFF0000DISABLED|r\" )..\"\\nNote that you need to enable either TehrsCDs.DEBUG_Engine or TehrsCDs.DEBUG_GroupPoll in their respective On Init to get debug results\")\n        \n        \n        -- This allows you to reset all settings and repopulate with the default settings\n        -- USE WITH CAUTION --\n    elseif (event == \"TehrsCDs_RESETGROUP\") then -- /script WeakAuras.ScanEvents(\"TehrsCDs_RESETGROUP\")\n        if InCombatLockdown() == false then\n            parentName[\"TehrsRaidCDs\"] = nil\n            ReloadUI()        \n        else\n            print(\"|cFF00A2E8Tehr's RaidCDs:|r Aborting command\\nPlease leave combat before initiating this command\")\n        end\n        \n    elseif (event == \"TehrsCDs_ShowAll\") then -- /script WeakAuras.ScanEvents(\"TehrsCDs_ShowAll\")\n        TehrsCDs[\"Show Settings\"].allExterns = true\n        TehrsCDs[\"Show Settings\"].allCDs = true\n        TehrsCDs[\"Show Settings\"].allUtility = true\n        TehrsCDs[\"Show Settings\"].allImmunityCDs = true\n        TehrsCDs[\"Show Settings\"].allAoECCs = true\n        TehrsCDs[\"Show Settings\"].allInterrupts = true\n        TehrsCDs[\"Show Settings\"].allRezzes = true\n        \n        print(\"|cFF00A2E8Tehr's RaidCDs:|r All CDs are now |cFF00FF00ENABLED|r\")    \n        \n    elseif (event == \"TehrsCDs_ShowDisplay\") then -- /script WeakAuras.ScanEvents(\"TehrsCDs_ShowDisplay\")\n        TehrsCDs.minmaxDisplays = true\n        \n        print(\"|cFF00A2E8Tehr's RaidCDs:|r Display is now |cFF00FF00ENABLED|r\")          \n        \n    elseif event == \"ENCOUNTER_START\" then\n        if arg1 then\n            TehrsCDs.encounterStart = true\n            if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: encounter start\") end\n        end\n        \n    elseif event == \"ENCOUNTER_END\" then\n        if arg1 then\n            TehrsCDs.encounterStart = false\n            if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: encounter end\") end\n            if TehrsCDs.instanceType == \"raid\" then\n                TehrsCDs._rezCDs_dks = nil\n                TehrsCDs._rezCDs_druids = nil\n                TehrsCDs._rezCDs_warlocks = nil    \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: in a raid, resetting brezzes\") end\n            end\n        end   \n        \n    elseif event == \"CHALLENGE_MODE_START\" then\n        TehrsCDs._rezCDs_dks = nil\n        TehrsCDs._rezCDs_druids = nil\n        TehrsCDs._rezCDs_warlocks = nil  \n        if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: challenge mode start, resetting brezzes\") end\n    end       \n    \n    if event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        --local arg1, eventType, arg2, sourceGUID, sourceName, sourceFlags, sourceFlags2, destGUID, destName, destFlags, destFlags2, spellID, spellName, spellSchool, extraSpellID, extraSpellName, extraSpellSchool = CombatLogGetCurrentEventInfo()    \n        \n        local function getPetOwner(petName, petGUID)\n            local ownerName\n            \n            if UnitGUID(\"pet\") == petGUID then\n                ownerName = GetUnitName(\"player\")\n            elseif IsInRaid() then\n                for i=1, GetNumGroupMembers() do\n                    if UnitGUID(\"raid\"..i..\"pet\") == petGUID then\n                        ownerName = GetUnitName(\"raid\"..i)\n                        break\n                    end\n                end\n            else\n                for i=1, GetNumSubgroupMembers() do\n                    if UnitGUID(\"party\"..i..\"pet\") == petGUID then\n                        ownerName = GetUnitName(\"party\"..i)\n                        break\n                    end\n                end\n            end\n            \n            if ownerName then\n                return ownerName\n            else\n                return petName\n            end\n        end     \n        \n        if (not UnitInParty(sourceName)) and (sourceName ~= UnitName(\"player\")) then\n            if not (UnitInParty(getPetOwner(sourceName,sourceGUID)) or UnitName(\"player\") == getPetOwner(sourceName,sourceGUID)) then\n                return false\n            end\n        end    \n        \n        aura_env.GADuration = aura_env.GADuration or 0 --initializes GADuration \n        aura_env.shockwavehits = aura_env.shockwavehits or 0 --initializes shockwavehits\n        aura_env.captotemhits = aura_env.captotemhits or 0 --initializes captotemhits\n        \n        -- IMMUNITIES --\n        if (TehrsCDs[\"Show Settings\"].allImmunityCDs and TehrsCDs.instanceType ~= \"raid\" and GetNumGroupMembers()<20) or (TehrsCDs[\"Show Settings\"].allImmunityCDs_inRaid and (TehrsCDs.instanceType == \"raid\" or GetNumGroupMembers()>19)) then                \n            if(eventType == \"SPELL_CAST_SUCCESS\" and TehrsCDs[\"Show Settings\"].Turtle and spellID == 186265) then\n                -- Aspect of the Turtle --\n                if (TehrsCDs._immunityCDs_hunters == nil) then TehrsCDs._immunityCDs_hunters = { } end\n                if (TehrsCDs._immunityCDs_hunters[sourceName] == nil) then TehrsCDs._immunityCDs_hunters[sourceName] = { } end   \n                \n                local Turtle1 = TehrsCDs._immunityCDs_hunters[sourceName][\"Turtle\"];\n                local Turtle2 = TehrsCDs._immunityCDs_hunters[sourceName][\"Turtle+\"];\n                \n                if (Turtle1 ~= nil) then\n                    TehrsCDs._immunityCDs_hunters[sourceName][\"Turtle\"] = GetTime() + 180\n                    TehrsCDs._immunityCDs_hunters[sourceName][\"Turtle+\"] = nil;\n                end\n                if (Turtle2 ~= nil) then\n                    TehrsCDs._immunityCDs_hunters[sourceName][\"Turtle+\"] = GetTime() + 144\n                    TehrsCDs._immunityCDs_hunters[sourceName][\"Turtle\"] = nil;\n                end    \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end\n                \n            elseif(eventType == \"SPELL_CAST_SUCCESS\" and TehrsCDs[\"Show Settings\"].Cloak and spellID == 31224) then\n                -- Cloak of Shadows --\n                if (TehrsCDs._immunityCDs_rogues == nil) then TehrsCDs._immunityCDs_rogues = { } end\n                if (TehrsCDs._immunityCDs_rogues[sourceName] == nil) then TehrsCDs._immunityCDs_rogues[sourceName] = { } end   \n                \n                TehrsCDs._immunityCDs_rogues[sourceName][\"Cloak\"] = GetTime() + 120\n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end       \n                \n            elseif(eventType == \"SPELL_CAST_SUCCESS\" and TehrsCDs[\"Show Settings\"].Block and spellID == 45438) then\n                -- Ice Block --\n                if (TehrsCDs._immunityCDs_mages == nil) then TehrsCDs._immunityCDs_mages = { } end\n                if (TehrsCDs._immunityCDs_mages[sourceName] == nil) then TehrsCDs._immunityCDs_mages[sourceName] = { } end   \n                \n                local Block1 = TehrsCDs._immunityCDs_mages[sourceName][\"Block\"];\n                local Block2 = TehrsCDs._immunityCDs_mages[sourceName][\"Block+\"];\n                \n                if (Block1 ~= nil) then\n                    TehrsCDs._immunityCDs_mages[sourceName][\"Block\"] = GetTime() + 240;\n                    TehrsCDs._immunityCDs_mages[sourceName][\"Block+\"] = nil;\n                end\n                if (Block2 ~= nil) then\n                    TehrsCDs._immunityCDs_mages[sourceName][\"Block+\"] = GetTime() + 240;\n                    TehrsCDs._immunityCDs_mages[sourceName][\"Block\"] = nil;\n                end      \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end      \n                \n            elseif(eventType == \"SPELL_CAST_SUCCESS\" and TehrsCDs[\"Show Settings\"].Block and spellID == 235219) then\n                -- Ice Block: COLD SNAP --\n                if (TehrsCDs._immunityCDs_mages == nil) then TehrsCDs._immunityCDs_mages = { } end\n                if (TehrsCDs._immunityCDs_mages[sourceName] == nil) then TehrsCDs._immunityCDs_mages[sourceName] = { } end   \n                \n                TehrsCDs._immunityCDs_mages[sourceName][\"Block+\"] = GetTime()     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(eventType == \"SPELL_CAST_SUCCESS\" and TehrsCDs[\"Show Settings\"].Netherwalk and spellID == 196555) then\n                -- Netherwalk --\n                if (TehrsCDs._immunityCDs_dhs == nil) then TehrsCDs._immunityCDs_dhs = { } end\n                if (TehrsCDs._immunityCDs_dhs[sourceName] == nil) then TehrsCDs._immunityCDs_dhs[sourceName] = { } end   \n                \n                TehrsCDs._immunityCDs_dhs[sourceName][\"Netherwalk\"] = GetTime() + 120;         \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(eventType == \"SPELL_AURA_APPLIED\" and TehrsCDs[\"Show Settings\"].Bubble and spellID == 642) then\n                -- Divine Shield --\n                if (TehrsCDs._immunityCDs_paladins == nil) then TehrsCDs._immunityCDs_paladins = { } end\n                if (TehrsCDs._immunityCDs_paladins[sourceName] == nil) then TehrsCDs._immunityCDs_paladins[sourceName] = { } end   \n                \n                local Bubble1 = TehrsCDs._immunityCDs_paladins[sourceName][\"Bubble\"]; \n                local Bubble2 = TehrsCDs._immunityCDs_paladins[sourceName][\"Bubble+\"]; \n                \n                if (Bubble1 ~= nil) then\n                    TehrsCDs._immunityCDs_paladins[sourceName][\"Bubble\"] = GetTime() + 300;\n                    TehrsCDs._immunityCDs_paladins[sourceName][\"Bubble+\"] = nil;          \n                end\n                if (Bubble2 ~= nil) then\n                    TehrsCDs._immunityCDs_paladins[sourceName][\"Bubble+\"] = GetTime() + 210;\n                    TehrsCDs._immunityCDs_paladins[sourceName][\"Bubble\"] = nil;          \n                end           \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end                  \n            end    \n        end    \n        \n        -- CROWD CONTROL --\n        if (TehrsCDs[\"Show Settings\"].allAoECCs and TehrsCDs.instanceType ~= \"raid\" and GetNumGroupMembers()<20) or (TehrsCDs[\"Show Settings\"].allAoECCs_inRaid and (TehrsCDs.instanceType == \"raid\" or GetNumGroupMembers()>19)) then        \n            if(spellID == 192058 and TehrsCDs[\"Show Settings\"].CapTotem and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Capacitor Totem --\n                if (TehrsCDs._aoeCCs_shamans == nil) then TehrsCDs._aoeCCs_shamans = { } end        \n                if (TehrsCDs._aoeCCs_shamans[sourceName] == nil) then TehrsCDs._aoeCCs_shamans[sourceName] = { } end\n                \n                local cap1 = TehrsCDs._aoeCCs_shamans[sourceName][\"Cap Totem\"];\n                local cap2 = TehrsCDs._aoeCCs_shamans[sourceName][\"Cap Totem+\"];\n                \n                if (cap1 ~= nil) then\n                    TehrsCDs._aoeCCs_shamans[sourceName][\"Cap Totem\"] = GetTime() + 60;\n                    TehrsCDs._aoeCCs_shamans[sourceName][\"Cap Totem+\"] = nil;\n                end\n                if (cap2 ~= nil) then\n                    TehrsCDs._aoeCCs_shamans[sourceName][\"Cap Totem+\"] = GetTime() + 60;\n                    TehrsCDs._aoeCCs_shamans[sourceName][\"Cap Totem\"] = nil;\n                end  \n                aura_env.captotemhits = 0                 \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end   \n                \n            elseif(spellID == 118905 and TehrsCDs[\"Show Settings\"].CapTotem and eventType == \"SPELL_AURA_APPLIED\") then\n                -- Capacitor STUN --\n                if (TehrsCDs._aoeCCs_shamans == nil) then TehrsCDs._aoeCCs_shamans = { } end        \n                if (TehrsCDs._aoeCCs_shamans[sourceName] == nil) then TehrsCDs._aoeCCs_shamans[sourceName] = { } end\n                \n                local CapTotem1 = TehrsCDs._aoeCCs_shamans[sourceName][\"Cap Totem+\"];\n                \n                if CapTotem1 then\n                    aura_env.captotemhits = aura_env.captotemhits + 1\n                    if aura_env.captotemhits <= 4 then\n                        TehrsCDs._aoeCCs_shamans[sourceName][\"Cap Totem+\"] = TehrsCDs._aoeCCs_shamans[sourceName][\"Cap Totem+\"] - 5\n                        if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" hit with \"..spellName) end \n                    end   \n                end                            \n                \n            elseif(spellID == 51490 and TehrsCDs[\"Show Settings\"].Thunderstorm and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Thunderstorm --\n                if (TehrsCDs._aoeCCs_shamans == nil) then TehrsCDs._aoeCCs_shamans = { } end        \n                if (TehrsCDs._aoeCCs_shamans[sourceName] == nil) then TehrsCDs._aoeCCs_shamans[sourceName] = { } end\n                \n                TehrsCDs._aoeCCs_shamans[sourceName][\"Thunderstorm\"] = GetTime() + 45;      \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 30283 and TehrsCDs[\"Show Settings\"].Shadowfury and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Shadowfury --\n                if (TehrsCDs._aoeCCs_warlocks == nil) then TehrsCDs._aoeCCs_warlocks = { } end        \n                if (TehrsCDs._aoeCCs_warlocks[sourceName] == nil) then TehrsCDs._aoeCCs_warlocks[sourceName] = { } end\n                \n                local shadowfury1 = TehrsCDs._aoeCCs_warlocks[sourceName][\"Shadowfury\"];\n                local shadowfury2 = TehrsCDs._aoeCCs_warlocks[sourceName][\"Shadowfury+\"];\n                \n                if (shadowfury1 ~= nil) then\n                    TehrsCDs._aoeCCs_warlocks[sourceName][\"Shadowfury\"] = GetTime() + 60;\n                    TehrsCDs._aoeCCs_warlocks[sourceName][\"Shadowfury+\"] = nil;\n                end\n                if (shadowfury2 ~= nil) then\n                    TehrsCDs._aoeCCs_warlocks[sourceName][\"Shadowfury+\"] = GetTime() + 45;\n                    TehrsCDs._aoeCCs_warlocks[sourceName][\"Shadowfury\"] = nil;\n                end       \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end     \n                \n            elseif(spellID == 1122 and TehrsCDs[\"Show Settings\"].Infernal and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Summon Infernal --\n                if (TehrsCDs._aoeCCs_warlocks == nil) then TehrsCDs._aoeCCs_warlocks = { } end        \n                if (TehrsCDs._aoeCCs_warlocks[sourceName] == nil) then TehrsCDs._aoeCCs_warlocks[sourceName] = { } end\n                \n                TehrsCDs._aoeCCs_warlocks[sourceName][\"Infernal\"] = GetTime() + 180; \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end                  \n                \n            elseif(eventType == \"SPELL_CAST_SUCCESS\" and TehrsCDs[\"Show Settings\"].Grasp and spellID == 108199) then\n                -- Gorefiend's Grasp --\n                if (TehrsCDs._aoeCCs_dks == nil) then TehrsCDs._aoeCCs_dks = { } end\n                if (TehrsCDs._aoeCCs_dks[sourceName] == nil) then TehrsCDs._aoeCCs_dks[sourceName] = { } end   \n                \n                local grasp1 = TehrsCDs._aoeCCs_dks[sourceName][\"Grasp\"];\n                local grasp2 = TehrsCDs._aoeCCs_dks[sourceName][\"Grasp+\"];\n                \n                if (grasp1 ~= nil) then\n                    TehrsCDs._aoeCCs_dks[sourceName][\"Grasp\"] = GetTime() + 120;\n                    TehrsCDs._aoeCCs_dks[sourceName][\"Grasp+\"] = nil;\n                end\n                if (grasp2 ~= nil) then\n                    TehrsCDs._aoeCCs_dks[sourceName][\"Grasp+\"] = GetTime() + 90;\n                    TehrsCDs._aoeCCs_dks[sourceName][\"Grasp\"] = nil;\n                end     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(eventType == \"SPELL_CAST_SUCCESS\" and TehrsCDs[\"Show Settings\"].Chains and spellID == 202138) then\n                -- Sigil of Chains --\n                if (TehrsCDs._aoeCCs_dhs == nil) then TehrsCDs._aoeCCs_dhs = { } end\n                if (TehrsCDs._aoeCCs_dhs[sourceName] == nil) then TehrsCDs._aoeCCs_dhs[sourceName] = { } end   \n                \n                TehrsCDs._aoeCCs_dhs[sourceName][\"Chains\"] = GetTime() + 90;     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 109248 and TehrsCDs[\"Show Settings\"].Binding and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Binding Shot --\n                if (TehrsCDs._aoeCCs_hunters == nil) then TehrsCDs._aoeCCs_hunters = { } end        \n                if (TehrsCDs._aoeCCs_hunters[sourceName] == nil) then TehrsCDs._aoeCCs_hunters[sourceName] = { } end\n                \n                TehrsCDs._aoeCCs_hunters[sourceName][\"Binding\"] = GetTime() + 45;       \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 119381 and TehrsCDs[\"Show Settings\"].Sweep and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Leg Sweep --\n                if (TehrsCDs._aoeCCs_monks == nil) then TehrsCDs._aoeCCs_monks = { } end        \n                if (TehrsCDs._aoeCCs_monks[sourceName] == nil) then TehrsCDs._aoeCCs_monks[sourceName] = { } end\n                \n                local Sweep1 = TehrsCDs._aoeCCs_monks[sourceName][\"Sweep\"];\n                local Sweep2 = TehrsCDs._aoeCCs_monks[sourceName][\"Sweep+\"];\n                \n                if (Sweep1 ~= nil) then\n                    TehrsCDs._aoeCCs_monks[sourceName][\"Sweep\"] = GetTime() + 60;\n                    TehrsCDs._aoeCCs_monks[sourceName][\"Sweep+\"] = nil;\n                end\n                if (Sweep2 ~= nil) then\n                    TehrsCDs._aoeCCs_monks[sourceName][\"Sweep+\"] = GetTime() + 50;\n                    TehrsCDs._aoeCCs_monks[sourceName][\"Sweep\"] = nil;\n                end      \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 116844 and TehrsCDs[\"Show Settings\"].Ring and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Ring of Peace --\n                if (TehrsCDs._aoeCCs_monks == nil) then TehrsCDs._aoeCCs_monks = { } end        \n                if (TehrsCDs._aoeCCs_monks[sourceName] == nil) then TehrsCDs._aoeCCs_monks[sourceName] = { } end\n                \n                TehrsCDs._aoeCCs_monks[sourceName][\"Ring\"] = GetTime() + 45;       \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end        \n                \n            elseif(spellID == 102793 and TehrsCDs[\"Show Settings\"].Ursol and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Ursol's Vortex --\n                if (TehrsCDs._aoeCCs_druids == nil) then TehrsCDs._aoeCCs_druids = { } end        \n                if (TehrsCDs._aoeCCs_druids[sourceName] == nil) then TehrsCDs._aoeCCs_druids[sourceName] = { } end\n                \n                TehrsCDs._aoeCCs_druids[sourceName][\"Ursol\"] = GetTime() + 60;        \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 61391 and TehrsCDs[\"Show Settings\"].Typhoon and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Typhoon --\n                if (TehrsCDs._aoeCCs_druids == nil) then TehrsCDs._aoeCCs_druids = { } end        \n                if (TehrsCDs._aoeCCs_druids[sourceName] == nil) then TehrsCDs._aoeCCs_druids[sourceName] = { } end\n                \n                TehrsCDs._aoeCCs_druids[sourceName][\"Typhoon\"] = GetTime() + 30;         \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end           \n                \n            elseif(spellID == 205369 and TehrsCDs[\"Show Settings\"].MindBomb and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Mind Bomb --\n                if (TehrsCDs._aoeCCs_priests == nil) then TehrsCDs._aoeCCs_priests = { } end        \n                if (TehrsCDs._aoeCCs_priests[sourceName] == nil) then TehrsCDs._aoeCCs_priests[sourceName] = { } end\n                \n                TehrsCDs._aoeCCs_priests[sourceName][\"Mind Bomb\"] = GetTime() + 30;        \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end    \n                \n            elseif(spellID == 204263 and TehrsCDs[\"Show Settings\"].Shining and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Shining Force --\n                if (TehrsCDs._aoeCCs_priests == nil) then TehrsCDs._aoeCCs_priests = { } end        \n                if (TehrsCDs._aoeCCs_priests[sourceName] == nil) then TehrsCDs._aoeCCs_priests[sourceName] = { } end\n                \n                TehrsCDs._aoeCCs_priests[sourceName][\"Shining\"] = GetTime() + 45;        \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end           \n                \n            elseif(spellID == 20549 and TehrsCDs[\"Show Settings\"].Stomp and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- War Stomp --\n                if (TehrsCDs._aoeCCs_tauren == nil) then TehrsCDs._aoeCCs_tauren = { } end        \n                if (TehrsCDs._aoeCCs_tauren[sourceName] == nil) then TehrsCDs._aoeCCs_tauren[sourceName] = { } end\n                \n                TehrsCDs._aoeCCs_tauren[sourceName][\"Stomp\"] = GetTime() + 90;           \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end     \n                \n            elseif(spellID == 255654 and TehrsCDs[\"Show Settings\"].BullRush and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Bull Rush --\n                if (TehrsCDs._aoeCCs_hmtauren == nil) then TehrsCDs._aoeCCs_hmtauren = { } end        \n                if (TehrsCDs._aoeCCs_hmtauren[sourceName] == nil) then TehrsCDs._aoeCCs_hmtauren[sourceName] = { } end\n                \n                TehrsCDs._aoeCCs_hmtauren[sourceName][\"Bull Rush\"] = GetTime() + 120;           \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end               \n                \n            elseif(spellID == 46968 and TehrsCDs[\"Show Settings\"].Shockwave and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Shockwave CAST --\n                if (TehrsCDs._aoeCCs_warriors == nil) then TehrsCDs._aoeCCs_warriors = { } end        \n                if (TehrsCDs._aoeCCs_warriors[sourceName] == nil) then TehrsCDs._aoeCCs_warriors[sourceName] = { } end\n                \n                local shockwave1 = TehrsCDs._aoeCCs_warriors[sourceName][\"Shockwave\"];\n                local shockwave2 = TehrsCDs._aoeCCs_warriors[sourceName][\"Shockwave+\"];\n                \n                if (shockwave1 ~= nil) then\n                    TehrsCDs._aoeCCs_warriors[sourceName][\"Shockwave\"] = GetTime() + 40;\n                    TehrsCDs._aoeCCs_warriors[sourceName][\"Shockwave+\"] = nil;\n                end\n                if (shockwave2 ~= nil) then\n                    TehrsCDs._aoeCCs_warriors[sourceName][\"Shockwave+\"] = GetTime() + 40;\n                    TehrsCDs._aoeCCs_warriors[sourceName][\"Shockwave\"] = nil;\n                end  \n                aura_env.shockwavehits = 0     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 46968 and TehrsCDs[\"Show Settings\"].Shockwave and eventType == \"SPELL_DAMAGE\") then\n                -- Shockwave DAMAGE --\n                if (TehrsCDs._aoeCCs_warriors == nil) then TehrsCDs._aoeCCs_warriors = { } end        \n                if (TehrsCDs._aoeCCs_warriors[sourceName] == nil) then TehrsCDs._aoeCCs_warriors[sourceName] = { } end\n                \n                local Shockwave1 = TehrsCDs._aoeCCs_warriors[sourceName][\"Shockwave+\"];\n                \n                if Shockwave1 then\n                    aura_env.shockwavehits = aura_env.shockwavehits + 1\n                    if aura_env.shockwavehits == 3 then\n                        TehrsCDs._aoeCCs_warriors[sourceName][\"Shockwave+\"] = TehrsCDs._aoeCCs_warriors[sourceName][\"Shockwave+\"] - 15\n                    end   \n                end            \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" hit with \"..spellName) end \n                \n            elseif (eventType == \"SPELL_CAST_SUCCESS\" and TehrsCDs[\"Show Settings\"].Nova and spellID == 179057) then\n                -- Chaos Nova --\n                if (TehrsCDs._aoeCCs_dhs == nil) then TehrsCDs._aoeCCs_dhs = { } end\n                if (TehrsCDs._aoeCCs_dhs[sourceName] == nil) then TehrsCDs._aoeCCs_dhs[sourceName] = { } end   \n                \n                local Nova1 = TehrsCDs._aoeCCs_dhs[sourceName][\"Nova+\"];\n                local Nova2 = TehrsCDs._aoeCCs_dhs[sourceName][\"Nova\"];\n                \n                if (Nova1 ~= nil) then\n                    TehrsCDs._aoeCCs_dhs[sourceName][\"Nova+\"] = GetTime() + 40;\n                    TehrsCDs._aoeCCs_dhs[sourceName][\"Nova\"] = nil;\n                end\n                if (Nova2 ~= nil) then\n                    TehrsCDs._aoeCCs_dhs[sourceName][\"Nova\"] = GetTime() + 60;\n                    TehrsCDs._aoeCCs_dhs[sourceName][\"Nova+\"] = nil;\n                end     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n            end    \n        end    \n        \n        -- INTERRUPTS --\n        if (TehrsCDs[\"Show Settings\"].allInterrupts and TehrsCDs.instanceType ~= \"raid\" and GetNumGroupMembers()<20) or (TehrsCDs[\"Show Settings\"].allInterrupts_inRaid and (TehrsCDs.instanceType == \"raid\" or GetNumGroupMembers()>19)) then\n            if(spellID == 1766 and TehrsCDs[\"Show Settings\"].Kick and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Kick --\n                if (TehrsCDs._interrupts_rogues == nil) then TehrsCDs._interrupts_rogues = { } end        \n                if (TehrsCDs._interrupts_rogues[sourceName] == nil) then TehrsCDs._interrupts_rogues[sourceName] = { } end\n                \n                TehrsCDs._interrupts_rogues[sourceName][\"Kick\"] = GetTime() + 15;       \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 6552 and TehrsCDs[\"Show Settings\"].Pummel and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Pummel --\n                if (TehrsCDs._interrupts_warriors == nil) then TehrsCDs._interrupts_warriors = { } end        \n                if (TehrsCDs._interrupts_warriors[sourceName] == nil) then TehrsCDs._interrupts_warriors[sourceName] = { } end\n                \n                TehrsCDs._interrupts_warriors[sourceName][\"Pummel\"] = GetTime() + 15;        \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif (spellID == 106839 and TehrsCDs[\"Show Settings\"].SBash and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Skull Bash --\n                if (TehrsCDs._interrupts_druids == nil) then TehrsCDs._interrupts_druids = { } end        \n                if (TehrsCDs._interrupts_druids[sourceName] == nil) then TehrsCDs._interrupts_druids[sourceName] = { } end\n                \n                TehrsCDs._interrupts_druids[sourceName][\"S-Bash\"] = GetTime() + 15;       \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 47528 and TehrsCDs[\"Show Settings\"].MindFreeze and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Mind Freeze --\n                if (TehrsCDs._interrupts_dks == nil) then TehrsCDs._interrupts_dks = { } end        \n                if (TehrsCDs._interrupts_dks[sourceName] == nil) then TehrsCDs._interrupts_dks[sourceName] = { } end\n                \n                TehrsCDs._interrupts_dks[sourceName][\"M-Freeze\"] = GetTime() + 15;          \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 183752 and TehrsCDs[\"Show Settings\"].Disrupt and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Disrupt --\n                if (TehrsCDs._interrupts_dhs == nil) then TehrsCDs._interrupts_dhs = { } end        \n                if (TehrsCDs._interrupts_dhs[sourceName] == nil) then TehrsCDs._interrupts_dhs[sourceName] = { } end\n                \n                TehrsCDs._interrupts_dhs[sourceName][\"Disrupt\"] = GetTime() + 15;           \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end     \n                \n            elseif(spellID == 96231 and TehrsCDs[\"Show Settings\"].Rebuke and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Rebuke --\n                if (TehrsCDs._interrupts_paladins == nil) then TehrsCDs._interrupts_paladins = { } end        \n                if (TehrsCDs._interrupts_paladins[sourceName] == nil) then TehrsCDs._interrupts_paladins[sourceName] = { } end\n                \n                TehrsCDs._interrupts_paladins[sourceName][\"Rebuke\"] = GetTime() + 15;         \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end         \n                \n            elseif (spellID == 57994 and TehrsCDs[\"Show Settings\"].WShear and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Wind Shear --\n                if (TehrsCDs._interrupts_shamans == nil) then TehrsCDs._interrupts_shamans = { } end        \n                if (TehrsCDs._interrupts_shamans[sourceName] == nil) then TehrsCDs._interrupts_shamans[sourceName] = { } end\n                \n                TehrsCDs._interrupts_shamans[sourceName][\"W-Shear\"] = GetTime() + 12;     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 116705 and TehrsCDs[\"Show Settings\"].SStrike and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Spear Hand Strike --\n                if (TehrsCDs._interrupts_monks == nil) then TehrsCDs._interrupts_monks = { } end        \n                if (TehrsCDs._interrupts_monks[sourceName] == nil) then TehrsCDs._interrupts_monks[sourceName] = { } end\n                \n                TehrsCDs._interrupts_monks[sourceName][\"S-Strike\"] = GetTime() + 15;        \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end       \n                \n            elseif(spellID == 187707 and TehrsCDs[\"Show Settings\"].Muzzle and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Muzzle --\n                if (TehrsCDs._interrupts_hunters == nil) then TehrsCDs._interrupts_hunters = { } end        \n                if (TehrsCDs._interrupts_hunters[sourceName] == nil) then TehrsCDs._interrupts_hunters[sourceName] = { } end\n                \n                TehrsCDs._interrupts_hunters[sourceName][\"Muzzle\"] = GetTime() + 15;          \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end      \n                \n            elseif(spellID == 147362 and TehrsCDs[\"Show Settings\"].CShot and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Counter Shot --\n                if (TehrsCDs._interrupts_hunters == nil) then TehrsCDs._interrupts_hunters = { } end        \n                if (TehrsCDs._interrupts_hunters[sourceName] == nil) then TehrsCDs._interrupts_hunters[sourceName] = { } end\n                \n                TehrsCDs._interrupts_hunters[sourceName][\"C-Shot\"] = GetTime() + 24;        \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif (spellID == 2139 and TehrsCDs[\"Show Settings\"].CSpell and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Counterspell --        \n                if (TehrsCDs._interrupts_mages == nil) then TehrsCDs._interrupts_mages = { } end        \n                if (TehrsCDs._interrupts_mages[sourceName] == nil) then TehrsCDs._interrupts_mages[sourceName] = { } end\n                \n                TehrsCDs._interrupts_mages[sourceName][\"C-Spell\"] = GetTime() + 24;       \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif ((spellID == 171140 or spellID == 119910 or spellID == 19647 or spellID == 119898) and TehrsCDs[\"Show Settings\"].SpellLock and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Spell Lock --\n                if (TehrsCDs._interrupts_warlocks == nil) then TehrsCDs._interrupts_warlocks = { } end        \n                if (TehrsCDs._interrupts_warlocks[sourceName] == nil) then TehrsCDs._interrupts_warlocks[sourceName] = { } end    \n                \n                TehrsCDs._interrupts_warlocks[sourceName][\"Spell Lock\"] = GetTime() + 24;  \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif ((spellID == 171138 or spellID == 19647) and TehrsCDs[\"Show Settings\"].SpellLock and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Spell Lock : PET --\n                if (TehrsCDs._interrupts_warlocks == nil) then TehrsCDs._interrupts_warlocks = { } end        \n                if (TehrsCDs._interrupts_warlocks[sourceName] == nil) then TehrsCDs._interrupts_warlocks[sourceName] = { } end    \n                \n                local owner = getPetOwner(sourceName, sourceGUID)                 \n                \n                TehrsCDs._interrupts_warlocks[owner][\"Spell Lock\"] = GetTime() + 24;  \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif ((spellID == 171140 or spellID == 119910 or spellID == 119898 or spellID == 132409) and TehrsCDs[\"Show Settings\"].SpellLock and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Spell Lock : COMMAND DEMON --\n                if (TehrsCDs._interrupts_warlocks == nil) then TehrsCDs._interrupts_warlocks = { } end        \n                if (TehrsCDs._interrupts_warlocks[sourceName] == nil) then TehrsCDs._interrupts_warlocks[sourceName] = { } end    \n                \n                TehrsCDs._interrupts_warlocks[sourceName][\"Spell Lock\"] = GetTime() + 24;  \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end                 \n                \n            elseif (spellID == 15487 and TehrsCDs[\"Show Settings\"].Silence and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Priest: Silence --        \n                if (TehrsCDs._interrupts_priests == nil) then TehrsCDs._interrupts_priests = { } end        \n                if (TehrsCDs._interrupts_priests[sourceName] == nil) then TehrsCDs._interrupts_priests[sourceName] = { } end\n                \n                local Silence1 = TehrsCDs._interrupts_priests[sourceName][\"Silence+\"];\n                local Silence2 = TehrsCDs._interrupts_priests[sourceName][\"Silence\"];\n                \n                if (Silence1 ~= nil) then\n                    TehrsCDs._interrupts_priests[sourceName][\"Silence+\"] = GetTime() + 30;\n                    TehrsCDs._interrupts_priests[sourceName][\"Silence\"] = nil;\n                end\n                if (Silence2 ~= nil) then\n                    TehrsCDs._interrupts_priests[sourceName][\"Silence\"] = GetTime() + 45;\n                    TehrsCDs._interrupts_priests[sourceName][\"Silence+\"] = nil;\n                end   \n                \n            elseif (spellID == 78675 and TehrsCDs[\"Show Settings\"].SBeam and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Solar Beam: CAST --\n                if (TehrsCDs._interrupts_druids == nil) then TehrsCDs._interrupts_druids = { } end        \n                if (TehrsCDs._interrupts_druids[sourceName] == nil) then TehrsCDs._interrupts_druids[sourceName] = { } end\n                \n                TehrsCDs._interrupts_druids[sourceName][\"S-Beam\"] = GetTime() + 60;\n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end   \n                \n            elseif(eventType == \"SPELL_CAST_SUCCESS\" and TehrsCDs[\"Show Settings\"].SigilSilence and (spellID == 202137 or spellID == 207682)) then\n                -- Sigil of Silence --\n                if (TehrsCDs._interrupts_dhs == nil) then TehrsCDs._interrupts_dhs = { } end\n                if (TehrsCDs._interrupts_dhs[sourceName] == nil) then TehrsCDs._interrupts_dhs[sourceName] = { } end   \n                \n                local silence1 = TehrsCDs._interrupts_dhs[sourceName][\"S-Silence+\"];\n                local silence2 = TehrsCDs._interrupts_dhs[sourceName][\"S-Silence\"];\n                \n                if (silence1 ~= nil) then\n                    TehrsCDs._interrupts_dhs[sourceName][\"S-Silence+\"] = GetTime() + 48;\n                    TehrsCDs._interrupts_dhs[sourceName][\"S-Silence\"] = nil;\n                end\n                if (silence2 ~= nil) then\n                    TehrsCDs._interrupts_dhs[sourceName][\"S-Silence\"] = GetTime() + 60;\n                    TehrsCDs._interrupts_dhs[sourceName][\"S-Silence+\"] = nil;\n                end     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end  \n                \n                --[[        \n            elseif ((spellID == 28730 or spellID == 50613 or spellID == 202719 or spellID == 80483 or spellID == 129597 or spellID == 155145 or spellID == 232633 or spellID == 25046 or spellID == 69179) and eventType == \"SPELL_CAST_SUCCESS\" and TehrsCDs[\"Show Settings\"].Torrent) then\n                -- Arcane Torrent --  p.s. Blizzard why do you have a new spellID for each class? pls\n                if (TehrsCDs._interrupts_belfs == nil) then TehrsCDs._interrupts_belfs = { } end        \n                if (TehrsCDs._interrupts_belfs[sourceName] == nil) then TehrsCDs._interrupts_belfs[sourceName] = { } end\n                \n                TehrsCDs._interrupts_belfs[sourceName][\"Torrent\"] = GetTime() + 90;      \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end                \n            \n            Arcane Torrent isn't an interrupt anymore! Holding onto this until I add dispels.\n            ]]    \n            end        \n        end        \n        \n        -- BATTLE REZZES --\n        if (TehrsCDs[\"Show Settings\"].allRezzes and TehrsCDs.instanceType ~= \"raid\" and GetNumGroupMembers()<20) or ((TehrsCDs[\"Show Settings\"].allRezzes_inRaid or TehrsCDs[\"Show Settings\"].Ankh_inRaid) and (TehrsCDs.instanceType == \"raid\" or GetNumGroupMembers()>19)) then\n            if ((spellID == 20608 or spellID == 21169 or spellID == 27740) and eventType == \"SPELL_CAST_SUCCESS\" and TehrsCDs[\"Show Settings\"].Ankh) then\n                -- Reincarnation --\n                if (TehrsCDs._rezCDs_shamans == nil) then TehrsCDs._rezCDs_shamans = { } end        \n                if (TehrsCDs._rezCDs_shamans[sourceName] == nil) then TehrsCDs._rezCDs_shamans[sourceName] = { } end\n                \n                TehrsCDs._rezCDs_shamans[sourceName][\"Ankh\"] = GetTime() + 1800;       \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif (spellID == 61999 and TehrsCDs[\"Show Settings\"].RaiseAlly and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Raise Ally --\n                if (TehrsCDs._rezCDs_dks == nil) then TehrsCDs._rezCDs_dks = { } end        \n                if (TehrsCDs._rezCDs_dks[sourceName] == nil) then TehrsCDs._rezCDs_dks[sourceName] = { } end\n                \n                TehrsCDs._rezCDs_dks[sourceName][\"Raise Ally\"] = GetTime() + 600;         \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif (spellID == 20707 and TehrsCDs[\"Show Settings\"].Soulstone and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Soulstone --\n                if (TehrsCDs._rezCDs_warlocks == nil) then TehrsCDs._rezCDs_warlocks = { } end        \n                if (TehrsCDs._rezCDs_warlocks[sourceName] == nil) then TehrsCDs._rezCDs_warlocks[sourceName] = { } end\n                \n                TehrsCDs._rezCDs_warlocks[sourceName][\"Soulstone\"] = GetTime() + 600;       \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end   \n                \n            elseif (spellID == 20484 and TehrsCDs[\"Show Settings\"].Rebirth and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Rebirth --\n                if (TehrsCDs._rezCDs_druids == nil) then TehrsCDs._rezCDs_druids = { } end        \n                if (TehrsCDs._rezCDs_druids[sourceName] == nil) then TehrsCDs._rezCDs_druids[sourceName] = { } end\n                \n                TehrsCDs._rezCDs_druids[sourceName][\"Rebirth\"] = GetTime() + 600;        \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end  \n            end\n        end        \n        \n        -- UTILITY --  \n        if (TehrsCDs[\"Show Settings\"].allUtility and TehrsCDs.instanceType ~= \"raid\" and GetNumGroupMembers()<20) or (TehrsCDs[\"Show Settings\"].allUtility_inRaid and (TehrsCDs.instanceType == \"raid\" or GetNumGroupMembers()>19)) then \n            if (spellID == 57934 and TehrsCDs[\"Show Settings\"].Tricks and eventType == \"SPELL_AURA_APPLIED\") then\n                -- Tricks of the Trade: BUFF APPLIED TO ROGUE --        \n                if (TehrsCDs._utilityCDs_rogues == nil) then TehrsCDs._utilityCDs_rogues = { } end        \n                if (TehrsCDs._utilityCDs_rogues[sourceName] == nil) then TehrsCDs._utilityCDs_rogues[sourceName] = { } end\n                \n                TehrsCDs._utilityCDs_rogues[sourceName][\"Tricks\"] = GetTime() + 30;        \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end\n                \n            elseif (spellID == 114018 and TehrsCDs[\"Show Settings\"].Shroud and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Shroud of Concealment --        \n                if (TehrsCDs._utilityCDs_rogues == nil) then TehrsCDs._utilityCDs_rogues = { } end        \n                if (TehrsCDs._utilityCDs_rogues[sourceName] == nil) then TehrsCDs._utilityCDs_rogues[sourceName] = { } end\n                \n                TehrsCDs._utilityCDs_rogues[sourceName][\"Shroud\"] = GetTime() + 360;        \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif (spellID == 34477 and TehrsCDs[\"Show Settings\"].Misdirect and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Misdirection --\n                if (TehrsCDs._utilityCDs_hunters == nil) then TehrsCDs._utilityCDs_hunters = { } end        \n                if (TehrsCDs._utilityCDs_hunters[sourceName] == nil) then TehrsCDs._utilityCDs_hunters[sourceName] = { } end\n                \n                TehrsCDs._utilityCDs_hunters[sourceName][\"Misdirect\"] = GetTime() + 30;       \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end       \n                \n            elseif(spellID == 64901 and TehrsCDs[\"Show Settings\"].Hope and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Symbol of Hope --\n                if (TehrsCDs._utilityCDs_priests == nil) then TehrsCDs._utilityCDs_priests = { } end\n                if (TehrsCDs._utilityCDs_priests[sourceName] == nil) then TehrsCDs._utilityCDs_priests[sourceName] = { } end\n                \n                TehrsCDs._utilityCDs_priests[sourceName][\"Hope\"] = GetTime() + 300;     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 73325 and TehrsCDs[\"Show Settings\"].Grip and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Leap of Faith --\n                if (TehrsCDs._utilityCDs_priests == nil) then TehrsCDs._utilityCDs_priests = { } end\n                if (TehrsCDs._utilityCDs_priests[sourceName] == nil) then TehrsCDs._utilityCDs_priests[sourceName] = { } end\n                \n                TehrsCDs._utilityCDs_priests[sourceName][\"Grip\"] = GetTime() + 90;     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 192077 and TehrsCDs[\"Show Settings\"].WindRush and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Wind Rush Totem --\n                if (TehrsCDs._utilityCDs_shamans == nil) then TehrsCDs._utilityCDs_shamans = { } end\n                if (TehrsCDs._utilityCDs_shamans[sourceName] == nil) then TehrsCDs._utilityCDs_shamans[sourceName] = { } end\n                \n                TehrsCDs._utilityCDs_shamans[sourceName][\"Wind Rush\"] = GetTime() + 120;     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end             \n                \n            elseif(spellID == 29166 and TehrsCDs[\"Show Settings\"].Innervate and eventType == \"SPELL_CAST_SUCCESS\") then\n                --  Innervate --\n                if (TehrsCDs._utilityCDs_druids == nil) then TehrsCDs._utilityCDs_druids = { } end\n                if (TehrsCDs._utilityCDs_druids[sourceName] == nil) then TehrsCDs._utilityCDs_druids[sourceName] = { } end\n                \n                TehrsCDs._utilityCDs_druids[sourceName][\"Innervate\"] = GetTime() + 180;        \n                \n            elseif(spellID == 205636 and TehrsCDs[\"Show Settings\"].Treants and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Treants --\n                if (TehrsCDs._utilityCDs_druids == nil) then TehrsCDs._utilityCDs_druids = { } end\n                if (TehrsCDs._utilityCDs_druids[sourceName] == nil) then TehrsCDs._utilityCDs_druids[sourceName] = { } end\n                \n                TehrsCDs._utilityCDs_druids[sourceName][\"Treants\"] = GetTime() + 60;     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end     \n                \n            elseif(spellID == 58984 and TehrsCDs[\"Show Settings\"].Shadowmeld and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Shadowmeld --\n                if (TehrsCDs._utilityCDs_nightelf == nil) then TehrsCDs._utilityCDs_nightelf = { } end\n                if (TehrsCDs._utilityCDs_nightelf[sourceName] == nil) then TehrsCDs._utilityCDs_nightelf[sourceName] = { } end\n                \n                TehrsCDs._utilityCDs_nightelf[sourceName][\"Shadowmeld\"] = GetTime() + 120;     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end             \n                \n            elseif (eventType == \"SPELL_CAST_SUCCESS\" and TehrsCDs[\"Show Settings\"].Roar and spellID == 106898) then\n                -- Stampeding Roar --\n                if (TehrsCDs._utilityCDs_druids == nil) then TehrsCDs._utilityCDs_druids = { } end\n                if (TehrsCDs._utilityCDs_druids[sourceName] == nil) then TehrsCDs._utilityCDs_druids[sourceName] = { } end   \n                \n                TehrsCDs._utilityCDs_druids[sourceName][\"Roar\"] = GetTime() + 120;\n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif (eventType == \"SPELL_CAST_SUCCESS\" and TehrsCDs[\"Show Settings\"].Roar and spellID == 77761) then\n                -- Stampeding Roar: DEBUG --\n                if (TehrsCDs._utilityCDs_druids == nil) then TehrsCDs._utilityCDs_druids = { } end\n                if (TehrsCDs._utilityCDs_druids[sourceName] == nil) then TehrsCDs._utilityCDs_druids[sourceName] = { } end   \n                \n                TehrsCDs._utilityCDs_druids[sourceName][\"Roar\"] = GetTime() + 120;\n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif (eventType == \"SPELL_CAST_SUCCESS\" and TehrsCDs[\"Show Settings\"].Roar and spellID == 77764) then\n                -- Stampeding Roar: FERAL --\n                if (TehrsCDs._utilityCDs_druids == nil) then TehrsCDs._utilityCDs_druids = { } end\n                if (TehrsCDs._utilityCDs_druids[sourceName] == nil) then TehrsCDs._utilityCDs_druids[sourceName] = { } end   \n                \n                TehrsCDs._utilityCDs_druids[sourceName][\"Roar\"] = GetTime() + 120;       \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end             \n            end    \n        end\n        \n        -- RAID CDs --\n        if (TehrsCDs[\"Show Settings\"].allCDs and TehrsCDs.instanceType ~= \"raid\" and GetNumGroupMembers()<20) or (TehrsCDs[\"Show Settings\"].allCDs_inRaid and (TehrsCDs.instanceType == \"raid\" or GetNumGroupMembers()>19)) then \n            if (eventType == \"SPELL_AURA_APPLIED\" and TehrsCDs[\"Show Settings\"].Tranq and spellID == 740) then\n                -- Tranquility --\n                if (TehrsCDs._raidCDs_druids == nil) then TehrsCDs._raidCDs_druids = { } end\n                if (TehrsCDs._raidCDs_druids[sourceName] == nil) then TehrsCDs._raidCDs_druids[sourceName] = { } end   \n                \n                local tranq1 = TehrsCDs._raidCDs_druids[sourceName][\"Tranq+\"];\n                local tranq2 = TehrsCDs._raidCDs_druids[sourceName][\"Tranq\"];\n                \n                if (tranq1 ~= nil) then\n                    TehrsCDs._raidCDs_druids[sourceName][\"Tranq+\"] = GetTime() + 120;\n                    TehrsCDs._raidCDs_druids[sourceName][\"Tranq\"] = nil;\n                end\n                if (tranq2 ~= nil) then\n                    TehrsCDs._raidCDs_druids[sourceName][\"Tranq\"] = GetTime() + 180;\n                    TehrsCDs._raidCDs_druids[sourceName][\"Tranq+\"] = nil;\n                end     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif (spellID == 197721 and TehrsCDs[\"Show Settings\"].Flourish and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Flourish --        \n                if (TehrsCDs._raidCDs_druids == nil) then TehrsCDs._raidCDs_druids = { } end        \n                if (TehrsCDs._raidCDs_druids[sourceName] == nil) then TehrsCDs._raidCDs_druids[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_druids[sourceName][\"Flourish\"] = GetTime() + 90;          \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end             \n                \n            elseif (spellID == 33891 and TehrsCDs[\"Show Settings\"].Tree and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Incarnation: Tree of Life --        \n                if (TehrsCDs._raidCDs_druids == nil) then TehrsCDs._raidCDs_druids = { } end        \n                if (TehrsCDs._raidCDs_druids[sourceName] == nil) then TehrsCDs._raidCDs_druids[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_druids[sourceName][\"Tree\"] = GetTime() + 180;          \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end            \n                \n            elseif (spellID == 47536 and TehrsCDs[\"Show Settings\"].Rapture and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Rapture --        \n                if (TehrsCDs._raidCDs_priests == nil) then TehrsCDs._raidCDs_priests = { } end        \n                if (TehrsCDs._raidCDs_priests[sourceName] == nil) then TehrsCDs._raidCDs_priests[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_priests[sourceName][\"Rapture\"] = GetTime() + 90;          \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end                 \n                \n            elseif (spellID == 64843 and TehrsCDs[\"Show Settings\"].DHymn and eventType == \"SPELL_AURA_APPLIED\") then\n                -- Divine Hymn --        \n                if (TehrsCDs._raidCDs_priests == nil) then TehrsCDs._raidCDs_priests = { } end        \n                if (TehrsCDs._raidCDs_priests[sourceName] == nil) then TehrsCDs._raidCDs_priests[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_priests[sourceName][\"D-Hymn\"] = GetTime() + 180;          \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end  \n                \n            elseif (spellID == 200183 and TehrsCDs[\"Show Settings\"].Apotheosis and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Apotheosis --        \n                if (TehrsCDs._raidCDs_priests == nil) then TehrsCDs._raidCDs_priests = { } end        \n                if (TehrsCDs._raidCDs_priests[sourceName] == nil) then TehrsCDs._raidCDs_priests[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_priests[sourceName][\"Apotheosis\"] = GetTime() + 120;          \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end     \n                \n            elseif (spellID == 265202 and TehrsCDs[\"Show Settings\"].Salvation and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Holy Word: Salvation --        \n                if (TehrsCDs._raidCDs_priests == nil) then TehrsCDs._raidCDs_priests = { } end        \n                if (TehrsCDs._raidCDs_priests[sourceName] == nil) then TehrsCDs._raidCDs_priests[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_priests[sourceName][\"Salvation\"] = GetTime() + 720;          \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end                 \n                \n            elseif(spellID == 34861 and TehrsCDs[\"Show Settings\"].Salvation and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Holy Word: Sanctify --\n                if (TehrsCDs._raidCDs_priests == nil) then TehrsCDs._raidCDs_priests = { } end        \n                if (TehrsCDs._raidCDs_priests[sourceName] == nil) then TehrsCDs._raidCDs_priests[sourceName] = { } end\n                \n                local salvSpec = TehrsCDs._raidCDs_priests[sourceName][\"Salvation\"]\n                \n                if (salvSpec ~= nil) then\n                    TehrsCDs._raidCDs_priests[sourceName][\"Salvation\"] = TehrsCDs._raidCDs_priests[sourceName][\"Salvation\"] - 30; \n                    if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                end      \n                \n            elseif(spellID == 2050 and TehrsCDs[\"Show Settings\"].Salvation and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Holy Word: Serenity --\n                if (TehrsCDs._raidCDs_priests == nil) then TehrsCDs._raidCDs_priests = { } end        \n                if (TehrsCDs._raidCDs_priests[sourceName] == nil) then TehrsCDs._raidCDs_priests[sourceName] = { } end\n                \n                local salvSpec = TehrsCDs._raidCDs_priests[sourceName][\"Salvation\"]\n                \n                if (salvSpec ~= nil) then\n                    TehrsCDs._raidCDs_priests[sourceName][\"Salvation\"] = TehrsCDs._raidCDs_priests[sourceName][\"Salvation\"] - 30; \n                    if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                end                  \n                \n            elseif (spellID == 108281 and TehrsCDs[\"Show Settings\"].AG and eventType == \"SPELL_AURA_APPLIED\") then\n                -- Ancestral Guidance --\n                if (TehrsCDs._raidCDs_shamans == nil) then TehrsCDs._raidCDs_shamans = { } end        \n                if (TehrsCDs._raidCDs_shamans[sourceName] == nil) then TehrsCDs._raidCDs_shamans[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_shamans[sourceName][\"AG\"] = GetTime() + 120;     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 97462 and TehrsCDs[\"Show Settings\"].CShout and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Commanding Shout --\n                if (TehrsCDs._raidCDs_warriors == nil) then TehrsCDs._raidCDs_warriors = { } end        \n                if (TehrsCDs._raidCDs_warriors[sourceName] == nil) then TehrsCDs._raidCDs_warriors[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_warriors[sourceName][\"R-Cry\"] = GetTime() + 180;     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 108280 and TehrsCDs[\"Show Settings\"].HTide  and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Healing Tide --\n                if (TehrsCDs._raidCDs_shamans == nil) then TehrsCDs._raidCDs_shamans = { } end        \n                if (TehrsCDs._raidCDs_shamans[sourceName] == nil) then TehrsCDs._raidCDs_shamans[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_shamans[sourceName][\"H-Tide\"] = GetTime() + 180;       \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 114052 and TehrsCDs[\"Show Settings\"].Ascendance  and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Ascendance --\n                if (TehrsCDs._raidCDs_shamans == nil) then TehrsCDs._raidCDs_shamans = { } end        \n                if (TehrsCDs._raidCDs_shamans[sourceName] == nil) then TehrsCDs._raidCDs_shamans[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_shamans[sourceName][\"Ascendance\"] = GetTime() + 180;       \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end                 \n                \n            elseif(spellID == 62618 and TehrsCDs[\"Show Settings\"].Barrier and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Power Word: Barrier --\n                if (TehrsCDs._raidCDs_priests == nil) then TehrsCDs._raidCDs_priests = { } end        \n                if (TehrsCDs._raidCDs_priests[sourceName] == nil) then TehrsCDs._raidCDs_priests[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_priests[sourceName][\"Barrier\"] = GetTime() + 180;         \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end         \n                \n            elseif(spellID == 271466 and TehrsCDs[\"Show Settings\"].Barrier and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Luminous Barrier --\n                if (TehrsCDs._raidCDs_priests == nil) then TehrsCDs._raidCDs_priests = { } end        \n                if (TehrsCDs._raidCDs_priests[sourceName] == nil) then TehrsCDs._raidCDs_priests[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_priests[sourceName][\"Barrier+\"] = GetTime() + 180;         \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end                  \n                \n            elseif(spellID == 98008 and TehrsCDs[\"Show Settings\"].SLT and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Spirit Link Totem --\n                if (TehrsCDs._raidCDs_shamans == nil) then TehrsCDs._raidCDs_shamans = { } end        \n                if (TehrsCDs._raidCDs_shamans[sourceName] == nil) then TehrsCDs._raidCDs_shamans[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_shamans[sourceName][\"SLT\"] = GetTime() + 180;            \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end  \n                \n            elseif(spellID == 31821 and TehrsCDs[\"Show Settings\"].AuraM and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Aura Mastery --\n                if (TehrsCDs._raidCDs_paladins == nil) then TehrsCDs._raidCDs_paladins = { } end\n                if (TehrsCDs._raidCDs_paladins[sourceName] == nil) then TehrsCDs._raidCDs_paladins[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_paladins[sourceName][\"Aura-M\"] = GetTime() + 180;     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 31884 and TehrsCDs[\"Show Settings\"].Wings and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Avenging Wrath --\n                if (TehrsCDs._raidCDs_paladins == nil) then TehrsCDs._raidCDs_paladins = { } end\n                if (TehrsCDs._raidCDs_paladins[sourceName] == nil) then TehrsCDs._raidCDs_paladins[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_paladins[sourceName][\"Wings\"] = GetTime() + 120;     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end         \n                \n            elseif(spellID == 216331 and TehrsCDs[\"Show Settings\"].Wings and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Avenging Crusader --\n                if (TehrsCDs._raidCDs_paladins == nil) then TehrsCDs._raidCDs_paladins = { } end\n                if (TehrsCDs._raidCDs_paladins[sourceName] == nil) then TehrsCDs._raidCDs_paladins[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_paladins[sourceName][\"Wings+\"] = GetTime() + 120;     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end                 \n                \n            elseif(spellID == 204150 and TehrsCDs[\"Show Settings\"].Aegis and eventType == \"SPELL_AURA_APPLIED\") then\n                -- Aegis of Light --\n                if (TehrsCDs._raidCDs_paladins == nil) then TehrsCDs._raidCDs_paladins = { } end\n                if (TehrsCDs._raidCDs_paladins[sourceName] == nil) then TehrsCDs._raidCDs_paladins[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_paladins[sourceName][\"Aegis\"] = GetTime() + 180;       \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end       \n                \n            elseif(spellID == 15286 and TehrsCDs[\"Show Settings\"].VE and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Vampiric Embrace --\n                if (TehrsCDs._raidCDs_priests == nil) then TehrsCDs._raidCDs_priests = { } end        \n                if (TehrsCDs._raidCDs_priests[sourceName] == nil) then TehrsCDs._raidCDs_priests[sourceName] = { } end\n                \n                local VE1 = TehrsCDs._raidCDs_priests[sourceName][\"VE+\"];\n                local VE2 = TehrsCDs._raidCDs_priests[sourceName][\"VE\"];\n                \n                if (VE1 ~= nil) then\n                    TehrsCDs._raidCDs_priests[sourceName][\"VE+\"] = GetTime() + 75;\n                    TehrsCDs._raidCDs_priests[sourceName][\"VE\"] = nil;\n                end\n                if (VE2 ~= nil) then\n                    TehrsCDs._raidCDs_priests[sourceName][\"VE\"] = GetTime() + 120;\n                    TehrsCDs._raidCDs_priests[sourceName][\"VE+\"] = nil;\n                end                 \n                \n            elseif(spellID == 196718 and TehrsCDs[\"Show Settings\"].Darkness and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Darkness --\n                if (TehrsCDs._raidCDs_dhs == nil) then TehrsCDs._raidCDs_dhs = { } end        \n                if (TehrsCDs._raidCDs_dhs[sourceName] == nil) then TehrsCDs._raidCDs_dhs[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_dhs[sourceName][\"Darkness\"] = GetTime() + 180;       \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 207399 and TehrsCDs[\"Show Settings\"].AProt and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Ancestral Protection Totem --\n                if (TehrsCDs._raidCDs_shamans == nil) then TehrsCDs._raidCDs_shamans = { } end        \n                if (TehrsCDs._raidCDs_shamans[sourceName] == nil) then TehrsCDs._raidCDs_shamans[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_shamans[sourceName][\"A-Prot\"] = GetTime() + 300;       \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end\n                \n            elseif(spellID == 115310 and TehrsCDs[\"Show Settings\"].Revival and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Revival --\n                if (TehrsCDs._raidCDs_monks == nil) then TehrsCDs._raidCDs_monks = { } end        \n                if (TehrsCDs._raidCDs_monks[sourceName] == nil) then TehrsCDs._raidCDs_monks[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_monks[sourceName][\"Revival\"] = GetTime() + 180;     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end              \n            end\n        end\n        \n        -- EXTERNAL CDs --    \n        if (TehrsCDs[\"Show Settings\"].allExterns and TehrsCDs.instanceType ~= \"raid\" and GetNumGroupMembers()<20) or (TehrsCDs[\"Show Settings\"].allExterns_inRaid and (TehrsCDs.instanceType == \"raid\" or GetNumGroupMembers()>19)) then         \n            if(spellID == 47788 and TehrsCDs[\"Show Settings\"].GSpirit and eventType == \"SPELL_CAST_SUCCESS\") then        \n                -- Guardian Spirit --        \n                if (TehrsCDs._externCDs_priests == nil) then TehrsCDs._externCDs_priests = { } end        \n                if (TehrsCDs._externCDs_priests[sourceName] == nil) then TehrsCDs._externCDs_priests[sourceName] = { } end    \n                \n                local GA1 = TehrsCDs._externCDs_priests[sourceName][\"G-Spirit\"];\n                local GA2 = TehrsCDs._externCDs_priests[sourceName][\"G-Spirit+\"];\n                \n                if (GA1 ~= nil) then\n                    TehrsCDs._externCDs_priests[sourceName][\"G-Spirit\"] = GetTime() + 180;\n                    TehrsCDs._externCDs_priests[sourceName][\"G-Spirit+\"] = nil;\n                end\n                if (GA2 ~= nil) then\n                    TehrsCDs._externCDs_priests[sourceName][\"G-Spirit+\"] = GetTime() + 180;\n                    TehrsCDs._externCDs_priests[sourceName][\"G-Spirit\"] = nil;\n                end     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 47788 and TehrsCDs[\"Show Settings\"].GSpirit and eventType == \"SPELL_AURA_APPLIED\") then        \n                -- Guardian Angel Applied (talent 3,1) --\n                if (TehrsCDs._externCDs_priests == nil) then TehrsCDs._externCDs_priests = { } end        \n                if (TehrsCDs._externCDs_priests[sourceName] == nil) then TehrsCDs._externCDs_priests[sourceName] = { } end          \n                \n                local GA2 = TehrsCDs._externCDs_priests[sourceName][\"G-Spirit+\"];        \n                if (GA2 ~= nil) then        \n                    aura_env.GADuration = select(6, WA_GetUnitAura(destName, 47788))  \n                end     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 47788 and TehrsCDs[\"Show Settings\"].GSpirit and eventType == \"SPELL_AURA_REMOVED\") then        \n                -- Guardian Angel Removed (talent 3,2) --\n                if (TehrsCDs._externCDs_priests == nil) then TehrsCDs._externCDs_priests = { } end        \n                if (TehrsCDs._externCDs_priests[sourceName] == nil) then TehrsCDs._externCDs_priests[sourceName] = { } end          \n                \n                local hasGA = TehrsCDs._externCDs_priests[sourceName][\"G-Spirit+\"];\n                if (hasGA ~= nil) then\n                    local timeLeft = aura_env.GADuration - GetTime()\n                    if timeLeft <= 0.1 then\n                        TehrsCDs._externCDs_priests[sourceName][\"G-Spirit+\"] = GetTime() + 60;  \n                    end\n                end           \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end   \n                \n            elseif(spellID == 198304 and TehrsCDs[\"Show Settings\"].Safeguard and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Intercept: Safeguard --\n                if (TehrsCDs._externCDs_warriors == nil) then TehrsCDs._externCDs_warriors = { } end        \n                if (TehrsCDs._externCDs_warriors[sourceName] == nil) then TehrsCDs._externCDs_warriors[sourceName] = { } end\n                \n                local safeguard = TehrsCDs._externCDs_warriors[sourceName][\"Safeguard\"];\n                \n                if (safeguard ~= nil) then\n                    TehrsCDs._externCDs_warriors[sourceName][\"Safeguard\"] = GetTime() + 20;\n                end \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 102342 and TehrsCDs[\"Show Settings\"].IBark and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Ironbark --\n                if (TehrsCDs._externCDs_druids == nil) then TehrsCDs._externCDs_druids = { } end\n                if (TehrsCDs._externCDs_druids[sourceName] == nil) then TehrsCDs._externCDs_druids[sourceName] = { } end\n                \n                local ibark1 = TehrsCDs._externCDs_druids[sourceName][\"I-Bark\"];\n                local ibark2 = TehrsCDs._externCDs_druids[sourceName][\"I-Bark+\"];\n                \n                if (ibark1 ~= nil) then\n                    TehrsCDs._externCDs_druids[sourceName][\"I-Bark\"] = GetTime() + 60\n                    TehrsCDs._externCDs_druids[sourceName][\"I-Bark+\"] = nil;\n                end\n                if (ibark2 ~= nil) then\n                    TehrsCDs._externCDs_druids[sourceName][\"I-Bark+\"] = GetTime() + 45\n                    TehrsCDs._externCDs_druids[sourceName][\"I-Bark\"] = nil;\n                end     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 33206 and TehrsCDs[\"Show Settings\"].PSup and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Pain Suppression --\n                if (TehrsCDs._externCDs_priests == nil) then TehrsCDs._externCDs_priests = { } end        \n                if (TehrsCDs._externCDs_priests[sourceName] == nil) then TehrsCDs._externCDs_priests[sourceName] = { } end\n                \n                local Psup1 = TehrsCDs._externCDs_priests[sourceName][\"P-Sup\"];\n                local Psup2 = TehrsCDs._externCDs_priests[sourceName][\"P-Sup+\"];\n                \n                if (Psup1 ~= nil) then\n                    TehrsCDs._externCDs_priests[sourceName][\"P-Sup\"] = GetTime() + 200;    \n                    TehrsCDs._externCDs_priests[sourceName][\"P-Sup+\"] = nil;\n                end\n                if (Psup2 ~= nil) then\n                    TehrsCDs._externCDs_priests[sourceName][\"P-Sup+\"] = GetTime() + 200;    \n                    TehrsCDs._externCDs_priests[sourceName][\"P-Sup\"] = nil;\n                end\n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end           \n                \n            elseif(spellID == 116849 and TehrsCDs[\"Show Settings\"].LCocoon and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Life Cocoon --\n                if (TehrsCDs._externCDs_monks == nil) then TehrsCDs._externCDs_monks = { } end\n                if (TehrsCDs._externCDs_monks[sourceName] == nil) then TehrsCDs._externCDs_monks[sourceName] = { } end\n                \n                TehrsCDs._externCDs_monks[sourceName][\"L-Cocoon\"] = GetTime() + 120;     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 204018 and TehrsCDs[\"Show Settings\"].Spellward and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Blessing of Spellwarding --\n                if (TehrsCDs._externCDs_paladins == nil) then TehrsCDs._externCDs_paladins = { } end\n                if (TehrsCDs._externCDs_paladins[sourceName] == nil) then TehrsCDs._externCDs_paladins[sourceName] = { } end\n                \n                TehrsCDs._externCDs_paladins[sourceName][\"Spellward\"] = GetTime() + 180;     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(eventType == \"SPELL_CAST_SUCCESS\" and TehrsCDs[\"Show Settings\"].LoH and spellID == 633) then\n                -- Lay on Hands --\n                if (TehrsCDs._externCDs_paladins == nil) then TehrsCDs._externCDs_paladins = { } end\n                if (TehrsCDs._externCDs_paladins[sourceName] == nil) then TehrsCDs._externCDs_paladins[sourceName] = { } end   \n                \n                local loh1 = TehrsCDs._externCDs_paladins[sourceName][\"LoH\"];\n                local loh2 = TehrsCDs._externCDs_paladins[sourceName][\"LoH+\"];\n                local loh3 = TehrsCDs._externCDs_paladins[sourceName][\"LoH+ \"];\n                local loh4 = TehrsCDs._externCDs_paladins[sourceName][\"LoH+  \"];    \n                local multiplier = 1\n                \n                if (loh4 ~= nil) then\n                    multiplier = multiplier * 0.3\n                end\n                if (loh3 ~= nil) then\n                    multiplier = multiplier * 0.7\n                end    \n                if (loh2 ~= nil) then\n                    multiplier = multiplier / 1.4\n                    TehrsCDs._externCDs_paladins[sourceName][\"LoH+\"] = GetTime() + (600 * multiplier);\n                    TehrsCDs._externCDs_paladins[sourceName][\"LoH\"] = nil;\n                end\n                if (loh1 ~= nil) then\n                    TehrsCDs._externCDs_paladins[sourceName][\"LoH\"] = GetTime() + 600;\n                    TehrsCDs._externCDs_paladins[sourceName][\"LoH+\"] = nil;\n                end      \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end         \n                \n            elseif(spellID == 6940 and TehrsCDs[\"Show Settings\"].Sac and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Blessing of Sacrifice --\n                if (TehrsCDs._externCDs_paladins == nil) then TehrsCDs._externCDs_paladins = { } end\n                if (TehrsCDs._externCDs_paladins[sourceName] == nil) then TehrsCDs._externCDs_paladins[sourceName] = { } end\n                \n                TehrsCDs._externCDs_paladins[sourceName][\"Sac\"] = GetTime() + 120;\n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end       \n                \n            elseif(spellID == 199448 and TehrsCDs[\"Show Settings\"].Sac and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Blessing of Sacrifice: DEBUG --\n                if (TehrsCDs._externCDs_paladins == nil) then TehrsCDs._externCDs_paladins = { } end\n                if (TehrsCDs._externCDs_paladins[sourceName] == nil) then TehrsCDs._externCDs_paladins[sourceName] = { } end\n                \n                TehrsCDs._externCDs_paladins[sourceName][\"Sac\"] = GetTime() + 120;    \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end                \n                \n            elseif(spellID == 187190 and TehrsCDs[\"Show Settings\"].Sac and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Blessing of Sacrifice: DEBUG --\n                if (TehrsCDs._externCDs_paladins == nil) then TehrsCDs._externCDs_paladins = { } end\n                if (TehrsCDs._externCDs_paladins[sourceName] == nil) then TehrsCDs._externCDs_paladins[sourceName] = { } end\n                \n                TehrsCDs._externCDs_paladins[sourceName][\"Sac\"] = GetTime() + 120;   \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end                       \n            end\n        end\n        \n        -- BOP --\n        \n        if(spellID == 1022 and TehrsCDs[\"Show Settings\"].BoP and eventType == \"SPELL_CAST_SUCCESS\") then\n            -- Blessing of Protection --\n            if (TehrsCDs._utilityCDs_paladins == nil) then TehrsCDs._utilityCDs_paladins = { } end\n            if (TehrsCDs._utilityCDs_paladins[sourceName] == nil) then TehrsCDs._utilityCDs_paladins[sourceName] = { } end\n            if (TehrsCDs._externCDs_paladins == nil) then TehrsCDs._externCDs_paladins = { } end\n            if (TehrsCDs._externCDs_paladins[sourceName] == nil) then TehrsCDs._externCDs_paladins[sourceName] = { } end        \n            \n            local bop1u = TehrsCDs._utilityCDs_paladins[sourceName][\"BoP\"];\n            local bop2e = TehrsCDs._externCDs_paladins[sourceName][\"BoP\"];          \n            \n            -- BoP, Utility\n            if (bop1u ~= nil) then\n                TehrsCDs._utilityCDs_paladins[sourceName][\"BoP\"] = GetTime() + 300;\n            end\n            \n            -- BoP, External            \n            if (bop2e ~= nil) then\n                TehrsCDs._externCDs_paladins[sourceName][\"BoP\"] = GetTime() + 300;\n            end\n            \n            if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end    \n        end\n        \n        if TehrsCDs[\"Custom Abilities\"].CustomAbilities then\n            TehrsCDs[\"Custom Abilities\"].UseCDs(event, arg1, eventType, arg2, sourceGUID, sourceName, sourceFlags, sourceFlags2, destGUID, destName, destFlags, destFlags2, spellID, spellName, spellSchool, extraSpellID, extraSpellName, extraSpellSchool)\n        end\n    end\nend",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["1"] = {
					["trigger"] = {
						["type"] = "custom",
						["events"] = "COMBAT_LOG_EVENT_UNFILTERED,ENCOUNTER_START,ENCOUNTER_END,TehrsCDs_ShowAll,CHALLENGE_MODE_START,TehrsCDs_DEBUGTOGGLE,TehrsCDs_ShowDisplay,TehrsCDs_RESETGROUP",
						["custom_type"] = "event",
						["custom"] = "function (event, arg1, eventType, arg2, sourceGUID, sourceName, sourceFlags, sourceFlags2, destGUID, destName, destFlags, destFlags2, spellID, spellName, spellSchool, extraSpellID, extraSpellName, extraSpellSchool)\n    \n    local parentName = WeakAurasSaved.displays[WeakAuras.regions[aura_env.id].region:GetParent().id]\n    if (parentName[\"TehrsRaidCDs\"] == nil) then parentName[\"TehrsRaidCDs\"] = {} end    \n    if (parentName[\"TehrsRaidCDs\"][\"Show Settings\"] == nil) then parentName[\"TehrsRaidCDs\"][\"Show Settings\"] = {} end\n    if (parentName[\"TehrsRaidCDs\"][\"Custom Abilities\"] == nil) then parentName[\"TehrsRaidCDs\"][\"Custom Abilities\"] = {} end    \n    local TehrsCDs = parentName[\"TehrsRaidCDs\"]        \n    \n    if (event == \"TehrsCDs_DEBUGTOGGLE\") then -- /script WeakAuras.ScanEvents(\"TehrsCDs_DEBUGTOGGLE\")\n        TehrsCDs.DEBUG = not TehrsCDs.DEBUG\n        print(\"|cFF00A2E8Tehr's RaidCDs:|r Debugging is now \"..( TehrsCDs.DEBUG and \"|cFF00FF00ENABLED|r\" or \"|cFFFF0000DISABLED|r\" )..\"\\nNote that you need to enable either TehrsCDs.DEBUG_Engine or TehrsCDs.DEBUG_GroupPoll in their respective On Init to get debug results\")\n        \n        \n        -- This allows you to reset all settings and repopulate with the default settings\n        -- USE WITH CAUTION --\n    elseif (event == \"TehrsCDs_RESETGROUP\") then -- /script WeakAuras.ScanEvents(\"TehrsCDs_RESETGROUP\")\n        if InCombatLockdown() == false then\n            parentName[\"TehrsRaidCDs\"] = nil\n            ReloadUI()        \n        else\n            print(\"|cFF00A2E8Tehr's RaidCDs:|r Aborting command\\nPlease leave combat before initiating this command\")\n        end\n        \n    elseif (event == \"TehrsCDs_ShowAll\") then -- /script WeakAuras.ScanEvents(\"TehrsCDs_ShowAll\")\n        TehrsCDs[\"Show Settings\"].allExterns = true\n        TehrsCDs[\"Show Settings\"].allCDs = true\n        TehrsCDs[\"Show Settings\"].allUtility = true\n        TehrsCDs[\"Show Settings\"].allImmunityCDs = true\n        TehrsCDs[\"Show Settings\"].allAoECCs = true\n        TehrsCDs[\"Show Settings\"].allInterrupts = true\n        TehrsCDs[\"Show Settings\"].allRezzes = true\n        \n        print(\"|cFF00A2E8Tehr's RaidCDs:|r All CDs are now |cFF00FF00ENABLED|r\")    \n        \n    elseif (event == \"TehrsCDs_ShowDisplay\") then -- /script WeakAuras.ScanEvents(\"TehrsCDs_ShowDisplay\")\n        TehrsCDs.minmaxDisplays = true\n        \n        print(\"|cFF00A2E8Tehr's RaidCDs:|r Display is now |cFF00FF00ENABLED|r\")          \n        \n    elseif event == \"ENCOUNTER_START\" then\n        if arg1 then\n            TehrsCDs.encounterStart = true\n            if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: encounter start\") end\n        end\n        \n    elseif event == \"ENCOUNTER_END\" then\n        if arg1 then\n            TehrsCDs.encounterStart = false\n            if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: encounter end\") end\n            if TehrsCDs.instanceType == \"raid\" then\n                TehrsCDs._rezCDs_dks = nil\n                TehrsCDs._rezCDs_druids = nil\n                TehrsCDs._rezCDs_warlocks = nil    \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: in a raid, resetting brezzes\") end\n            end\n        end   \n        \n    elseif event == \"CHALLENGE_MODE_START\" then\n        TehrsCDs._rezCDs_dks = nil\n        TehrsCDs._rezCDs_druids = nil\n        TehrsCDs._rezCDs_warlocks = nil  \n        if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: challenge mode start, resetting brezzes\") end\n    end       \n    \n    if event == \"COMBAT_LOG_EVENT_UNFILTERED\" then\n        --local arg1, eventType, arg2, sourceGUID, sourceName, sourceFlags, sourceFlags2, destGUID, destName, destFlags, destFlags2, spellID, spellName, spellSchool, extraSpellID, extraSpellName, extraSpellSchool = CombatLogGetCurrentEventInfo()    \n        \n        local function getPetOwner(petName, petGUID)\n            local ownerName\n            \n            if UnitGUID(\"pet\") == petGUID then\n                ownerName = GetUnitName(\"player\")\n            elseif IsInRaid() then\n                for i=1, GetNumGroupMembers() do\n                    if UnitGUID(\"raid\"..i..\"pet\") == petGUID then\n                        ownerName = GetUnitName(\"raid\"..i)\n                        break\n                    end\n                end\n            else\n                for i=1, GetNumSubgroupMembers() do\n                    if UnitGUID(\"party\"..i..\"pet\") == petGUID then\n                        ownerName = GetUnitName(\"party\"..i)\n                        break\n                    end\n                end\n            end\n            \n            if ownerName then\n                return ownerName\n            else\n                return petName\n            end\n        end     \n        \n        if (not UnitInParty(sourceName)) and (sourceName ~= UnitName(\"player\")) then\n            if not (UnitInParty(getPetOwner(sourceName,sourceGUID)) or UnitName(\"player\") == getPetOwner(sourceName,sourceGUID)) then\n                return false\n            end\n        end    \n        \n        aura_env.GADuration = aura_env.GADuration or 0 --initializes GADuration \n        aura_env.shockwavehits = aura_env.shockwavehits or 0 --initializes shockwavehits\n        aura_env.captotemhits = aura_env.captotemhits or 0 --initializes captotemhits\n        \n        -- IMMUNITIES --\n        if (TehrsCDs[\"Show Settings\"].allImmunityCDs and TehrsCDs.instanceType ~= \"raid\" and GetNumGroupMembers()<20) or (TehrsCDs[\"Show Settings\"].allImmunityCDs_inRaid and (TehrsCDs.instanceType == \"raid\" or GetNumGroupMembers()>19)) then                \n            if(eventType == \"SPELL_CAST_SUCCESS\" and TehrsCDs[\"Show Settings\"].Turtle and spellID == 186265) then\n                -- Aspect of the Turtle --\n                if (TehrsCDs._immunityCDs_hunters == nil) then TehrsCDs._immunityCDs_hunters = { } end\n                if (TehrsCDs._immunityCDs_hunters[sourceName] == nil) then TehrsCDs._immunityCDs_hunters[sourceName] = { } end   \n                \n                local Turtle1 = TehrsCDs._immunityCDs_hunters[sourceName][\"Turtle\"];\n                local Turtle2 = TehrsCDs._immunityCDs_hunters[sourceName][\"Turtle+\"];\n                \n                if (Turtle1 ~= nil) then\n                    TehrsCDs._immunityCDs_hunters[sourceName][\"Turtle\"] = GetTime() + 180\n                    TehrsCDs._immunityCDs_hunters[sourceName][\"Turtle+\"] = nil;\n                end\n                if (Turtle2 ~= nil) then\n                    TehrsCDs._immunityCDs_hunters[sourceName][\"Turtle+\"] = GetTime() + 144\n                    TehrsCDs._immunityCDs_hunters[sourceName][\"Turtle\"] = nil;\n                end    \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end\n                \n            elseif(eventType == \"SPELL_CAST_SUCCESS\" and TehrsCDs[\"Show Settings\"].Cloak and spellID == 31224) then\n                -- Cloak of Shadows --\n                if (TehrsCDs._immunityCDs_rogues == nil) then TehrsCDs._immunityCDs_rogues = { } end\n                if (TehrsCDs._immunityCDs_rogues[sourceName] == nil) then TehrsCDs._immunityCDs_rogues[sourceName] = { } end   \n                \n                TehrsCDs._immunityCDs_rogues[sourceName][\"Cloak\"] = GetTime() + 120\n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end       \n                \n            elseif(eventType == \"SPELL_CAST_SUCCESS\" and TehrsCDs[\"Show Settings\"].Block and spellID == 45438) then\n                -- Ice Block --\n                if (TehrsCDs._immunityCDs_mages == nil) then TehrsCDs._immunityCDs_mages = { } end\n                if (TehrsCDs._immunityCDs_mages[sourceName] == nil) then TehrsCDs._immunityCDs_mages[sourceName] = { } end   \n                \n                local Block1 = TehrsCDs._immunityCDs_mages[sourceName][\"Block\"];\n                local Block2 = TehrsCDs._immunityCDs_mages[sourceName][\"Block+\"];\n                \n                if (Block1 ~= nil) then\n                    TehrsCDs._immunityCDs_mages[sourceName][\"Block\"] = GetTime() + 240;\n                    TehrsCDs._immunityCDs_mages[sourceName][\"Block+\"] = nil;\n                end\n                if (Block2 ~= nil) then\n                    TehrsCDs._immunityCDs_mages[sourceName][\"Block+\"] = GetTime() + 240;\n                    TehrsCDs._immunityCDs_mages[sourceName][\"Block\"] = nil;\n                end      \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end      \n                \n            elseif(eventType == \"SPELL_CAST_SUCCESS\" and TehrsCDs[\"Show Settings\"].Block and spellID == 235219) then\n                -- Ice Block: COLD SNAP --\n                if (TehrsCDs._immunityCDs_mages == nil) then TehrsCDs._immunityCDs_mages = { } end\n                if (TehrsCDs._immunityCDs_mages[sourceName] == nil) then TehrsCDs._immunityCDs_mages[sourceName] = { } end   \n                \n                TehrsCDs._immunityCDs_mages[sourceName][\"Block+\"] = GetTime()     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(eventType == \"SPELL_CAST_SUCCESS\" and TehrsCDs[\"Show Settings\"].Netherwalk and spellID == 196555) then\n                -- Netherwalk --\n                if (TehrsCDs._immunityCDs_dhs == nil) then TehrsCDs._immunityCDs_dhs = { } end\n                if (TehrsCDs._immunityCDs_dhs[sourceName] == nil) then TehrsCDs._immunityCDs_dhs[sourceName] = { } end   \n                \n                TehrsCDs._immunityCDs_dhs[sourceName][\"Netherwalk\"] = GetTime() + 120;         \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(eventType == \"SPELL_AURA_APPLIED\" and TehrsCDs[\"Show Settings\"].Bubble and spellID == 642) then\n                -- Divine Shield --\n                if (TehrsCDs._immunityCDs_paladins == nil) then TehrsCDs._immunityCDs_paladins = { } end\n                if (TehrsCDs._immunityCDs_paladins[sourceName] == nil) then TehrsCDs._immunityCDs_paladins[sourceName] = { } end   \n                \n                local Bubble1 = TehrsCDs._immunityCDs_paladins[sourceName][\"Bubble\"]; \n                local Bubble2 = TehrsCDs._immunityCDs_paladins[sourceName][\"Bubble+\"]; \n                \n                if (Bubble1 ~= nil) then\n                    TehrsCDs._immunityCDs_paladins[sourceName][\"Bubble\"] = GetTime() + 300;\n                    TehrsCDs._immunityCDs_paladins[sourceName][\"Bubble+\"] = nil;          \n                end\n                if (Bubble2 ~= nil) then\n                    TehrsCDs._immunityCDs_paladins[sourceName][\"Bubble+\"] = GetTime() + 210;\n                    TehrsCDs._immunityCDs_paladins[sourceName][\"Bubble\"] = nil;          \n                end           \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end                  \n            end    \n        end    \n        \n        -- CROWD CONTROL --\n        if (TehrsCDs[\"Show Settings\"].allAoECCs and TehrsCDs.instanceType ~= \"raid\" and GetNumGroupMembers()<20) or (TehrsCDs[\"Show Settings\"].allAoECCs_inRaid and (TehrsCDs.instanceType == \"raid\" or GetNumGroupMembers()>19)) then        \n            if(spellID == 192058 and TehrsCDs[\"Show Settings\"].CapTotem and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Capacitor Totem --\n                if (TehrsCDs._aoeCCs_shamans == nil) then TehrsCDs._aoeCCs_shamans = { } end        \n                if (TehrsCDs._aoeCCs_shamans[sourceName] == nil) then TehrsCDs._aoeCCs_shamans[sourceName] = { } end\n                \n                local cap1 = TehrsCDs._aoeCCs_shamans[sourceName][\"Cap Totem\"];\n                local cap2 = TehrsCDs._aoeCCs_shamans[sourceName][\"Cap Totem+\"];\n                \n                if (cap1 ~= nil) then\n                    TehrsCDs._aoeCCs_shamans[sourceName][\"Cap Totem\"] = GetTime() + 60;\n                    TehrsCDs._aoeCCs_shamans[sourceName][\"Cap Totem+\"] = nil;\n                end\n                if (cap2 ~= nil) then\n                    TehrsCDs._aoeCCs_shamans[sourceName][\"Cap Totem+\"] = GetTime() + 60;\n                    TehrsCDs._aoeCCs_shamans[sourceName][\"Cap Totem\"] = nil;\n                end  \n                aura_env.captotemhits = 0                 \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end   \n                \n            elseif(spellID == 118905 and TehrsCDs[\"Show Settings\"].CapTotem and eventType == \"SPELL_AURA_APPLIED\") then\n                -- Capacitor STUN --\n                if (TehrsCDs._aoeCCs_shamans == nil) then TehrsCDs._aoeCCs_shamans = { } end        \n                if (TehrsCDs._aoeCCs_shamans[sourceName] == nil) then TehrsCDs._aoeCCs_shamans[sourceName] = { } end\n                \n                local CapTotem1 = TehrsCDs._aoeCCs_shamans[sourceName][\"Cap Totem+\"];\n                \n                if CapTotem1 then\n                    aura_env.captotemhits = aura_env.captotemhits + 1\n                    if aura_env.captotemhits <= 4 then\n                        TehrsCDs._aoeCCs_shamans[sourceName][\"Cap Totem+\"] = TehrsCDs._aoeCCs_shamans[sourceName][\"Cap Totem+\"] - 5\n                        if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" hit with \"..spellName) end \n                    end   \n                end                            \n                \n            elseif(spellID == 51490 and TehrsCDs[\"Show Settings\"].Thunderstorm and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Thunderstorm --\n                if (TehrsCDs._aoeCCs_shamans == nil) then TehrsCDs._aoeCCs_shamans = { } end        \n                if (TehrsCDs._aoeCCs_shamans[sourceName] == nil) then TehrsCDs._aoeCCs_shamans[sourceName] = { } end\n                \n                TehrsCDs._aoeCCs_shamans[sourceName][\"Thunderstorm\"] = GetTime() + 45;      \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 30283 and TehrsCDs[\"Show Settings\"].Shadowfury and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Shadowfury --\n                if (TehrsCDs._aoeCCs_warlocks == nil) then TehrsCDs._aoeCCs_warlocks = { } end        \n                if (TehrsCDs._aoeCCs_warlocks[sourceName] == nil) then TehrsCDs._aoeCCs_warlocks[sourceName] = { } end\n                \n                local shadowfury1 = TehrsCDs._aoeCCs_warlocks[sourceName][\"Shadowfury\"];\n                local shadowfury2 = TehrsCDs._aoeCCs_warlocks[sourceName][\"Shadowfury+\"];\n                \n                if (shadowfury1 ~= nil) then\n                    TehrsCDs._aoeCCs_warlocks[sourceName][\"Shadowfury\"] = GetTime() + 60;\n                    TehrsCDs._aoeCCs_warlocks[sourceName][\"Shadowfury+\"] = nil;\n                end\n                if (shadowfury2 ~= nil) then\n                    TehrsCDs._aoeCCs_warlocks[sourceName][\"Shadowfury+\"] = GetTime() + 45;\n                    TehrsCDs._aoeCCs_warlocks[sourceName][\"Shadowfury\"] = nil;\n                end       \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end     \n                \n            elseif(spellID == 1122 and TehrsCDs[\"Show Settings\"].Infernal and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Summon Infernal --\n                if (TehrsCDs._aoeCCs_warlocks == nil) then TehrsCDs._aoeCCs_warlocks = { } end        \n                if (TehrsCDs._aoeCCs_warlocks[sourceName] == nil) then TehrsCDs._aoeCCs_warlocks[sourceName] = { } end\n                \n                TehrsCDs._aoeCCs_warlocks[sourceName][\"Infernal\"] = GetTime() + 180; \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end                  \n                \n            elseif(eventType == \"SPELL_CAST_SUCCESS\" and TehrsCDs[\"Show Settings\"].Grasp and spellID == 108199) then\n                -- Gorefiend's Grasp --\n                if (TehrsCDs._aoeCCs_dks == nil) then TehrsCDs._aoeCCs_dks = { } end\n                if (TehrsCDs._aoeCCs_dks[sourceName] == nil) then TehrsCDs._aoeCCs_dks[sourceName] = { } end   \n                \n                local grasp1 = TehrsCDs._aoeCCs_dks[sourceName][\"Grasp\"];\n                local grasp2 = TehrsCDs._aoeCCs_dks[sourceName][\"Grasp+\"];\n                \n                if (grasp1 ~= nil) then\n                    TehrsCDs._aoeCCs_dks[sourceName][\"Grasp\"] = GetTime() + 120;\n                    TehrsCDs._aoeCCs_dks[sourceName][\"Grasp+\"] = nil;\n                end\n                if (grasp2 ~= nil) then\n                    TehrsCDs._aoeCCs_dks[sourceName][\"Grasp+\"] = GetTime() + 90;\n                    TehrsCDs._aoeCCs_dks[sourceName][\"Grasp\"] = nil;\n                end     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(eventType == \"SPELL_CAST_SUCCESS\" and TehrsCDs[\"Show Settings\"].Chains and spellID == 202138) then\n                -- Sigil of Chains --\n                if (TehrsCDs._aoeCCs_dhs == nil) then TehrsCDs._aoeCCs_dhs = { } end\n                if (TehrsCDs._aoeCCs_dhs[sourceName] == nil) then TehrsCDs._aoeCCs_dhs[sourceName] = { } end   \n                \n                TehrsCDs._aoeCCs_dhs[sourceName][\"Chains\"] = GetTime() + 90;     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 109248 and TehrsCDs[\"Show Settings\"].Binding and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Binding Shot --\n                if (TehrsCDs._aoeCCs_hunters == nil) then TehrsCDs._aoeCCs_hunters = { } end        \n                if (TehrsCDs._aoeCCs_hunters[sourceName] == nil) then TehrsCDs._aoeCCs_hunters[sourceName] = { } end\n                \n                TehrsCDs._aoeCCs_hunters[sourceName][\"Binding\"] = GetTime() + 45;       \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 119381 and TehrsCDs[\"Show Settings\"].Sweep and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Leg Sweep --\n                if (TehrsCDs._aoeCCs_monks == nil) then TehrsCDs._aoeCCs_monks = { } end        \n                if (TehrsCDs._aoeCCs_monks[sourceName] == nil) then TehrsCDs._aoeCCs_monks[sourceName] = { } end\n                \n                local Sweep1 = TehrsCDs._aoeCCs_monks[sourceName][\"Sweep\"];\n                local Sweep2 = TehrsCDs._aoeCCs_monks[sourceName][\"Sweep+\"];\n                \n                if (Sweep1 ~= nil) then\n                    TehrsCDs._aoeCCs_monks[sourceName][\"Sweep\"] = GetTime() + 60;\n                    TehrsCDs._aoeCCs_monks[sourceName][\"Sweep+\"] = nil;\n                end\n                if (Sweep2 ~= nil) then\n                    TehrsCDs._aoeCCs_monks[sourceName][\"Sweep+\"] = GetTime() + 50;\n                    TehrsCDs._aoeCCs_monks[sourceName][\"Sweep\"] = nil;\n                end      \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 116844 and TehrsCDs[\"Show Settings\"].Ring and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Ring of Peace --\n                if (TehrsCDs._aoeCCs_monks == nil) then TehrsCDs._aoeCCs_monks = { } end        \n                if (TehrsCDs._aoeCCs_monks[sourceName] == nil) then TehrsCDs._aoeCCs_monks[sourceName] = { } end\n                \n                TehrsCDs._aoeCCs_monks[sourceName][\"Ring\"] = GetTime() + 45;       \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end        \n                \n            elseif(spellID == 102793 and TehrsCDs[\"Show Settings\"].Ursol and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Ursol's Vortex --\n                if (TehrsCDs._aoeCCs_druids == nil) then TehrsCDs._aoeCCs_druids = { } end        \n                if (TehrsCDs._aoeCCs_druids[sourceName] == nil) then TehrsCDs._aoeCCs_druids[sourceName] = { } end\n                \n                TehrsCDs._aoeCCs_druids[sourceName][\"Ursol\"] = GetTime() + 60;        \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 61391 and TehrsCDs[\"Show Settings\"].Typhoon and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Typhoon --\n                if (TehrsCDs._aoeCCs_druids == nil) then TehrsCDs._aoeCCs_druids = { } end        \n                if (TehrsCDs._aoeCCs_druids[sourceName] == nil) then TehrsCDs._aoeCCs_druids[sourceName] = { } end\n                \n                TehrsCDs._aoeCCs_druids[sourceName][\"Typhoon\"] = GetTime() + 30;         \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end           \n                \n            elseif(spellID == 205369 and TehrsCDs[\"Show Settings\"].MindBomb and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Mind Bomb --\n                if (TehrsCDs._aoeCCs_priests == nil) then TehrsCDs._aoeCCs_priests = { } end        \n                if (TehrsCDs._aoeCCs_priests[sourceName] == nil) then TehrsCDs._aoeCCs_priests[sourceName] = { } end\n                \n                TehrsCDs._aoeCCs_priests[sourceName][\"Mind Bomb\"] = GetTime() + 30;        \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end    \n                \n            elseif(spellID == 204263 and TehrsCDs[\"Show Settings\"].Shining and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Shining Force --\n                if (TehrsCDs._aoeCCs_priests == nil) then TehrsCDs._aoeCCs_priests = { } end        \n                if (TehrsCDs._aoeCCs_priests[sourceName] == nil) then TehrsCDs._aoeCCs_priests[sourceName] = { } end\n                \n                TehrsCDs._aoeCCs_priests[sourceName][\"Shining\"] = GetTime() + 45;        \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end           \n                \n            elseif(spellID == 20549 and TehrsCDs[\"Show Settings\"].Stomp and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- War Stomp --\n                if (TehrsCDs._aoeCCs_tauren == nil) then TehrsCDs._aoeCCs_tauren = { } end        \n                if (TehrsCDs._aoeCCs_tauren[sourceName] == nil) then TehrsCDs._aoeCCs_tauren[sourceName] = { } end\n                \n                TehrsCDs._aoeCCs_tauren[sourceName][\"Stomp\"] = GetTime() + 90;           \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end     \n                \n            elseif(spellID == 255654 and TehrsCDs[\"Show Settings\"].BullRush and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Bull Rush --\n                if (TehrsCDs._aoeCCs_hmtauren == nil) then TehrsCDs._aoeCCs_hmtauren = { } end        \n                if (TehrsCDs._aoeCCs_hmtauren[sourceName] == nil) then TehrsCDs._aoeCCs_hmtauren[sourceName] = { } end\n                \n                TehrsCDs._aoeCCs_hmtauren[sourceName][\"Bull Rush\"] = GetTime() + 120;           \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end               \n                \n            elseif(spellID == 46968 and TehrsCDs[\"Show Settings\"].Shockwave and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Shockwave CAST --\n                if (TehrsCDs._aoeCCs_warriors == nil) then TehrsCDs._aoeCCs_warriors = { } end        \n                if (TehrsCDs._aoeCCs_warriors[sourceName] == nil) then TehrsCDs._aoeCCs_warriors[sourceName] = { } end\n                \n                local shockwave1 = TehrsCDs._aoeCCs_warriors[sourceName][\"Shockwave\"];\n                local shockwave2 = TehrsCDs._aoeCCs_warriors[sourceName][\"Shockwave+\"];\n                \n                if (shockwave1 ~= nil) then\n                    TehrsCDs._aoeCCs_warriors[sourceName][\"Shockwave\"] = GetTime() + 40;\n                    TehrsCDs._aoeCCs_warriors[sourceName][\"Shockwave+\"] = nil;\n                end\n                if (shockwave2 ~= nil) then\n                    TehrsCDs._aoeCCs_warriors[sourceName][\"Shockwave+\"] = GetTime() + 40;\n                    TehrsCDs._aoeCCs_warriors[sourceName][\"Shockwave\"] = nil;\n                end  \n                aura_env.shockwavehits = 0     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 46968 and TehrsCDs[\"Show Settings\"].Shockwave and eventType == \"SPELL_DAMAGE\") then\n                -- Shockwave DAMAGE --\n                if (TehrsCDs._aoeCCs_warriors == nil) then TehrsCDs._aoeCCs_warriors = { } end        \n                if (TehrsCDs._aoeCCs_warriors[sourceName] == nil) then TehrsCDs._aoeCCs_warriors[sourceName] = { } end\n                \n                local Shockwave1 = TehrsCDs._aoeCCs_warriors[sourceName][\"Shockwave+\"];\n                \n                if Shockwave1 then\n                    aura_env.shockwavehits = aura_env.shockwavehits + 1\n                    if aura_env.shockwavehits == 3 then\n                        TehrsCDs._aoeCCs_warriors[sourceName][\"Shockwave+\"] = TehrsCDs._aoeCCs_warriors[sourceName][\"Shockwave+\"] - 15\n                    end   \n                end            \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" hit with \"..spellName) end \n                \n            elseif (eventType == \"SPELL_CAST_SUCCESS\" and TehrsCDs[\"Show Settings\"].Nova and spellID == 179057) then\n                -- Chaos Nova --\n                if (TehrsCDs._aoeCCs_dhs == nil) then TehrsCDs._aoeCCs_dhs = { } end\n                if (TehrsCDs._aoeCCs_dhs[sourceName] == nil) then TehrsCDs._aoeCCs_dhs[sourceName] = { } end   \n                \n                local Nova1 = TehrsCDs._aoeCCs_dhs[sourceName][\"Nova+\"];\n                local Nova2 = TehrsCDs._aoeCCs_dhs[sourceName][\"Nova\"];\n                \n                if (Nova1 ~= nil) then\n                    TehrsCDs._aoeCCs_dhs[sourceName][\"Nova+\"] = GetTime() + 40;\n                    TehrsCDs._aoeCCs_dhs[sourceName][\"Nova\"] = nil;\n                end\n                if (Nova2 ~= nil) then\n                    TehrsCDs._aoeCCs_dhs[sourceName][\"Nova\"] = GetTime() + 60;\n                    TehrsCDs._aoeCCs_dhs[sourceName][\"Nova+\"] = nil;\n                end     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n            end    \n        end    \n        \n        -- INTERRUPTS --\n        if (TehrsCDs[\"Show Settings\"].allInterrupts and TehrsCDs.instanceType ~= \"raid\" and GetNumGroupMembers()<20) or (TehrsCDs[\"Show Settings\"].allInterrupts_inRaid and (TehrsCDs.instanceType == \"raid\" or GetNumGroupMembers()>19)) then\n            if(spellID == 1766 and TehrsCDs[\"Show Settings\"].Kick and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Kick --\n                if (TehrsCDs._interrupts_rogues == nil) then TehrsCDs._interrupts_rogues = { } end        \n                if (TehrsCDs._interrupts_rogues[sourceName] == nil) then TehrsCDs._interrupts_rogues[sourceName] = { } end\n                \n                TehrsCDs._interrupts_rogues[sourceName][\"Kick\"] = GetTime() + 15;       \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 6552 and TehrsCDs[\"Show Settings\"].Pummel and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Pummel --\n                if (TehrsCDs._interrupts_warriors == nil) then TehrsCDs._interrupts_warriors = { } end        \n                if (TehrsCDs._interrupts_warriors[sourceName] == nil) then TehrsCDs._interrupts_warriors[sourceName] = { } end\n                \n                TehrsCDs._interrupts_warriors[sourceName][\"Pummel\"] = GetTime() + 15;        \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif (spellID == 106839 and TehrsCDs[\"Show Settings\"].SBash and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Skull Bash --\n                if (TehrsCDs._interrupts_druids == nil) then TehrsCDs._interrupts_druids = { } end        \n                if (TehrsCDs._interrupts_druids[sourceName] == nil) then TehrsCDs._interrupts_druids[sourceName] = { } end\n                \n                TehrsCDs._interrupts_druids[sourceName][\"S-Bash\"] = GetTime() + 15;       \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 47528 and TehrsCDs[\"Show Settings\"].MindFreeze and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Mind Freeze --\n                if (TehrsCDs._interrupts_dks == nil) then TehrsCDs._interrupts_dks = { } end        \n                if (TehrsCDs._interrupts_dks[sourceName] == nil) then TehrsCDs._interrupts_dks[sourceName] = { } end\n                \n                TehrsCDs._interrupts_dks[sourceName][\"M-Freeze\"] = GetTime() + 15;          \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 183752 and TehrsCDs[\"Show Settings\"].Disrupt and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Disrupt --\n                if (TehrsCDs._interrupts_dhs == nil) then TehrsCDs._interrupts_dhs = { } end        \n                if (TehrsCDs._interrupts_dhs[sourceName] == nil) then TehrsCDs._interrupts_dhs[sourceName] = { } end\n                \n                TehrsCDs._interrupts_dhs[sourceName][\"Disrupt\"] = GetTime() + 15;           \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end     \n                \n            elseif(spellID == 96231 and TehrsCDs[\"Show Settings\"].Rebuke and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Rebuke --\n                if (TehrsCDs._interrupts_paladins == nil) then TehrsCDs._interrupts_paladins = { } end        \n                if (TehrsCDs._interrupts_paladins[sourceName] == nil) then TehrsCDs._interrupts_paladins[sourceName] = { } end\n                \n                TehrsCDs._interrupts_paladins[sourceName][\"Rebuke\"] = GetTime() + 15;         \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end         \n                \n            elseif (spellID == 57994 and TehrsCDs[\"Show Settings\"].WShear and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Wind Shear --\n                if (TehrsCDs._interrupts_shamans == nil) then TehrsCDs._interrupts_shamans = { } end        \n                if (TehrsCDs._interrupts_shamans[sourceName] == nil) then TehrsCDs._interrupts_shamans[sourceName] = { } end\n                \n                TehrsCDs._interrupts_shamans[sourceName][\"W-Shear\"] = GetTime() + 12;     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 116705 and TehrsCDs[\"Show Settings\"].SStrike and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Spear Hand Strike --\n                if (TehrsCDs._interrupts_monks == nil) then TehrsCDs._interrupts_monks = { } end        \n                if (TehrsCDs._interrupts_monks[sourceName] == nil) then TehrsCDs._interrupts_monks[sourceName] = { } end\n                \n                TehrsCDs._interrupts_monks[sourceName][\"S-Strike\"] = GetTime() + 15;        \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end       \n                \n            elseif(spellID == 187707 and TehrsCDs[\"Show Settings\"].Muzzle and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Muzzle --\n                if (TehrsCDs._interrupts_hunters == nil) then TehrsCDs._interrupts_hunters = { } end        \n                if (TehrsCDs._interrupts_hunters[sourceName] == nil) then TehrsCDs._interrupts_hunters[sourceName] = { } end\n                \n                TehrsCDs._interrupts_hunters[sourceName][\"Muzzle\"] = GetTime() + 15;          \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end      \n                \n            elseif(spellID == 147362 and TehrsCDs[\"Show Settings\"].CShot and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Counter Shot --\n                if (TehrsCDs._interrupts_hunters == nil) then TehrsCDs._interrupts_hunters = { } end        \n                if (TehrsCDs._interrupts_hunters[sourceName] == nil) then TehrsCDs._interrupts_hunters[sourceName] = { } end\n                \n                TehrsCDs._interrupts_hunters[sourceName][\"C-Shot\"] = GetTime() + 24;        \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif (spellID == 2139 and TehrsCDs[\"Show Settings\"].CSpell and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Counterspell --        \n                if (TehrsCDs._interrupts_mages == nil) then TehrsCDs._interrupts_mages = { } end        \n                if (TehrsCDs._interrupts_mages[sourceName] == nil) then TehrsCDs._interrupts_mages[sourceName] = { } end\n                \n                TehrsCDs._interrupts_mages[sourceName][\"C-Spell\"] = GetTime() + 24;       \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif ((spellID == 171140 or spellID == 119910 or spellID == 19647 or spellID == 119898) and TehrsCDs[\"Show Settings\"].SpellLock and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Spell Lock --\n                if (TehrsCDs._interrupts_warlocks == nil) then TehrsCDs._interrupts_warlocks = { } end        \n                if (TehrsCDs._interrupts_warlocks[sourceName] == nil) then TehrsCDs._interrupts_warlocks[sourceName] = { } end    \n                \n                TehrsCDs._interrupts_warlocks[sourceName][\"Spell Lock\"] = GetTime() + 24;  \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif ((spellID == 171138 or spellID == 19647) and TehrsCDs[\"Show Settings\"].SpellLock and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Spell Lock : PET --\n                if (TehrsCDs._interrupts_warlocks == nil) then TehrsCDs._interrupts_warlocks = { } end        \n                if (TehrsCDs._interrupts_warlocks[sourceName] == nil) then TehrsCDs._interrupts_warlocks[sourceName] = { } end    \n                \n                local owner = getPetOwner(sourceName, sourceGUID)                 \n                \n                TehrsCDs._interrupts_warlocks[owner][\"Spell Lock\"] = GetTime() + 24;  \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif ((spellID == 171140 or spellID == 119910 or spellID == 119898 or spellID == 132409) and TehrsCDs[\"Show Settings\"].SpellLock and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Spell Lock : COMMAND DEMON --\n                if (TehrsCDs._interrupts_warlocks == nil) then TehrsCDs._interrupts_warlocks = { } end        \n                if (TehrsCDs._interrupts_warlocks[sourceName] == nil) then TehrsCDs._interrupts_warlocks[sourceName] = { } end    \n                \n                TehrsCDs._interrupts_warlocks[sourceName][\"Spell Lock\"] = GetTime() + 24;  \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end                 \n                \n            elseif (spellID == 15487 and TehrsCDs[\"Show Settings\"].Silence and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Priest: Silence --        \n                if (TehrsCDs._interrupts_priests == nil) then TehrsCDs._interrupts_priests = { } end        \n                if (TehrsCDs._interrupts_priests[sourceName] == nil) then TehrsCDs._interrupts_priests[sourceName] = { } end\n                \n                local Silence1 = TehrsCDs._interrupts_priests[sourceName][\"Silence+\"];\n                local Silence2 = TehrsCDs._interrupts_priests[sourceName][\"Silence\"];\n                \n                if (Silence1 ~= nil) then\n                    TehrsCDs._interrupts_priests[sourceName][\"Silence+\"] = GetTime() + 30;\n                    TehrsCDs._interrupts_priests[sourceName][\"Silence\"] = nil;\n                end\n                if (Silence2 ~= nil) then\n                    TehrsCDs._interrupts_priests[sourceName][\"Silence\"] = GetTime() + 45;\n                    TehrsCDs._interrupts_priests[sourceName][\"Silence+\"] = nil;\n                end   \n                \n            elseif (spellID == 78675 and TehrsCDs[\"Show Settings\"].SBeam and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Solar Beam: CAST --\n                if (TehrsCDs._interrupts_druids == nil) then TehrsCDs._interrupts_druids = { } end        \n                if (TehrsCDs._interrupts_druids[sourceName] == nil) then TehrsCDs._interrupts_druids[sourceName] = { } end\n                \n                TehrsCDs._interrupts_druids[sourceName][\"S-Beam\"] = GetTime() + 60;\n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end   \n                \n            elseif(eventType == \"SPELL_CAST_SUCCESS\" and TehrsCDs[\"Show Settings\"].SigilSilence and (spellID == 202137 or spellID == 207682)) then\n                -- Sigil of Silence --\n                if (TehrsCDs._interrupts_dhs == nil) then TehrsCDs._interrupts_dhs = { } end\n                if (TehrsCDs._interrupts_dhs[sourceName] == nil) then TehrsCDs._interrupts_dhs[sourceName] = { } end   \n                \n                local silence1 = TehrsCDs._interrupts_dhs[sourceName][\"S-Silence+\"];\n                local silence2 = TehrsCDs._interrupts_dhs[sourceName][\"S-Silence\"];\n                \n                if (silence1 ~= nil) then\n                    TehrsCDs._interrupts_dhs[sourceName][\"S-Silence+\"] = GetTime() + 48;\n                    TehrsCDs._interrupts_dhs[sourceName][\"S-Silence\"] = nil;\n                end\n                if (silence2 ~= nil) then\n                    TehrsCDs._interrupts_dhs[sourceName][\"S-Silence\"] = GetTime() + 60;\n                    TehrsCDs._interrupts_dhs[sourceName][\"S-Silence+\"] = nil;\n                end     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end  \n                \n                --[[        \n            elseif ((spellID == 28730 or spellID == 50613 or spellID == 202719 or spellID == 80483 or spellID == 129597 or spellID == 155145 or spellID == 232633 or spellID == 25046 or spellID == 69179) and eventType == \"SPELL_CAST_SUCCESS\" and TehrsCDs[\"Show Settings\"].Torrent) then\n                -- Arcane Torrent --  p.s. Blizzard why do you have a new spellID for each class? pls\n                if (TehrsCDs._interrupts_belfs == nil) then TehrsCDs._interrupts_belfs = { } end        \n                if (TehrsCDs._interrupts_belfs[sourceName] == nil) then TehrsCDs._interrupts_belfs[sourceName] = { } end\n                \n                TehrsCDs._interrupts_belfs[sourceName][\"Torrent\"] = GetTime() + 90;      \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end                \n            \n            Arcane Torrent isn't an interrupt anymore! Holding onto this until I add dispels.\n            ]]    \n            end        \n        end        \n        \n        -- BATTLE REZZES --\n        if (TehrsCDs[\"Show Settings\"].allRezzes and TehrsCDs.instanceType ~= \"raid\" and GetNumGroupMembers()<20) or ((TehrsCDs[\"Show Settings\"].allRezzes_inRaid or TehrsCDs[\"Show Settings\"].Ankh_inRaid) and (TehrsCDs.instanceType == \"raid\" or GetNumGroupMembers()>19)) then\n            if ((spellID == 20608 or spellID == 21169 or spellID == 27740) and eventType == \"SPELL_CAST_SUCCESS\" and TehrsCDs[\"Show Settings\"].Ankh) then\n                -- Reincarnation --\n                if (TehrsCDs._rezCDs_shamans == nil) then TehrsCDs._rezCDs_shamans = { } end        \n                if (TehrsCDs._rezCDs_shamans[sourceName] == nil) then TehrsCDs._rezCDs_shamans[sourceName] = { } end\n                \n                TehrsCDs._rezCDs_shamans[sourceName][\"Ankh\"] = GetTime() + 1800;       \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif (spellID == 61999 and TehrsCDs[\"Show Settings\"].RaiseAlly and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Raise Ally --\n                if (TehrsCDs._rezCDs_dks == nil) then TehrsCDs._rezCDs_dks = { } end        \n                if (TehrsCDs._rezCDs_dks[sourceName] == nil) then TehrsCDs._rezCDs_dks[sourceName] = { } end\n                \n                TehrsCDs._rezCDs_dks[sourceName][\"Raise Ally\"] = GetTime() + 600;         \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif (spellID == 20707 and TehrsCDs[\"Show Settings\"].Soulstone and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Soulstone --\n                if (TehrsCDs._rezCDs_warlocks == nil) then TehrsCDs._rezCDs_warlocks = { } end        \n                if (TehrsCDs._rezCDs_warlocks[sourceName] == nil) then TehrsCDs._rezCDs_warlocks[sourceName] = { } end\n                \n                TehrsCDs._rezCDs_warlocks[sourceName][\"Soulstone\"] = GetTime() + 600;       \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end   \n                \n            elseif (spellID == 20484 and TehrsCDs[\"Show Settings\"].Rebirth and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Rebirth --\n                if (TehrsCDs._rezCDs_druids == nil) then TehrsCDs._rezCDs_druids = { } end        \n                if (TehrsCDs._rezCDs_druids[sourceName] == nil) then TehrsCDs._rezCDs_druids[sourceName] = { } end\n                \n                TehrsCDs._rezCDs_druids[sourceName][\"Rebirth\"] = GetTime() + 600;        \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end  \n            end\n        end        \n        \n        -- UTILITY --  \n        if (TehrsCDs[\"Show Settings\"].allUtility and TehrsCDs.instanceType ~= \"raid\" and GetNumGroupMembers()<20) or (TehrsCDs[\"Show Settings\"].allUtility_inRaid and (TehrsCDs.instanceType == \"raid\" or GetNumGroupMembers()>19)) then \n            if (spellID == 57934 and TehrsCDs[\"Show Settings\"].Tricks and eventType == \"SPELL_AURA_APPLIED\") then\n                -- Tricks of the Trade: BUFF APPLIED TO ROGUE --        \n                if (TehrsCDs._utilityCDs_rogues == nil) then TehrsCDs._utilityCDs_rogues = { } end        \n                if (TehrsCDs._utilityCDs_rogues[sourceName] == nil) then TehrsCDs._utilityCDs_rogues[sourceName] = { } end\n                \n                TehrsCDs._utilityCDs_rogues[sourceName][\"Tricks\"] = GetTime() + 30;        \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end\n                \n            elseif (spellID == 114018 and TehrsCDs[\"Show Settings\"].Shroud and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Shroud of Concealment --        \n                if (TehrsCDs._utilityCDs_rogues == nil) then TehrsCDs._utilityCDs_rogues = { } end        \n                if (TehrsCDs._utilityCDs_rogues[sourceName] == nil) then TehrsCDs._utilityCDs_rogues[sourceName] = { } end\n                \n                TehrsCDs._utilityCDs_rogues[sourceName][\"Shroud\"] = GetTime() + 360;        \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif (spellID == 34477 and TehrsCDs[\"Show Settings\"].Misdirect and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Misdirection --\n                if (TehrsCDs._utilityCDs_hunters == nil) then TehrsCDs._utilityCDs_hunters = { } end        \n                if (TehrsCDs._utilityCDs_hunters[sourceName] == nil) then TehrsCDs._utilityCDs_hunters[sourceName] = { } end\n                \n                TehrsCDs._utilityCDs_hunters[sourceName][\"Misdirect\"] = GetTime() + 30;       \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end       \n                \n            elseif(spellID == 64901 and TehrsCDs[\"Show Settings\"].Hope and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Symbol of Hope --\n                if (TehrsCDs._utilityCDs_priests == nil) then TehrsCDs._utilityCDs_priests = { } end\n                if (TehrsCDs._utilityCDs_priests[sourceName] == nil) then TehrsCDs._utilityCDs_priests[sourceName] = { } end\n                \n                TehrsCDs._utilityCDs_priests[sourceName][\"Hope\"] = GetTime() + 300;     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 73325 and TehrsCDs[\"Show Settings\"].Grip and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Leap of Faith --\n                if (TehrsCDs._utilityCDs_priests == nil) then TehrsCDs._utilityCDs_priests = { } end\n                if (TehrsCDs._utilityCDs_priests[sourceName] == nil) then TehrsCDs._utilityCDs_priests[sourceName] = { } end\n                \n                TehrsCDs._utilityCDs_priests[sourceName][\"Grip\"] = GetTime() + 90;     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 192077 and TehrsCDs[\"Show Settings\"].WindRush and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Wind Rush Totem --\n                if (TehrsCDs._utilityCDs_shamans == nil) then TehrsCDs._utilityCDs_shamans = { } end\n                if (TehrsCDs._utilityCDs_shamans[sourceName] == nil) then TehrsCDs._utilityCDs_shamans[sourceName] = { } end\n                \n                TehrsCDs._utilityCDs_shamans[sourceName][\"Wind Rush\"] = GetTime() + 120;     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end             \n                \n            elseif(spellID == 29166 and TehrsCDs[\"Show Settings\"].Innervate and eventType == \"SPELL_CAST_SUCCESS\") then\n                --  Innervate --\n                if (TehrsCDs._utilityCDs_druids == nil) then TehrsCDs._utilityCDs_druids = { } end\n                if (TehrsCDs._utilityCDs_druids[sourceName] == nil) then TehrsCDs._utilityCDs_druids[sourceName] = { } end\n                \n                TehrsCDs._utilityCDs_druids[sourceName][\"Innervate\"] = GetTime() + 180;        \n                \n            elseif(spellID == 205636 and TehrsCDs[\"Show Settings\"].Treants and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Treants --\n                if (TehrsCDs._utilityCDs_druids == nil) then TehrsCDs._utilityCDs_druids = { } end\n                if (TehrsCDs._utilityCDs_druids[sourceName] == nil) then TehrsCDs._utilityCDs_druids[sourceName] = { } end\n                \n                TehrsCDs._utilityCDs_druids[sourceName][\"Treants\"] = GetTime() + 60;     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end     \n                \n            elseif(spellID == 58984 and TehrsCDs[\"Show Settings\"].Shadowmeld and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Shadowmeld --\n                if (TehrsCDs._utilityCDs_nightelf == nil) then TehrsCDs._utilityCDs_nightelf = { } end\n                if (TehrsCDs._utilityCDs_nightelf[sourceName] == nil) then TehrsCDs._utilityCDs_nightelf[sourceName] = { } end\n                \n                TehrsCDs._utilityCDs_nightelf[sourceName][\"Shadowmeld\"] = GetTime() + 120;     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end             \n                \n            elseif (eventType == \"SPELL_CAST_SUCCESS\" and TehrsCDs[\"Show Settings\"].Roar and spellID == 106898) then\n                -- Stampeding Roar --\n                if (TehrsCDs._utilityCDs_druids == nil) then TehrsCDs._utilityCDs_druids = { } end\n                if (TehrsCDs._utilityCDs_druids[sourceName] == nil) then TehrsCDs._utilityCDs_druids[sourceName] = { } end   \n                \n                TehrsCDs._utilityCDs_druids[sourceName][\"Roar\"] = GetTime() + 120;\n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif (eventType == \"SPELL_CAST_SUCCESS\" and TehrsCDs[\"Show Settings\"].Roar and spellID == 77761) then\n                -- Stampeding Roar: DEBUG --\n                if (TehrsCDs._utilityCDs_druids == nil) then TehrsCDs._utilityCDs_druids = { } end\n                if (TehrsCDs._utilityCDs_druids[sourceName] == nil) then TehrsCDs._utilityCDs_druids[sourceName] = { } end   \n                \n                TehrsCDs._utilityCDs_druids[sourceName][\"Roar\"] = GetTime() + 120;\n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif (eventType == \"SPELL_CAST_SUCCESS\" and TehrsCDs[\"Show Settings\"].Roar and spellID == 77764) then\n                -- Stampeding Roar: FERAL --\n                if (TehrsCDs._utilityCDs_druids == nil) then TehrsCDs._utilityCDs_druids = { } end\n                if (TehrsCDs._utilityCDs_druids[sourceName] == nil) then TehrsCDs._utilityCDs_druids[sourceName] = { } end   \n                \n                TehrsCDs._utilityCDs_druids[sourceName][\"Roar\"] = GetTime() + 120;       \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end             \n            end    \n        end\n        \n        -- RAID CDs --\n        if (TehrsCDs[\"Show Settings\"].allCDs and TehrsCDs.instanceType ~= \"raid\" and GetNumGroupMembers()<20) or (TehrsCDs[\"Show Settings\"].allCDs_inRaid and (TehrsCDs.instanceType == \"raid\" or GetNumGroupMembers()>19)) then \n            if (eventType == \"SPELL_AURA_APPLIED\" and TehrsCDs[\"Show Settings\"].Tranq and spellID == 740) then\n                -- Tranquility --\n                if (TehrsCDs._raidCDs_druids == nil) then TehrsCDs._raidCDs_druids = { } end\n                if (TehrsCDs._raidCDs_druids[sourceName] == nil) then TehrsCDs._raidCDs_druids[sourceName] = { } end   \n                \n                local tranq1 = TehrsCDs._raidCDs_druids[sourceName][\"Tranq+\"];\n                local tranq2 = TehrsCDs._raidCDs_druids[sourceName][\"Tranq\"];\n                \n                if (tranq1 ~= nil) then\n                    TehrsCDs._raidCDs_druids[sourceName][\"Tranq+\"] = GetTime() + 120;\n                    TehrsCDs._raidCDs_druids[sourceName][\"Tranq\"] = nil;\n                end\n                if (tranq2 ~= nil) then\n                    TehrsCDs._raidCDs_druids[sourceName][\"Tranq\"] = GetTime() + 180;\n                    TehrsCDs._raidCDs_druids[sourceName][\"Tranq+\"] = nil;\n                end     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif (spellID == 197721 and TehrsCDs[\"Show Settings\"].Flourish and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Flourish --        \n                if (TehrsCDs._raidCDs_druids == nil) then TehrsCDs._raidCDs_druids = { } end        \n                if (TehrsCDs._raidCDs_druids[sourceName] == nil) then TehrsCDs._raidCDs_druids[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_druids[sourceName][\"Flourish\"] = GetTime() + 90;          \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end             \n                \n            elseif (spellID == 47536 and TehrsCDs[\"Show Settings\"].Rapture and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Rapture --        \n                if (TehrsCDs._raidCDs_priests == nil) then TehrsCDs._raidCDs_priests = { } end        \n                if (TehrsCDs._raidCDs_priests[sourceName] == nil) then TehrsCDs._raidCDs_priests[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_priests[sourceName][\"Rapture\"] = GetTime() + 90;          \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end                 \n                \n            elseif (spellID == 64843 and TehrsCDs[\"Show Settings\"].DHymn and eventType == \"SPELL_AURA_APPLIED\") then\n                -- Divine Hymn --        \n                if (TehrsCDs._raidCDs_priests == nil) then TehrsCDs._raidCDs_priests = { } end        \n                if (TehrsCDs._raidCDs_priests[sourceName] == nil) then TehrsCDs._raidCDs_priests[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_priests[sourceName][\"D-Hymn\"] = GetTime() + 180;          \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end  \n                \n            elseif (spellID == 200183 and TehrsCDs[\"Show Settings\"].Apotheosis and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Apotheosis --        \n                if (TehrsCDs._raidCDs_priests == nil) then TehrsCDs._raidCDs_priests = { } end        \n                if (TehrsCDs._raidCDs_priests[sourceName] == nil) then TehrsCDs._raidCDs_priests[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_priests[sourceName][\"Apotheosis\"] = GetTime() + 120;          \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end     \n                \n            elseif (spellID == 265202 and TehrsCDs[\"Show Settings\"].Salvation and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Holy Word: Salvation --        \n                if (TehrsCDs._raidCDs_priests == nil) then TehrsCDs._raidCDs_priests = { } end        \n                if (TehrsCDs._raidCDs_priests[sourceName] == nil) then TehrsCDs._raidCDs_priests[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_priests[sourceName][\"Salvation\"] = GetTime() + 720;          \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end                 \n                \n            elseif(spellID == 34861 and TehrsCDs[\"Show Settings\"].Salvation and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Holy Word: Sanctify --\n                if (TehrsCDs._raidCDs_priests == nil) then TehrsCDs._raidCDs_priests = { } end        \n                if (TehrsCDs._raidCDs_priests[sourceName] == nil) then TehrsCDs._raidCDs_priests[sourceName] = { } end\n                \n                local salvSpec = TehrsCDs._raidCDs_priests[sourceName][\"Salvation\"]\n                \n                if (salvSpec ~= nil) then\n                    TehrsCDs._raidCDs_priests[sourceName][\"Salvation\"] = TehrsCDs._raidCDs_priests[sourceName][\"Salvation\"] - 30; \n                    if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                end      \n                \n            elseif(spellID == 2050 and TehrsCDs[\"Show Settings\"].Salvation and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Holy Word: Serenity --\n                if (TehrsCDs._raidCDs_priests == nil) then TehrsCDs._raidCDs_priests = { } end        \n                if (TehrsCDs._raidCDs_priests[sourceName] == nil) then TehrsCDs._raidCDs_priests[sourceName] = { } end\n                \n                local salvSpec = TehrsCDs._raidCDs_priests[sourceName][\"Salvation\"]\n                \n                if (salvSpec ~= nil) then\n                    TehrsCDs._raidCDs_priests[sourceName][\"Salvation\"] = TehrsCDs._raidCDs_priests[sourceName][\"Salvation\"] - 30; \n                    if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                end                  \n                \n            elseif (spellID == 108281 and TehrsCDs[\"Show Settings\"].AG and eventType == \"SPELL_AURA_APPLIED\") then\n                -- Ancestral Guidance --\n                if (TehrsCDs._raidCDs_shamans == nil) then TehrsCDs._raidCDs_shamans = { } end        \n                if (TehrsCDs._raidCDs_shamans[sourceName] == nil) then TehrsCDs._raidCDs_shamans[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_shamans[sourceName][\"AG\"] = GetTime() + 120;     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 97462 and TehrsCDs[\"Show Settings\"].CShout and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Commanding Shout --\n                if (TehrsCDs._raidCDs_warriors == nil) then TehrsCDs._raidCDs_warriors = { } end        \n                if (TehrsCDs._raidCDs_warriors[sourceName] == nil) then TehrsCDs._raidCDs_warriors[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_warriors[sourceName][\"R-Cry\"] = GetTime() + 180;     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 108280 and TehrsCDs[\"Show Settings\"].HTide  and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Healing Tide --\n                if (TehrsCDs._raidCDs_shamans == nil) then TehrsCDs._raidCDs_shamans = { } end        \n                if (TehrsCDs._raidCDs_shamans[sourceName] == nil) then TehrsCDs._raidCDs_shamans[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_shamans[sourceName][\"H-Tide\"] = GetTime() + 180;       \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 114052 and TehrsCDs[\"Show Settings\"].Ascendance  and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Ascendance --\n                if (TehrsCDs._raidCDs_shamans == nil) then TehrsCDs._raidCDs_shamans = { } end        \n                if (TehrsCDs._raidCDs_shamans[sourceName] == nil) then TehrsCDs._raidCDs_shamans[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_shamans[sourceName][\"Ascendance\"] = GetTime() + 180;       \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end                 \n                \n            elseif(spellID == 62618 and TehrsCDs[\"Show Settings\"].Barrier and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Power Word: Barrier --\n                if (TehrsCDs._raidCDs_priests == nil) then TehrsCDs._raidCDs_priests = { } end        \n                if (TehrsCDs._raidCDs_priests[sourceName] == nil) then TehrsCDs._raidCDs_priests[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_priests[sourceName][\"Barrier\"] = GetTime() + 180;         \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end         \n                \n            elseif(spellID == 271466 and TehrsCDs[\"Show Settings\"].Barrier and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Luminous Barrier --\n                if (TehrsCDs._raidCDs_priests == nil) then TehrsCDs._raidCDs_priests = { } end        \n                if (TehrsCDs._raidCDs_priests[sourceName] == nil) then TehrsCDs._raidCDs_priests[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_priests[sourceName][\"Barrier+\"] = GetTime() + 180;         \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end                  \n                \n            elseif(spellID == 98008 and TehrsCDs[\"Show Settings\"].SLT and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Spirit Link Totem --\n                if (TehrsCDs._raidCDs_shamans == nil) then TehrsCDs._raidCDs_shamans = { } end        \n                if (TehrsCDs._raidCDs_shamans[sourceName] == nil) then TehrsCDs._raidCDs_shamans[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_shamans[sourceName][\"SLT\"] = GetTime() + 180;            \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end  \n                \n            elseif(spellID == 31821 and TehrsCDs[\"Show Settings\"].AuraM and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Aura Mastery --\n                if (TehrsCDs._raidCDs_paladins == nil) then TehrsCDs._raidCDs_paladins = { } end\n                if (TehrsCDs._raidCDs_paladins[sourceName] == nil) then TehrsCDs._raidCDs_paladins[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_paladins[sourceName][\"Aura-M\"] = GetTime() + 180;     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 31884 and TehrsCDs[\"Show Settings\"].Wings and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Avenging Wrath --\n                if (TehrsCDs._raidCDs_paladins == nil) then TehrsCDs._raidCDs_paladins = { } end\n                if (TehrsCDs._raidCDs_paladins[sourceName] == nil) then TehrsCDs._raidCDs_paladins[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_paladins[sourceName][\"Wings\"] = GetTime() + 120;     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end         \n                \n            elseif(spellID == 216331 and TehrsCDs[\"Show Settings\"].Wings and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Avenging Crusader --\n                if (TehrsCDs._raidCDs_paladins == nil) then TehrsCDs._raidCDs_paladins = { } end\n                if (TehrsCDs._raidCDs_paladins[sourceName] == nil) then TehrsCDs._raidCDs_paladins[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_paladins[sourceName][\"Wings+\"] = GetTime() + 120;     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end                 \n                \n            elseif(spellID == 204150 and TehrsCDs[\"Show Settings\"].Aegis and eventType == \"SPELL_AURA_APPLIED\") then\n                -- Aegis of Light --\n                if (TehrsCDs._raidCDs_paladins == nil) then TehrsCDs._raidCDs_paladins = { } end\n                if (TehrsCDs._raidCDs_paladins[sourceName] == nil) then TehrsCDs._raidCDs_paladins[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_paladins[sourceName][\"Aegis\"] = GetTime() + 180;       \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end       \n                \n            elseif(spellID == 15286 and TehrsCDs[\"Show Settings\"].VE and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Vampiric Embrace --\n                if (TehrsCDs._raidCDs_priests == nil) then TehrsCDs._raidCDs_priests = { } end        \n                if (TehrsCDs._raidCDs_priests[sourceName] == nil) then TehrsCDs._raidCDs_priests[sourceName] = { } end\n                \n                local VE1 = TehrsCDs._raidCDs_priests[sourceName][\"VE+\"];\n                local VE2 = TehrsCDs._raidCDs_priests[sourceName][\"VE\"];\n                \n                if (VE1 ~= nil) then\n                    TehrsCDs._raidCDs_priests[sourceName][\"VE+\"] = GetTime() + 75;\n                    TehrsCDs._raidCDs_priests[sourceName][\"VE\"] = nil;\n                end\n                if (VE2 ~= nil) then\n                    TehrsCDs._raidCDs_priests[sourceName][\"VE\"] = GetTime() + 120;\n                    TehrsCDs._raidCDs_priests[sourceName][\"VE+\"] = nil;\n                end                 \n                \n            elseif(spellID == 196718 and TehrsCDs[\"Show Settings\"].Darkness and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Darkness --\n                if (TehrsCDs._raidCDs_dhs == nil) then TehrsCDs._raidCDs_dhs = { } end        \n                if (TehrsCDs._raidCDs_dhs[sourceName] == nil) then TehrsCDs._raidCDs_dhs[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_dhs[sourceName][\"Darkness\"] = GetTime() + 180;       \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 207399 and TehrsCDs[\"Show Settings\"].AProt and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Ancestral Protection Totem --\n                if (TehrsCDs._raidCDs_shamans == nil) then TehrsCDs._raidCDs_shamans = { } end        \n                if (TehrsCDs._raidCDs_shamans[sourceName] == nil) then TehrsCDs._raidCDs_shamans[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_shamans[sourceName][\"A-Prot\"] = GetTime() + 300;       \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end\n                \n            elseif(spellID == 115310 and TehrsCDs[\"Show Settings\"].Revival and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Revival --\n                if (TehrsCDs._raidCDs_monks == nil) then TehrsCDs._raidCDs_monks = { } end        \n                if (TehrsCDs._raidCDs_monks[sourceName] == nil) then TehrsCDs._raidCDs_monks[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_monks[sourceName][\"Revival\"] = GetTime() + 180;     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end              \n            end\n        end\n        \n        -- EXTERNAL CDs --    \n        if (TehrsCDs[\"Show Settings\"].allExterns and TehrsCDs.instanceType ~= \"raid\" and GetNumGroupMembers()<20) or (TehrsCDs[\"Show Settings\"].allExterns_inRaid and (TehrsCDs.instanceType == \"raid\" or GetNumGroupMembers()>19)) then         \n            if(spellID == 47788 and TehrsCDs[\"Show Settings\"].GSpirit and eventType == \"SPELL_CAST_SUCCESS\") then        \n                -- Guardian Spirit --        \n                if (TehrsCDs._externCDs_priests == nil) then TehrsCDs._externCDs_priests = { } end        \n                if (TehrsCDs._externCDs_priests[sourceName] == nil) then TehrsCDs._externCDs_priests[sourceName] = { } end    \n                \n                local GA1 = TehrsCDs._externCDs_priests[sourceName][\"G-Spirit\"];\n                local GA2 = TehrsCDs._externCDs_priests[sourceName][\"G-Spirit+\"];\n                \n                if (GA1 ~= nil) then\n                    TehrsCDs._externCDs_priests[sourceName][\"G-Spirit\"] = GetTime() + 180;\n                    TehrsCDs._externCDs_priests[sourceName][\"G-Spirit+\"] = nil;\n                end\n                if (GA2 ~= nil) then\n                    TehrsCDs._externCDs_priests[sourceName][\"G-Spirit+\"] = GetTime() + 180;\n                    TehrsCDs._externCDs_priests[sourceName][\"G-Spirit\"] = nil;\n                end     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 47788 and TehrsCDs[\"Show Settings\"].GSpirit and eventType == \"SPELL_AURA_APPLIED\") then        \n                -- Guardian Angel Applied (talent 3,1) --\n                if (TehrsCDs._externCDs_priests == nil) then TehrsCDs._externCDs_priests = { } end        \n                if (TehrsCDs._externCDs_priests[sourceName] == nil) then TehrsCDs._externCDs_priests[sourceName] = { } end          \n                \n                local GA2 = TehrsCDs._externCDs_priests[sourceName][\"G-Spirit+\"];        \n                if (GA2 ~= nil) then        \n                    aura_env.GADuration = select(6, WA_GetUnitAura(destName, 47788))  \n                end     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 47788 and TehrsCDs[\"Show Settings\"].GSpirit and eventType == \"SPELL_AURA_REMOVED\") then        \n                -- Guardian Angel Removed (talent 3,2) --\n                if (TehrsCDs._externCDs_priests == nil) then TehrsCDs._externCDs_priests = { } end        \n                if (TehrsCDs._externCDs_priests[sourceName] == nil) then TehrsCDs._externCDs_priests[sourceName] = { } end          \n                \n                local hasGA = TehrsCDs._externCDs_priests[sourceName][\"G-Spirit+\"];\n                if (hasGA ~= nil) then\n                    local timeLeft = aura_env.GADuration - GetTime()\n                    if timeLeft <= 0.1 then\n                        TehrsCDs._externCDs_priests[sourceName][\"G-Spirit+\"] = GetTime() + 60;  \n                    end\n                end           \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end   \n                \n            elseif(spellID == 198304 and TehrsCDs[\"Show Settings\"].Safeguard and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Intercept: Safeguard --\n                if (TehrsCDs._externCDs_warriors == nil) then TehrsCDs._externCDs_warriors = { } end        \n                if (TehrsCDs._externCDs_warriors[sourceName] == nil) then TehrsCDs._externCDs_warriors[sourceName] = { } end\n                \n                local safeguard = TehrsCDs._externCDs_warriors[sourceName][\"Safeguard\"];\n                \n                if (safeguard ~= nil) then\n                    TehrsCDs._externCDs_warriors[sourceName][\"Safeguard\"] = GetTime() + 20;\n                end \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 102342 and TehrsCDs[\"Show Settings\"].IBark and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Ironbark --\n                if (TehrsCDs._externCDs_druids == nil) then TehrsCDs._externCDs_druids = { } end\n                if (TehrsCDs._externCDs_druids[sourceName] == nil) then TehrsCDs._externCDs_druids[sourceName] = { } end\n                \n                local ibark1 = TehrsCDs._externCDs_druids[sourceName][\"I-Bark\"];\n                local ibark2 = TehrsCDs._externCDs_druids[sourceName][\"I-Bark+\"];\n                \n                if (ibark1 ~= nil) then\n                    TehrsCDs._externCDs_druids[sourceName][\"I-Bark\"] = GetTime() + 60\n                    TehrsCDs._externCDs_druids[sourceName][\"I-Bark+\"] = nil;\n                end\n                if (ibark2 ~= nil) then\n                    TehrsCDs._externCDs_druids[sourceName][\"I-Bark+\"] = GetTime() + 45\n                    TehrsCDs._externCDs_druids[sourceName][\"I-Bark\"] = nil;\n                end     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 33206 and TehrsCDs[\"Show Settings\"].PSup and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Pain Suppression --\n                if (TehrsCDs._externCDs_priests == nil) then TehrsCDs._externCDs_priests = { } end        \n                if (TehrsCDs._externCDs_priests[sourceName] == nil) then TehrsCDs._externCDs_priests[sourceName] = { } end\n                \n                local Psup1 = TehrsCDs._externCDs_priests[sourceName][\"P-Sup\"];\n                local Psup2 = TehrsCDs._externCDs_priests[sourceName][\"P-Sup+\"];\n                \n                if (Psup1 ~= nil) then\n                    TehrsCDs._externCDs_priests[sourceName][\"P-Sup\"] = GetTime() + 200;    \n                    TehrsCDs._externCDs_priests[sourceName][\"P-Sup+\"] = nil;\n                end\n                if (Psup2 ~= nil) then\n                    TehrsCDs._externCDs_priests[sourceName][\"P-Sup+\"] = GetTime() + 200;    \n                    TehrsCDs._externCDs_priests[sourceName][\"P-Sup\"] = nil;\n                end\n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end           \n                \n            elseif(spellID == 116849 and TehrsCDs[\"Show Settings\"].LCocoon and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Life Cocoon --\n                if (TehrsCDs._externCDs_monks == nil) then TehrsCDs._externCDs_monks = { } end\n                if (TehrsCDs._externCDs_monks[sourceName] == nil) then TehrsCDs._externCDs_monks[sourceName] = { } end\n                \n                TehrsCDs._externCDs_monks[sourceName][\"L-Cocoon\"] = GetTime() + 120;     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(spellID == 204018 and TehrsCDs[\"Show Settings\"].Spellward and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Blessing of Spellwarding --\n                if (TehrsCDs._externCDs_paladins == nil) then TehrsCDs._externCDs_paladins = { } end\n                if (TehrsCDs._externCDs_paladins[sourceName] == nil) then TehrsCDs._externCDs_paladins[sourceName] = { } end\n                \n                TehrsCDs._externCDs_paladins[sourceName][\"Spellward\"] = GetTime() + 180;     \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end \n                \n            elseif(eventType == \"SPELL_CAST_SUCCESS\" and TehrsCDs[\"Show Settings\"].LoH and spellID == 633) then\n                -- Lay on Hands --\n                if (TehrsCDs._externCDs_paladins == nil) then TehrsCDs._externCDs_paladins = { } end\n                if (TehrsCDs._externCDs_paladins[sourceName] == nil) then TehrsCDs._externCDs_paladins[sourceName] = { } end   \n                \n                local loh1 = TehrsCDs._externCDs_paladins[sourceName][\"LoH\"];\n                local loh2 = TehrsCDs._externCDs_paladins[sourceName][\"LoH+\"];\n                local loh3 = TehrsCDs._externCDs_paladins[sourceName][\"LoH+ \"];\n                local loh4 = TehrsCDs._externCDs_paladins[sourceName][\"LoH+  \"];    \n                local multiplier = 1\n                \n                if (loh4 ~= nil) then\n                    multiplier = multiplier * 0.3\n                end\n                if (loh3 ~= nil) then\n                    multiplier = multiplier * 0.7\n                end    \n                if (loh2 ~= nil) then\n                    multiplier = multiplier / 1.4\n                    TehrsCDs._externCDs_paladins[sourceName][\"LoH+\"] = GetTime() + (600 * multiplier);\n                    TehrsCDs._externCDs_paladins[sourceName][\"LoH\"] = nil;\n                end\n                if (loh1 ~= nil) then\n                    TehrsCDs._externCDs_paladins[sourceName][\"LoH\"] = GetTime() + 600;\n                    TehrsCDs._externCDs_paladins[sourceName][\"LoH+\"] = nil;\n                end      \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end         \n                \n            elseif(spellID == 6940 and TehrsCDs[\"Show Settings\"].Sac and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Blessing of Sacrifice --\n                if (TehrsCDs._externCDs_paladins == nil) then TehrsCDs._externCDs_paladins = { } end\n                if (TehrsCDs._externCDs_paladins[sourceName] == nil) then TehrsCDs._externCDs_paladins[sourceName] = { } end\n                \n                TehrsCDs._externCDs_paladins[sourceName][\"Sac\"] = GetTime() + 120;\n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end       \n                \n            elseif(spellID == 199448 and TehrsCDs[\"Show Settings\"].Sac and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Blessing of Sacrifice: DEBUG --\n                if (TehrsCDs._externCDs_paladins == nil) then TehrsCDs._externCDs_paladins = { } end\n                if (TehrsCDs._externCDs_paladins[sourceName] == nil) then TehrsCDs._externCDs_paladins[sourceName] = { } end\n                \n                TehrsCDs._externCDs_paladins[sourceName][\"Sac\"] = GetTime() + 120;    \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end                \n                \n            elseif(spellID == 187190 and TehrsCDs[\"Show Settings\"].Sac and eventType == \"SPELL_CAST_SUCCESS\") then\n                -- Blessing of Sacrifice: DEBUG --\n                if (TehrsCDs._externCDs_paladins == nil) then TehrsCDs._externCDs_paladins = { } end\n                if (TehrsCDs._externCDs_paladins[sourceName] == nil) then TehrsCDs._externCDs_paladins[sourceName] = { } end\n                \n                TehrsCDs._externCDs_paladins[sourceName][\"Sac\"] = GetTime() + 120;   \n                \n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end                       \n            end\n        end\n        \n        -- BOP --\n        \n        if(spellID == 1022 and TehrsCDs[\"Show Settings\"].BoP and eventType == \"SPELL_CAST_SUCCESS\") then\n            -- Blessing of Protection --\n            if (TehrsCDs._utilityCDs_paladins == nil) then TehrsCDs._utilityCDs_paladins = { } end\n            if (TehrsCDs._utilityCDs_paladins[sourceName] == nil) then TehrsCDs._utilityCDs_paladins[sourceName] = { } end\n            if (TehrsCDs._externCDs_paladins == nil) then TehrsCDs._externCDs_paladins = { } end\n            if (TehrsCDs._externCDs_paladins[sourceName] == nil) then TehrsCDs._externCDs_paladins[sourceName] = { } end        \n            \n            local bop1u = TehrsCDs._utilityCDs_paladins[sourceName][\"BoP\"];\n            local bop2e = TehrsCDs._externCDs_paladins[sourceName][\"BoP\"];          \n            \n            -- BoP, Utility\n            if (bop1u ~= nil) then\n                TehrsCDs._utilityCDs_paladins[sourceName][\"BoP\"] = GetTime() + 300;\n            end\n            \n            -- BoP, External            \n            if (bop2e ~= nil) then\n                TehrsCDs._externCDs_paladins[sourceName][\"BoP\"] = GetTime() + 300;\n            end\n            \n            if TehrsCDs.DEBUG and TehrsCDs.DEBUG_Engine then print(\"Engine: \"..sourceName..\" cast \"..spellName) end    \n        end\n        \n        if TehrsCDs[\"Custom Abilities\"].CustomAbilities then\n            TehrsCDs[\"Custom Abilities\"].UseCDs(event, arg1, eventType, arg2, sourceGUID, sourceName, sourceFlags, sourceFlags2, destGUID, destName, destFlags, destFlags2, spellID, spellName, spellSchool, extraSpellID, extraSpellName, extraSpellSchool)\n        end\n    end\nend",
						["genericShowOn"] = "showOnActive",
						["custom_hide"] = "timed",
					},
				},
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 29,
			["selfPoint"] = "BOTTOM",
			["desc"] = "Handles all of the trigger-based logic, and detects spellcasts and auras in order to start the CD timers",
			["font"] = "Friz Quadrata TT",
			["version"] = 1,
			["height"] = 0.99999994039536,
			["load"] = {
				["ingroup"] = {
					["single"] = "raid",
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_ingroup"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "ten",
					["multi"] = {
						["ten"] = true,
					},
				},
			},
			["fontSize"] = 11,
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["wordWrap"] = "WordWrap",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["conditions"] = {
			},
			["justify"] = "LEFT",
			["xOffset"] = -115,
			["id"] = "RaidCDs_Engine",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 1.0000075101852,
			["uid"] = ")fXYd5QnWcD",
			["config"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["shadowYOffset"] = -1,
			["automaticWidth"] = "Auto",
		},
		["Avatar"] = {
			["xOffset"] = -64,
			["yOffset"] = 150,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnReady",
						["subeventPrefix"] = "SPELL",
						["use_showgcd"] = false,
						["spellName"] = 107574,
						["type"] = "status",
						["use_genericShowOn"] = true,
						["unevent"] = "auto",
						["use_showOn"] = true,
						["names"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["debuffType"] = "HELPFUL",
						["realSpellName"] = "Avatar",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_remaining"] = true,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["use_unit"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 107574,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["stickyDuration"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["useGlowColor"] = false,
					["glow"] = true,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["parent"] = "Cooldowns",
			["icon"] = true,
			["desaturate"] = false,
			["authorOptions"] = {
			},
			["selfPoint"] = "CENTER",
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["width"] = 48,
			["id"] = "Avatar",
			["config"] = {
			},
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["uid"] = "IzKMgh5ABcA",
			["inverse"] = false,
			["zoom"] = 0,
			["conditions"] = {
			},
			["cooldown"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["FoF2"] = {
			["alpha"] = 1,
			["authorOptions"] = {
			},
			["xOffset"] = 100,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = 30,
			["anchorPoint"] = "CENTER",
			["rotate"] = true,
			["blendMode"] = "BLEND",
			["regionType"] = "texture",
			["desaturate"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "450930",
			["config"] = {
			},
			["internalVersion"] = 29,
			["rotation"] = 270,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["id"] = "FoF2",
			["width"] = 125,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["discrete_rotation"] = 0,
			["uid"] = "hVbLbO3I8Z8",
			["selfPoint"] = "CENTER",
			["triggers"] = {
				{
					["trigger"] = {
						["useStacks"] = true,
						["auranames"] = {
							"Fingers of Frost", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["useCount"] = true,
						["buffShowOn"] = "showOnActive",
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["stacksOperator"] = ">=",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["countOperator"] = ">=",
						["names"] = {
							"Fingers of Frost", -- [1]
						},
						["spellIds"] = {
						},
						["count"] = "2",
						["use_tooltip"] = false,
						["useName"] = true,
						["combineMatches"] = "showLowest",
						["stacks"] = "2",
						["useGroup_count"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["height"] = 200,
			["conditions"] = {
			},
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_combat"] = true,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Fingers of Frost",
		},
		["ARPG Class Buffs"] = {
			["grow"] = "DOWN",
			["controlledChildren"] = {
				"WARRIOR", -- [1]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 2,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["names"] = {
						},
						["type"] = "aura",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["radius"] = 200,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["align"] = "CENTER",
			["stagger"] = 0,
			["load"] = {
				["use_class"] = "true",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["animate"] = false,
			["scale"] = 1,
			["selfPoint"] = "TOP",
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["internalVersion"] = 29,
			["useLimit"] = false,
			["constantFactor"] = "RADIUS",
			["rowSpace"] = 1,
			["borderOffset"] = 16,
			["arcLength"] = 360,
			["limit"] = 5,
			["id"] = "ARPG Class Buffs",
			["borderInset"] = 0,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["uid"] = "bcxjfpzsmqI",
			["config"] = {
			},
			["gridType"] = "RD",
			["conditions"] = {
			},
			["authorOptions"] = {
			},
			["rotation"] = 0,
		},
		["Bloodbath"] = {
			["xOffset"] = 64,
			["yOffset"] = 150,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnReady",
						["use_unit"] = true,
						["use_showgcd"] = false,
						["spellName"] = 12292,
						["type"] = "status",
						["use_genericShowOn"] = true,
						["unevent"] = "auto",
						["use_showOn"] = true,
						["names"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["debuffType"] = "HELPFUL",
						["realSpellName"] = "Bloodbath",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_remaining"] = true,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 12292,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["stickyDuration"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["useGlowColor"] = false,
					["glow"] = true,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["icon"] = true,
			["parent"] = "Cooldowns",
			["desaturate"] = false,
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["zoom"] = 0,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["id"] = "Bloodbath",
			["config"] = {
			},
			["frameStrata"] = 1,
			["width"] = 48,
			["authorOptions"] = {
			},
			["uid"] = "NHJzkUAKGbV",
			["inverse"] = false,
			["cooldownTextDisabled"] = false,
			["conditions"] = {
			},
			["cooldown"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["RaidCDs_CustomAbilities"] = {
			["outline"] = "OUTLINE",
			["parent"] = "!Tehr's CDs",
			["displayText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/RaidCDs",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "-- Currently bugged and non-functional\n-- Do not use\n\n\n\n-- LAST CHANGED:\n-- 17 January 2018\n-- Update 93\n\n\nlocal parentName = WeakAurasSaved.displays[WeakAuras.regions[aura_env.id].region:GetParent().id]\nif (parentName[\"TehrsRaidCDs\"] == nil) then parentName[\"TehrsRaidCDs\"] = {} end    \nif (parentName[\"TehrsRaidCDs\"][\"Custom Abilities\"] == nil) then parentName[\"TehrsRaidCDs\"][\"Custom Abilities\"] = {} end    \nlocal TehrsCDs = parentName[\"TehrsRaidCDs\"]\n\nTehrsCDs[\"Custom Abilities\"].CustomAbilities = false\n\nif TehrsCDs[\"Custom Abilities\"].CustomAbilities then\n    --[[    The following are the non-localized names of each race (from https://wow.gamepedia.com/API_UnitRace):\n\n        Dwarf\n        Draenei\n        Gnome\n        Human\n        NightElf\n        Worgen\n        BloodElf\n        Goblin\n        Orc\n        Tauren\n        Troll\n        Scourge\n        Pandaren\n\n    The following are the class ID and spec ID of each class and spec, respectively (from http://wowwiki.wikia.com/wiki/API_UnitClass and http://wowwiki.wikia.com/wiki/SpecializationID):\n\n        6 - Death Knight\n            250 - Blood\n            251 - Frost\n            252 - Unholy\n        12 - Demon Hunter\n            577 - Havoc\n            581 - Vengeance\n        11 - Druid\n            102 - Balance\n            103 - Feral\n            104 - Guardian\n            105 - Restoration\n        3 - Hunter\n            253 - Beast Mastery\n            254 - Marksmanship\n            255 - Survival\n        8 - Mage\n            62 - Arcane\n            63 - Fire\n            64 - Frost\n        10 - Monk\n            268 - Brewmaster\n            269 - Windwalker\n            270 - Mistweaver\n        2 - Paladin\n            65 - Holy\n            66 - Protection\n            70 - Retribution\n        5 - Priest\n            256 - Discipline\n            257 - Holy\n            258 - Shadow\n        4 - Rogue\n            259 - Assassination\n            260 - Outlaw\n            261 - Subtlety\n        7 - Shaman\n            262 - Elemental\n            263 - Enhancement\n            264 - Restoration\n        9 - Warlock\n            265 - Affliction\n            266 - Demonology\n            267 - Destruction\n        1 - Warrior\n            71 - Arms\n            72 - Fury\n            73 - Protection    ]]\n    \n    TehrsCDs[\"Custom Abilities\"].AddCDs = function(playerName, class, race, specName, activeSpec, isPlayer)\n        -- Note that you won't need to use most of these arguments (race, activeSpec, isPlayer, etc.), they're just here for posterity's sake    \n        \n        \n        -- YOUR CODE GOES HERE    \n        \n        \n        --[[    The following is an example of how you would format this section:\n\n            if (class == 12) then \n                if (TehrsCDs._interrupts_dhs == nil) then TehrsCDs._interrupts_dhs = {} end\n                if (TehrsCDs._interrupts_dhs[playerName] == nil) then TehrsCDs._interrupts_dhs[playerName] = {} end            \n                \n                if (TehrsCDs._interrupts_dhs[playerName][\"Disrupt\"] == nil) then\n                    TehrsCDs._interrupts_dhs[playerName][\"Disrupt\"] = GetTime();\n                end   \n                \n                if (specName == 581) then        \n                    local _, _, _, improvedSilenceSpecced = GetTalentInfo(5, 3, activeSpec, not isPlayer, playerName);  -- Talent is Row 5, Column 3\n                    if (improvedSilenceSpecced) then   \n                        if (TehrsCDs._interrupts_dhs[playerName][\"S-Silence+\"] == nil) then\n                            TehrsCDs._interrupts_dhs[playerName][\"S-Silence+\"] = GetTime();\n                        end  \n                        TehrsCDs._interrupts_dhs[playerName][\"S-Silence\"] = nil;   \n                    else\n                        if (TehrsCDs._interrupts_dhs[playerName][\"S-Silence\"] == nil) then\n                            TehrsCDs._interrupts_dhs[playerName][\"S-Silence\"] = GetTime();\n                        end \n                        TehrsCDs._interrupts_dhs[playerName][\"S-Silence+\"] = nil;                      \n                    end \n                elseif (specName == 577) then  \n                    TehrsCDs._interrupts_dhs[playerName][\"S-Silence+\"] = nil;\n                    TehrsCDs._interrupts_dhs[playerName][\"S-Silence\"] = nil;\n                end\n                \n            elseif (class == 7) then\n                if (TehrsCDs._raidCDs_shamans == nil) then TehrsCDs._raidCDs_shamans = {} end\n                if (TehrsCDs._raidCDs_shamans[playerName] == nil) then TehrsCDs._raidCDs_shamans[playerName] = {} end\n                \n                if (specName == 264) then\n                    if (TehrsCDs._raidCDs_shamans[playerName][\"SLT\"] == nil) then\n                        TehrsCDs._raidCDs_shamans[playerName][\"SLT\"] = GetTime();\n                    end \n                elseif (specName == 262) then\n                    TehrsCDs._raidCDs_shamans[playerName][\"SLT\"] = nil;                    \n                elseif (specName == 263) then\n                    TehrsCDs._raidCDs_shamans[playerName][\"SLT\"] = nil;  \n                end\n                \n            end        ]]\n    end\n    \n    TehrsCDs[\"Custom Abilities\"].UseCDs = function(event, arg1, eventType, arg2, sourceGUID, sourceName, sourceFlags, sourceFlags2, destGUID, destName, destFlags, destFlags2, spellID, spellName, spellSchool, extraSpellID, extraSpellName, extraSpellSchool)\n        -- Note that you won't need to use most of these arguments, they're just here for posterity's sake\n        \n        \n        -- YOUR CODE GOES HERE    \n        \n        \n        --[[    The following is an example of how you would format this section:\n\n            if (eventType == \"SPELL_CAST_SUCCESS\" and spellID == 202137) then\n                -- Sigil of Silence --\n                if (TehrsCDs._interrupts_dhs == nil) then TehrsCDs._interrupts_dhs = { } end\n                if (TehrsCDs._interrupts_dhs[sourceName] == nil) then TehrsCDs._interrupts_dhs[sourceName] = { } end   \n                \n                local silence1 = TehrsCDs._interrupts_dhs[sourceName][\"S-Silence+\"];\n                local silence2 = TehrsCDs._interrupts_dhs[sourceName][\"S-Silence\"];\n                \n                if (silence1 ~= nil) then\n                    TehrsCDs._interrupts_dhs[sourceName][\"S-Silence+\"] = GetTime() + 48;\n                    TehrsCDs._interrupts_dhs[sourceName][\"S-Silence\"] = nil;\n                end\n                if (silence2 ~= nil) then\n                    TehrsCDs._interrupts_dhs[sourceName][\"S-Silence\"] = GetTime() + 60;\n                    TehrsCDs._interrupts_dhs[sourceName][\"S-Silence+\"] = nil;\n                end  \n                \n            elseif (eventType == \"SPELL_CAST_SUCCESS\" and spellID == 98008) then\n                -- Spirit Link Totem --\n                if (TehrsCDs._raidCDs_shamans == nil) then TehrsCDs._raidCDs_shamans = { } end        \n                if (TehrsCDs._raidCDs_shamans[sourceName] == nil) then TehrsCDs._raidCDs_shamans[sourceName] = { } end\n                \n                TehrsCDs._raidCDs_shamans[sourceName][\"SLT\"] = GetTime() + 180;  \n            end        ]]\n    end\n    \nend",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["use_alwaystrue"] = false,
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["use_unit"] = true,
						["buffShowOn"] = "showOnActive",
						["names"] = {
						},
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["1"] = {
					["trigger"] = {
						["type"] = "status",
						["use_alwaystrue"] = false,
						["unevent"] = "auto",
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["check"] = "update",
						["custom_type"] = "status",
						["event"] = "Conditions",
						["custom_hide"] = "timed",
					},
				},
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["wordWrap"] = "WordWrap",
			["desc"] = "Put custom abilities here in order to get them added to the display.",
			["font"] = "Friz Quadrata TT",
			["version"] = 1,
			["height"] = 0.99999994039536,
			["load"] = {
				["ingroup"] = {
					["single"] = "raid",
					["multi"] = {
					},
				},
				["use_never"] = true,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_ingroup"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "ten",
					["multi"] = {
						["ten"] = true,
					},
				},
			},
			["fontSize"] = 12,
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["xOffset"] = 0,
			["selfPoint"] = "BOTTOM",
			["conditions"] = {
			},
			["justify"] = "LEFT",
			["authorOptions"] = {
			},
			["id"] = "RaidCDs_CustomAbilities",
			["automaticWidth"] = "Auto",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "SQaoR8WEoFa",
			["config"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["width"] = 1.0000075101852,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["shadowYOffset"] = -1,
		},
		["Fingers of Frost"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"FoF1", -- [1]
				"FoF2", -- [2]
				"FoF3", -- [3]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "group",
			["borderSize"] = 16,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderOffset"] = 5,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["yOffset"] = 0,
			["internalVersion"] = 29,
			["scale"] = 1,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["id"] = "Fingers of Frost",
			["selfPoint"] = "BOTTOMLEFT",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["borderInset"] = 11,
			["uid"] = "Y1m4FKNqmNh",
			["config"] = {
			},
			["anchorPoint"] = "CENTER",
			["conditions"] = {
			},
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["race"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["authorOptions"] = {
			},
		},
		["RaidCDs_NamesText"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "%c",
			["customText"] = "function ()    \n    \n    local parentName = WeakAurasSaved.displays[WeakAuras.regions[aura_env.id].region:GetParent().id]\n    if (parentName[\"TehrsRaidCDs\"] == nil) then parentName[\"TehrsRaidCDs\"] = {} end    \n    if (parentName[\"TehrsRaidCDs\"][\"Show Settings\"] == nil) then parentName[\"TehrsRaidCDs\"][\"Show Settings\"] = {} end\n    if (parentName[\"TehrsRaidCDs\"][\"Translation Settings\"] == nil) then parentName[\"TehrsRaidCDs\"][\"Translation Settings\"] = {} end    \n    if (parentName[\"TehrsRaidCDs\"][\"Translation Settings\"][\"frFR\"] == nil) then parentName[\"TehrsRaidCDs\"][\"Translation Settings\"][\"frFR\"] = {} end\n    if (parentName[\"TehrsRaidCDs\"][\"Translation Settings\"][\"zhCN\"] == nil) then parentName[\"TehrsRaidCDs\"][\"Translation Settings\"][\"zhCN\"] = {} end\n    if (parentName[\"TehrsRaidCDs\"][\"Translation Settings\"][\"zhTW\"] == nil) then parentName[\"TehrsRaidCDs\"][\"Translation Settings\"][\"zhTW\"] = {} end\n    if (parentName[\"TehrsRaidCDs\"][\"Translation Settings\"][\"deDE\"] == nil) then parentName[\"TehrsRaidCDs\"][\"Translation Settings\"][\"deDE\"] = {} end\n    if (parentName[\"TehrsRaidCDs\"][\"Translation Settings\"][\"ruRU\"] == nil) then parentName[\"TehrsRaidCDs\"][\"Translation Settings\"][\"ruRU\"] = {} end\n    if (parentName[\"TehrsRaidCDs\"][\"Translation Settings\"][\"koKR\"] == nil) then parentName[\"TehrsRaidCDs\"][\"Translation Settings\"][\"koKR\"] = {} end\n    if (parentName[\"TehrsRaidCDs\"][\"Translation Settings\"][\"esES\"] == nil) then parentName[\"TehrsRaidCDs\"][\"Translation Settings\"][\"esES\"] = {} end\n    if (parentName[\"TehrsRaidCDs\"][\"Translation Settings\"][\"itIT\"] == nil) then parentName[\"TehrsRaidCDs\"][\"Translation Settings\"][\"itIT\"] = {} end\n    local TehrsCDs = parentName[\"TehrsRaidCDs\"]        \n    \n    local nameMaxLength = 8\n    local locale = GetLocale()\n    local titles = { }\n    local abilityNames\n    \n    if (TehrsCDs._raidCDs_textPoll == nil) then TehrsCDs._raidCDs_textPoll = GetTime() end\n    if (TehrsCDs._raidCDs_namesText == nil) then TehrsCDs._raidCDs_namesText = \"\" end\n    aura_env.Supporters = aura_env.Supporters or { }\n    \n    if (GetTime() - TehrsCDs._raidCDs_textPoll < 0.5) then\n        return TehrsCDs._raidCDs_namesText;\n    else\n        TehrsCDs._raidCDs_textPoll = GetTime();\n    end\n    \n    local backgroundName = WeakAurasSaved.displays[WeakAuras.regions[aura_env.id].region:GetParent().id][\"controlledChildren\"][6]    \n    local fontSize = WeakAurasSaved.displays[aura_env.id][\"fontSize\"]\n    \n    _, TehrsCDs.instanceType = IsInInstance();\n    _, TehrsCDs.instanceGroupType, TehrsCDs.instanceDifficulty = GetInstanceInfo();\n    \n    TehrsCDs._raidCDs_namesText = \"                                                          \";\n    TehrsCDs._raidCDs_cdText = \"                                                             \";\n    TehrsCDs._raidCDs_timeText = \"                                                             \";\n    \n    if locale == \"ruRU\" then nameMaxLength = 16\n    elseif locale == \"zhCN\" then nameMaxLength = 18\n    elseif locale == \"zhTW\" then nameMaxLength = 18    end  \n    \n    if TehrsCDs[\"Translation Settings\"][\"frFR\"].Translation_French then\n        titles = TehrsCDs[\"Translation Settings\"][\"frFR\"].Translation_French_titles\n        abilityNames = TehrsCDs[\"Translation Settings\"][\"frFR\"].Translation_French_abilityNames\n    elseif TehrsCDs[\"Translation Settings\"][\"zhCN\"].Translation_Chinese then\n        titles = TehrsCDs[\"Translation Settings\"][\"zhCN\"].Translation_Chinese_titles\n        abilityNames = TehrsCDs[\"Translation Settings\"][\"zhCN\"].Translation_Chinese_abilityNames\n    elseif TehrsCDs[\"Translation Settings\"][\"zhTW\"].Translation_ChineseTraditional then\n        titles = TehrsCDs[\"Translation Settings\"][\"zhTW\"].Translation_ChineseTraditional_titles\n        abilityNames = TehrsCDs[\"Translation Settings\"][\"zhTW\"].Translation_ChineseTraditional_abilityNames        \n    elseif TehrsCDs[\"Translation Settings\"][\"deDE\"].Translation_German then\n        titles = TehrsCDs[\"Translation Settings\"][\"deDE\"].Translation_German_titles \n        abilityNames = TehrsCDs[\"Translation Settings\"][\"deDE\"].Translation_German_abilityNames\n    elseif TehrsCDs[\"Translation Settings\"][\"koKR\"].Translation_Korean then\n        titles = TehrsCDs[\"Translation Settings\"][\"koKR\"].Translation_Korean_titles\n        abilityNames = TehrsCDs[\"Translation Settings\"][\"koKR\"].Translation_Korean_abilityNames\n    elseif TehrsCDs[\"Translation Settings\"][\"ruRU\"].Translation_Russian then\n        titles = TehrsCDs[\"Translation Settings\"][\"ruRU\"].Translation_Russian_titles\n        abilityNames = TehrsCDs[\"Translation Settings\"][\"ruRU\"].Translation_Russian_abilityNames        \n    elseif TehrsCDs[\"Translation Settings\"][\"esES\"].Translation_Spanish then\n        titles = TehrsCDs[\"Translation Settings\"][\"esES\"].Translation_Spanish_titles\n        abilityNames = TehrsCDs[\"Translation Settings\"][\"esES\"].Translation_Spanish_abilityNames    \n    elseif TehrsCDs[\"Translation Settings\"][\"esES\"].Translation_Spanish then\n        titles = TehrsCDs[\"Translation Settings\"][\"esES\"].Translation_Spanish_titles\n        abilityNames = TehrsCDs[\"Translation Settings\"][\"esES\"].Translation_Spanish_abilityNames        \n    elseif TehrsCDs[\"Translation Settings\"][\"itIT\"].Translation_Italian then\n        titles = TehrsCDs[\"Translation Settings\"][\"itIT\"].Translation_Italian_titles\n        abilityNames = TehrsCDs[\"Translation Settings\"][\"itIT\"].Translation_Italian_abilityNames            \n    else\n        titles[1],titles[2],titles[3],titles[4],titles[5],titles[6],titles[7],titles[8] =\n        \"Externals\",\"Raid CDs\",\"Utility CDs\",\"Immunities\",\"Crowd Control\",\"Interrupts\",\"Battle Rezzes\",\"Battle Rez Counter\"    \n    end \n    \n    if WeakAuras.IsOptionsOpen() then\n        if (GetNumGroupMembers() > 0) or TehrsCDs[\"Show Settings\"].WhenSolo then\n            TehrsCDs._raidCDs_namesText =  TehrsCDs._raidCDs_namesText..\"\\nRELOAD YOUR UI AFTER CHANGING ANY SETTINGS\\n|cFF00A2E8Made by Tehrdk of Illidan (US)                        |r\"\n            TehrsCDs._raidCDs_cdText = TehrsCDs._raidCDs_cdText..\"\\n\\n\"\n            TehrsCDs._raidCDs_timeText = TehrsCDs._raidCDs_timeText..\"\\n\\n\"\n        else\n            if aura_env.AprilFools and date(\"%m\") == \"04\" and (date(\"%d\") == \"01\" or date(\"%d\") == \"02\") then\n                TehrsCDs._raidCDs_namesText =  TehrsCDs._raidCDs_namesText..\"\\n\\n|cFF00A2E8Kellogg's Eggo Waffles                        |r\\n\"..aura_env.raidCDsIndentAmount..\"|cFFF04A23Homestyle|r\\n\"..aura_env.raidCDsIndentAmount..\"|cFF00B5BFButtermilk|r\\n\"..aura_env.raidCDsIndentAmount..\"|cFF5F271EChocolate|r\\n\"..\"\\n|cFF00A2E8Thick & Fluffy                        |r\\n\\n\"..aura_env.raidCDsIndentAmount..\"|cFF0087ACOriginal|r\\n\"..aura_env.raidCDsIndentAmount..\"|cFF9F543ACinnamon|r\\n\"..aura_env.raidCDsIndentAmount..\"|cFF4E3B7FCobbler|r\\n\"..aura_env.raidCDsIndentAmount..\"|cFFC92031Shortcake|r\\n\"..\"\\n|cFF00A2E8Fruity                        |r\\n\\n\"..aura_env.raidCDsIndentAmount..\"|cFF2E3891Blueberry|r\\n\"..aura_env.raidCDsIndentAmount..\"|cFFC62550Strawberry|r\\n\"\n                TehrsCDs._raidCDs_cdText = TehrsCDs._raidCDs_cdText..\"\\n\\n\\n|cFFF04A23Crispy|r\\n|cFF00B5BFDelicious|r\\n|cFF5F271EYummy|r\\n\\n\\n\\n|cFF0087ACDelightful|r\\n|cFF9F543ASweet|r\\n|cFF4E3B7FTasty|r\\n|cFFC92031Exquisite|r\\n\\n\\n\\n|cFF2E3891Berry Good|r\\n|cFFC62550Mmmmm...|r\\n\";\n                TehrsCDs._raidCDs_timeText = TehrsCDs._raidCDs_timeText..\"\\n\\n\\n|cFFFF000001:59|r\\n|cFF00FF00READY|r\\n|cFFFF660000:59|r\\n\\n\\n\\n|cFFFFCC0000:09|r\\n|cFF00FF00READY|r\\n|cFFFF000001:59|r\\n|cFF333333READY|r\\n\\n\\n\\n|cFFFF660000:59|r\\n|cFF333333READY|r\\n\"; \n            else\n                TehrsCDs._raidCDs_namesText =  TehrsCDs._raidCDs_namesText..\"\\n|cFF00A2E8Made by Tehr                        |r\\n\\n\"..aura_env.raidCDsIndentAmount..\"|cFFC41F3BTehr (US)|r\\n\"..\"\\n|cFF00A2E8Battle.net                        |r\\n\\n\"..aura_env.raidCDsIndentAmount..\"|cFFFF7D0ATehr|r\\n\"..\"\\n|cFF00A2E8Discord                        |r\\n\\n\"..aura_env.raidCDsIndentAmount..\"|cFFC79C6ETehr|r\\n\"..\"\\n|cFF00A2E8Stream                        |r\\n\\n\"..aura_env.raidCDsIndentAmount..\"|cFFF58CBAtwitch.tv/tehrible|r\\n\"..\"\\n|cFF00A2E8Patreon                        |r\\n\\n\"..aura_env.raidCDsIndentAmount..\"|cFFA330C9patreon.com/RaidCDs|r\\n\"..\"\\n|cFF00A2E8PayPal                        |r\\n\\n\"..aura_env.raidCDsIndentAmount..\"|cFFFFFFFFtehrible@gmail.com|r\\n\"..\"\\n|cFF00A2E8Latest updates available from:                        |r\\n\\n\"..aura_env.raidCDsIndentAmount..\"|cFF00FF96wago.io/RaidCDs|r\\n\" \n                TehrsCDs._raidCDs_cdText = TehrsCDs._raidCDs_cdText..\"\\n\\n\\n|cFFC41F3BSargeras|r\\n\\n\\n\\n|cFFFF7D0A#1477|r\\n\\n\\n\\n|cFFC79C6E#5246|r\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\";\n                TehrsCDs._raidCDs_timeText = TehrsCDs._raidCDs_timeText..\"\\n\\n\\n|cFF00FF00READY|r\\n\\n\\n\\n|cFFFFCC0000:09|r\\n\\n\\n\\n|cFFFF660000:59|r\\n\\n\\n\\n|cFFFF000001:59|r\\n\\n\\n\\n|cFFFF000029:59|r\\n\\n\\n\\n|cFFFF660059|r\\n\\n\\n\\n|cFF333333READY|r\\n\"; \n            end\n        end\n    end\n    \n    if (GetNumGroupMembers() > 0) or TehrsCDs[\"Show Settings\"].WhenSolo then\n        \n        --[[\n        TehrsCDs._raidCDs_namesText =  \"\\n\"..TehrsCDs._raidCDs_namesText..\"\\n                                 \\n\";\n        TehrsCDs._raidCDs_cdText = \"\\n\"..TehrsCDs._raidCDs_cdText..\"\\n\\n\";\n        TehrsCDs._raidCDs_timeText = \"\\n\"..TehrsCDs._raidCDs_timeText..\"\\n\\n\";         \n        ]]\n        \n        if (TehrsCDs[\"Show Settings\"].allExterns and TehrsCDs.instanceType ~= \"raid\" and GetNumGroupMembers()<20) or (TehrsCDs[\"Show Settings\"].allExterns_inRaid and (TehrsCDs.instanceType == \"raid\" or GetNumGroupMembers()>19)) then         \n            \n            local cdCount = 0;\n            local cdTexts = { }; \n            local allExterns = { };\n            \n            allExterns[\"|cFFFF7D0A\"] = TehrsCDs._externCDs_druids;\n            allExterns[\"|cFF00FF96\"] = TehrsCDs._externCDs_monks;\n            allExterns[\"|cFFF58CBA\"] = TehrsCDs._externCDs_paladins;\n            allExterns[\"|cFFFFFFFF\"] = TehrsCDs._externCDs_priests;    \n            allExterns[\"|cFFC79C6E\"] = TehrsCDs._externCDs_warriors;\n            allExterns[\"|cFFA330C9\"] = TehrsCDs._externCDs_dhs;   \n            \n            for theCDGroupColor, theCDGroup in pairs(allExterns) do\n                if (theCDGroup ~= nil) then        \n                    for name, cdData in pairs(theCDGroup) do             \n                        for cdName, cdTime in aura_env.sortedPairs(cdData) do \n                            \n                            if not ((not TehrsCDs[\"Show Settings\"].Safeguard and cdName == \"Safeguard\")\n                                or (not TehrsCDs[\"Show Settings\"].GSpirit and cdName == \"G-Spirit\")\n                                or (not TehrsCDs[\"Show Settings\"].GSpirit and cdName == \"G-Spirit+\")\n                                or (not TehrsCDs[\"Show Settings\"].PSup and cdName == \"P-Sup\")                                \n                                or (not TehrsCDs[\"Show Settings\"].PSup and cdName == \"P-Sup+\")\n                                or (not TehrsCDs[\"Show Settings\"].IBark and cdName == \"I-Bark\")\n                                or (not TehrsCDs[\"Show Settings\"].IBark and cdName == \"I-Bark+\")\n                                or (not TehrsCDs[\"Show Settings\"].Spellward and cdName == \"Spellward\")\n                                or (not TehrsCDs[\"Show Settings\"].Sac and cdName == \"Sac\")\n                                or (not TehrsCDs[\"Show Settings\"].BoP and cdName == \"BoP\")\n                                or (not TehrsCDs[\"Show Settings\"].LoH and cdName == \"LoH\")\n                                or (not TehrsCDs[\"Show Settings\"].LoH and cdName == \"LoH+\")\n                                or (not TehrsCDs[\"Show Settings\"].LCocoon and cdName == \"L-Cocoon\")) then\n                                \n                                local timeColor;\n                                local nameColor;\n                                local cdDTime = cdTime - GetTime();  \n                                local unitName = UnitName(name)                            \n                                local unitRealm = GetRealmName(name)\n                                \n                                if aura_env.recolor then\n                                    if (UnitHealth(name) <= 0 or UnitIsGhost(name)) then\n                                        nameColor = aura_env.deadColor\n                                        timeColor = aura_env.deadColor\n                                    elseif not IsItemInRange(34471,name) and -- 40 Yards\n                                    (cdName == \"G-Spirit\" or cdName == \"G-Spirit+\" or cdName == \"LoH\" or cdName == \"LoH+\" or cdName == \"BoP\" or cdName == \"L-Cocoon\" or cdName == \"P-Sup\" or cdName == \"P-Sup+\" or cdName == \"I-Bark\" or cdName == \"I-Bark+\" or cdName == \"Spellward\" or cdName == \"Sac\") then\n                                        nameColor = aura_env.outOfRangeColor\n                                        timeColor = aura_env.outOfRangeColor        \n                                    elseif not IsItemInRange(31463,name) and -- 25 Yards\n                                    (cdName == \"Safeguard\") then\n                                        nameColor = aura_env.outOfRangeColor\n                                        timeColor = aura_env.outOfRangeColor                                        \n                                    else    \n                                        nameColor = theCDGroupColor\n                                        timeColor = aura_env.colorByTime(cdDTime)\n                                    end      \n                                else    \n                                    nameColor = theCDGroupColor\n                                    timeColor = aura_env.colorByTime(cdDTime)                   \n                                end    \n                                \n                                if (cdDTime <= 0) then\n                                    cdDTime = timeColor..\"READY|r\";\n                                else\n                                    cdDTime = timeColor..string.format(\"%01d:%02d\", math.floor(cdDTime/60), math.floor(cdDTime - 60*math.floor(cdDTime/60)))..\"|r\"\n                                end            \n                                \n                                dashpos = string.find(name,\"-\");\n                                if (dashpos ~= nil) then name = string.sub(name, 0, dashpos - 1) end\n                                \n                                newName = string.sub(name, 0, nameMaxLength);\n                                \n                                if (string.len(newName) <  string.len(name)) then newName = newName..\"..\" end\n                                \n                                for k,v in pairs(aura_env.Supporters) do\n                                    if (k == name) and (v == unitRealm) then\n                                        newName = \"*\"..newName\n                                    end\n                                end\n                                \n                                if abilityNames ~= nil then\n                                    for k,v in pairs(abilityNames) do\n                                        if k == cdName then\n                                            cdName = v\n                                        end    \n                                    end    \n                                end\n                                \n                                if newName ~= nil then\n                                    if not TehrsCDs[\"Show Settings\"].ShowOnCooldownOnly or (TehrsCDs[\"Show Settings\"].ShowOnCooldownOnly and cdDTime ~= timeColor..\"READY|r\") then\n                                        cdCount = cdCount + 1 \n                                        cdTexts[cdCount] = {\n                                            aura_env.raidCDsIndentAmount..nameColor..newName,\n                                            nameColor..cdName,\n                                            cdDTime\n                                        }\n                                    end\n                                end                                \n                            end\n                        end           \n                    end        \n                end    \n            end\n            if TehrsCDs[\"Show Settings\"].ShowEmptySections or #cdTexts > 0 then\n                TehrsCDs._raidCDs_namesText =  TehrsCDs._raidCDs_namesText..\"\\n|cFF00A2E8\"..titles[1]..\"               |r\\n\\n\";\n                TehrsCDs._raidCDs_cdText = TehrsCDs._raidCDs_cdText..\"\\n\\n\\n\";\n                TehrsCDs._raidCDs_timeText = TehrsCDs._raidCDs_timeText..\"\\n\\n\\n\"; \n                \n                if #cdTexts > 0 then \n                    for index, value in pairs(cdTexts) do\n                        TehrsCDs._raidCDs_namesText =  TehrsCDs._raidCDs_namesText..value[1]..\"\\n\";\n                        TehrsCDs._raidCDs_cdText = TehrsCDs._raidCDs_cdText..value[2]..\"\\n\";\n                        TehrsCDs._raidCDs_timeText = TehrsCDs._raidCDs_timeText..value[3]..\"\\n\";  \n                    end\n                end\n            end            \n        end   \n        \n        if (TehrsCDs[\"Show Settings\"].allCDs and TehrsCDs.instanceType ~= \"raid\" and GetNumGroupMembers()<20) or (TehrsCDs[\"Show Settings\"].allCDs_inRaid and (TehrsCDs.instanceType == \"raid\" or GetNumGroupMembers()>19)) then  \n            \n            local cdCount = 0;\n            local cdTexts = { }; \n            local allCDs = { };\n            \n            allCDs[\"|cFFFF7D0A\"] = TehrsCDs._raidCDs_druids;\n            allCDs[\"|cFF00FF96\"] = TehrsCDs._raidCDs_monks;\n            allCDs[\"|cFFF58CBA\"] = TehrsCDs._raidCDs_paladins;\n            allCDs[\"|cFFFFFFFF\"] = TehrsCDs._raidCDs_priests;\n            allCDs[\"|cFF0070DE\"] = TehrsCDs._raidCDs_shamans;\n            allCDs[\"|cFFC79C6E\"] = TehrsCDs._raidCDs_warriors;\n            allCDs[\"|cFFA330C9\"] = TehrsCDs._raidCDs_dhs;              \n            \n            for theCDGroupColor, theCDGroup in pairs(allCDs) do\n                if (theCDGroup ~= nil) then        \n                    for name, cdData in pairs(theCDGroup) do             \n                        for cdName, cdTime in aura_env.sortedPairs(cdData) do \n                            \n                            if not ((not TehrsCDs[\"Show Settings\"].CShout and cdName == \"R-Cry\")\n                                or (not TehrsCDs[\"Show Settings\"].DHymn and cdName == \"D-Hymn\")\n                                or (not TehrsCDs[\"Show Settings\"].VE and cdName == \"VE\")\n                                or (not TehrsCDs[\"Show Settings\"].VE and cdName == \"VE+\")\n                                or (not TehrsCDs[\"Show Settings\"].Apotheosis and cdName == \"Apotheosis\")\n                                or (not TehrsCDs[\"Show Settings\"].Salvation and cdName == \"Salvation\")                                \n                                or (not TehrsCDs[\"Show Settings\"].Barrier and cdName == \"Barrier\")\n                                or (not TehrsCDs[\"Show Settings\"].Barrier and cdName == \"Barrier+\")\n                                or (not TehrsCDs[\"Show Settings\"].Barrier and cdName == \"Rapture\")\n                                or (not TehrsCDs[\"Show Settings\"].Darkness and cdName == \"Darkness\")\n                                or (not TehrsCDs[\"Show Settings\"].Tranq and cdName == \"Tranq\")\n                                or (not TehrsCDs[\"Show Settings\"].Tranq and cdName == \"Tranq+\")\n                                or (not TehrsCDs[\"Show Settings\"].Flourish and cdName == \"Flourish\")    \n                                or (not TehrsCDs[\"Show Settings\"].Tree and cdName == \"Tree\")\n                                or (not TehrsCDs[\"Show Settings\"].AuraM and cdName == \"Aura-M\")\n                                or (not TehrsCDs[\"Show Settings\"].Wings and cdName == \"Wings\")            \n                                or (not TehrsCDs[\"Show Settings\"].Wings and cdName == \"Wings+\")                                        \n                                or (not TehrsCDs[\"Show Settings\"].Aegis and cdName == \"Aegis\")\n                                or (not TehrsCDs[\"Show Settings\"].AProt and cdName == \"A-Prot\")\n                                or (not TehrsCDs[\"Show Settings\"].AG and cdName == \"AG\")\n                                or (not TehrsCDs[\"Show Settings\"].HTide and cdName == \"H-Tide\")\n                                or (not TehrsCDs[\"Show Settings\"].Ascendance and cdName == \"Ascendance\")\n                                or (not TehrsCDs[\"Show Settings\"].SLT and cdName == \"SLT\")                            \n                                or (not TehrsCDs[\"Show Settings\"].Revival and cdName == \"Revival\")) then\n                                \n                                local timeColor;\n                                local nameColor;\n                                local cdDTime = cdTime - GetTime();  \n                                local unitName = UnitName(name)                            \n                                local unitRealm = GetRealmName(name)                                \n                                \n                                if aura_env.recolor then\n                                    if (UnitHealth(name) <= 0 or UnitIsGhost(name)) then\n                                        nameColor = aura_env.deadColor\n                                        timeColor = aura_env.deadColor                                        \n                                    else    \n                                        nameColor = theCDGroupColor\n                                        timeColor = aura_env.colorByTime(cdDTime)\n                                    end      \n                                else    \n                                    nameColor = theCDGroupColor\n                                    timeColor = aura_env.colorByTime(cdDTime)                   \n                                end    \n                                \n                                if (cdDTime <= 0) then\n                                    cdDTime = timeColor..\"READY|r\";\n                                else\n                                    cdDTime = timeColor..string.format(\"%01d:%02d\", math.floor(cdDTime/60), math.floor(cdDTime - 60*math.floor(cdDTime/60)))..\"|r\"\n                                end            \n                                \n                                dashpos = string.find(name,\"-\");\n                                if (dashpos ~= nil) then name = string.sub(name, 0, dashpos - 1) end\n                                \n                                newName = string.sub(name, 0, nameMaxLength);\n                                \n                                if (string.len(newName) <  string.len(name)) then newName = newName..\"..\" end\n                                \n                                for k,v in pairs(aura_env.Supporters) do\n                                    if (k == name) and (v == unitRealm) then\n                                        newName = \"*\"..newName\n                                    end\n                                end\n                                \n                                if abilityNames ~= nil then\n                                    for k,v in pairs(abilityNames) do\n                                        if k == cdName then\n                                            cdName = v\n                                        end    \n                                    end    \n                                end\n                                \n                                if newName ~= nil then\n                                    if not TehrsCDs[\"Show Settings\"].ShowOnCooldownOnly or (TehrsCDs[\"Show Settings\"].ShowOnCooldownOnly and cdDTime ~= timeColor..\"READY|r\") then\n                                        cdCount = cdCount + 1 \n                                        cdTexts[cdCount] = {\n                                            aura_env.raidCDsIndentAmount..nameColor..newName,\n                                            nameColor..cdName,\n                                            cdDTime\n                                        }\n                                    end\n                                end                                \n                            end\n                        end           \n                    end        \n                end    \n            end\n            if TehrsCDs[\"Show Settings\"].ShowEmptySections or #cdTexts > 0 then\n                TehrsCDs._raidCDs_namesText =  TehrsCDs._raidCDs_namesText..\"\\n|cFF00A2E8\"..titles[2]..\"               |r\\n\\n\";\n                TehrsCDs._raidCDs_cdText = TehrsCDs._raidCDs_cdText..\"\\n\\n\\n\";\n                TehrsCDs._raidCDs_timeText = TehrsCDs._raidCDs_timeText..\"\\n\\n\\n\"; \n                \n                if #cdTexts > 0 then \n                    for index, value in pairs(cdTexts) do\n                        TehrsCDs._raidCDs_namesText =  TehrsCDs._raidCDs_namesText..value[1]..\"\\n\";\n                        TehrsCDs._raidCDs_cdText = TehrsCDs._raidCDs_cdText..value[2]..\"\\n\";\n                        TehrsCDs._raidCDs_timeText = TehrsCDs._raidCDs_timeText..value[3]..\"\\n\";  \n                    end\n                end\n            end            \n        end\n        \n        if (TehrsCDs[\"Show Settings\"].allUtility and TehrsCDs.instanceType ~= \"raid\" and GetNumGroupMembers()<20) or (TehrsCDs[\"Show Settings\"].allUtility_inRaid and (TehrsCDs.instanceType == \"raid\" or GetNumGroupMembers()>19)) then \n            \n            local cdCount = 0;\n            local cdTexts = { }; \n            local allUtility = { };\n            \n            allUtility[\"|cFFC41F3B\"] = TehrsCDs._utilityCDs_dks;    \n            allUtility[\"|cFFA330C9\"] = TehrsCDs._utilityCDs_dhs;    \n            allUtility[\"|cFFFF7D0A\"] = TehrsCDs._utilityCDs_druids;\n            allUtility[\"|cFFF58CBA\"] = TehrsCDs._utilityCDs_paladins;\n            allUtility[\"|cFFFFFFFF\"] = TehrsCDs._utilityCDs_priests;\n            allUtility[\"|cFF0070DE\"] = TehrsCDs._utilityCDs_shamans;  \n            allUtility[\"|cFFABD473\"] = TehrsCDs._utilityCDs_hunters;       \n            allUtility[\"|cFFFFF569\"] = TehrsCDs._utilityCDs_rogues;        \n            allUtility[\"|cFFB4B4B4\"] = TehrsCDs._utilityCDs_nightelf;           \n            \n            for theCDGroupColor, theCDGroup in pairs(allUtility) do\n                if (theCDGroup ~= nil) then        \n                    for name, cdData in pairs(theCDGroup) do             \n                        for cdName, cdTime in aura_env.sortedPairs(cdData) do \n                            \n                            if not ((not TehrsCDs[\"Show Settings\"].Hope and cdName == \"Hope\")\n                                or (not TehrsCDs[\"Show Settings\"].Grip and cdName == \"Grip\")\n                                or (not TehrsCDs[\"Show Settings\"].Innervate and cdName == \"Innervate\")\n                                or (not TehrsCDs[\"Show Settings\"].Treants and cdName == \"Treants\")                                \n                                or (not TehrsCDs[\"Show Settings\"].Roar and cdName == \"Roar\")\n                                or (not TehrsCDs[\"Show Settings\"].BoP and cdName == \"BoP\")\n                                or (not TehrsCDs[\"Show Settings\"].WindRush and cdName == \"Wind Rush\")\n                                or (not TehrsCDs[\"Show Settings\"].Misdirect and cdName == \"Misdirect\")\n                                or (not TehrsCDs[\"Show Settings\"].Shadowmeld and cdName == \"Shadowmeld\")\n                                or (not TehrsCDs[\"Show Settings\"].Shroud and cdName == \"Shroud\")\n                                or (not TehrsCDs[\"Show Settings\"].Tricks and cdName == \"Tricks\")) then                         \n                                \n                                local timeColor;\n                                local nameColor;\n                                local cdDTime = cdTime - GetTime();   \n                                local unitName = UnitName(name)                            \n                                local unitRealm = GetRealmName(name)                                \n                                \n                                if aura_env.recolor then\n                                    if (UnitHealth(name) <= 0 or UnitIsGhost(name)) then\n                                        nameColor = aura_env.deadColor\n                                        timeColor = aura_env.deadColor\n                                    elseif not IsItemInRange(34471,name) and \n                                    (cdName == \"Grip\" or cdName == \"Innervate\" or cdName == \"BoP\" or cdName == \"Misdirect\" or cdName == \"Tricks\") then\n                                        nameColor = aura_env.outOfRangeColor\n                                        timeColor = aura_env.outOfRangeColor                                    \n                                    else    \n                                        nameColor = theCDGroupColor\n                                        timeColor = aura_env.colorByTime(cdDTime)\n                                    end      \n                                else    \n                                    nameColor = theCDGroupColor\n                                    timeColor = aura_env.colorByTime(cdDTime)                   \n                                end    \n                                \n                                if (cdDTime <= 0) then\n                                    cdDTime = timeColor..\"READY|r\";\n                                else\n                                    cdDTime = timeColor..string.format(\"%01d:%02d\", math.floor(cdDTime/60), math.floor(cdDTime - 60*math.floor(cdDTime/60)))..\"|r\"\n                                end            \n                                \n                                dashpos = string.find(name,\"-\");\n                                if (dashpos ~= nil) then name = string.sub(name, 0, dashpos - 1) end\n                                \n                                newName = string.sub(name, 0, nameMaxLength);\n                                \n                                if (string.len(newName) <  string.len(name)) then newName = newName..\"..\" end\n                                \n                                for k,v in pairs(aura_env.Supporters) do\n                                    if (k == name) and (v == unitRealm) then\n                                        newName = \"*\"..newName\n                                    end\n                                end\n                                \n                                if abilityNames ~= nil then\n                                    for k,v in pairs(abilityNames) do\n                                        if k == cdName then\n                                            cdName = v\n                                        end    \n                                    end    \n                                end\n                                \n                                if newName ~= nil then\n                                    if not TehrsCDs[\"Show Settings\"].ShowOnCooldownOnly or (TehrsCDs[\"Show Settings\"].ShowOnCooldownOnly and cdDTime ~= timeColor..\"READY|r\") then\n                                        cdCount = cdCount + 1 \n                                        cdTexts[cdCount] = {\n                                            aura_env.raidCDsIndentAmount..nameColor..newName,\n                                            nameColor..cdName,\n                                            cdDTime\n                                        }\n                                    end\n                                end                                \n                            end\n                        end           \n                    end        \n                end    \n            end\n            if TehrsCDs[\"Show Settings\"].ShowEmptySections or #cdTexts > 0 then\n                TehrsCDs._raidCDs_namesText =  TehrsCDs._raidCDs_namesText..\"\\n|cFF00A2E8\"..titles[3]..\"               |r\\n\\n\";\n                TehrsCDs._raidCDs_cdText = TehrsCDs._raidCDs_cdText..\"\\n\\n\\n\";\n                TehrsCDs._raidCDs_timeText = TehrsCDs._raidCDs_timeText..\"\\n\\n\\n\"; \n                \n                if #cdTexts > 0 then \n                    for index, value in pairs(cdTexts) do\n                        TehrsCDs._raidCDs_namesText =  TehrsCDs._raidCDs_namesText..value[1]..\"\\n\";\n                        TehrsCDs._raidCDs_cdText = TehrsCDs._raidCDs_cdText..value[2]..\"\\n\";\n                        TehrsCDs._raidCDs_timeText = TehrsCDs._raidCDs_timeText..value[3]..\"\\n\";  \n                    end\n                end\n            end            \n        end  \n        \n        if (TehrsCDs[\"Show Settings\"].allImmunityCDs and TehrsCDs.instanceType ~= \"raid\" and GetNumGroupMembers()<20) or (TehrsCDs[\"Show Settings\"].allImmunityCDs_inRaid and (TehrsCDs.instanceType == \"raid\" or GetNumGroupMembers()>19)) then                \n            \n            local cdCount = 0;\n            local cdTexts = { }; \n            local allImmunities = { };\n            \n            allImmunities[\"|cFFABD473\"] = TehrsCDs._immunityCDs_hunters;\n            allImmunities[\"|cFF69CCF0\"] = TehrsCDs._immunityCDs_mages;\n            allImmunities[\"|cFFF58CBA\"] = TehrsCDs._immunityCDs_paladins;         \n            allImmunities[\"|cFFFFF569\"] = TehrsCDs._immunityCDs_rogues;\n            allImmunities[\"|cFFA330C9\"] = TehrsCDs._immunityCDs_dhs;    \n            \n            for theCDGroupColor, theCDGroup in pairs(allImmunities) do\n                if (theCDGroup ~= nil) then        \n                    for name, cdData in pairs(theCDGroup) do             \n                        for cdName, cdTime in aura_env.sortedPairs(cdData) do \n                            \n                            if not ((not TehrsCDs[\"Show Settings\"].Netherwalk and cdName == \"Netherwalk\")\n                                or (not TehrsCDs[\"Show Settings\"].Bubble and cdName == \"Bubble\")\n                                or (not TehrsCDs[\"Show Settings\"].Bubble and cdName == \"Bubble+\")\n                                or (not TehrsCDs[\"Show Settings\"].Turtle and cdName == \"Turtle\")\n                                or (not TehrsCDs[\"Show Settings\"].Turtle and cdName == \"Turtle+\")\n                                or (not TehrsCDs[\"Show Settings\"].Cloak and cdName == \"Cloak\")\n                                or (not TehrsCDs[\"Show Settings\"].Block and cdName == \"Block\")\n                                or (not TehrsCDs[\"Show Settings\"].Block and cdName == \"Block+\")) then                            \n                                \n                                local timeColor;\n                                local nameColor;\n                                local cdDTime = cdTime - GetTime();  \n                                local unitName = UnitName(name)                            \n                                local unitRealm = GetRealmName(name)                                \n                                \n                                if aura_env.recolor then\n                                    if (UnitHealth(name) <= 0 or UnitIsGhost(name)) then\n                                        nameColor = aura_env.deadColor\n                                        timeColor = aura_env.deadColor                                    \n                                    else    \n                                        nameColor = theCDGroupColor\n                                        timeColor = aura_env.colorByTime(cdDTime)\n                                    end      \n                                else    \n                                    nameColor = theCDGroupColor\n                                    timeColor = aura_env.colorByTime(cdDTime)                   \n                                end    \n                                \n                                if (cdDTime <= 0) then\n                                    cdDTime = timeColor..\"READY|r\";\n                                else\n                                    cdDTime = timeColor..string.format(\"%01d:%02d\", math.floor(cdDTime/60), math.floor(cdDTime - 60*math.floor(cdDTime/60)))..\"|r\"\n                                end            \n                                \n                                dashpos = string.find(name,\"-\");\n                                if (dashpos ~= nil) then name = string.sub(name, 0, dashpos - 1) end\n                                \n                                newName = string.sub(name, 0, nameMaxLength);\n                                \n                                if (string.len(newName) <  string.len(name)) then newName = newName..\"..\" end\n                                \n                                for k,v in pairs(aura_env.Supporters) do\n                                    if (k == name) and (v == unitRealm) then\n                                        newName = \"*\"..newName\n                                    end\n                                end\n                                \n                                if abilityNames ~= nil then\n                                    for k,v in pairs(abilityNames) do\n                                        if k == cdName then\n                                            cdName = v\n                                        end    \n                                    end    \n                                end\n                                \n                                if newName ~= nil then\n                                    if not TehrsCDs[\"Show Settings\"].ShowOnCooldownOnly or (TehrsCDs[\"Show Settings\"].ShowOnCooldownOnly and cdDTime ~= timeColor..\"READY|r\") then\n                                        cdCount = cdCount + 1 \n                                        cdTexts[cdCount] = {\n                                            aura_env.raidCDsIndentAmount..nameColor..newName,\n                                            nameColor..cdName,\n                                            cdDTime\n                                        }\n                                    end\n                                end                                \n                            end\n                        end           \n                    end        \n                end    \n            end\n            if TehrsCDs[\"Show Settings\"].ShowEmptySections or #cdTexts > 0 then\n                TehrsCDs._raidCDs_namesText =  TehrsCDs._raidCDs_namesText..\"\\n|cFF00A2E8\"..titles[4]..\"               |r\\n\\n\";\n                TehrsCDs._raidCDs_cdText = TehrsCDs._raidCDs_cdText..\"\\n\\n\\n\";\n                TehrsCDs._raidCDs_timeText = TehrsCDs._raidCDs_timeText..\"\\n\\n\\n\"; \n                \n                if #cdTexts > 0 then \n                    for index, value in pairs(cdTexts) do\n                        TehrsCDs._raidCDs_namesText =  TehrsCDs._raidCDs_namesText..value[1]..\"\\n\";\n                        TehrsCDs._raidCDs_cdText = TehrsCDs._raidCDs_cdText..value[2]..\"\\n\";\n                        TehrsCDs._raidCDs_timeText = TehrsCDs._raidCDs_timeText..value[3]..\"\\n\";  \n                    end\n                end\n            end            \n        end         \n        \n        if (TehrsCDs[\"Show Settings\"].allAoECCs and TehrsCDs.instanceType ~= \"raid\" and GetNumGroupMembers()<20) or (TehrsCDs[\"Show Settings\"].allAoECCs_inRaid and (TehrsCDs.instanceType == \"raid\" or GetNumGroupMembers()>19)) then        \n            \n            local cdCount = 0;\n            local cdTexts = { }; \n            local allCDs = { };\n            \n            allCDs[\"|cFFFF7D0A\"] = TehrsCDs._aoeCCs_druids;\n            allCDs[\"|cFFFFFFFF\"] = TehrsCDs._aoeCCs_priests;        \n            allCDs[\"|cFFABD473\"] = TehrsCDs._aoeCCs_hunters;\n            allCDs[\"|cFF69CCF0\"] = TehrsCDs._aoeCCs_mages;\n            allCDs[\"|cFF00FF96\"] = TehrsCDs._aoeCCs_monks;      \n            allCDs[\"|cFF0070DE\"] = TehrsCDs._aoeCCs_shamans;       \n            allCDs[\"|cFFC79C6E\"] = TehrsCDs._aoeCCs_warriors;  \n            allCDs[\"|cFFA330C9\"] = TehrsCDs._aoeCCs_dhs;                     \n            allCDs[\"|cFF9482C9\"] = TehrsCDs._aoeCCs_warlocks; \n            allCDs[\"|cFFC41F3B\"] = TehrsCDs._aoeCCs_dks;                 \n            allCDs[\"|cFFB4B4B4\"] = TehrsCDs._aoeCCs_tauren;      \n            allCDs[\"|cFFB4B4B4\"] = TehrsCDs._aoeCCs_hmtauren;            \n            \n            for theCDGroupColor, theCDGroup in pairs(allCDs) do\n                if (theCDGroup ~= nil) then        \n                    for name, cdData in pairs(theCDGroup) do             \n                        for cdName, cdTime in aura_env.sortedPairs(cdData) do \n                            \n                            if not ((not TehrsCDs[\"Show Settings\"].Stomp and cdName == \"Stomp\")\n                                or (not TehrsCDs[\"Show Settings\"].BullRush and cdName == \"Bull Rush\")\n                                or (not TehrsCDs[\"Show Settings\"].Ursol and cdName == \"Ursol\")\n                                or (not TehrsCDs[\"Show Settings\"].Typhoon and cdName == \"Typhoon\")\n                                or (not TehrsCDs[\"Show Settings\"].MindBomb and cdName == \"Mind Bomb\")\n                                or (not TehrsCDs[\"Show Settings\"].Shockwave and cdName == \"Shockwave\")\n                                or (not TehrsCDs[\"Show Settings\"].Shockwave and cdName == \"Shockwave+\")\n                                or (not TehrsCDs[\"Show Settings\"].Chains and cdName == \"Chains\")\n                                or (not TehrsCDs[\"Show Settings\"].Grasp and cdName == \"Grasp\")\n                                or (not TehrsCDs[\"Show Settings\"].Grasp and cdName == \"Grasp+\")\n                                or (not TehrsCDs[\"Show Settings\"].CapTotem and cdName == \"Cap Totem\")\n                                or (not TehrsCDs[\"Show Settings\"].CapTotem and cdName == \"Cap Totem+\")\n                                or (not TehrsCDs[\"Show Settings\"].Binding and cdName == \"Binding\")\n                                or (not TehrsCDs[\"Show Settings\"].Infernal and cdName == \"Infernal\")\n                                or (not TehrsCDs[\"Show Settings\"].Thunderstorm and cdName == \"Thunderstorm\")\n                                or (not TehrsCDs[\"Show Settings\"].Ring and cdName == \"Ring\")\n                                or (not TehrsCDs[\"Show Settings\"].Shining and cdName == \"Shining\")                                \n                                or (not TehrsCDs[\"Show Settings\"].Shadowfury and cdName == \"Shadowfury+\")\n                                or (not TehrsCDs[\"Show Settings\"].Shadowfury and cdName == \"Shadowfury\")\n                                or (not TehrsCDs[\"Show Settings\"].Sweep and cdName == \"Sweep\")\n                                or (not TehrsCDs[\"Show Settings\"].Sweep and cdName == \"Sweep+\")\n                                or (not TehrsCDs[\"Show Settings\"].Nova and cdName == \"Nova\")\n                                or (not TehrsCDs[\"Show Settings\"].Nova and cdName == \"Nova+\")) then                                 \n                                \n                                local timeColor;\n                                local nameColor;\n                                local cdDTime = cdTime - GetTime(); \n                                local unitName = UnitName(name)                            \n                                local unitRealm = GetRealmName(name)                                \n                                \n                                if aura_env.recolor then\n                                    if (UnitHealth(name) <= 0 or UnitIsGhost(name)) then\n                                        nameColor = aura_env.deadColor\n                                        timeColor = aura_env.deadColor                                    \n                                    else    \n                                        nameColor = theCDGroupColor\n                                        timeColor = aura_env.colorByTime(cdDTime)\n                                    end      \n                                else    \n                                    nameColor = theCDGroupColor\n                                    timeColor = aura_env.colorByTime(cdDTime)                   \n                                end    \n                                \n                                if (cdDTime <= 0) then\n                                    cdDTime = timeColor..\"READY|r\";\n                                else\n                                    cdDTime = timeColor..string.format(\"%01d:%02d\", math.floor(cdDTime/60), math.floor(cdDTime - 60*math.floor(cdDTime/60)))..\"|r\"\n                                end            \n                                \n                                dashpos = string.find(name,\"-\");\n                                if (dashpos ~= nil) then name = string.sub(name, 0, dashpos - 1) end\n                                \n                                newName = string.sub(name, 0, nameMaxLength);\n                                \n                                if (string.len(newName) <  string.len(name)) then newName = newName..\"..\" end\n                                \n                                for k,v in pairs(aura_env.Supporters) do\n                                    if (k == name) and (v == unitRealm) then\n                                        newName = \"*\"..newName\n                                    end\n                                end\n                                \n                                if abilityNames ~= nil then\n                                    for k,v in pairs(abilityNames) do\n                                        if k == cdName then\n                                            cdName = v\n                                        end    \n                                    end    \n                                end\n                                \n                                if newName ~= nil then\n                                    if not TehrsCDs[\"Show Settings\"].ShowOnCooldownOnly or (TehrsCDs[\"Show Settings\"].ShowOnCooldownOnly and cdDTime ~= timeColor..\"READY|r\") then\n                                        cdCount = cdCount + 1 \n                                        cdTexts[cdCount] = {\n                                            aura_env.raidCDsIndentAmount..nameColor..newName,\n                                            nameColor..cdName,\n                                            cdDTime\n                                        }\n                                    end\n                                end                                \n                            end\n                        end           \n                    end        \n                end    \n            end\n            if TehrsCDs[\"Show Settings\"].ShowEmptySections or #cdTexts > 0 then\n                TehrsCDs._raidCDs_namesText =  TehrsCDs._raidCDs_namesText..\"\\n|cFF00A2E8\"..titles[5]..\"               |r\\n\\n\";\n                TehrsCDs._raidCDs_cdText = TehrsCDs._raidCDs_cdText..\"\\n\\n\\n\";\n                TehrsCDs._raidCDs_timeText = TehrsCDs._raidCDs_timeText..\"\\n\\n\\n\"; \n                \n                if #cdTexts > 0 then \n                    for index, value in pairs(cdTexts) do\n                        TehrsCDs._raidCDs_namesText =  TehrsCDs._raidCDs_namesText..value[1]..\"\\n\";\n                        TehrsCDs._raidCDs_cdText = TehrsCDs._raidCDs_cdText..value[2]..\"\\n\";\n                        TehrsCDs._raidCDs_timeText = TehrsCDs._raidCDs_timeText..value[3]..\"\\n\";  \n                    end\n                end\n            end            \n        end    \n        \n        if (TehrsCDs[\"Show Settings\"].allInterrupts and TehrsCDs.instanceType ~= \"raid\" and GetNumGroupMembers()<20) or (TehrsCDs[\"Show Settings\"].allInterrupts_inRaid and (TehrsCDs.instanceType == \"raid\" or GetNumGroupMembers()>19)) then\n            \n            local cdCount = 0;\n            local cdTexts = { }; \n            local allinterrupts = { };\n            \n            allinterrupts[\"|cFFFF7D0A\"] = TehrsCDs._interrupts_druids;\n            allinterrupts[\"|cFFFFFFFF\"] = TehrsCDs._interrupts_priests;        \n            allinterrupts[\"|cFFABD473\"] = TehrsCDs._interrupts_hunters;\n            allinterrupts[\"|cFF69CCF0\"] = TehrsCDs._interrupts_mages;\n            allinterrupts[\"|cFF00FF96\"] = TehrsCDs._interrupts_monks;\n            allinterrupts[\"|cFFF58CBA\"] = TehrsCDs._interrupts_paladins;        \n            allinterrupts[\"|cFF0070DE\"] = TehrsCDs._interrupts_shamans;        \n            allinterrupts[\"|cFFC41F3B\"] = TehrsCDs._interrupts_dks;         \n            allinterrupts[\"|cFFFFF569\"] = TehrsCDs._interrupts_rogues;\n            allinterrupts[\"|cFFC79C6E\"] = TehrsCDs._interrupts_warriors;\n            allinterrupts[\"|cFFA330C9\"] = TehrsCDs._interrupts_dhs;\n            allinterrupts[\"|cFF9482C9\"] = TehrsCDs._interrupts_warlocks;      \n            allinterrupts[\"|cFFB4B4B4\"] = TehrsCDs._interrupts_belfs;         \n            \n            for theCDGroupColor, theCDGroup in pairs(allinterrupts) do\n                if (theCDGroup ~= nil) then        \n                    for name, cdData in pairs(theCDGroup) do             \n                        for cdName, cdTime in aura_env.sortedPairs(cdData) do \n                            \n                            if not( (not TehrsCDs[\"Show Settings\"].Pummel and cdName == \"Pummel\")\n                                --[[ or (not TehrsCDs[\"Show Settings\"].Torrent and cdName == \"Torrent\")\n                                Arcane Torrent isn't an interrupt anymore! Holding onto this until I add dispels.\n                                ]]\n                                or (not TehrsCDs[\"Show Settings\"].Silence and cdName == \"Silence\")\n                                or (not TehrsCDs[\"Show Settings\"].Silence and cdName == \"Silence+\")\n                                or (not TehrsCDs[\"Show Settings\"].Disrupt and cdName == \"Disrupt\")\n                                or (not TehrsCDs[\"Show Settings\"].SigilSilence and cdName == \"S-Silence\")\n                                or (not TehrsCDs[\"Show Settings\"].SigilSilence and cdName == \"S-Silence+\")\n                                or (not TehrsCDs[\"Show Settings\"].SBash and cdName == \"S-Bash\")\n                                or (not TehrsCDs[\"Show Settings\"].SBeam and cdName == \"S-Beam\")\n                                or (not TehrsCDs[\"Show Settings\"].MindFreeze and cdName == \"M-Freeze\")\n                                or (not TehrsCDs[\"Show Settings\"].Rebuke and cdName == \"Rebuke\")\n                                or (not TehrsCDs[\"Show Settings\"].WShear and cdName == \"W-Shear\")\n                                or (not TehrsCDs[\"Show Settings\"].Muzzle and cdName == \"Muzzle\")\n                                or (not TehrsCDs[\"Show Settings\"].CShot and cdName == \"C-Shot\")\n                                or (not TehrsCDs[\"Show Settings\"].Kick and cdName == \"Kick\")\n                                or (not TehrsCDs[\"Show Settings\"].CSpell and cdName == \"C-Spell\")\n                                or (not TehrsCDs[\"Show Settings\"].SpellLock and cdName == \"Spell Lock\")\n                                or (not TehrsCDs[\"Show Settings\"].SStrike and cdName == \"S-Strike\")) then                        \n                                \n                                local timeColor;\n                                local nameColor;\n                                local cdDTime = cdTime - GetTime(); \n                                local unitName = UnitName(name)                            \n                                local unitRealm = GetRealmName(name)                                \n                                \n                                if aura_env.recolor then\n                                    if (UnitHealth(name) <= 0 or UnitIsGhost(name)) then\n                                        nameColor = aura_env.deadColor\n                                        timeColor = aura_env.deadColor                                    \n                                    else    \n                                        nameColor = theCDGroupColor\n                                        timeColor = aura_env.colorByTime(cdDTime)                    \n                                    end      \n                                else    \n                                    nameColor = theCDGroupColor\n                                    timeColor = aura_env.colorByTime(cdDTime)                   \n                                end     \n                                \n                                if (cdDTime <= 0) then\n                                    cdDTime = timeColor..\"READY|r\";\n                                else\n                                    cdDTime = timeColor..math.floor(cdDTime)..\"|r\";\n                                end            \n                                \n                                dashpos = string.find(name,\"-\");\n                                if (dashpos ~= nil) then name = string.sub(name, 0, dashpos - 1) end\n                                \n                                newName = string.sub(name, 0, nameMaxLength);\n                                \n                                if (string.len(newName) <  string.len(name)) then newName = newName..\"..\" end\n                                \n                                for k,v in pairs(aura_env.Supporters) do\n                                    if (k == name) and (v == unitRealm) then\n                                        newName = \"*\"..newName\n                                    end\n                                end\n                                \n                                if abilityNames ~= nil then\n                                    for k,v in pairs(abilityNames) do\n                                        if k == cdName then\n                                            cdName = v\n                                        end    \n                                    end    \n                                end\n                                \n                                if newName ~= nil then\n                                    if not TehrsCDs[\"Show Settings\"].ShowOnCooldownOnly or (TehrsCDs[\"Show Settings\"].ShowOnCooldownOnly and cdDTime ~= timeColor..\"READY|r\") then\n                                        cdCount = cdCount + 1 \n                                        cdTexts[cdCount] = {\n                                            aura_env.raidCDsIndentAmount..nameColor..newName,\n                                            nameColor..cdName,\n                                            cdDTime\n                                        }\n                                    end\n                                end    \n                            end\n                        end           \n                    end        \n                end    \n            end\n            if TehrsCDs[\"Show Settings\"].ShowEmptySections or #cdTexts > 0 then\n                TehrsCDs._raidCDs_namesText =  TehrsCDs._raidCDs_namesText..\"\\n|cFF00A2E8\"..titles[6]..\"               |r\\n\\n\";\n                TehrsCDs._raidCDs_cdText = TehrsCDs._raidCDs_cdText..\"\\n\\n\\n\";\n                TehrsCDs._raidCDs_timeText = TehrsCDs._raidCDs_timeText..\"\\n\\n\\n\"; \n                \n                if #cdTexts > 0 then \n                    for index, value in pairs(cdTexts) do\n                        TehrsCDs._raidCDs_namesText =  TehrsCDs._raidCDs_namesText..value[1]..\"\\n\";\n                        TehrsCDs._raidCDs_cdText = TehrsCDs._raidCDs_cdText..value[2]..\"\\n\";\n                        TehrsCDs._raidCDs_timeText = TehrsCDs._raidCDs_timeText..value[3]..\"\\n\";  \n                    end\n                end\n            end\n        end\n        \n        if (TehrsCDs[\"Show Settings\"].allRezzes and TehrsCDs.instanceType ~= \"raid\" and GetNumGroupMembers()<20) or ((TehrsCDs[\"Show Settings\"].allRezzes_inRaid or TehrsCDs[\"Show Settings\"].Ankh_inRaid or TehrsCDs[\"Show Settings\"].raidBattleRezTimer) and (TehrsCDs.instanceType == \"raid\" or GetNumGroupMembers()>19)) then\n            \n            local cdCount = 0;\n            local cdTexts = { }; \n            local allRezzes = { };\n            local rezType = titles[7]\n            \n            if (TehrsCDs.instanceDifficulty ~= 8) and ((TehrsCDs[\"Show Settings\"].allRezzes and TehrsCDs.instanceType ~= \"raid\" and GetNumGroupMembers()<20) or (not TehrsCDs.encounterStart and TehrsCDs[\"Show Settings\"].allRezzes_inRaid and (TehrsCDs.instanceType == \"raid\" or GetNumGroupMembers()>19))) then    \n                allRezzes[\"|cFFC41F3B\"] = TehrsCDs._rezCDs_dks;      \n                allRezzes[\"|cFFFF7D0A\"] = TehrsCDs._rezCDs_druids; \n                allRezzes[\"|cFF9482C9\"] = TehrsCDs._rezCDs_warlocks;\n                allRezzes[\"|cFF0070DE\"] = TehrsCDs._rezCDs_shamans; \n            elseif (TehrsCDs[\"Show Settings\"].Ankh_inRaid) then\n                allRezzes[\"|cFF0070DE\"] = TehrsCDs._rezCDs_shamans; \n            else\n                rezType = titles[8]\n            end\n            \n            for theCDGroupColor, theCDGroup in pairs(allRezzes) do\n                if (theCDGroup ~= nil) then        \n                    for name, cdData in pairs(theCDGroup) do             \n                        for cdName, cdTime in aura_env.sortedPairs(cdData) do \n                            \n                            if not ((not TehrsCDs[\"Show Settings\"].Rebirth and cdName == \"Rebirth\")\n                                or (not TehrsCDs[\"Show Settings\"].RaiseAlly and cdName == \"Raise Ally\")\n                                or (not TehrsCDs[\"Show Settings\"].Ankh and cdName == \"Ankh\")\n                                or (not TehrsCDs[\"Show Settings\"].Soulstone and cdName == \"Soulstone\")) then \n                                \n                                local timeColor;\n                                local nameColor;\n                                local cdDTime = cdTime - GetTime();\n                                local unitName = UnitName(name)                            \n                                local unitRealm = GetRealmName(name)\n                                \n                                if aura_env.recolor then\n                                    if (UnitHealth(name) <= 0 or UnitIsGhost(name)) then\n                                        nameColor = aura_env.deadColor\n                                        timeColor = aura_env.deadColor                                    \n                                    else    \n                                        nameColor = theCDGroupColor\n                                        timeColor = aura_env.colorByTime(cdDTime)                    \n                                    end      \n                                else    \n                                    nameColor = theCDGroupColor\n                                    timeColor = aura_env.colorByTime(cdDTime)                   \n                                end \n                                \n                                if (cdDTime <= 0) then\n                                    cdDTime = timeColor..\"READY|r\";\n                                else\n                                    cdDTime = timeColor..string.format(\"%01d:%02d\", math.floor(cdDTime/60), math.floor(cdDTime - 60*math.floor(cdDTime/60)))..\"|r\"\n                                end                     \n                                \n                                dashpos = string.find(name,\"-\");\n                                if (dashpos ~= nil) then name = string.sub(name, 0, dashpos - 1) end\n                                \n                                newName = string.sub(name, 0, nameMaxLength);\n                                \n                                if (string.len(newName) <  string.len(name)) then newName = newName..\"..\" end\n                                \n                                for k,v in pairs(aura_env.Supporters) do\n                                    if (k == name) and (v == unitRealm) then\n                                        newName = \"*\"..newName\n                                    end\n                                end\n                                \n                                if abilityNames ~= nil then\n                                    for k,v in pairs(abilityNames) do\n                                        if k == cdName then\n                                            cdName = v\n                                        end    \n                                    end    \n                                end\n                                \n                                if newName ~= nil then\n                                    if not TehrsCDs[\"Show Settings\"].ShowOnCooldownOnly or (TehrsCDs[\"Show Settings\"].ShowOnCooldownOnly and cdDTime ~= timeColor..\"READY|r\") then\n                                        cdCount = cdCount + 1 \n                                        cdTexts[cdCount] = {\n                                            aura_env.raidCDsIndentAmount..nameColor..newName,\n                                            nameColor..cdName,\n                                            cdDTime\n                                        }\n                                    end\n                                end    \n                            end\n                        end           \n                    end        \n                end    \n            end\n            \n            if TehrsCDs[\"Show Settings\"].ShowEmptySections or #cdTexts > 0 then\n                TehrsCDs._raidCDs_namesText =  TehrsCDs._raidCDs_namesText..\"\\n|cFF00A2E8\"..rezType..\"               |r\\n\\n\";\n                TehrsCDs._raidCDs_cdText = TehrsCDs._raidCDs_cdText..\"\\n\\n\\n\";\n                TehrsCDs._raidCDs_timeText = TehrsCDs._raidCDs_timeText..\"\\n\\n\\n\"; \n                \n                if #cdTexts > 0 then \n                    for index, value in pairs(cdTexts) do\n                        TehrsCDs._raidCDs_namesText =  TehrsCDs._raidCDs_namesText..value[1]..\"\\n\";\n                        TehrsCDs._raidCDs_cdText = TehrsCDs._raidCDs_cdText..value[2]..\"\\n\";\n                        TehrsCDs._raidCDs_timeText = TehrsCDs._raidCDs_timeText..value[3]..\"\\n\";  \n                    end\n                end\n            end            \n            \n            if ((TehrsCDs[\"Show Settings\"].mythicDungeonBattleRezTimer and TehrsCDs.instanceGroupType == \"party\" and TehrsCDs.instanceDifficulty == 8) or (TehrsCDs[\"Show Settings\"].raidBattleRezTimer and TehrsCDs.instanceType == \"raid\")) and GetSpellCharges(20484) then   \n                \n                -- Credit to Krazyito for this code http://www.mmo-champion.com/threads/1686033-Weak-Auras-Battle-Res-Monitor-Looking-for-feedback     \n                \n                local rezCharges, _, started, duration = GetSpellCharges(20484)\n                local timerString = \"\"            \n                local extraSpace = \"\"\n                \n                if started then\n                    local brezTimer = duration - (GetTime() - started)\n                    local m = floor(brezTimer/60)\n                    local s = mod(brezTimer, 60)\n                    timerString =  string.format(\"%01d:%02d\", m, s)\n                end\n                \n                if rezCharges == nil then\n                    rezCharges = 0\n                end\n                \n                if rezCharges == 0 then\n                    rezCharges = \"|cFF333333\"..rezCharges..\"|r\"\n                else\n                    rezCharges =\"|cFF00FF00\"..rezCharges..\"|r\" \n                end\n                \n                if TehrsCDs._rezCDs_shamans then\n                    extraSpace = \"\\n\"\n                end                \n                \n                TehrsCDs._raidCDs_namesText = TehrsCDs._raidCDs_namesText..extraSpace..aura_env.raidCDsIndentAmount..\"|cFFFFFFFFCharges|r:\\n\"\n                TehrsCDs._raidCDs_cdText = TehrsCDs._raidCDs_cdText..extraSpace..rezCharges..\"\\n\";\n                TehrsCDs._raidCDs_timeText = TehrsCDs._raidCDs_timeText..extraSpace..timerString..\"\\n\";\n            end         \n        end          \n    end\n    \n    local point, relativeTo, relativePoint, xOffset, yOffset = WeakAuras.regions[aura_env.id].region:GetPoint()\n    if point == \"TOPLEFT\" then    \n        TehrsCDs._raidCDs_namesText = TehrsCDs._raidCDs_namesText..\"                                                          \\n\";\n        TehrsCDs._raidCDs_cdText = TehrsCDs._raidCDs_cdText..\"                                                             \\n\";\n        TehrsCDs._raidCDs_timeText = TehrsCDs._raidCDs_timeText..\"                                                             \\n\";    \n    end\n    \n    if WeakAuras.regions[backgroundName] then\n        _, TehrsCDs.NamesTextLineCount = string.gsub(TehrsCDs._raidCDs_namesText, \"\\n\", \"\");\n        local newWidth = 200 + (fontSize-11)*15\n        local newHeight = TehrsCDs.NamesTextLineCount * fontSize\n        \n        WeakAuras.regions[backgroundName].region:SetHeight(newHeight); \n        WeakAuras.regions[backgroundName].region:SetWidth(newWidth) \n        _,_,_,TehrsCDs.BackgroundAlpha = WeakAuras.regions[WeakAurasSaved.displays[WeakAuras.regions[aura_env.id].region:GetParent().id][\"controlledChildren\"][6]].region.texture:GetVertexColor()\n        \n    end\n    return TehrsCDs._raidCDs_namesText     \nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/RaidCDs",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_frame"] = "WeakAuras:RaidCDs_NamesText",
				},
				["init"] = {
					["custom"] = "-- You must reload your UI by typing '/reload' after changing any of these settings\nlocal parentName = WeakAurasSaved.displays[WeakAuras.regions[aura_env.id].region:GetParent().id]\nif (parentName[\"TehrsRaidCDs\"] == nil) then parentName[\"TehrsRaidCDs\"] = {} end    \nif (parentName[\"TehrsRaidCDs\"][\"Show Settings\"] == nil) then parentName[\"TehrsRaidCDs\"][\"Show Settings\"] = {} end\nlocal TehrsCDs = parentName[\"TehrsRaidCDs\"]        \n\n\naura_env.raidCDsIndentAmount = \"  \" --Indents players' names under the title of their respective sections\naura_env.recolor = true --If true, players' names and cooldowns will be colored when they're dead or out of range\naura_env.deadColor = \"|cFF333333\"; --Players' names and cooldowns will be this color when they're dead\naura_env.outOfRangeColor = \"|cFF888888\"; --Players' names and cooldowns will be this color when they're out of range\naura_env.AprilFools = true --Displays the April Fools Eggo sample text on April 1st and 2nd\nTehrsCDs[\"Show Settings\"].WhenSolo = true --Select \"true\" if you want to display when you're not in a group (e.g. to display just your own auras)\n\n\n--GENERAL SETTINGS\n--The following affects whether or not certain sections are displayed if you have less than 20 people in your group and are not in a raid instance\nTehrsCDs[\"Show Settings\"].allExterns = TehrsCDs[\"Show Settings\"].allExterns == nil and true or TehrsCDs[\"Show Settings\"].allExterns;\nTehrsCDs[\"Show Settings\"].allCDs = TehrsCDs[\"Show Settings\"].allCDs == nil and true or TehrsCDs[\"Show Settings\"].allCDs;\nTehrsCDs[\"Show Settings\"].allUtility = TehrsCDs[\"Show Settings\"].allUtility == nil and true or TehrsCDs[\"Show Settings\"].allUtility;    \nTehrsCDs[\"Show Settings\"].allImmunityCDs = TehrsCDs[\"Show Settings\"].allImmunityCDs == nil and true or  TehrsCDs[\"Show Settings\"].allImmunityCDs;       \nTehrsCDs[\"Show Settings\"].allAoECCs = TehrsCDs[\"Show Settings\"].allAoECCs == nil and true or  TehrsCDs[\"Show Settings\"].allAoECCs;    \nTehrsCDs[\"Show Settings\"].allRezzes = TehrsCDs[\"Show Settings\"].allRezzes == nil and true or TehrsCDs[\"Show Settings\"].allRezzes;     \nTehrsCDs[\"Show Settings\"].allInterrupts = TehrsCDs[\"Show Settings\"].allInterrupts == nil and true or TehrsCDs[\"Show Settings\"].allInterrupts;\nTehrsCDs[\"Show Settings\"].mythicDungeonBattleRezTimer = TehrsCDs[\"Show Settings\"].mythicDungeonBattleRezTimer == nil and true or TehrsCDs[\"Show Settings\"].mythicDungeonBattleRezTimer; --If true, will display how many Battle Rez charges are available, and how long until a new charge becomes ready ONLY during a M+ Dungeon -- DOES NOT NEED allRezzes TO BE ENABLED\n\n--RAID SETTINGS\n--The following affects whether or not certain sections are displayed in a raid instance OR if there are 20+ people in your group\nTehrsCDs[\"Show Settings\"].allExterns_inRaid = TehrsCDs[\"Show Settings\"].allExterns_inRaid == nil and true or TehrsCDs[\"Show Settings\"].allExterns_inRaid;\nTehrsCDs[\"Show Settings\"].allCDs_inRaid = TehrsCDs[\"Show Settings\"].allCDs_inRaid == nil and true or TehrsCDs[\"Show Settings\"].allCDs_inRaid;\nTehrsCDs[\"Show Settings\"].allUtility_inRaid = TehrsCDs[\"Show Settings\"].allUtility_inRaid == nil and true or TehrsCDs[\"Show Settings\"].allUtility_inRaid;    \nTehrsCDs[\"Show Settings\"].allImmunityCDs_inRaid = TehrsCDs[\"Show Settings\"].allImmunityCDs_inRaid == nil and false or TehrsCDs[\"Show Settings\"].allImmunityCDs_inRaid;       \nTehrsCDs[\"Show Settings\"].allAoECCs_inRaid = TehrsCDs[\"Show Settings\"].allAoECCs_inRaid == nil and false or TehrsCDs[\"Show Settings\"].allAoECCs_inRaid;    \nTehrsCDs[\"Show Settings\"].allRezzes_inRaid = TehrsCDs[\"Show Settings\"].allRezzes_inRaid == nil and false or TehrsCDs[\"Show Settings\"].allRezzes_inRaid; \nTehrsCDs[\"Show Settings\"].allInterrupts_inRaid = TehrsCDs[\"Show Settings\"].allInterrupts_inRaid == nil and false or TehrsCDs[\"Show Settings\"].allInterrupts_inRaid;\nTehrsCDs[\"Show Settings\"].raidBattleRezTimer = TehrsCDs[\"Show Settings\"].raidBattleRezTimer == nil and true or TehrsCDs[\"Show Settings\"].raidBattleRezTimer; --If true, will display how many Battle Rez charges are available, and how long until a new charge becomes ready ONLY during a RAID Encounter -- DOES NOT NEED allRezzes_inRaid TO BE ENABLED\nTehrsCDs[\"Show Settings\"].Ankh_inRaid = TehrsCDs[\"Show Settings\"].Ankh_inRaid == nil and true or TehrsCDs[\"Show Settings\"].Ankh_inRaid; --If true, Ankh CD will be displayed in addition to your Battle Rez timer when in a raid encounter -- DOES NOT NEED allRezzes_inRaid TO BE ENABLED\n\n--DON'T CHANGE THESE VALUES, REQUIRED FOR THIS WEAKAURA TO WORK CORRECTLY\n--Initialization Default\nTehrsCDs.minmaxDisplay = true\nTehrsCDs.encounterStart = false\nTehrsCDs._raidCDs_textPoll = nil;\nTehrsCDs[\"Show Settings\"].SortByTimer = TehrsCDs[\"Show Settings\"].SortByTimer or false \n--Group Tables\nTehrsCDs._raidCDs_namesText = nil\nTehrsCDs._raidCDs_cdText = nil\nTehrsCDs._raidCDs_timeText = nil\n\n--RGB Percent (0-1) to Hex\naura_env.RGBPercToHex = function(r, g, b)\n    r = r <= 1 and r >= 0 and r or 0\n    g = g <= 1 and g >= 0 and g or 0\n    b = b <= 1 and b >= 0 and b or 0\n    return string.format(\"%02x%02x%02x\", r*255, g*255, b*255)\nend\n\naura_env.colorByTime = function(time)\n    if (time <= 0) then\n        return \"|cFF00FF00\";\n    elseif (time <= 15) then\n        return \"|cFFFFFF00\";\n    elseif (time <= 90) then\n        return \"|cFF\"..aura_env.RGBPercToHex(1, 1- ((time - 15)/75), 0);\n    else\n        return \"|cFFFF0000\";\n    end  \nend\n\naura_env.sortedPairs = function(t) \n    if TehrsCDs[\"Show Settings\"].SortByTimer then\n        local keys = {}\n        for k in pairs(t) do\n            keys[#keys+1] = k\n        end\n        table.sort(keys, function(a,b)\n                return t[b] > t[a]\n        end)\n        local i = 0\n        return function()\n            i = i + 1\n            if keys[i] then\n                return keys[i], t[keys[i]]\n            end\n        end\n    else\n        local keys = {}; \n        for k in pairs(t) do\n            table.insert(keys, k)\n        end \n        table.sort(keys, function(a,b) \n                if tonumber(a) and tonumber(b) then \n                    return a > b; \n                else \n                    return tostring(a)>tostring(b); \n                end \n        end) \n        local i = 0; \n        return function() \n            if i < #keys then \n                i = i + 1; \n                return keys[i], t[keys[i]]; \n            end \n        end \n    end\nend\n\n-- This is just here so I can debug when shit hits the fan, you will never need to enable this\nTehrsCDs.DEBUG = false -- Master control for debug, check GroupPoll and Engine On Inits for their respective debug options\n-- Note that this can be toggled in-game by typing:\n-- /script WeakAuras.ScanEvents(\"TehrsCDs.DEBUGTOGGLE\")\n\n--Asterisks go here, boys\naura_env.Supporters = {\n    --Hey, that's me!\n    [\"Tehrdk\"]=\"Illidan\",[\"Tehrbrew\"]=\"Illidan\",[\"Tehrbear\"]=\"Illidan\",[\"Tehrdh\"]=\"Illidan\",[\"Tehrpally\"]=\"Illidan\",[\"Tehrwarrior\"]=\"Illidan\",[\"Tehrpriest\"]=\"Sargeras\",[\"Tehrlock\"]=\"Sargeras\",[\"Tehrhunter\"]=\"Illidan\",[\"Touchmywand\"]=\"Sargeras\",[\"Beermeister\"]=\"Sargeras\",[\"Tehrrogue\"]=\"Illidan\",\n    \n    --Patreon Supporters (no particular order)\n    [\"Terra\"]=\"Turalyon\", --Original Donator \n    [\"Kyonjia\"]=\"Proudmoore\",\n    [\"Vallory\"]=\"Illidan\",\n    [\"Badlash\"]=\"Sargeras\",\n    [\"Uldza\"]=\"Kazzak\",\n    [\"Bawnie\"]=\"BleedingHollow\",\n    \n    --Translators!\n    [\"Bbasae\"]=\"Thrall\",\n    [\"Arctarus\"]=\"Elune\",\n    [\"海绵熊\"]=\"白银之手\",\n    [\"Fairytree\"]=\"Hyjal\",\n    [\"希威婭\"]=\"亞雷戈斯\",\n    [\"Edll\"]=\"Nemesis\",\n    \n    --Code Contributor\n    [\"Elyssis\"]=\"Bloodhoof\"\n}",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "status",
						["event"] = "Health",
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["names"] = {
						},
						["spellIds"] = {
						},
						["custom"] = "function()\n    local parentName = WeakAurasSaved.displays[WeakAuras.regions[aura_env.id].region:GetParent().id]\n    if (parentName[\"TehrsRaidCDs\"] == nil) then parentName[\"TehrsRaidCDs\"] = {} end    \n    if (parentName[\"TehrsRaidCDs\"][\"Show Settings\"] == nil) then parentName[\"TehrsRaidCDs\"][\"Show Settings\"] = {} end\n    local TehrsCDs = parentName[\"TehrsRaidCDs\"]    \n    return TehrsCDs.minmaxDisplay\nend",
						["check"] = "update",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["custom"] = "function ()\n    return true\nend",
					},
				}, -- [1]
				["1"] = {
					["trigger"] = {
						["type"] = "custom",
						["custom"] = "function()\n    local parentName = WeakAurasSaved.displays[WeakAuras.regions[aura_env.id].region:GetParent().id]\n    if (parentName[\"TehrsRaidCDs\"] == nil) then parentName[\"TehrsRaidCDs\"] = {} end    \n    if (parentName[\"TehrsRaidCDs\"][\"Show Settings\"] == nil) then parentName[\"TehrsRaidCDs\"][\"Show Settings\"] = {} end\n    local TehrsCDs = parentName[\"TehrsRaidCDs\"]    \n    return TehrsCDs.minmaxDisplay\nend",
						["custom_type"] = "status",
						["check"] = "update",
						["genericShowOn"] = "showOnActive",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
						["custom"] = "function ()\n    return true\nend",
					},
				},
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 29,
			["wordWrap"] = "WordWrap",
			["desc"] = "Handles the displaying and populating of player names, CDs, and time left on CDs. Enable/disable sections in the button menu\n\n\nTo resize the entire aura:\n\n    Use the button menu to Toggle Sliders, then adjust the text size\n\n    \nTo adjust how far in names are indented:\n\n    Go to 'RaidCDs_NamesText' > Actions > On Init > 'Expand Text Editor'\n    Change how many spaces are in the local variable 'aura_env.raidCDsIndentAmount'\n    \n    \nTo make the aura grow downwards instead of upwards:\n\n    Change the Anchor Point of NamesText, Background, and CDText to 'Top Left' instead of 'Bottom Left'\n    Change the Anchor Point of TimesText to 'Top Right' instead of 'Bottom Right' \n\n    \nTo display the aura when you're not in a group\n\n    Go to 'RaidCDs_NamesText' > Actions > On Init > 'Expand Text Editor'\n    Change 'aura_env.displayWhenSolo' to 'true'",
			["font"] = "Expressway",
			["version"] = 1,
			["height"] = 306.32479858398,
			["load"] = {
				["ingroup"] = {
					["single"] = "raid",
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_ingroup"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "ten",
					["multi"] = {
						["ten"] = true,
					},
				},
			},
			["fontSize"] = 13.0158081054688,
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["automaticWidth"] = "Auto",
			["fixedWidth"] = 200,
			["justify"] = "LEFT",
			["authorOptions"] = {
			},
			["id"] = "RaidCDs_NamesText",
			["selfPoint"] = "BOTTOMLEFT",
			["frameStrata"] = 3,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "ymknXlTx4oj",
			["config"] = {
			},
			["parent"] = "!Tehr's CDs",
			["width"] = 287.41033935547,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["xOffset"] = -125.00006103516,
			["shadowYOffset"] = -1,
		},
		["!Tehr's CDs"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"RaidCDs_Engine", -- [1]
				"RaidCDs_GroupPoll", -- [2]
				"RaidCDs_NamesText", -- [3]
				"RaidCDs_CDText", -- [4]
				"RaidCDs_TimeText", -- [5]
				"RaidCDs_Background", -- [6]
				"RaidCDs_ButtonHandler", -- [7]
				"RaidCDs_CustomAbilities", -- [8]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["xOffset"] = -778.666915893555,
			["border"] = false,
			["yOffset"] = -262.733474731445,
			["anchorPoint"] = "CENTER",
			["borderSize"] = 16,
			["config"] = {
			},
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["borderEdge"] = "None",
			["url"] = "https://wago.io/RaidCDs",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				["1"] = {
					["trigger"] = {
						["genericShowOn"] = "showOnActive",
					},
				},
				["activeTriggerMode"] = 1,
			},
			["regionType"] = "group",
			["internalVersion"] = 29,
			["scale"] = 1,
			["selfPoint"] = "BOTTOMLEFT",
			["id"] = "!Tehr's CDs",
			["borderOffset"] = 5,
			["frameStrata"] = 3,
			["desc"] = "Displays all Raid CDs, External CDs, Utility CDs, Immunity CDs, AoE CCs, Battle Rezzes, and Interrupts available by all players in your raid and the time remaining on their cooldown.\n\nCode originally by Yuqii, updated, maintained, and highly modified solely by Tehr since BRF (with permission).\n\nGet the latest update, available ONLY from:",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["borderInset"] = 11,
			["version"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "knFerpZmEhv",
			["conditions"] = {
			},
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_class"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["TehrsRaidCDs"] = {
				["BackgroundAlpha"] = 0,
				["_raidCDs_groupPoll_state"] = "inspectPlayer",
				["Custom Abilities"] = {
					["CustomAbilities"] = false,
				},
				["_raidCDs_cdText"] = "                                                             \n\n\n\n\n\n\n\n\n",
				["Show Settings"] = {
					["SortByTimer"] = false,
					["Revival"] = true,
					["Wings"] = true,
					["Soulstone"] = true,
					["Shining"] = true,
					["AuraM"] = true,
					["allCDs"] = true,
					["WShear"] = true,
					["mythicDungeonBattleRezTimer"] = true,
					["allCDs_inRaid"] = true,
					["GSpirit"] = true,
					["Cloak"] = true,
					["allAoECCs"] = false,
					["MindFreeze"] = true,
					["raidBattleRezTimer"] = true,
					["Pummel"] = true,
					["BoP"] = true,
					["Aegis"] = true,
					["SBeam"] = true,
					["Misdirect"] = false,
					["Grip"] = true,
					["Binding"] = true,
					["SBash"] = true,
					["SStrike"] = true,
					["WindRush"] = true,
					["allExterns"] = true,
					["LoH"] = false,
					["allInterrupts"] = false,
					["Sweep"] = true,
					["Tree"] = true,
					["IBark"] = true,
					["WhenSolo"] = true,
					["Barrier"] = true,
					["HTide"] = true,
					["Apotheosis"] = true,
					["AProt"] = true,
					["Rapture"] = true,
					["Tranq"] = true,
					["Ascendance"] = true,
					["allRezzes"] = true,
					["Shadowmeld"] = true,
					["Tricks"] = false,
					["Silence"] = true,
					["Shroud"] = true,
					["Thunderstorm"] = true,
					["Chains"] = true,
					["CShout"] = true,
					["SigilSilence"] = true,
					["Disrupt"] = true,
					["VE"] = true,
					["Stomp"] = true,
					["Rebuke"] = true,
					["Sac"] = true,
					["Nova"] = true,
					["Salvation"] = true,
					["Rebirth"] = true,
					["CapTotem"] = true,
					["Turtle"] = true,
					["Safeguard"] = true,
					["CSpell"] = true,
					["Muzzle"] = true,
					["Ankh"] = true,
					["SpellLock"] = true,
					["Ankh_inRaid"] = true,
					["Flourish"] = true,
					["SLT"] = true,
					["Shadowfury"] = true,
					["Infernal"] = true,
					["CShot"] = true,
					["allImmunityCDs"] = false,
					["PSup"] = true,
					["Hope"] = true,
					["BoPUtility"] = true,
					["Roar"] = true,
					["Block"] = true,
					["allUtility"] = false,
					["Bubble"] = true,
					["RaiseAlly"] = true,
					["LCocoon"] = true,
					["DHymn"] = true,
					["Shockwave"] = true,
					["Grasp"] = true,
					["allUtility_inRaid"] = false,
					["allExterns_inRaid"] = true,
					["AG"] = true,
					["BullRush"] = true,
					["Spellward"] = true,
					["MindBomb"] = true,
					["Ursol"] = true,
					["Typhoon"] = true,
					["ShowEmptySections"] = true,
					["Ring"] = true,
					["Treants"] = true,
					["Kick"] = true,
					["Innervate"] = true,
					["Netherwalk"] = true,
					["Darkness"] = true,
				},
				["_interrupts_warlocks"] = {
					["Cancri"] = {
					},
					["Hydrae"] = {
					},
					["Piscium"] = {
					},
					["Eridani"] = {
					},
				},
				["_utilityCDs_dhs"] = {
					["Viruvius-Hyjal"] = {
					},
					["Killernovish-Ragnaros"] = {
					},
					["Arkysnark-Jaedenar"] = {
					},
					["Patroklos-Spirestone"] = {
					},
					["Jestian-Sargeras"] = {
					},
					["Baffometi-Zul'jin"] = {
					},
					["Valakrist-Dalaran"] = {
					},
					["Skyrondius-Area52"] = {
					},
					["Priisha-EmeraldDream"] = {
					},
					["Abruadh"] = {
					},
					["Disabledvet-Exodar"] = {
					},
					["Daavicchoman-Ragnaros"] = {
					},
					["Illidarlin-Hydraxis"] = {
					},
					["Seneda-Khadgar"] = {
					},
					["Lipopolysacc-Blade'sEdge"] = {
					},
					["Anavel-Runetotem"] = {
					},
					["Oring-Area52"] = {
					},
					["Halloran-Mal'Ganis"] = {
					},
					["Coldstonz-Shandris"] = {
					},
					["Elethorn-Aggramar"] = {
					},
					["Ilydan-Dalaran"] = {
					},
					["Muugettsuu-Azralon"] = {
					},
					["Dhliftz-Frostmourne"] = {
					},
					["Demonhôôf-Barthilas"] = {
					},
					["Talathor-Sentinels"] = {
					},
					["Veilros-EmeraldDream"] = {
					},
					["Grossedgyelf-Mal'Ganis"] = {
					},
					["Seekndestroy-Gundrak"] = {
					},
					["Xenonvipper-Barthilas"] = {
					},
					["Terminoble-Aegwynn"] = {
					},
					["Fettypotter-Area52"] = {
					},
					["Fabrios-Area52"] = {
					},
					["Talidaran-BleedingHollow"] = {
					},
					["Redgrasp-Dalaran"] = {
					},
					["Valafar-Spirestone"] = {
					},
					["Yimodemon-Illidan"] = {
					},
					["Senessara-Saurfang"] = {
					},
					["Shadran-Whisperwind"] = {
					},
					["Reìka-Ravencrest"] = {
					},
					["Máléfícent"] = {
					},
					["Typhlossion-Proudmoore"] = {
					},
					["Ferrilux-Illidan"] = {
					},
					["Donaloira-Azralon"] = {
					},
					["Nunush"] = {
					},
					["Dixracer-Illidan"] = {
					},
					["Narsiza-Azralon"] = {
					},
					["Lorklop-Azralon"] = {
					},
					["Ashamael-Shadowsong"] = {
					},
					["Komurasaki-Thrall"] = {
					},
					["Burntoring-Illidan"] = {
					},
					["Ddeon"] = {
					},
					["Ninegodem-Aegwynn"] = {
					},
					["Anïma-Bloodscalp"] = {
					},
					["Baylat-Dalaran"] = {
					},
					["Karmaic-Caelestrasz"] = {
					},
					["Jhasley-CenarionCircle"] = {
					},
					["Balthorac-Nazjatar"] = {
					},
					["Demoncley-Ragnaros"] = {
					},
					["Deezglaivez-Silvermoon"] = {
					},
					["Gâbrîel-Kael'thas"] = {
					},
					["Phenomenal-Thrall"] = {
					},
					["Dishoeslays-Spirestone"] = {
					},
					["Yukyo-MoonGuard"] = {
					},
					["Scooter-Haomarush"] = {
					},
					["Sahaquiel-Area52"] = {
					},
					["Delinial-Kalecgos"] = {
					},
					["Bloodglaive-Thrall"] = {
					},
					["Feu-EchoIsles"] = {
					},
					["Loominuss-Kael'thas"] = {
					},
					["Shalin-Dragonmaw"] = {
					},
					["Celelerblade-Ysera"] = {
					},
					["Bloodlidan-Barthilas"] = {
					},
					["Quenlee-Dalaran"] = {
					},
					["Felempress-Illidan"] = {
					},
					["Vezina-Kil'jaeden"] = {
					},
					["Alibrio-Kil'jaeden"] = {
					},
					["Danicalo-WyrmrestAccord"] = {
					},
					["Slava-Zul'jin"] = {
					},
					["Oviillidari-Dreadmaul"] = {
					},
					["Noahhp-Azralon"] = {
					},
					["Shadearose-Doomhammer"] = {
					},
					["Topherdaemon-Arthas"] = {
					},
					["Demønnix-Ragnaros"] = {
					},
					["Expktros-Azralon"] = {
					},
					["Phrayl"] = {
					},
					["Dhlove-WyrmrestAccord"] = {
					},
					["Onguàrd-Illidan"] = {
					},
					["Shyvahna-EarthenRing"] = {
					},
					["Myotiz-Ragnaros"] = {
					},
					["Mattdeemoonn-Saurfang"] = {
					},
					["Orllastus-Area52"] = {
					},
					["Trygar-Antonidas"] = {
					},
					["Varyx-CenarionCircle"] = {
					},
					["Fatestalker-WyrmrestAccord"] = {
					},
					["Azsunas-Uldum"] = {
					},
					["Tatianiah-MoonGuard"] = {
					},
					["Manifestó-Drak'Tharon"] = {
					},
					["Forté-Saurfang"] = {
					},
					["Westlee-Quel'dorei"] = {
					},
					["Jrad-Trollbane"] = {
					},
					["Lücifër-Area52"] = {
					},
					["Vyta-Area52"] = {
					},
					["Steelanarchy"] = {
					},
					["Sandregeth"] = {
					},
					["Gimples-Zul'jin"] = {
					},
					["Rågnåroth-Sargeras"] = {
					},
					["Maxdamagedha-Zul'jin"] = {
					},
					["Shiriaz-Drakkari"] = {
					},
					["Xeraxes-Hellscream"] = {
					},
					["Helenkella-Barthilas"] = {
					},
					["Strumpet-Ragnaros"] = {
					},
					["Ashryu-Area52"] = {
					},
					["Sylviana-Zul'jin"] = {
					},
					["Aesdh-Thrall"] = {
					},
					["Nerodomus-Mal'Ganis"] = {
					},
					["Dakira-Caelestrasz"] = {
					},
					["Släyer-Llane"] = {
					},
					["Wyliri-Illidan"] = {
					},
					["Nullandvoid-BleedingHollow"] = {
					},
					["Kakazu-Arthas"] = {
					},
					["Demonation-Proudmoore"] = {
					},
					["Deadpebs-Dawnbringer"] = {
					},
					["Axxaxer-Nagrand"] = {
					},
					["Lothiel-Thrall"] = {
					},
					["Lanrae-Skywall"] = {
					},
					["Vykàn-EmeraldDream"] = {
					},
					["Neøx-Area52"] = {
					},
					["Bawdy-Saurfang"] = {
					},
					["Zaravale-Fizzcrank"] = {
					},
					["Xanissel-EmeraldDream"] = {
					},
					["Edego-Dalaran"] = {
					},
					["Keynasril-BurningBlade"] = {
					},
					["Toxko-Quel'Thalas"] = {
					},
					["Sanllanish"] = {
					},
					["Khutuluun-Illidan"] = {
					},
					["Astaryia-Dalaran"] = {
					},
					["Aoba-Area52"] = {
					},
					["Sarissiah-Dath'Remar"] = {
					},
					["Thacin-Frostmourne"] = {
					},
					["Goobey-Bladefist"] = {
					},
					["Bischh-Illidan"] = {
					},
					["Mathvedis-Antonidas"] = {
					},
					["Ordrodian-Dragonblight"] = {
					},
					["Revdemon-Mal'Ganis"] = {
					},
					["Killiden-BlackDragonflight"] = {
					},
					["Dietzel-Ghostlands"] = {
					},
					["Quiante-Llane"] = {
					},
					["Dhelvo-Azralon"] = {
					},
					["Killamore-Illidan"] = {
					},
					["Kaége"] = {
					},
					["Dhemi"] = {
					},
					["Kaenca-Gallywix"] = {
					},
					["Malicki"] = {
					},
					["Aennieleron-EmeraldDream"] = {
					},
					["Happymonday-Area52"] = {
					},
					["Beowulfz-Zul'jin"] = {
					},
					["Antarae-Eitrigg"] = {
					},
					["Ÿurii-Thrall"] = {
					},
					["Staiphos-BleedingHollow"] = {
					},
					["Rykérr-Illidan"] = {
					},
					["Sundaria-Zul'jin"] = {
					},
					["Ogrrïsh-Shadowmoon"] = {
					},
					["Extrupíciø-Azralon"] = {
					},
					["Talosriker-BleedingHollow"] = {
					},
					["Gorbãg-Bonechewer"] = {
					},
					["Daemaro-WyrmrestAccord"] = {
					},
					["Jamalished-Mal'Ganis"] = {
					},
					["Zacknafeìn-Eldre'Thalas"] = {
					},
					["Heavemealone-Rexxar"] = {
					},
					["Drazziel-Gallywix"] = {
					},
					["Linarilia"] = {
					},
					["Mastema-Turalyon"] = {
					},
					["Mordana-Dath'Remar"] = {
					},
					["Helfurion-WyrmrestAccord"] = {
					},
					["Blüêwåffê-Barthilas"] = {
					},
					["Renaria-Zul'jin"] = {
					},
					["Irÿnah-Goldrinn"] = {
					},
					["Bartheios-Illidan"] = {
					},
					["Serilina-Ragnaros"] = {
					},
					["Hallelujer-EmeraldDream"] = {
					},
					["Grumpylol-Stonemaul"] = {
					},
					["Wutsupninjaz-Blackrock"] = {
					},
					["Notsz"] = {
					},
					["Biranastalan-Runetotem"] = {
					},
					["Insanee-Icecrown"] = {
					},
					["Allucárd-Thrall"] = {
					},
					["Zarellea-Thrall"] = {
					},
					["Sugargliderz-Zul'jin"] = {
					},
					["Tullu-Proudmoore"] = {
					},
					["Poeticblades"] = {
					},
					["Edgyzane-Zul'jin"] = {
					},
					["Cuknwng-Kil'jaeden"] = {
					},
					["Carnivas-Dath'Remar"] = {
					},
					["Felandryt-Azralon"] = {
					},
					["Tonjaln-Illidan"] = {
					},
					["Biari-Ragnaros"] = {
					},
					["Zeira-Dawnbringer"] = {
					},
					["Icygrlsmmr-Mal'Ganis"] = {
					},
					["Guiilhermee-Gallywix"] = {
					},
					["Erodoria-Archimonde"] = {
					},
					["Sevära-Zul'jin"] = {
					},
					["Skipjack-BleedingHollow"] = {
					},
					["Stîles-Thrall"] = {
					},
					["Ekdal-Quel'Thalas"] = {
					},
					["Unprepared-Kalecgos"] = {
					},
					["Felfuryy-BleedingHollow"] = {
					},
					["Spiella-Dalaran"] = {
					},
					["Jandraesta-WyrmrestAccord"] = {
					},
					["Zandemonic-Illidan"] = {
					},
					["Illimatic-Area52"] = {
					},
					["Zyro-Quel'dorei"] = {
					},
					["Xaös"] = {
					},
					["Leyha-Ragnaros"] = {
					},
					["Fillidan-Barthilas"] = {
					},
					["Mordscythe-Whisperwind"] = {
					},
					["Raeger-Barthilas"] = {
					},
					["Azox-Bladefist"] = {
					},
					["Ginsengstrip-Area52"] = {
					},
					["Noelly-WyrmrestAccord"] = {
					},
					["Oakhorn-Magtheridon"] = {
					},
					["Iitylerii-Barthilas"] = {
					},
					["Varynthia-Area52"] = {
					},
					["Tsiatko-Illidan"] = {
					},
					["Blindevil-Frostmourne"] = {
					},
					["Verimaru-Quel'Thalas"] = {
					},
					["Drakkull-Area52"] = {
					},
					["Jåxx-Blackrock"] = {
					},
					["Tehrdh"] = {
					},
					["Desdemon-Barthilas"] = {
					},
					["Melodypond-Akama"] = {
					},
					["Kellivan-Misha"] = {
					},
					["Zénemíg-Icecrown"] = {
					},
					["Ichigovski-Arthas"] = {
					},
					["Bloodyhunter-Muradin"] = {
					},
					["Muddbluud-Area52"] = {
					},
					["Tubi-Stormreaver"] = {
					},
					["Weshanth-Bonechewer"] = {
					},
					["Crepuscule-Proudmoore"] = {
					},
					["Kanobixx"] = {
					},
					["Pitahot-Illidan"] = {
					},
					["Malferas-Quel'dorei"] = {
					},
					["Charizard-Llane"] = {
					},
					["Venralious-Illidan"] = {
					},
					["Myroing-GrizzlyHills"] = {
					},
					["Xenoviã-Uldum"] = {
					},
					["Astaraell-Jubei'Thos"] = {
					},
					["Mélissa-Illidan"] = {
					},
					["Exaltedsin-Hydraxis"] = {
					},
					["Tydrolan-Crushridge"] = {
					},
					["Sylvius-Bronzebeard"] = {
					},
					["Lillestia-Nagrand"] = {
					},
					["Jeanpro-Ragnaros"] = {
					},
					["Baconcookies-Zul'jin"] = {
					},
					["Scelerosus-Area52"] = {
					},
					["Errodar-Khaz'goroth"] = {
					},
					["Furtur-Uther"] = {
					},
					["Zarethos-Quel'Thalas"] = {
					},
					["Katspark-Illidan"] = {
					},
					["Felnid"] = {
					},
					["Apocalypti-Nagrand"] = {
					},
					["Raidaiku-Quel'Thalas"] = {
					},
					["Tikov-Frostmourne"] = {
					},
					["Arran-SteamwheedleCartel"] = {
					},
					["Ceverrous-EmeraldDream"] = {
					},
					["Sadan-Vashj"] = {
					},
					["Itheril-Proudmoore"] = {
					},
					["Dementrixx-Kil'jaeden"] = {
					},
					["Xitenalcrsiz"] = {
					},
					["Azulir-Khaz'goroth"] = {
					},
					["Cayle-Stormscale"] = {
					},
					["Linorra-Mal'Ganis"] = {
					},
					["Sandronys-Nagrand"] = {
					},
					["Vitharr-Nagrand"] = {
					},
					["Xexas-EmeraldDream"] = {
					},
					["Talsar-Thaurissan"] = {
					},
					["Skelth-Azralon"] = {
					},
					["Killadin-Sentinels"] = {
					},
					["Taladrael-Mal'Ganis"] = {
					},
					["Sarynx-BleedingHollow"] = {
					},
					["Andrizzle-Area52"] = {
					},
					["Dreadsoul-Barthilas"] = {
					},
					["Raizoe-EmeraldDream"] = {
					},
					["Helgga-Proudmoore"] = {
					},
					["Weniswrinklz-Skullcrusher"] = {
					},
					["Jhinda-Azralon"] = {
					},
					["Foucault-Durotan"] = {
					},
					["Dalrog-Azshara"] = {
					},
					["Aryaelle-WyrmrestAccord"] = {
					},
					["Ózark-Turalyon"] = {
					},
					["Demonarmor-Galakrond"] = {
					},
					["Dylandh-Mal'Ganis"] = {
					},
					["Garyjai-Illidan"] = {
					},
					["Samanddemon-Thrall"] = {
					},
					["Wongatron-Thaurissan"] = {
					},
					["Dio-Cenarius"] = {
					},
					["Nierrarra-Kil'jaeden"] = {
					},
					["Peendog-Zul'jin"] = {
					},
					["Lumiel-Madoran"] = {
					},
					["Maradu-Barthilas"] = {
					},
					["Kattorii-Thrall"] = {
					},
					["Aoelus"] = {
					},
					["Napkìns"] = {
					},
					["Roothdh-Thrall"] = {
					},
					["Bondagekink-BlackDragonflight"] = {
					},
					["Cursedhearth-Dalaran"] = {
					},
					["Cocaina-Thrall"] = {
					},
					["Giliniar-WyrmrestAccord"] = {
					},
					["Varrance-EmeraldDream"] = {
					},
					["Galari-Cho'gall"] = {
					},
					["Deathanina-Illidan"] = {
					},
					["Hávøx-Kil'jaeden"] = {
					},
					["Thepac-Area52"] = {
					},
					["Lilkatarina-Drakkari"] = {
					},
					["Helenkiller-Eitrigg"] = {
					},
					["Josanh-Frostwolf"] = {
					},
					["Tiar-Ner'zhul"] = {
					},
					["Vhail-MoonGuard"] = {
					},
					["Narsysa-BurningBlade"] = {
					},
					["Thelaron-Azralon"] = {
					},
					["Sugarlade-Illidan"] = {
					},
					["Iradilli-Area52"] = {
					},
					["Criit-Area52"] = {
					},
					["Sizilie-Ragnaros"] = {
					},
					["Tomes-Khaz'goroth"] = {
					},
					["Kaenvëlion-Aman'Thul"] = {
					},
					["Odeon-Garona"] = {
					},
					["Darkkat-Duskwood"] = {
					},
					["Maudite-Azralon"] = {
					},
					["Songvedem-Barthilas"] = {
					},
					["Daramists-Azuremyst"] = {
					},
					["Mikaelaa-Barthilas"] = {
					},
					["Kreyios-Thrall"] = {
					},
					["Tirenia-Eldre'Thalas"] = {
					},
					["Scharnhorst-Perenolde"] = {
					},
					["Fierlia-Aggramar"] = {
					},
					["Kelsari-Mug'thol"] = {
					},
					["Softdemon-WyrmrestAccord"] = {
					},
					["Hashu-Area52"] = {
					},
					["Shiktsu-Gallywix"] = {
					},
					["Dashrush-Barthilas"] = {
					},
					["Ignisly-Ragnaros"] = {
					},
					["Hazaphell-KhazModan"] = {
					},
					["Latissha-Gundrak"] = {
					},
					["Heejin-Azralon"] = {
					},
					["Ranarun-Mal'Ganis"] = {
					},
					["Shandarillan"] = {
					},
					["Héllfire-GrizzlyHills"] = {
					},
					["Tenielin-Thrall"] = {
					},
					["Tyrannik-Kil'jaeden"] = {
					},
					["Xisse-Illidan"] = {
					},
					["Cädeon-Khaz'goroth"] = {
					},
					["Marasai-Barthilas"] = {
					},
					["Saturnine-Korialstrasz"] = {
					},
					["Eastoaklandd"] = {
					},
					["Notaguyuwu-Thrall"] = {
					},
					["Lanthiana-WyrmrestAccord"] = {
					},
					["Náxèt-Vashj"] = {
					},
					["Hadean-Tanaris"] = {
					},
					["Turial-BleedingHollow"] = {
					},
					["Jamongãuuksu-Gallywix"] = {
					},
					["Ozorax-Barthilas"] = {
					},
					["Isboxtwo-Dalaran"] = {
					},
					["Oullah-Dragonblight"] = {
					},
					["Meliadoül-ArgentDawn"] = {
					},
					["Kyauvier"] = {
					},
					["Aedindra-Kil'jaeden"] = {
					},
					["Jackiee-Gorgonnash"] = {
					},
					["Malphâs-Area52"] = {
					},
					["Thêxîllîdâñx-Mal'Ganis"] = {
					},
					["Seneka-Madoran"] = {
					},
					["Àpollyonn-Thrall"] = {
					},
					["Gigantikock-Kil'jaeden"] = {
					},
					["Gojinos-Jubei'Thos"] = {
					},
					["Baemonhunter-Zul'jin"] = {
					},
					["Johnnyveo-Ragnaros"] = {
					},
					["Illigon-Dreadmaul"] = {
					},
					["Calysse-Hellscream"] = {
					},
					["Jøkér-Ravencrest"] = {
					},
					["Valaki-Azralon"] = {
					},
					["Raviena"] = {
					},
					["Cayde-SistersofElune"] = {
					},
					["Valmina-Area52"] = {
					},
					["Khraall-Zul'jin"] = {
					},
					["Selathar-Azralon"] = {
					},
					["Avolgg-Vashj"] = {
					},
					["Areeola-Durotan"] = {
					},
					["Hellenkeller-Malorne"] = {
					},
					["Dualblade-BleedingHollow"] = {
					},
					["Cynari-Nagrand"] = {
					},
					["Ragou-Azralon"] = {
					},
					["Enjoievaline-Illidan"] = {
					},
					["Aellivas-Area52"] = {
					},
					["Sider-Quel'Thalas"] = {
					},
					["Audioslave-Dath'Remar"] = {
					},
					["Lóvèless-Zul'jin"] = {
					},
					["Liraice-Quel'Thalas"] = {
					},
					["Tindrela-Nazgrel"] = {
					},
					["Vyngeance-Stonemaul"] = {
					},
					["Tyestik-Khaz'goroth"] = {
					},
					["Falaci-Sen'jin"] = {
					},
					["Dheyas-Kil'jaeden"] = {
					},
					["Cavebroth-Mal'Ganis"] = {
					},
					["Escanao-Azralon"] = {
					},
					["Edgeelf-Illidan"] = {
					},
					["Logialscope-Barthilas"] = {
					},
					["Ardolin-WyrmrestAccord"] = {
					},
					["Goliathgucci-Barthilas"] = {
					},
					["Turbocliff-Area52"] = {
					},
					["Velassia-Area52"] = {
					},
					["Riddek-Korialstrasz"] = {
					},
					["Mihg-Spirestone"] = {
					},
					["Ulquìorra-Hyjal"] = {
					},
					["Geneviene-Zul'jin"] = {
					},
					["Xanisathria-Dalaran"] = {
					},
					["Caio-Ragnaros"] = {
					},
					["Demognar-Kil'jaeden"] = {
					},
					["Velindrenis-Area52"] = {
					},
					["Havenoname-Dalaran"] = {
					},
					["Azura-Tanaris"] = {
					},
					["Síín-Blackrock"] = {
					},
					["Opsoapyy-Dalaran"] = {
					},
					["Dengja-Illidan"] = {
					},
					["Zaridrela-Saurfang"] = {
					},
					["Ithindor-Thrall"] = {
					},
					["Shyvanå-Proudmoore"] = {
					},
					["Kabloomia-Thrall"] = {
					},
					["Marzana-Ysera"] = {
					},
					["Stonedhunter-Smolderthorn"] = {
					},
					["Fenalda-Anub'arak"] = {
					},
					["Lantherin-Jubei'Thos"] = {
					},
					["Skarab-Barthilas"] = {
					},
					["Devila-Lightbringer"] = {
					},
					["Foxsinban-Firetree"] = {
					},
					["Kabuto-Barthilas"] = {
					},
					["Gorvius-Illidan"] = {
					},
					["Teufeljager-EarthenRing"] = {
					},
					["Sizzledclap-Frostwolf"] = {
					},
					["Lillíth-Lothar"] = {
					},
					["Prac-Frostwolf"] = {
					},
					["Lira-Barthilas"] = {
					},
					["Alkestis-Bloodscalp"] = {
					},
					["Blkdemon-BleedingHollow"] = {
					},
					["Altcoholic-Area52"] = {
					},
					["Barrdrum-Balnazzar"] = {
					},
					["Dârkjester"] = {
					},
					["Scoops-Stonemaul"] = {
					},
					["Edwardz-Thunderhorn"] = {
					},
					["Hellangelz-AeriePeak"] = {
					},
					["Glaveslave-Darkspear"] = {
					},
					["Odensbits-Hyjal"] = {
					},
					["Landrissa-Lightbringer"] = {
					},
					["Demonzhandou-WyrmrestAccord"] = {
					},
					["Wheek-Thrall"] = {
					},
					["Daddyhunter-Blackrock"] = {
					},
					["Khåleesí-Muradin"] = {
					},
					["Enkara-Durotan"] = {
					},
					["Jcilidar-Sen'jin"] = {
					},
					["Ranzane-Khaz'goroth"] = {
					},
					["Kandra-AzjolNerub"] = {
					},
					["Selienissa-Thrall"] = {
					},
					["Lunarel-Maelstrom"] = {
					},
					["Doublejumpop"] = {
					},
					["Andalari-Quel'Thalas"] = {
					},
					["Gwên-Duskwood"] = {
					},
					["Cefas-Area52"] = {
					},
					["Tezriän-Blackhand"] = {
					},
					["Kalena-Exodar"] = {
					},
					["Meridà-Kil'jaeden"] = {
					},
					["Gawds"] = {
					},
					["Scrubbers-Area52"] = {
					},
					["Jojobaggins-Illidan"] = {
					},
					["Notsephiroth-Illidan"] = {
					},
					["Tadabanri-Velen"] = {
					},
					["Baelavel-WyrmrestAccord"] = {
					},
					["Chûck-Kil'jaeden"] = {
					},
					["Mcgriddle-Darkspear"] = {
					},
					["Clanora-MoonGuard"] = {
					},
					["Akires-Kil'jaeden"] = {
					},
					["Nicomoci-Quel'Thalas"] = {
					},
					["Enmìty-KirinTor"] = {
					},
					["Darthgrogus-WyrmrestAccord"] = {
					},
					["Cevethia-Stonemaul"] = {
					},
					["Djpullout-Frostmane"] = {
					},
					["Tyinicus-Hakkar"] = {
					},
					["Kelenov-Hyjal"] = {
					},
					["Thugalug-Barthilas"] = {
					},
					["Lycianthes-Antonidas"] = {
					},
					["Ghostlegion-Gallywix"] = {
					},
					["Vaedya-WyrmrestAccord"] = {
					},
					["Whight-Nagrand"] = {
					},
					["Pikadari-Thrall"] = {
					},
					["Shirtless-Kil'jaeden"] = {
					},
					["Jomes-Illidan"] = {
					},
					["Xkhaleesi-DemonSoul"] = {
					},
					["Mihail-Aggramar"] = {
					},
					["Khazaraz-Azralon"] = {
					},
					["Turbopoop-Area52"] = {
					},
					["Khaicer-Ragnaros"] = {
					},
					["Astrasulza-Lightninghoof"] = {
					},
					["Syldan-Aegwynn"] = {
					},
					["Jadiit-KirinTor"] = {
					},
					["Tallbabigurl-Area52"] = {
					},
					["Udy"] = {
					},
					["Qaztaer-Illidan"] = {
					},
					["Iltara-Malygos"] = {
					},
					["Flagons-Mal'Ganis"] = {
					},
					["Aludemon-Kil'jaeden"] = {
					},
					["Baelx"] = {
					},
					["Agamath-MoonGuard"] = {
					},
					["Bethamy-MoonGuard"] = {
					},
					["Vampyrion-EmeraldDream"] = {
					},
					["Krallox-Illidan"] = {
					},
					["Nedeh-Drakkari"] = {
					},
				},
				["DEBUG_GroupPoll"] = false,
				["DEBUG"] = false,
				["_raidCDs_druids"] = {
					["Cancri"] = {
					},
					["Piscium"] = {
					},
					["Eridani"] = {
					},
					["Hydrae"] = {
					},
				},
				["_raidCDs_timeText"] = "                                                             \n\n\n\n\n\n\n\n\n",
				["_raidCDs_groupPoll"] = 85409.735,
				["minmaxDisplay"] = true,
				["encounterStart"] = false,
				["_raidCDs_textPoll"] = 85410.231,
				["_raidCDs_groupPoll_currentPlayer"] = "Hydrae",
				["_rezCDs_druids"] = {
					["Cancri"] = {
						["Rebirth"] = 85397.475,
					},
					["Hydrae"] = {
						["Rebirth"] = 85394.435,
					},
					["Piscium"] = {
						["Rebirth"] = 85395.452,
					},
					["Eridani"] = {
						["Rebirth"] = 85396.469,
					},
				},
				["instanceDifficulty"] = 17,
				["DEBUG_Engine"] = true,
				["_raidCDs_namesText"] = "                                                          \n|cFF00A2E8Externals               |r\n\n\n|cFF00A2E8Raid CDs               |r\n\n\n|cFF00A2E8Battle Rezzes               |r\n\n",
				["NamesTextLineCount"] = 9,
				["instanceGroupType"] = "raid",
				["instanceType"] = "raid",
				["_externCDs_druids"] = {
					["Cancri"] = {
					},
					["Piscium"] = {
					},
					["Eridani"] = {
					},
					["Hydrae"] = {
					},
				},
				["_utilityCDs_druids"] = {
					["Cancri"] = {
						["Innervate"] = 81745.969,
					},
					["Piscium"] = {
						["Innervate"] = 81743.923,
					},
					["Eridani"] = {
						["Innervate"] = 81744.946,
					},
					["Hydrae"] = {
						["Innervate"] = 81748.02,
					},
				},
				["_interrupts_druids"] = {
					["Cancri"] = {
						["S-Beam"] = 81745.969,
					},
					["Piscium"] = {
						["S-Beam"] = 81743.923,
					},
					["Eridani"] = {
						["S-Beam"] = 81744.946,
					},
					["Hydrae"] = {
						["S-Beam"] = 81748.02,
					},
				},
				["fontSize"] = 13.0158081054688,
				["Translation Settings"] = {
					["itIT"] = {
					},
					["zhTW"] = {
					},
					["esES"] = {
					},
					["ruRU"] = {
					},
					["frFR"] = {
					},
					["deDE"] = {
					},
					["koKR"] = {
					},
					["zhCN"] = {
					},
				},
				["_aoeCCs_druids"] = {
					["Cancri"] = {
						["Typhoon"] = 81745.969,
					},
					["Piscium"] = {
						["Typhoon"] = 81743.923,
					},
					["Eridani"] = {
						["Typhoon"] = 81744.946,
					},
					["Hydrae"] = {
						["Typhoon"] = 81748.02,
					},
				},
				["_raidCDs_groupPoll_playerCounter"] = 1,
			},
		},
		["Replacment Rampage Aura for Frothing Berserker"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"Left Full Power", -- [1]
				"Right Full Power", -- [2]
				"Left FP Cleaver", -- [3]
				"Right FP Cleaver", -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["scale"] = 1,
			["border"] = false,
			["yOffset"] = -1.0159912109375,
			["regionType"] = "group",
			["borderSize"] = 16,
			["selfPoint"] = "BOTTOMLEFT",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["authorOptions"] = {
			},
			["url"] = "https://wago.io/4k_QTWahf/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["borderEdge"] = "None",
			["borderOffset"] = 5,
			["anchorPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["id"] = "Replacment Rampage Aura for Frothing Berserker",
			["internalVersion"] = 29,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "pcELHHC9cbn",
			["borderInset"] = 11,
			["version"] = 3,
			["config"] = {
			},
			["conditions"] = {
			},
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["race"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0.000244140625,
		},
		["FoF3"] = {
			["alpha"] = 1,
			["authorOptions"] = {
			},
			["xOffset"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = -60,
			["anchorPoint"] = "CENTER",
			["conditions"] = {
			},
			["blendMode"] = "BLEND",
			["regionType"] = "texture",
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["useStacks"] = true,
						["auranames"] = {
							"Fingers of Frost", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Fingers of Frost", -- [1]
						},
						["useCount"] = true,
						["buffShowOn"] = "showOnActive",
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["stacksOperator"] = ">=",
						["unit"] = "player",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["countOperator"] = ">=",
						["spellIds"] = {
						},
						["count"] = "3",
						["use_tooltip"] = false,
						["useName"] = true,
						["combineMatches"] = "showLowest",
						["stacks"] = "3",
						["useGroup_count"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["config"] = {
			},
			["internalVersion"] = 29,
			["discrete_rotation"] = 180,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["id"] = "FoF3",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["desaturate"] = false,
			["rotation"] = 138,
			["uid"] = "kUrrD74CHXQ",
			["width"] = 200,
			["texture"] = "450930",
			["height"] = 75,
			["rotate"] = false,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Fingers of Frost",
		},
		["Right FP Cleaver"] = {
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				0.34117647058824, -- [1]
				0.40392156862745, -- [2]
				0.94901960784314, -- [3]
				0.75, -- [4]
			},
			["conditions"] = {
			},
			["xOffset"] = 145,
			["authorOptions"] = {
			},
			["mirror"] = true,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "Replacment Rampage Aura for Frothing Berserker",
			["blendMode"] = "BLEND",
			["regionType"] = "texture",
			["rotation"] = 0,
			["url"] = "https://wago.io/4k_QTWahf/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["powertype"] = 1,
						["use_powertype"] = true,
						["custom_hide"] = "timed",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["event"] = "Power",
						["use_percentpower"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["spellIds"] = {
						},
						["unit"] = "player",
						["use_requirePowerType"] = false,
						["debuffType"] = "HELPFUL",
						["percentpower"] = "100",
						["percentpower_operator"] = "==",
					},
					["untrigger"] = {
						["use_unit"] = true,
						["unit"] = "player",
						["use_powertype"] = false,
						["use_percentpower"] = false,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnActive",
						["custom_hide"] = "timed",
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"Meat Cleaver", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["texture"] = "Textures\\SpellActivationOverlays\\Raging_Blow",
			["internalVersion"] = 29,
			["config"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "grow",
					["easeStrength"] = 3,
				},
				["main"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "pulse",
					["easeStrength"] = 3,
				},
				["finish"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "grow",
					["easeStrength"] = 3,
				},
			},
			["id"] = "Right FP Cleaver",
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 173,
			["discrete_rotation"] = 180,
			["uid"] = "DHf7TNTSJiy",
			["version"] = 3,
			["alpha"] = 1,
			["height"] = 305,
			["rotate"] = true,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 14,
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
			},
			["desaturate"] = true,
		},
		["RaidCDs_GroupPoll"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "%c",
			["customText"] = "function ()\n    \n    local parentName = WeakAurasSaved.displays[WeakAuras.regions[aura_env.id].region:GetParent().id]\n    if (parentName[\"TehrsRaidCDs\"] == nil) then parentName[\"TehrsRaidCDs\"] = {} end    \n    if (parentName[\"TehrsRaidCDs\"][\"Show Settings\"] == nil) then parentName[\"TehrsRaidCDs\"][\"Show Settings\"] = {} end\n    if (parentName[\"TehrsRaidCDs\"][\"Custom Abilities\"] == nil) then parentName[\"TehrsRaidCDs\"][\"Custom Abilities\"] = {} end    \n    local TehrsCDs = parentName[\"TehrsRaidCDs\"]    \n    \n    aura_env.pollRate = aura_env.pollRate or 2    \n    if (TehrsCDs._raidCDs_groupPoll == nil) then TehrsCDs._raidCDs_groupPoll = GetTime() if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: poll time is nil, setting poll start time\") end end        \n    if (GetTime() - TehrsCDs._raidCDs_groupPoll < aura_env.pollRate) then return \"\" end\n    \n    TehrsCDs._raidCDs_groupPoll = GetTime();\n    \n    if (InspectFrame ~= nil and InspectFrame:IsShown()) then if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: inspecting someone, ABORT\") end return \"\" end\n    \n    if (TehrsCDs._raidCDs_groupPoll_state == nil) then TehrsCDs._raidCDs_groupPoll_state = \"nextPlayer\" if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: state is nil, moving to nextPlayer\") end end\n    if (TehrsCDs._raidCDs_groupPoll_playerCounter == nil) then TehrsCDs._raidCDs_groupPoll_playerCounter = 0 if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: playerCounter is nil, setting to 0\") end end\n    \n    local playerCount = GetNumGroupMembers();\n    local _, _, _, _, maxPlayers = GetInstanceInfo();\n    local _, instanceType = IsInInstance();\n    \n    if (instanceType ~= \"none\") then\n        playerCount = math.min(playerCount, maxPlayers);\n        if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: in an instance, setting playerCount\") end\n    end    \n    \n    if (TehrsCDs._raidCDs_groupPoll_state==\"pause\") then\n        return \"\"\n    end\n    \n    if (TehrsCDs._raidCDs_groupPoll_state==\"inspectPlayer\") then   \n        \n        if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: state is inspectPlayer\") end\n        \n        local playerName = TehrsCDs._raidCDs_groupPoll_currentPlayer\n        \n        if (not UnitInParty(\"player\")) and (TehrsCDs._raidCDs_groupPoll_currentPlayer ~= UnitName(\"player\")) then\n            playerName = UnitName(\"player\")\n            if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: not in party and currentPlayer ~= player, setting playerName to player\") end\n        end\n        \n        if (not UnitInParty(playerName)) and playerName ~= UnitName(\"player\") then\n            if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: not in party and playerName ~= player, moving to nextPlayer\") end\n            TehrsCDs._raidCDs_groupPoll_state = \"nextPlayer\";            \n            return \"\";\n        end\n        \n        local isPlayer = (playerName == UnitName(\"player\"));\n        local spec;\n        local specName; \n        \n        if (isPlayer) then         \n            spec = GetSpecialization();          \n        else\n            spec = GetInspectSpecialization(playerName);      \n        end        \n        \n        if (spec == nil) then\n            if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: spec is nil\") end\n            TehrsCDs._raidCDs_groupPoll_state = \"nextPlayer\";\n            return \"\";\n        end        \n        \n        if(isPlayer) then\n            specName = GetSpecializationInfo(spec);\n        else\n            local role = GetSpecializationRoleByID(spec);\n            if(role ~= nil) then\n                specName = GetSpecializationInfoByID(spec);\n            end            \n        end       \n        \n        local _, race = UnitRace(playerName)\n        local _, _, class = UnitClass(playerName); \n        local activeSpec  = GetActiveSpecGroup(not isPlayer);        \n        \n        if (specName == nil) then\n            if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: specName is nil\") end\n            TehrsCDs._raidCDs_groupPoll_state = \"nextPlayer\";\n            return \"\";\n        end\n        \n        if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: set inspected player data, adding CDs\") end\n        \n        --[[ if (race == \"BloodElf\") then\n            if TehrsCDs[\"Show Settings\"].Torrent then\n                if (TehrsCDs._interrupts_belfs == nil) then TehrsCDs._interrupts_belfs = {} end\n                if (TehrsCDs._interrupts_belfs[playerName] == nil) then TehrsCDs._interrupts_belfs[playerName] = {} end        \n                \n                if (TehrsCDs._interrupts_belfs[playerName][\"Torrent\"] == nil) then\n                    TehrsCDs._interrupts_belfs[playerName][\"Torrent\"] = GetTime();\n                end  \n            end            \n            if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: Added Blood Elf CD\") end\n        else\n        \n        Arcane Torrent isn't an interrupt anymore! Holding onto this until I add dispels.\n        ]]\n        \n        if (race == \"Tauren\") then\n            if TehrsCDs[\"Show Settings\"].Stomp then\n                if (TehrsCDs._aoeCCs_tauren == nil) then TehrsCDs._aoeCCs_tauren = {} end\n                if (TehrsCDs._aoeCCs_tauren[playerName] == nil) then TehrsCDs._aoeCCs_tauren[playerName] = {} end        \n                \n                if (TehrsCDs._aoeCCs_tauren[playerName][\"Stomp\"] == nil) then\n                    TehrsCDs._aoeCCs_tauren[playerName][\"Stomp\"] = GetTime();            \n                end\n            end\n            if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: Added Tauren CD\") end\n        elseif (race == \"HighmountainTauren\") then\n            if TehrsCDs[\"Show Settings\"].BullRush then\n                if (TehrsCDs._aoeCCs_hmtauren == nil) then TehrsCDs._aoeCCs_hmtauren = {} end\n                if (TehrsCDs._aoeCCs_hmtauren[playerName] == nil) then TehrsCDs._aoeCCs_hmtauren[playerName] = {} end        \n                \n                if (TehrsCDs._aoeCCs_hmtauren[playerName][\"Bull Rush\"] == nil) then\n                    TehrsCDs._aoeCCs_hmtauren[playerName][\"Bull Rush\"] = GetTime();            \n                end\n            end\n            if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: Added Highmountain Tauren CD\") end            \n        elseif (race == \"NightElf\") then\n            if TehrsCDs[\"Show Settings\"].Shadowmeld then\n                if (TehrsCDs._utilityCDs_nightelf == nil) then TehrsCDs._utilityCDs_nightelf = {} end\n                if (TehrsCDs._utilityCDs_nightelf[playerName] == nil) then TehrsCDs._utilityCDs_nightelf[playerName] = {} end        \n                \n                if (TehrsCDs._utilityCDs_nightelf[playerName][\"Shadowmeld\"] == nil) then\n                    TehrsCDs._utilityCDs_nightelf[playerName][\"Shadowmeld\"] = GetTime();            \n                end\n            end\n            if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: Added Night Elf CD\") end                \n        end\n        \n        if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: Races completed\") end\n        \n        if (class == 1) then\n            if (TehrsCDs._raidCDs_warriors == nil) then TehrsCDs._raidCDs_warriors = {} end\n            if (TehrsCDs._raidCDs_warriors[playerName] == nil) then TehrsCDs._raidCDs_warriors[playerName] = {} end\n            if (TehrsCDs._externCDs_warriors == nil) then TehrsCDs._externCDs_warriors = {} end\n            if (TehrsCDs._externCDs_warriors[playerName] == nil) then TehrsCDs._externCDs_warriors[playerName] = {} end\n            if (TehrsCDs._interrupts_warriors == nil) then TehrsCDs._interrupts_warriors = {} end\n            if (TehrsCDs._interrupts_warriors[playerName] == nil) then TehrsCDs._interrupts_warriors[playerName] = {} end\n            if (TehrsCDs._aoeCCs_warriors == nil) then TehrsCDs._aoeCCs_warriors = {} end\n            if (TehrsCDs._aoeCCs_warriors[playerName] == nil) then TehrsCDs._aoeCCs_warriors[playerName] = {} end            \n            \n            if TehrsCDs[\"Show Settings\"].Pummel then\n                if (TehrsCDs._interrupts_warriors[playerName][\"Pummel\"] == nil) then\n                    TehrsCDs._interrupts_warriors[playerName][\"Pummel\"] = GetTime();\n                end\n            end\n            if TehrsCDs[\"Show Settings\"].CShout then\n                if (TehrsCDs._raidCDs_warriors[playerName][\"R-Cry\"] == nil) then\n                    TehrsCDs._raidCDs_warriors[playerName][\"R-Cry\"] = GetTime();\n                end       \n            end            \n            \n            if (specName == 73) then\n                local _, _, _, safeguardSpecced = GetTalentInfo(2, 3, activeSpec, not isPlayer, playerName);            \n                if (safeguardSpecced) then\n                    if TehrsCDs[\"Show Settings\"].Safeguard then\n                        if (TehrsCDs._externCDs_warriors[playerName][\"Safeguard\"] == nil) then\n                            TehrsCDs._externCDs_warriors[playerName][\"Safeguard\"] = GetTime();\n                        end    \n                    end    \n                else\n                    TehrsCDs._externCDs_warriors[playerName][\"Safeguard\"] = nil;\n                end   \n                local _, _, _, shockwaveSpecced = GetTalentInfo(5, 2, activeSpec, not isPlayer, playerName);  \n                if (shockwaveSpecced) then     \n                    if TehrsCDs[\"Show Settings\"].Shockwave then\n                        if (TehrsCDs._aoeCCs_warriors[playerName][\"Shockwave+\"] == nil) then\n                            TehrsCDs._aoeCCs_warriors[playerName][\"Shockwave+\"] = GetTime();\n                        end    \n                    end\n                    TehrsCDs._aoeCCs_warriors[playerName][\"Shockwave\"] = nil;                    \n                else\n                    if TehrsCDs[\"Show Settings\"].Shockwave then\n                        if (TehrsCDs._aoeCCs_warriors[playerName][\"Shockwave\"] == nil) then\n                            TehrsCDs._aoeCCs_warriors[playerName][\"Shockwave\"] = GetTime();\n                        end    \n                    end\n                    TehrsCDs._aoeCCs_warriors[playerName][\"Shockwave+\"] = nil;\n                end                   \n            else       \n                TehrsCDs._aoeCCs_warriors[playerName][\"Shockwave\"] = nil;\n                TehrsCDs._aoeCCs_warriors[playerName][\"Shockwave+\"] = nil;\n                TehrsCDs._externCDs_warriors[playerName][\"Safeguard\"] = nil;   \n            end\n            \n            if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: Added Warrior CDs\") end\n        elseif (class == 5) then\n            if (TehrsCDs._raidCDs_priests == nil) then TehrsCDs._raidCDs_priests = {} end\n            if (TehrsCDs._raidCDs_priests[playerName] == nil) then TehrsCDs._raidCDs_priests[playerName] = {} end\n            if (TehrsCDs._externCDs_priests == nil) then TehrsCDs._externCDs_priests = {} end\n            if (TehrsCDs._externCDs_priests[playerName] == nil) then TehrsCDs._externCDs_priests[playerName] = {} end\n            if (TehrsCDs._interrupts_priests == nil) then TehrsCDs._interrupts_priests = {} end\n            if (TehrsCDs._interrupts_priests[playerName] == nil) then TehrsCDs._interrupts_priests[playerName] = {} end\n            if (TehrsCDs._utilityCDs_priests == nil) then TehrsCDs._utilityCDs_priests = {} end\n            if (TehrsCDs._utilityCDs_priests[playerName] == nil) then TehrsCDs._utilityCDs_priests[playerName] = {} end    \n            if (TehrsCDs._aoeCCs_priests == nil) then TehrsCDs._aoeCCs_priests = {} end\n            if (TehrsCDs._aoeCCs_priests[playerName] == nil) then TehrsCDs._aoeCCs_priests[playerName] = {} end            \n            \n            if TehrsCDs[\"Show Settings\"].Grip then\n                if (TehrsCDs._utilityCDs_priests[playerName][\"Grip\"] == nil) then\n                    TehrsCDs._utilityCDs_priests[playerName][\"Grip\"] = GetTime();\n                end    \n            end            \n            \n            if (specName == 257) then\n                if TehrsCDs[\"Show Settings\"].Hope then\n                    if (TehrsCDs._utilityCDs_priests[playerName][\"Hope\"] == nil) then\n                        TehrsCDs._utilityCDs_priests[playerName][\"Hope\"] = GetTime();\n                    end          \n                end\n                local _, _, _, shiningSpecced = GetTalentInfo(4, 3, activeSpec, not isPlayer, playerName);  \n                if (shiningSpecced) then  \n                    if TehrsCDs[\"Show Settings\"].Shining then\n                        if (TehrsCDs._aoeCCs_priests[playerName][\"Shining\"] == nil) then\n                            TehrsCDs._aoeCCs_priests[playerName][\"Shining\"] = GetTime();\n                        end          \n                    end\n                else\n                    TehrsCDs._aoeCCs_priests[playerName][\"Shining\"] = nil;\n                end                \n                local _, _, _, salvationSpecced = GetTalentInfo(7, 3, activeSpec, not isPlayer, playerName);  \n                if (salvationSpecced) then  \n                    if TehrsCDs[\"Show Settings\"].Salvation then\n                        if (TehrsCDs._raidCDs_priests[playerName][\"Salvation\"] == nil) then\n                            TehrsCDs._raidCDs_priests[playerName][\"Salvation\"] = GetTime();\n                        end          \n                    end\n                else\n                    TehrsCDs._raidCDs_priests[playerName][\"Salvation\"] = nil;\n                end    \n                local _, _, _, apotheosisSpecced = GetTalentInfo(7, 2, activeSpec, not isPlayer, playerName);  \n                if (apotheosisSpecced) then  \n                    if TehrsCDs[\"Show Settings\"].Apotheosis then\n                        if (TehrsCDs._raidCDs_priests[playerName][\"Apotheosis\"] == nil) then\n                            TehrsCDs._raidCDs_priests[playerName][\"Apotheosis\"] = GetTime();\n                        end          \n                    end\n                else\n                    TehrsCDs._raidCDs_priests[playerName][\"Apotheosis\"] = nil;\n                end                    \n                local _, _, _, guardianAngelSpecced = GetTalentInfo(3, 2, activeSpec, not isPlayer, playerName);  \n                if (guardianAngelSpecced) then     \n                    if TehrsCDs[\"Show Settings\"].GSpirit then\n                        if (TehrsCDs._externCDs_priests[playerName][\"G-Spirit+\"] == nil) then\n                            TehrsCDs._externCDs_priests[playerName][\"G-Spirit+\"] = GetTime();\n                        end    \n                    end\n                    TehrsCDs._externCDs_priests[playerName][\"G-Spirit\"] = nil;                    \n                else\n                    if TehrsCDs[\"Show Settings\"].GSpirit then\n                        if (TehrsCDs._externCDs_priests[playerName][\"G-Spirit\"] == nil) then\n                            TehrsCDs._externCDs_priests[playerName][\"G-Spirit\"] = GetTime();\n                        end    \n                    end\n                    TehrsCDs._externCDs_priests[playerName][\"G-Spirit+\"] = nil;\n                end   \n                if TehrsCDs[\"Show Settings\"].DHymn then\n                    if (TehrsCDs._raidCDs_priests[playerName][\"D-Hymn\"] == nil) then\n                        TehrsCDs._raidCDs_priests[playerName][\"D-Hymn\"] = GetTime();\n                    end \n                end\n                TehrsCDs._interrupts_priests[playerName][\"Silence\"] = nil;\n                TehrsCDs._interrupts_priests[playerName][\"Silence+\"] = nil;\n                TehrsCDs._raidCDs_priests[playerName][\"Rapture\"] = nil;\n                TehrsCDs._raidCDs_priests[playerName][\"VE\"] = nil;  \n                TehrsCDs._raidCDs_priests[playerName][\"VE+\"] = nil;  \n                TehrsCDs._raidCDs_priests[playerName][\"Barrier\"] = nil;\n                TehrsCDs._raidCDs_priests[playerName][\"Barrier+\"] = nil;\n                TehrsCDs._externCDs_priests[playerName][\"P-Sup\"] = nil;\n                TehrsCDs._aoeCCs_priests[playerName][\"Mind Bomb\"] = nil;                \n            elseif (specName == 256) then    \n                local _, _, _, shiningSpecced = GetTalentInfo(4, 3, activeSpec, not isPlayer, playerName);  \n                if (shiningSpecced) then  \n                    if TehrsCDs[\"Show Settings\"].Shining then\n                        if (TehrsCDs._aoeCCs_priests[playerName][\"Shining\"] == nil) then\n                            TehrsCDs._aoeCCs_priests[playerName][\"Shining\"] = GetTime();\n                        end          \n                    end\n                else\n                    TehrsCDs._aoeCCs_priests[playerName][\"Shining\"] = nil;\n                end                    \n                local _, _, _,barrierSpecced = GetTalentInfo(7, 2, activeSpec, not isPlayer, playerName);  \n                if (barrierSpecced) then     \n                    if TehrsCDs[\"Show Settings\"].VE then\n                        if (TehrsCDs._raidCDs_priests[playerName][\"Barrier+\"] == nil) then\n                            TehrsCDs._raidCDs_priests[playerName][\"Barrier+\"] = GetTime();\n                        end    \n                    end\n                    TehrsCDs._raidCDs_priests[playerName][\"Barrier\"] = nil;                    \n                else\n                    if TehrsCDs[\"Show Settings\"].VE then\n                        if (TehrsCDs._raidCDs_priests[playerName][\"Barrier\"] == nil) then\n                            TehrsCDs._raidCDs_priests[playerName][\"Barrier\"] = GetTime();\n                        end    \n                    end\n                    TehrsCDs._raidCDs_priests[playerName][\"Barrier+\"] = nil;\n                end  \n                if TehrsCDs[\"Show Settings\"].Rapture then\n                    if (TehrsCDs._raidCDs_priests[playerName][\"Rapture\"] == nil) then\n                        TehrsCDs._raidCDs_priests[playerName][\"Rapture\"] = GetTime();\n                    end    \n                end        \n                if TehrsCDs[\"Show Settings\"].PSup then\n                    if (TehrsCDs._externCDs_priests[playerName][\"P-Sup\"] == nil) then\n                        TehrsCDs._externCDs_priests[playerName][\"P-Sup\"] = GetTime();\n                    end    \n                end                \n                TehrsCDs._interrupts_priests[playerName][\"Silence\"] = nil;\n                TehrsCDs._interrupts_priests[playerName][\"Silence+\"] = nil;\n                TehrsCDs._raidCDs_priests[playerName][\"VE\"] = nil;  \n                TehrsCDs._raidCDs_priests[playerName][\"VE+\"] = nil;  \n                TehrsCDs._raidCDs_priests[playerName][\"D-Hymn\"] = nil;\n                TehrsCDs._raidCDs_priests[playerName][\"Apotheosis\"] = nil;\n                TehrsCDs._raidCDs_priests[playerName][\"Salvation\"] = nil;\n                TehrsCDs._externCDs_priests[playerName][\"G-Spirit+\"] = nil;\n                TehrsCDs._externCDs_priests[playerName][\"G-Spirit\"] = nil;\n                TehrsCDs._utilityCDs_priests[playerName][\"Hope\"] = nil;\n                TehrsCDs._aoeCCs_priests[playerName][\"Mind Bomb\"] = nil;\n            elseif (specName == 258) then\n                local _, _, _, veSpecced = GetTalentInfo(2, 2, activeSpec, not isPlayer, playerName);  \n                if (veSpecced) then     \n                    if TehrsCDs[\"Show Settings\"].VE then\n                        if (TehrsCDs._raidCDs_priests[playerName][\"VE+\"] == nil) then\n                            TehrsCDs._raidCDs_priests[playerName][\"VE+\"] = GetTime();\n                        end    \n                    end\n                    TehrsCDs._raidCDs_priests[playerName][\"VE\"] = nil;                    \n                else\n                    if TehrsCDs[\"Show Settings\"].VE then\n                        if (TehrsCDs._raidCDs_priests[playerName][\"VE\"] == nil) then\n                            TehrsCDs._raidCDs_priests[playerName][\"VE\"] = GetTime();\n                        end    \n                    end\n                    TehrsCDs._raidCDs_priests[playerName][\"VE+\"] = nil;\n                end  \n                local _, _, _, silenceSpecced = GetTalentInfo(4, 1, activeSpec, not isPlayer, playerName);  \n                if (silenceSpecced) then     \n                    if TehrsCDs[\"Show Settings\"].Silence then\n                        if (TehrsCDs._interrupts_priests[playerName][\"Silence+\"] == nil) then\n                            TehrsCDs._interrupts_priests[playerName][\"Silence+\"] = GetTime();\n                        end    \n                    end\n                    TehrsCDs._interrupts_priests[playerName][\"Silence\"] = nil;                    \n                else\n                    if TehrsCDs[\"Show Settings\"].Silence then\n                        if (TehrsCDs._interrupts_priests[playerName][\"Silence\"] == nil) then\n                            TehrsCDs._interrupts_priests[playerName][\"Silence\"] = GetTime();\n                        end    \n                    end\n                    TehrsCDs._interrupts_priests[playerName][\"Silence+\"] = nil;\n                end                  \n                local _, _, _, mindBombSpecced = GetTalentInfo(4, 2, activeSpec, not isPlayer, playerName);  \n                if (mindBombSpecced) then                \n                    if TehrsCDs[\"Show Settings\"].MindBomb then\n                        if (TehrsCDs._aoeCCs_priests[playerName][\"Mind Bomb\"] == nil) then\n                            TehrsCDs._aoeCCs_priests[playerName][\"Mind Bomb\"] = GetTime();\n                        end\n                    end\n                else\n                    TehrsCDs._aoeCCs_priests[playerName][\"Mind Bomb\"] = nil;\n                end   \n                TehrsCDs._aoeCCs_priests[playerName][\"Shining\"] = nil;\n                TehrsCDs._raidCDs_priests[playerName][\"Rapture\"] = nil;\n                TehrsCDs._raidCDs_priests[playerName][\"Barrier\"] = nil;\n                TehrsCDs._raidCDs_priests[playerName][\"Barrier+\"] = nil;\n                TehrsCDs._raidCDs_priests[playerName][\"D-Hymn\"] = nil;   \n                TehrsCDs._raidCDs_priests[playerName][\"Apotheosis\"] = nil;\n                TehrsCDs._raidCDs_priests[playerName][\"Salvation\"] = nil;\n                TehrsCDs._externCDs_priests[playerName][\"G-Spirit+\"] = nil;\n                TehrsCDs._externCDs_priests[playerName][\"P-Sup\"] = nil;                \n                TehrsCDs._externCDs_priests[playerName][\"G-Spirit\"] = nil;\n                TehrsCDs._utilityCDs_priests[playerName][\"Hope\"] = nil;                \n            end\n            \n            if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: Added Priest CDs\") end\n        elseif (class == 12) then\n            if (TehrsCDs._raidCDs_dhs == nil) then TehrsCDs._raidCDs_dhs = {} end\n            if (TehrsCDs._raidCDs_dhs[playerName] == nil) then TehrsCDs._raidCDs_dhs[playerName] = {} end\n            if (TehrsCDs._externCDs_dhs == nil) then TehrsCDs._externCDs_dhs = {} end\n            if (TehrsCDs._externCDs_dhs[playerName] == nil) then TehrsCDs._externCDs_dhs[playerName] = {} end\n            if (TehrsCDs._interrupts_dhs == nil) then TehrsCDs._interrupts_dhs = {} end\n            if (TehrsCDs._interrupts_dhs[playerName] == nil) then TehrsCDs._interrupts_dhs[playerName] = {} end\n            if (TehrsCDs._utilityCDs_dhs == nil) then TehrsCDs._utilityCDs_dhs = {} end\n            if (TehrsCDs._utilityCDs_dhs[playerName] == nil) then TehrsCDs._utilityCDs_dhs[playerName] = {} end       \n            if (TehrsCDs._aoeCCs_dhs == nil) then TehrsCDs._aoeCCs_dhs = {} end\n            if (TehrsCDs._aoeCCs_dhs[playerName] == nil) then TehrsCDs._aoeCCs_dhs[playerName] = {} end\n            if (TehrsCDs._immunityCDs_dhs == nil) then TehrsCDs._immunityCDs_dhs = {} end\n            if (TehrsCDs._immunityCDs_dhs[playerName] == nil) then TehrsCDs._immunityCDs_dhs[playerName] = {} end                 \n            \n            if TehrsCDs[\"Show Settings\"].Disrupt then\n                if (TehrsCDs._interrupts_dhs[playerName][\"Disrupt\"] == nil) then\n                    TehrsCDs._interrupts_dhs[playerName][\"Disrupt\"] = GetTime();\n                end     \n            end\n            \n            if (specName == 581) then        \n                local _, _, _, chainsSpecced = GetTalentInfo(5, 3, activeSpec, not isPlayer, playerName);  \n                if (chainsSpecced)then      \n                    if TehrsCDs[\"Show Settings\"].Chains then\n                        if (TehrsCDs._aoeCCs_dhs[playerName][\"Chains\"] == nil) then\n                            TehrsCDs._aoeCCs_dhs[playerName][\"Chains\"] = GetTime();\n                        end  \n                    end\n                else\n                    TehrsCDs._aoeCCs_dhs[playerName][\"Chains\"] = nil;                    \n                end \n                local _, _, _, improvedSilenceSpecced = GetTalentInfo(5, 2, activeSpec, not isPlayer, playerName);  \n                if (improvedSilenceSpecced)then   \n                    if TehrsCDs[\"Show Settings\"].SigilSilence then\n                        if (TehrsCDs._interrupts_dhs[playerName][\"S-Silence+\"] == nil) then\n                            TehrsCDs._interrupts_dhs[playerName][\"S-Silence+\"] = GetTime();\n                        end  \n                    end\n                    TehrsCDs._interrupts_dhs[playerName][\"S-Silence\"] = nil;   \n                else\n                    if TehrsCDs[\"Show Settings\"].SigilSilence then\n                        if (TehrsCDs._interrupts_dhs[playerName][\"S-Silence\"] == nil) then\n                            TehrsCDs._interrupts_dhs[playerName][\"S-Silence\"] = GetTime();\n                        end  \n                    end\n                    TehrsCDs._interrupts_dhs[playerName][\"S-Silence+\"] = nil;                      \n                end \n                TehrsCDs._raidCDs_dhs[playerName][\"Darkness\"] = nil\n                TehrsCDs._aoeCCs_dhs[playerName][\"Nova\"] = nil;          \n                TehrsCDs._aoeCCs_dhs[playerName][\"Nova+\"] = nil; \n                TehrsCDs._immunityCDs_dhs[playerName][\"Netherwalk\"] = nil;\n            elseif (specName == 577) then\n                local _, _, _, improvedNovaSpecced = GetTalentInfo(6, 1, activeSpec, not isPlayer, playerName);  \n                if (improvedNovaSpecced)then   \n                    if TehrsCDs[\"Show Settings\"].Nova then\n                        if (TehrsCDs._aoeCCs_dhs[playerName][\"Nova+\"] == nil) then\n                            TehrsCDs._aoeCCs_dhs[playerName][\"Nova+\"] = GetTime();\n                        end  \n                    end\n                    TehrsCDs._aoeCCs_dhs[playerName][\"Nova\"] = nil;   \n                else\n                    if TehrsCDs[\"Show Settings\"].Nova then\n                        if (TehrsCDs._aoeCCs_dhs[playerName][\"Nova\"] == nil) then\n                            TehrsCDs._aoeCCs_dhs[playerName][\"Nova\"] = GetTime();\n                        end  \n                    end\n                    TehrsCDs._aoeCCs_dhs[playerName][\"Nova+\"] = nil;                      \n                end \n                local _, _, _, netherwalkSpecced = GetTalentInfo(4, 3, activeSpec, not isPlayer, playerName);  \n                if (netherwalkSpecced)then  \n                    if TehrsCDs[\"Show Settings\"].Netherwalk then\n                        if (TehrsCDs._immunityCDs_dhs[playerName][\"Netherwalk\"] == nil) then\n                            TehrsCDs._immunityCDs_dhs[playerName][\"Netherwalk\"] = GetTime(); \n                        end\n                    end\n                else  \n                    TehrsCDs._immunityCDs_dhs[playerName][\"Netherwalk\"] = nil; \n                end     \n                if TehrsCDs[\"Show Settings\"].Darkness then\n                    if (TehrsCDs._raidCDs_dhs[playerName][\"Darkness\"] == nil) then\n                        TehrsCDs._raidCDs_dhs[playerName][\"Darkness\"] = GetTime();\n                    end \n                end\n                TehrsCDs._aoeCCs_dhs[playerName][\"Chains\"] = nil;    \n                TehrsCDs._interrupts_dhs[playerName][\"S-Silence+\"] = nil;\n                TehrsCDs._interrupts_dhs[playerName][\"S-Silence\"] = nil;\n            end\n            \n            if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: Added DH CDs\") end\n        elseif (class == 11) then\n            if (TehrsCDs._raidCDs_druids == nil) then TehrsCDs._raidCDs_druids = {} end\n            if (TehrsCDs._raidCDs_druids[playerName] == nil) then TehrsCDs._raidCDs_druids[playerName] = {} end\n            if (TehrsCDs._externCDs_druids == nil) then TehrsCDs._externCDs_druids = {} end\n            if (TehrsCDs._externCDs_druids[playerName] == nil) then TehrsCDs._externCDs_druids[playerName] = {} end\n            if (TehrsCDs._interrupts_druids == nil) then TehrsCDs._interrupts_druids = {} end\n            if (TehrsCDs._interrupts_druids[playerName] == nil) then TehrsCDs._interrupts_druids[playerName] = {} end\n            if (TehrsCDs._utilityCDs_druids == nil) then TehrsCDs._utilityCDs_druids = {} end\n            if (TehrsCDs._utilityCDs_druids[playerName] == nil) then TehrsCDs._utilityCDs_druids[playerName] = {} end     \n            if (TehrsCDs._rezCDs_druids == nil) then TehrsCDs._rezCDs_druids = {} end\n            if (TehrsCDs._rezCDs_druids[playerName] == nil) then TehrsCDs._rezCDs_druids[playerName] = {} end  \n            if (TehrsCDs._aoeCCs_druids == nil) then TehrsCDs._aoeCCs_druids = {} end\n            if (TehrsCDs._aoeCCs_druids[playerName] == nil) then TehrsCDs._aoeCCs_druids[playerName] = {} end            \n            \n            if TehrsCDs[\"Show Settings\"].Rebirth then\n                if (TehrsCDs._rezCDs_druids[playerName][\"Rebirth\"] == nil) then\n                    TehrsCDs._rezCDs_druids[playerName][\"Rebirth\"] = GetTime();\n                end    \n            end\n            \n            local _, _, _, typhoonSpecced = GetTalentInfo(4, 3, activeSpec, not isPlayer, playerName); \n            if (typhoonSpecced)then\n                if TehrsCDs[\"Show Settings\"].Typhoon then \n                    if (TehrsCDs._aoeCCs_druids[playerName][\"Typhoon\"] == nil) then\n                        TehrsCDs._aoeCCs_druids[playerName][\"Typhoon\"] = GetTime();\n                    end \n                end        \n            else\n                TehrsCDs._aoeCCs_druids[playerName][\"Typhoon\"] = nil; \n            end            \n            \n            if (specName == 105) then\n                local _, _, _, innerPeaceSpecced = GetTalentInfo(6, 1, activeSpec, not isPlayer, playerName);  \n                if (innerPeaceSpecced) then                \n                    if TehrsCDs[\"Show Settings\"].Tranq then\n                        if (TehrsCDs._raidCDs_druids[playerName][\"Tranq+\"] == nil) then\n                            TehrsCDs._raidCDs_druids[playerName][\"Tranq+\"] = GetTime();\n                        end  \n                    end\n                    TehrsCDs._raidCDs_druids[playerName][\"Tranq\"] = nil;                        \n                else\n                    if TehrsCDs[\"Show Settings\"].Tranq then\n                        if (TehrsCDs._raidCDs_druids[playerName][\"Tranq\"] == nil) then\n                            TehrsCDs._raidCDs_druids[playerName][\"Tranq\"] = GetTime();\n                        end  \n                    end\n                    TehrsCDs._raidCDs_druids[playerName][\"Tranq+\"] = nil;\n                end\n                local _, _, _, ironbarkSpecced = GetTalentInfo(6, 2, activeSpec, not isPlayer, playerName); \n                if (ironbarkSpecced)then\n                    if TehrsCDs[\"Show Settings\"].IBark then \n                        if (TehrsCDs._externCDs_druids[playerName][\"I-Bark+\"] == nil) then\n                            TehrsCDs._externCDs_druids[playerName][\"I-Bark+\"] = GetTime();\n                        end \n                    end\n                    TehrsCDs._externCDs_druids[playerName][\"I-Bark\"] = nil;                                        \n                else\n                    if TehrsCDs[\"Show Settings\"].IBark then\n                        if (TehrsCDs._externCDs_druids[playerName][\"I-Bark\"] == nil) then\n                            TehrsCDs._externCDs_druids[playerName][\"I-Bark\"] = GetTime();\n                        end \n                    end\n                    TehrsCDs._externCDs_druids[playerName][\"I-Bark+\"] = nil;                    \n                end       \n                local _, _, _, flourishSpecced = GetTalentInfo(7, 3, activeSpec, not isPlayer, playerName); \n                if (flourishSpecced)then\n                    if TehrsCDs[\"Show Settings\"].Flourish then \n                        if (TehrsCDs._raidCDs_druids[playerName][\"Flourish\"] == nil) then\n                            TehrsCDs._raidCDs_druids[playerName][\"Flourish\"] = GetTime();\n                        end \n                    end                                       \n                else\n                    TehrsCDs._raidCDs_druids[playerName][\"Flourish\"] = nil;                    \n                end                 \n                local _, _, _, treeSpecced = GetTalentInfo(5, 3, activeSpec, not isPlayer, playerName); \n                if (treeSpecced)then\n                    if TehrsCDs[\"Show Settings\"].Tree then \n                        if (TehrsCDs._raidCDs_druids[playerName][\"Tree\"] == nil) then\n                            TehrsCDs._raidCDs_druids[playerName][\"Tree\"] = GetTime();\n                        end \n                    end                                       \n                else\n                    TehrsCDs._raidCDs_druids[playerName][\"Tree\"] = nil;                    \n                end                                     \n                if TehrsCDs[\"Show Settings\"].Innervate then\n                    if (TehrsCDs._utilityCDs_druids[playerName][\"Innervate\"] == nil) then\n                        TehrsCDs._utilityCDs_druids[playerName][\"Innervate\"] = GetTime();\n                    end  \n                end                \n                if TehrsCDs[\"Show Settings\"].Ursol then\n                    if (TehrsCDs._aoeCCs_druids[playerName][\"Ursol\"] == nil) then\n                        TehrsCDs._aoeCCs_druids[playerName][\"Ursol\"] = GetTime();\n                    end           \n                end                \n                TehrsCDs._interrupts_druids[playerName][\"S-Bash\"] = nil;                \n                TehrsCDs._interrupts_druids[playerName][\"S-Beam\"] = nil;  \n                TehrsCDs._utilityCDs_druids[playerName][\"Roar\"] = nil;    \n                TehrsCDs._utilityCDs_druids[playerName][\"Treants\"] = nil;\n            elseif (specName == 102) then\n                if TehrsCDs[\"Show Settings\"].SBeam then\n                    if (TehrsCDs._interrupts_druids[playerName][\"S-Beam\"] == nil) then\n                        TehrsCDs._interrupts_druids[playerName][\"S-Beam\"] = GetTime();\n                    end  \n                end\n                if TehrsCDs[\"Show Settings\"].Innervate then\n                    if (TehrsCDs._utilityCDs_druids[playerName][\"Innervate\"] == nil) then\n                        TehrsCDs._utilityCDs_druids[playerName][\"Innervate\"] = GetTime();\n                    end  \n                end                 \n                local _, _, _, treantsSpecced = GetTalentInfo(1, 3, activeSpec, not isPlayer, playerName);  \n                if (treantsSpecced)then      \n                    if TehrsCDs[\"Show Settings\"].Treants then\n                        if (TehrsCDs._utilityCDs_druids[playerName][\"Treants\"] == nil) then\n                            TehrsCDs._utilityCDs_druids[playerName][\"Treants\"] = GetTime();\n                        end      \n                    end                                    \n                else\n                    TehrsCDs._utilityCDs_druids[playerName][\"Treants\"] = nil;    \n                end                \n                TehrsCDs._interrupts_druids[playerName][\"S-Bash\"] = nil;  \n                TehrsCDs._aoeCCs_druids[playerName][\"Ursol\"] = nil;\n                TehrsCDs._raidCDs_druids[playerName][\"Tranq+\"] = nil;\n                TehrsCDs._raidCDs_druids[playerName][\"Tranq\"] = nil;        \n                TehrsCDs._externCDs_druids[playerName][\"I-Bark+\"] = nil;    \n                TehrsCDs._externCDs_druids[playerName][\"I-Bark\"] = nil;      \n                TehrsCDs._raidCDs_druids[playerName][\"Flourish\"] = nil;                  \n                TehrsCDs._raidCDs_druids[playerName][\"Tree\"] = nil;                  \n                TehrsCDs._utilityCDs_druids[playerName][\"Roar\"] = nil;                      \n            else\n                if TehrsCDs[\"Show Settings\"].Roar then\n                    if (TehrsCDs._utilityCDs_druids[playerName][\"Roar\"] == nil) then\n                        TehrsCDs._utilityCDs_druids[playerName][\"Roar\"] = GetTime();\n                    end\n                end\n                if TehrsCDs[\"Show Settings\"].SBash then\n                    if (TehrsCDs._interrupts_druids[playerName][\"S-Bash\"] == nil) then\n                        TehrsCDs._interrupts_druids[playerName][\"S-Bash\"] = GetTime();\n                    end \n                end   \n                TehrsCDs._interrupts_druids[playerName][\"S-Beam\"] = nil; \n                TehrsCDs._raidCDs_druids[playerName][\"Tranq+\"] = nil;\n                TehrsCDs._raidCDs_druids[playerName][\"Tranq\"] = nil;    \n                TehrsCDs._externCDs_druids[playerName][\"I-Bark+\"] = nil;    \n                TehrsCDs._externCDs_druids[playerName][\"I-Bark\"] = nil;        \n                TehrsCDs._utilityCDs_druids[playerName][\"Innervate\"] = nil;  \n                TehrsCDs._aoeCCs_druids[playerName][\"Ursol\"] = nil;\n                TehrsCDs._utilityCDs_druids[playerName][\"Treants\"] = nil;\n                TehrsCDs._raidCDs_druids[playerName][\"Flourish\"] = nil;  \n                TehrsCDs._raidCDs_druids[playerName][\"Tree\"] = nil;  \n            end   \n            \n            if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: Added Druid CDs\") end\n        elseif (class == 6) then\n            if (TehrsCDs._aoeCCs_dks == nil) then TehrsCDs._aoeCCs_dks = {} end\n            if (TehrsCDs._aoeCCs_dks[playerName] == nil) then TehrsCDs._aoeCCs_dks[playerName] = {} end\n            if (TehrsCDs._interrupts_dks == nil) then TehrsCDs._interrupts_dks = {} end\n            if (TehrsCDs._interrupts_dks[playerName] == nil) then TehrsCDs._interrupts_dks[playerName] = {} end\n            if (TehrsCDs._rezCDs_dks == nil) then TehrsCDs._rezCDs_dks = {} end\n            if (TehrsCDs._rezCDs_dks[playerName] == nil) then TehrsCDs._rezCDs_dks[playerName] = {} end                     \n            \n            if TehrsCDs[\"Show Settings\"].RaiseAlly then\n                if (TehrsCDs._rezCDs_dks[playerName][\"Raise Ally\"] == nil) then\n                    TehrsCDs._rezCDs_dks[playerName][\"Raise Ally\"] = GetTime();\n                end \n            end            \n            \n            if TehrsCDs[\"Show Settings\"].MindFreeze then\n                if (TehrsCDs._interrupts_dks[playerName][\"M-Freeze\"] == nil) then\n                    TehrsCDs._interrupts_dks[playerName][\"M-Freeze\"] = GetTime();\n                end  \n            end\n            \n            if (specName == 250) then\n                local _, _, _, tighteningGraspSpecced = GetTalentInfo(5, 2, activeSpec, not isPlayer, playerName);  \n                if (tighteningGraspSpecced)then  \n                    if TehrsCDs[\"Show Settings\"].Grasp then\n                        if (TehrsCDs._aoeCCs_dks[playerName][\"Grasp+\"] == nil) then\n                            TehrsCDs._aoeCCs_dks[playerName][\"Grasp+\"] = GetTime();\n                        end  \n                    end\n                    TehrsCDs._aoeCCs_dks[playerName][\"Grasp\"] = nil;                        \n                else\n                    if TehrsCDs[\"Show Settings\"].Grasp then\n                        if (TehrsCDs._aoeCCs_dks[playerName][\"Grasp\"] == nil) then\n                            TehrsCDs._aoeCCs_dks[playerName][\"Grasp\"] = GetTime();\n                        end  \n                    end\n                    TehrsCDs._aoeCCs_dks[playerName][\"Grasp+\"] = nil;\n                end\n            else  \n                TehrsCDs._aoeCCs_dks[playerName][\"Grasp+\"] = nil;\n                TehrsCDs._aoeCCs_dks[playerName][\"Grasp\"] = nil;                  \n            end               \n            \n            if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: Added DK CDs\") end\n        elseif (class == 2) then\n            if (TehrsCDs._raidCDs_paladins == nil) then TehrsCDs._raidCDs_paladins = {} end\n            if (TehrsCDs._raidCDs_paladins[playerName] == nil) then TehrsCDs._raidCDs_paladins[playerName] = {} end\n            if (TehrsCDs._externCDs_paladins == nil) then TehrsCDs._externCDs_paladins = {} end\n            if (TehrsCDs._externCDs_paladins[playerName] == nil) then TehrsCDs._externCDs_paladins[playerName] = {} end\n            if (TehrsCDs._interrupts_paladins == nil) then TehrsCDs._interrupts_paladins = {} end\n            if (TehrsCDs._interrupts_paladins[playerName] == nil) then TehrsCDs._interrupts_paladins[playerName] = {} end        \n            if (TehrsCDs._utilityCDs_paladins == nil) then TehrsCDs._utilityCDs_paladins = {} end\n            if (TehrsCDs._utilityCDs_paladins[playerName] == nil) then TehrsCDs._utilityCDs_paladins[playerName] = {} end     \n            if (TehrsCDs._immunityCDs_paladins == nil) then TehrsCDs._immunityCDs_paladins = {} end\n            if (TehrsCDs._immunityCDs_paladins[playerName] == nil) then TehrsCDs._immunityCDs_paladins[playerName] = {} end             \n            \n            \n            if (TehrsCDs[\"Show Settings\"].BoPUtility) then -- Sets BoP as a Utility CD\n                TehrsCDs._externCDs_paladins[playerName][\"BoP\"] = nil;                         \n                if (specName == 66) then\n                    local _, _, _, spellwardSpecced = GetTalentInfo(4, 3, activeSpec, not isPlayer, playerName);  \n                    if (spellwardSpecced)then   \n                        if TehrsCDs[\"Show Settings\"].Spellward then\n                            if (TehrsCDs._externCDs_paladins[playerName][\"Spellward\"] == nil) then\n                                TehrsCDs._externCDs_paladins[playerName][\"Spellward\"] = GetTime();\n                            end  \n                        end\n                        TehrsCDs._utilityCDs_paladins[playerName][\"BoP\"] = nil;                    \n                    else\n                        if TehrsCDs[\"Show Settings\"].BoP then \n                            if (TehrsCDs._utilityCDs_paladins[playerName][\"BoP\"] == nil) then\n                                TehrsCDs._utilityCDs_paladins[playerName][\"BoP\"] = GetTime();\n                            end  \n                        end\n                        TehrsCDs._externCDs_paladins[playerName][\"Spellward\"] = nil;\n                    end                         \n                else\n                    if TehrsCDs[\"Show Settings\"].BoP then \n                        if (TehrsCDs._utilityCDs_paladins[playerName][\"BoP\"] == nil) then\n                            TehrsCDs._utilityCDs_paladins[playerName][\"BoP\"] = GetTime();\n                        end  \n                    end\n                    TehrsCDs._externCDs_paladins[playerName][\"Spellward\"] = nil;                    \n                end                        \n            else -- Sets BoP as an External CD\n                TehrsCDs._utilityCDs_paladins[playerName][\"BoP\"] = nil;                         \n                if (specName == 66) then\n                    local _, _, _, spellwardSpecced = GetTalentInfo(4, 3, activeSpec, not isPlayer, playerName);  \n                    if (spellwardSpecced)then   \n                        if TehrsCDs[\"Show Settings\"].Spellward then\n                            if (TehrsCDs._externCDs_paladins[playerName][\"Spellward\"] == nil) then\n                                TehrsCDs._externCDs_paladins[playerName][\"Spellward\"] = GetTime();\n                            end  \n                        end\n                        TehrsCDs._externCDs_paladins[playerName][\"BoP\"] = nil;                    \n                    else\n                        if TehrsCDs[\"Show Settings\"].BoP then \n                            if (TehrsCDs._externCDs_paladins[playerName][\"BoP\"] == nil) then\n                                TehrsCDs._externCDs_paladins[playerName][\"BoP\"] = GetTime();\n                            end  \n                        end\n                        TehrsCDs._externCDs_paladins[playerName][\"Spellward\"] = nil;\n                    end                         \n                else\n                    if TehrsCDs[\"Show Settings\"].BoP then \n                        if (TehrsCDs._externCDs_paladins[playerName][\"BoP\"] == nil) then\n                            TehrsCDs._externCDs_paladins[playerName][\"BoP\"] = GetTime();\n                        end  \n                    end\n                    TehrsCDs._externCDs_paladins[playerName][\"Spellward\"] = nil;\n                end            \n            end\n            \n            \n            if (specName == 65) then\n                local _, _, _, holyBubbleSpecced = GetTalentInfo(2, 1, activeSpec, not isPlayer, playerName);  \n                if (holyBubbleSpecced)then     \n                    if TehrsCDs[\"Show Settings\"].Bubble then\n                        if (TehrsCDs._immunityCDs_paladins[playerName][\"Bubble+\"] == nil) then\n                            TehrsCDs._immunityCDs_paladins[playerName][\"Bubble+\"] = GetTime();\n                        end  \n                    end\n                    if TehrsCDs[\"Show Settings\"].LoH then\n                        if (TehrsCDs._externCDs_paladins[playerName][\"LoH+\"] == nil) then\n                            TehrsCDs._externCDs_paladins[playerName][\"LoH+\"] = GetTime();\n                        end \n                    end                    \n                    TehrsCDs._externCDs_paladins[playerName][\"LoH\"] = nil;\n                    TehrsCDs._immunityCDs_paladins[playerName][\"Bubble\"] = nil;                        \n                else\n                    if TehrsCDs[\"Show Settings\"].Bubble then\n                        if (TehrsCDs._immunityCDs_paladins[playerName][\"Bubble\"] == nil) then\n                            TehrsCDs._immunityCDs_paladins[playerName][\"Bubble\"] = GetTime();\n                        end  \n                    end\n                    if TehrsCDs[\"Show Settings\"].LoH then\n                        if (TehrsCDs._externCDs_paladins[playerName][\"LoH\"] == nil) then\n                            TehrsCDs._externCDs_paladins[playerName][\"LoH\"] = GetTime();\n                        end \n                    end            \n                    TehrsCDs._externCDs_paladins[playerName][\"LoH+\"] = nil;                    \n                    TehrsCDs._immunityCDs_paladins[playerName][\"Bubble+\"] = nil;\n                end                        \n                if TehrsCDs[\"Show Settings\"].Sac then\n                    if (TehrsCDs._externCDs_paladins[playerName][\"Sac\"] == nil) then\n                        TehrsCDs._externCDs_paladins[playerName][\"Sac\"] = GetTime();\n                    end  \n                end\n                if TehrsCDs[\"Show Settings\"].AuraM then\n                    if (TehrsCDs._raidCDs_paladins[playerName][\"Aura-M\"] == nil) then\n                        TehrsCDs._raidCDs_paladins[playerName][\"Aura-M\"] = GetTime();\n                    end              \n                end\n                local _, _, _, crusaderSpecced = GetTalentInfo(6, 2, activeSpec, not isPlayer, playerName);  \n                if (crusaderSpecced)then   \n                    if TehrsCDs[\"Show Settings\"].Wings then\n                        if (TehrsCDs._raidCDs_paladins[playerName][\"Wings+\"] == nil) then\n                            TehrsCDs._raidCDs_paladins[playerName][\"Wings+\"] = GetTime();\n                        end  \n                    end\n                    TehrsCDs._raidCDs_paladins[playerName][\"Wings\"] = nil;                        \n                else\n                    if TehrsCDs[\"Show Settings\"].Wings then\n                        if (TehrsCDs._raidCDs_paladins[playerName][\"Wings\"] == nil) then\n                            TehrsCDs._raidCDs_paladins[playerName][\"Wings\"] = GetTime();\n                        end  \n                    end                \n                    TehrsCDs._raidCDs_paladins[playerName][\"Wings+\"] = nil;\n                end     \n                TehrsCDs._raidCDs_paladins[playerName][\"Aegis\"] = nil;  \n                TehrsCDs._interrupts_paladins[playerName][\"Rebuke\"] = nil;\n            elseif (specName == 70) then\n                local _, _, _, retBubbleSpecced = GetTalentInfo(5, 1, activeSpec, not isPlayer, playerName);  \n                if (retBubbleSpecced)then   \n                    if TehrsCDs[\"Show Settings\"].Bubble then\n                        if (TehrsCDs._immunityCDs_paladins[playerName][\"Bubble+\"] == nil) then\n                            TehrsCDs._immunityCDs_paladins[playerName][\"Bubble+\"] = GetTime();\n                        end  \n                    end\n                    if TehrsCDs[\"Show Settings\"].LoH then\n                        if (TehrsCDs._externCDs_paladins[playerName][\"LoH+\"] == nil) then\n                            TehrsCDs._externCDs_paladins[playerName][\"LoH+\"] = GetTime();\n                        end \n                    end                    \n                    TehrsCDs._externCDs_paladins[playerName][\"LoH\"] = nil;\n                    TehrsCDs._immunityCDs_paladins[playerName][\"Bubble\"] = nil;                        \n                else\n                    if TehrsCDs[\"Show Settings\"].Bubble then\n                        if (TehrsCDs._immunityCDs_paladins[playerName][\"Bubble\"] == nil) then\n                            TehrsCDs._immunityCDs_paladins[playerName][\"Bubble\"] = GetTime();\n                        end  \n                    end\n                    if TehrsCDs[\"Show Settings\"].LoH then\n                        if (TehrsCDs._externCDs_paladins[playerName][\"LoH\"] == nil) then\n                            TehrsCDs._externCDs_paladins[playerName][\"LoH\"] = GetTime();\n                        end \n                    end            \n                    TehrsCDs._externCDs_paladins[playerName][\"LoH+\"] = nil;                    \n                    TehrsCDs._immunityCDs_paladins[playerName][\"Bubble+\"] = nil;\n                end        \n                if TehrsCDs[\"Show Settings\"].Rebuke then\n                    if (TehrsCDs._interrupts_paladins[playerName][\"Rebuke\"] == nil) then\n                        TehrsCDs._interrupts_paladins[playerName][\"Rebuke\"] = GetTime();\n                    end                  \n                end\n                TehrsCDs._raidCDs_paladins[playerName][\"Aura-M\"] = nil;\n                TehrsCDs._raidCDs_paladins[playerName][\"Wings\"] = nil;\n                TehrsCDs._raidCDs_paladins[playerName][\"Wings+\"] = nil;\n                TehrsCDs._externCDs_paladins[playerName][\"Sac\"] = nil;            \n                TehrsCDs._raidCDs_paladins[playerName][\"Aegis\"] = nil;             \n            elseif (specName == 66) then\n                local _, _, _, protBubbleSpecced = GetTalentInfo(5, 1, activeSpec, not isPlayer, playerName);  \n                if (protBubbleSpecced)then   \n                    if TehrsCDs[\"Show Settings\"].Bubble then\n                        if (TehrsCDs._immunityCDs_paladins[playerName][\"Bubble+\"] == nil) then\n                            TehrsCDs._immunityCDs_paladins[playerName][\"Bubble+\"] = GetTime();\n                        end  \n                    end\n                    if TehrsCDs[\"Show Settings\"].LoH then\n                        if (TehrsCDs._externCDs_paladins[playerName][\"LoH+\"] == nil) then\n                            TehrsCDs._externCDs_paladins[playerName][\"LoH+\"] = GetTime();\n                        end \n                    end                    \n                    TehrsCDs._externCDs_paladins[playerName][\"LoH\"] = nil;\n                    TehrsCDs._immunityCDs_paladins[playerName][\"Bubble\"] = nil;                        \n                else\n                    if TehrsCDs[\"Show Settings\"].Bubble then\n                        if (TehrsCDs._immunityCDs_paladins[playerName][\"Bubble\"] == nil) then\n                            TehrsCDs._immunityCDs_paladins[playerName][\"Bubble\"] = GetTime();\n                        end  \n                    end\n                    if TehrsCDs[\"Show Settings\"].LoH then\n                        if (TehrsCDs._externCDs_paladins[playerName][\"LoH\"] == nil) then\n                            TehrsCDs._externCDs_paladins[playerName][\"LoH\"] = GetTime();\n                        end \n                    end            \n                    TehrsCDs._externCDs_paladins[playerName][\"LoH+\"] = nil;                    \n                    TehrsCDs._immunityCDs_paladins[playerName][\"Bubble+\"] = nil;\n                end  \n                if TehrsCDs[\"Show Settings\"].Sac then\n                    if (TehrsCDs._externCDs_paladins[playerName][\"Sac\"] == nil) then\n                        TehrsCDs._externCDs_paladins[playerName][\"Sac\"] = GetTime();\n                    end  \n                end\n                local _, _, _, aegisSpecced = GetTalentInfo(6, 3, activeSpec, not isPlayer, playerName);  \n                if (aegisSpecced)then   \n                    if TehrsCDs[\"Show Settings\"].Aegis then\n                        if (TehrsCDs._raidCDs_paladins[playerName][\"Aegis\"] == nil) then\n                            TehrsCDs._raidCDs_paladins[playerName][\"Aegis\"] = GetTime();\n                        end    \n                    end\n                else\n                    TehrsCDs._raidCDs_paladins[playerName][\"Aegis\"] = nil;\n                end\n                if TehrsCDs[\"Show Settings\"].Rebuke then\n                    if (TehrsCDs._interrupts_paladins[playerName][\"Rebuke\"] == nil) then\n                        TehrsCDs._interrupts_paladins[playerName][\"Rebuke\"] = GetTime();\n                    end  \n                end                \n                TehrsCDs._raidCDs_paladins[playerName][\"Aura-M\"] = nil; \n                TehrsCDs._raidCDs_paladins[playerName][\"Wings\"] = nil;   \n                TehrsCDs._raidCDs_paladins[playerName][\"Wings+\"] = nil;\n            end\n            \n            if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: Added Paladin CDs\") end\n        elseif (class == 7) then\n            if (TehrsCDs._raidCDs_shamans == nil) then TehrsCDs._raidCDs_shamans = {} end\n            if (TehrsCDs._raidCDs_shamans[playerName] == nil) then TehrsCDs._raidCDs_shamans[playerName] = {} end\n            if (TehrsCDs._interrupts_shamans == nil) then TehrsCDs._interrupts_shamans = {} end\n            if (TehrsCDs._interrupts_shamans[playerName] == nil) then TehrsCDs._interrupts_shamans[playerName] = {} end\n            if (TehrsCDs._utilityCDs_shamans == nil) then TehrsCDs._utilityCDs_shamans = {} end\n            if (TehrsCDs._utilityCDs_shamans[playerName] == nil) then TehrsCDs._utilityCDs_shamans[playerName] = {} end   \n            if (TehrsCDs._rezCDs_shamans == nil) then TehrsCDs._rezCDs_shamans = {} end\n            if (TehrsCDs._rezCDs_shamans[playerName] == nil) then TehrsCDs._rezCDs_shamans[playerName] = {} end    \n            if (TehrsCDs._aoeCCs_shamans == nil) then TehrsCDs._aoeCCs_shamans = {} end\n            if (TehrsCDs._aoeCCs_shamans[playerName] == nil) then TehrsCDs._aoeCCs_shamans[playerName] = {} end\n            \n            if TehrsCDs[\"Show Settings\"].Ankh then\n                if (TehrsCDs._rezCDs_shamans[playerName][\"Ankh\"] == nil) then\n                    TehrsCDs._rezCDs_shamans[playerName][\"Ankh\"] = GetTime();\n                end                    \n            end\n            if TehrsCDs[\"Show Settings\"].WShear then\n                if (TehrsCDs._interrupts_shamans[playerName][\"W-Shear\"] == nil) then\n                    TehrsCDs._interrupts_shamans[playerName][\"W-Shear\"] = GetTime();\n                end \n            end\n            local _, _, _, windRushTotemSpecced = GetTalentInfo(5, 3, activeSpec, not isPlayer, playerName);            \n            if (windRushTotemSpecced) then\n                if TehrsCDs[\"Show Settings\"].WindRush then\n                    if (TehrsCDs._utilityCDs_shamans[playerName][\"Wind Rush\"] == nil) then\n                        TehrsCDs._utilityCDs_shamans[playerName][\"Wind Rush\"] = GetTime();\n                    end\n                end\n            else\n                TehrsCDs._utilityCDs_shamans[playerName][\"Wind Rush\"] = nil;\n            end              \n            local _, _, _, capSpecced = GetTalentInfo(3, 3, activeSpec, not isPlayer, playerName);  \n            if (capSpecced) then     \n                if TehrsCDs[\"Show Settings\"].CapTotem then\n                    if (TehrsCDs._aoeCCs_shamans[playerName][\"Cap Totem+\"] == nil) then\n                        TehrsCDs._aoeCCs_shamans[playerName][\"Cap Totem+\"] = GetTime();\n                    end    \n                end\n                TehrsCDs._aoeCCs_shamans[playerName][\"Cap Totem\"] = nil;                    \n            else\n                if TehrsCDs[\"Show Settings\"].CapTotem then\n                    if (TehrsCDs._aoeCCs_shamans[playerName][\"Cap Totem\"] == nil) then\n                        TehrsCDs._aoeCCs_shamans[playerName][\"Cap Totem\"] = GetTime();\n                    end    \n                end\n                TehrsCDs._aoeCCs_shamans[playerName][\"Cap Totem+\"] = nil;\n            end     \n            \n            if (specName == 264) then\n                local _, _, _, ancestralProtectionTotemSpecced = GetTalentInfo(5, 1, activeSpec, not isPlayer, playerName);            \n                if (ancestralProtectionTotemSpecced) then\n                    if TehrsCDs[\"Show Settings\"].AProt then\n                        if (TehrsCDs._raidCDs_shamans[playerName][\"A-Prot\"] == nil) then\n                            TehrsCDs._raidCDs_shamans[playerName][\"A-Prot\"] = GetTime();\n                        end  \n                    end\n                else\n                    TehrsCDs._raidCDs_shamans[playerName][\"A-Prot\"] = nil;\n                end \n                local _, _, _, ascendanceSpecced = GetTalentInfo(7, 3, activeSpec, not isPlayer, playerName);            \n                if (ascendanceSpecced) then\n                    if TehrsCDs[\"Show Settings\"].Ascendance then\n                        if (TehrsCDs._raidCDs_shamans[playerName][\"Ascendance\"] == nil) then\n                            TehrsCDs._raidCDs_shamans[playerName][\"Ascendance\"] = GetTime();\n                        end    \n                    end\n                else\n                    TehrsCDs._raidCDs_shamans[playerName][\"Ascendance\"] = nil;\n                end \n                if TehrsCDs[\"Show Settings\"].HTide then\n                    if (TehrsCDs._raidCDs_shamans[playerName][\"H-Tide\"] == nil) then\n                        TehrsCDs._raidCDs_shamans[playerName][\"H-Tide\"] = GetTime();\n                    end   \n                end\n                if TehrsCDs[\"Show Settings\"].SLT then\n                    if (TehrsCDs._raidCDs_shamans[playerName][\"SLT\"] == nil) then\n                        TehrsCDs._raidCDs_shamans[playerName][\"SLT\"] = GetTime();\n                    end \n                end\n                TehrsCDs._aoeCCs_shamans[playerName][\"Thunderstorm\"] = nil;\n                TehrsCDs._raidCDs_shamans[playerName][\"AG\"] = nil;\n            elseif (specName == 262) then\n                local _, _, _, agEleSpecced = GetTalentInfo(2, 2, activeSpec, not isPlayer, playerName);            \n                if (agEleSpecced) then\n                    if TehrsCDs[\"Show Settings\"].AG then \n                        if (TehrsCDs._raidCDs_shamans[playerName][\"AG\"] == nil) then\n                            TehrsCDs._raidCDs_shamans[playerName][\"AG\"] = GetTime();\n                        end    \n                    end\n                else\n                    TehrsCDs._raidCDs_shamans[playerName][\"AG\"] = nil;\n                end \n                if TehrsCDs[\"Show Settings\"].Thunderstorm then\n                    if (TehrsCDs._aoeCCs_shamans[playerName][\"Thunderstorm\"] == nil) then\n                        TehrsCDs._aoeCCs_shamans[playerName][\"Thunderstorm\"] = GetTime();\n                    end   \n                end                \n                TehrsCDs._raidCDs_shamans[playerName][\"H-Tide\"] = nil;\n                TehrsCDs._raidCDs_shamans[playerName][\"SLT\"] = nil;  \n                TehrsCDs._raidCDs_shamans[playerName][\"A-Prot\"] = nil;  \n                TehrsCDs._raidCDs_shamans[playerName][\"Ascendance\"] = nil;\n            elseif (specName == 263) then\n                TehrsCDs._raidCDs_shamans[playerName][\"H-Tide\"] = nil;\n                TehrsCDs._raidCDs_shamans[playerName][\"SLT\"] = nil;  \n                TehrsCDs._raidCDs_shamans[playerName][\"AG\"] = nil;\n                TehrsCDs._raidCDs_shamans[playerName][\"A-Prot\"] = nil;\n                TehrsCDs._aoeCCs_shamans[playerName][\"Thunderstorm\"] = nil;\n                TehrsCDs._raidCDs_shamans[playerName][\"Ascendance\"] = nil;\n            end\n            \n            if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: Added Shaman CDs\") end\n        elseif (class == 3) then\n            if (TehrsCDs._interrupts_hunters == nil) then TehrsCDs._interrupts_hunters = {} end\n            if (TehrsCDs._interrupts_hunters[playerName] == nil) then TehrsCDs._interrupts_hunters[playerName] = {} end \n            if (TehrsCDs._aoeCCs_hunters == nil) then TehrsCDs._aoeCCs_hunters = {} end\n            if (TehrsCDs._aoeCCs_hunters[playerName] == nil) then TehrsCDs._aoeCCs_hunters[playerName] = {} end\n            if (TehrsCDs._immunityCDs_hunters == nil) then TehrsCDs._immunityCDs_hunters = {} end\n            if (TehrsCDs._immunityCDs_hunters[playerName] == nil) then TehrsCDs._immunityCDs_hunters[playerName] = {} end \n            if (TehrsCDs._utilityCDs_hunters == nil) then TehrsCDs._utilityCDs_hunters = {} end\n            if (TehrsCDs._utilityCDs_hunters[playerName] == nil) then TehrsCDs._utilityCDs_hunters[playerName] = {} end             \n            \n            local _, _, _, bindingSpecced = GetTalentInfo(5, 3, activeSpec, not isPlayer, playerName);            \n            if (bindingSpecced) then\n                if TehrsCDs[\"Show Settings\"].Binding then\n                    if (TehrsCDs._aoeCCs_hunters[playerName][\"Binding\"] == nil) then\n                        TehrsCDs._aoeCCs_hunters[playerName][\"Binding\"] = GetTime();\n                    end\n                end\n            else\n                TehrsCDs._aoeCCs_hunters[playerName][\"Binding\"] = nil;\n            end               \n            local _, _, _, aspectSpecced = GetTalentInfo(5, 1, activeSpec, not isPlayer, playerName);  \n            if (aspectSpecced)then     \n                if TehrsCDs[\"Show Settings\"].Turtle then\n                    if (TehrsCDs._immunityCDs_hunters[playerName][\"Turtle+\"] == nil) then\n                        TehrsCDs._immunityCDs_hunters[playerName][\"Turtle+\"] = GetTime();\n                    end  \n                end\n                TehrsCDs._immunityCDs_hunters[playerName][\"Turtle\"] = nil;                        \n            else\n                if TehrsCDs[\"Show Settings\"].Turtle then\n                    if (TehrsCDs._immunityCDs_hunters[playerName][\"Turtle\"] == nil) then\n                        TehrsCDs._immunityCDs_hunters[playerName][\"Turtle\"] = GetTime();\n                    end  \n                end                \n                TehrsCDs._immunityCDs_hunters[playerName][\"Turtle+\"] = nil;\n            end              \n            if TehrsCDs[\"Show Settings\"].Misdirect then\n                if (TehrsCDs._utilityCDs_hunters[playerName][\"Misdirect\"] == nil) then\n                    TehrsCDs._utilityCDs_hunters[playerName][\"Misdirect\"] = GetTime();\n                end          \n            end                 \n            \n            if (specName == 255) then           \n                if TehrsCDs[\"Show Settings\"].Muzzle then\n                    if (TehrsCDs._interrupts_hunters[playerName][\"Muzzle\"] == nil) then\n                        TehrsCDs._interrupts_hunters[playerName][\"Muzzle\"] = GetTime();\n                    end\n                end\n                TehrsCDs._interrupts_hunters[playerName][\"C-Shot\"] = nil;            \n            else                         \n                if TehrsCDs[\"Show Settings\"].CShot then \n                    if (TehrsCDs._interrupts_hunters[playerName][\"C-Shot\"] == nil) then\n                        TehrsCDs._interrupts_hunters[playerName][\"C-Shot\"] = GetTime();\n                    end   \n                end                           \n                TehrsCDs._interrupts_hunters[playerName][\"Muzzle\"] = nil;                 \n            end\n            \n            if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: Added Hunter CDs\") end\n        elseif (class == 4) then\n            if (TehrsCDs._interrupts_rogues == nil) then TehrsCDs._interrupts_rogues = {} end\n            if (TehrsCDs._interrupts_rogues[playerName] == nil) then TehrsCDs._interrupts_rogues[playerName] = {} end\n            if (TehrsCDs._immunityCDs_rogues == nil) then TehrsCDs._immunityCDs_rogues = {} end\n            if (TehrsCDs._immunityCDs_rogues[playerName] == nil) then TehrsCDs._immunityCDs_rogues[playerName] = {} end     \n            if (TehrsCDs._utilityCDs_rogues == nil) then TehrsCDs._utilityCDs_rogues = {} end\n            if (TehrsCDs._utilityCDs_rogues[playerName] == nil) then TehrsCDs._utilityCDs_rogues[playerName] = {} end             \n            \n            if TehrsCDs[\"Show Settings\"].Kick then\n                if (TehrsCDs._interrupts_rogues[playerName][\"Kick\"] == nil) then\n                    TehrsCDs._interrupts_rogues[playerName][\"Kick\"] = GetTime();\n                end\n            end\n            if TehrsCDs[\"Show Settings\"].Tricks then\n                if (TehrsCDs._utilityCDs_rogues[playerName][\"Tricks\"] == nil) then\n                    TehrsCDs._utilityCDs_rogues[playerName][\"Tricks\"] = GetTime();\n                end                      \n            end\n            if TehrsCDs[\"Show Settings\"].Shroud then\n                if (TehrsCDs._utilityCDs_rogues[playerName][\"Shroud\"] == nil) then\n                    TehrsCDs._utilityCDs_rogues[playerName][\"Shroud\"] = GetTime();\n                end                      \n            end    \n            if TehrsCDs[\"Show Settings\"].Cloak then\n                if (TehrsCDs._immunityCDs_rogues[playerName][\"Cloak\"] == nil) then\n                    TehrsCDs._immunityCDs_rogues[playerName][\"Cloak\"] = GetTime();\n                end                    \n            end               \n            \n            if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: Added Rogue CDs\") end\n        elseif (class == 8) then\n            if (TehrsCDs._interrupts_mages == nil) then TehrsCDs._interrupts_mages = {} end\n            if (TehrsCDs._interrupts_mages[playerName] == nil) then TehrsCDs._interrupts_mages[playerName] = {} end      \n            if (TehrsCDs._immunityCDs_mages == nil) then TehrsCDs._immunityCDs_mages = {} end\n            if (TehrsCDs._immunityCDs_mages[playerName] == nil) then TehrsCDs._immunityCDs_mages[playerName] = {} end             \n            \n            if TehrsCDs[\"Show Settings\"].CSpell then\n                if (TehrsCDs._interrupts_mages[playerName][\"C-Spell\"] == nil) then\n                    TehrsCDs._interrupts_mages[playerName][\"C-Spell\"] = GetTime();\n                end            \n            end\n            \n            if (specName == 64) then\n                if TehrsCDs[\"Show Settings\"].Block then\n                    if (TehrsCDs._immunityCDs_mages[playerName][\"Block+\"] == nil) then\n                        TehrsCDs._immunityCDs_mages[playerName][\"Block+\"] = GetTime();\n                    end                    \n                end\n                TehrsCDs._immunityCDs_mages[playerName][\"Block\"] = nil;                             \n            else    \n                if TehrsCDs[\"Show Settings\"].Block then\n                    if (TehrsCDs._immunityCDs_mages[playerName][\"Block\"] == nil) then\n                        TehrsCDs._immunityCDs_mages[playerName][\"Block\"] = GetTime();\n                    end                    \n                end\n                TehrsCDs._immunityCDs_mages[playerName][\"Block+\"] = nil; \n            end\n            \n            if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: Added Mage CDs\") end\n        elseif (class == 9) then\n            if (TehrsCDs._rezCDs_warlocks == nil) then TehrsCDs._rezCDs_warlocks = {} end\n            if (TehrsCDs._rezCDs_warlocks[playerName] == nil) then TehrsCDs._rezCDs_warlocks[playerName] = {} end              \n            if (TehrsCDs._aoeCCs_warlocks == nil) then TehrsCDs._aoeCCs_warlocks = {} end\n            if (TehrsCDs._aoeCCs_warlocks[playerName] == nil) then TehrsCDs._aoeCCs_warlocks[playerName] = {} end\n            if (TehrsCDs._interrupts_warlocks == nil) then TehrsCDs._interrupts_warlocks = {} end\n            if (TehrsCDs._interrupts_warlocks[playerName] == nil) then TehrsCDs._interrupts_warlocks[playerName] = {} end            \n            \n            if TehrsCDs[\"Show Settings\"].Soulstone then\n                if (TehrsCDs._rezCDs_warlocks[playerName][\"Soulstone\"] == nil) then\n                    TehrsCDs._rezCDs_warlocks[playerName][\"Soulstone\"] = GetTime();\n                end            \n            end\n            \n            local _, _, _, shadowfurySpecced = GetTalentInfo(5, 1, activeSpec, not isPlayer, playerName);  \n            if (shadowfurySpecced) then     \n                if TehrsCDs[\"Show Settings\"].Shadowfury then\n                    if (TehrsCDs._aoeCCs_warlocks[playerName][\"Shadowfury+\"] == nil) then\n                        TehrsCDs._aoeCCs_warlocks[playerName][\"Shadowfury+\"] = GetTime();\n                    end    \n                end\n                TehrsCDs._aoeCCs_warlocks[playerName][\"Shadowfury\"] = nil;                    \n            else\n                if TehrsCDs[\"Show Settings\"].Shadowfury then\n                    if (TehrsCDs._aoeCCs_warlocks[playerName][\"Shadowfury\"] == nil) then\n                        TehrsCDs._aoeCCs_warlocks[playerName][\"Shadowfury\"] = GetTime();\n                    end    \n                end\n                TehrsCDs._aoeCCs_warlocks[playerName][\"Shadowfury+\"] = nil;\n            end               \n            \n            if (specName == 267) then\n                if TehrsCDs[\"Show Settings\"].Infernal then\n                    if (TehrsCDs._aoeCCs_warlocks[playerName][\"Infernal\"] == nil) then\n                        TehrsCDs._aoeCCs_warlocks[playerName][\"Infernal\"] = GetTime();\n                    end    \n                end           \n            else \n                TehrsCDs._aoeCCs_warlocks[playerName][\"Infernal\"] = nil;\n            end\n            \n            if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: Added Warlock CDs\") end\n        elseif (class == 10) then\n            if (TehrsCDs._raidCDs_monks == nil) then TehrsCDs._raidCDs_monks = {} end\n            if (TehrsCDs._raidCDs_monks[playerName] == nil) then TehrsCDs._raidCDs_monks[playerName] = {} end\n            if (TehrsCDs._externCDs_monks == nil) then TehrsCDs._externCDs_monks = {} end\n            if (TehrsCDs._externCDs_monks[playerName] == nil) then TehrsCDs._externCDs_monks[playerName] = {} end\n            if (TehrsCDs._interrupts_monks == nil) then TehrsCDs._interrupts_monks = {} end\n            if (TehrsCDs._interrupts_monks[playerName] == nil) then TehrsCDs._interrupts_monks[playerName] = {} end\n            if (TehrsCDs._aoeCCs_monks == nil) then TehrsCDs._aoeCCs_monks = {} end\n            if (TehrsCDs._aoeCCs_monks[playerName] == nil) then TehrsCDs._aoeCCs_monks[playerName] = {} end        \n            \n            local _, _, _, sweepSpecced = GetTalentInfo(4, 1, activeSpec, not isPlayer, playerName);  \n            if (sweepSpecced) then     \n                if TehrsCDs[\"Show Settings\"].Sweep then\n                    if (TehrsCDs._aoeCCs_monks[playerName][\"Sweep+\"] == nil) then\n                        TehrsCDs._aoeCCs_monks[playerName][\"Sweep+\"] = GetTime();\n                    end    \n                end\n                TehrsCDs._aoeCCs_monks[playerName][\"Sweep\"] = nil;                    \n            else\n                if TehrsCDs[\"Show Settings\"].Sweep then\n                    if (TehrsCDs._aoeCCs_monks[playerName][\"Sweep\"] == nil) then\n                        TehrsCDs._aoeCCs_monks[playerName][\"Sweep\"] = GetTime();\n                    end    \n                end\n                TehrsCDs._aoeCCs_monks[playerName][\"Sweep+\"] = nil;\n            end   \n            local _, _, _, ringSpecced = GetTalentInfo(4, 3, activeSpec, not isPlayer, playerName);            \n            if (ringSpecced) then\n                if TehrsCDs[\"Show Settings\"].Ring then\n                    if (TehrsCDs._aoeCCs_monks[playerName][\"Ring\"] == nil) then\n                        TehrsCDs._aoeCCs_monks[playerName][\"Ring\"] = GetTime();\n                    end\n                end\n            else\n                TehrsCDs._aoeCCs_monks[playerName][\"Ring\"] = nil;\n            end            \n            \n            if (specName == 270) then\n                if TehrsCDs[\"Show Settings\"].Revival then\n                    if (TehrsCDs._raidCDs_monks[playerName][\"Revival\"] == nil) then\n                        TehrsCDs._raidCDs_monks[playerName][\"Revival\"] = GetTime();\n                    end \n                end\n                if TehrsCDs[\"Show Settings\"].LCocoon then\n                    if (TehrsCDs._externCDs_monks[playerName][\"L-Cocoon\"] == nil) then\n                        TehrsCDs._externCDs_monks[playerName][\"L-Cocoon\"] = GetTime();\n                    end  \n                end\n                TehrsCDs._interrupts_monks[playerName][\"S-Strike\"] = nil;                 \n            else\n                if TehrsCDs[\"Show Settings\"].SStrike then\n                    if (TehrsCDs._interrupts_monks[playerName][\"S-Strike\"] == nil) then\n                        TehrsCDs._interrupts_monks[playerName][\"S-Strike\"] = GetTime();\n                    end            \n                end\n                TehrsCDs._raidCDs_monks[playerName][\"Revival\"] = nil;\n                TehrsCDs._externCDs_monks[playerName][\"L-Cocoon\"] = nil;\n            end\n            \n            if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: Added Monk CDs\") end\n        end  \n        \n        if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: Baseline Abilities completed, moving to Custom Abilities\") end    \n        \n        if TehrsCDs[\"Custom Abilities\"].CustomAbilities then\n            TehrsCDs[\"Custom Abilities\"].AddCDs(playerName, class, race, specName, activeSpec, isPlayer)\n        end\n        \n        if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: Classes completed, moving to Pets\") end               \n        \n        local currentPlayer;\n        local currentPlayerRealm;\n        local currentPet;\n        local smartGroupMembers;\n        local currentPlayerClass;\n        \n        if IsInRaid() then\n            smartGroupMembers = GetNumGroupMembers()\n        else\n            smartGroupMembers = GetNumSubgroupMembers()\n            \n            if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: checking Player Pet\") end\n            \n            currentPlayer = GetUnitName(\"player\",true)\n            currentPet = \"pet\"\n            _, _, currentPlayerClass = UnitClass(\"player\")        \n            \n            aura_env.CheckPetAbilities(currentPlayer,currentPet,currentPlayerClass,activeSpec,isPlayer)\n            \n        end\n        \n        if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: checking Group Pets\") end\n        \n        for i = 1,smartGroupMembers do\n            if IsInRaid() then\n                currentPlayer = GetUnitName(\"raid\"..i,true)\n                currentPet = \"raid\"..i..\"pet\"\n                _, _, currentPlayerClass = UnitClass(\"raid\"..i)\n            else\n                currentPlayer = GetUnitName(\"party\"..i,true)\n                currentPet = \"party\"..i..\"pet\"    \n                _, _, currentPlayerClass = UnitClass(\"party\"..i)\n            end\n            \n            aura_env.CheckPetAbilities(currentPlayer,currentPet,currentPlayerClass,activeSpec,isPlayer)\n            \n        end    \n        \n        -- Added everything, moving to next player        \n        if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: added all CDs, moving to next\") end\n        \n        TehrsCDs._raidCDs_groupPoll_state = \"nextPlayer\";\n    end\n    \n    if (TehrsCDs._raidCDs_groupPoll_state == \"nextPlayer\") then\n        \n        if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: state is nextPlayer\") end\n        \n        TehrsCDs._raidCDs_groupPoll_playerCounter = TehrsCDs._raidCDs_groupPoll_playerCounter + 1;\n        \n        if (TehrsCDs._raidCDs_groupPoll_playerCounter > playerCount) then\n            \n            if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: counter is above total count\") end\n            \n            local allCDs = {};            \n            \n            allCDs[\"1\"] = TehrsCDs._externCDs_druids; \n            allCDs[\"2\"] = TehrsCDs._externCDs_monks;\n            allCDs[\"3\"] = TehrsCDs._externCDs_paladins;\n            allCDs[\"4\"] = TehrsCDs._externCDs_priests; \n            allCDs[\"5\"] = TehrsCDs._externCDs_warriors;\n            allCDs[\"6\"] = TehrsCDs._externCDs_dhs;\n            allCDs[\"7\"] = TehrsCDs._raidCDs_druids;\n            allCDs[\"8\"] = TehrsCDs._raidCDs_monks;\n            allCDs[\"9\"] = TehrsCDs._raidCDs_paladins;\n            allCDs[\"10\"] = TehrsCDs._raidCDs_priests;\n            allCDs[\"11\"] = TehrsCDs._raidCDs_shamans;\n            allCDs[\"12\"] = TehrsCDs._raidCDs_warriors;\n            allCDs[\"13\"] = TehrsCDs._raidCDs_dhs;\n            allCDs[\"14\"] = TehrsCDs._utilityCDs_dks;    \n            allCDs[\"15\"] = TehrsCDs._aoeCCs_dhs;                \n            allCDs[\"16\"] = TehrsCDs._utilityCDs_shamans;\n            allCDs[\"17\"] = TehrsCDs._utilityCDs_druids;\n            allCDs[\"18\"] = TehrsCDs._utilityCDs_priests;\n            allCDs[\"19\"] = TehrsCDs._utilityCDs_paladins;\n            allCDs[\"20\"] = TehrsCDs._interrupts_priests;\n            allCDs[\"21\"] = TehrsCDs._interrupts_mages;\n            allCDs[\"22\"] = TehrsCDs._interrupts_hunters;    \n            allCDs[\"23\"] = TehrsCDs._interrupts_shamans;\n            allCDs[\"24\"] = TehrsCDs._interrupts_monks;\n            allCDs[\"25\"] = TehrsCDs._interrupts_paladins;\n            allCDs[\"26\"] = TehrsCDs._interrupts_dks;  \n            allCDs[\"27\"] = TehrsCDs._interrupts_dhs;              \n            allCDs[\"28\"] = TehrsCDs._interrupts_rogues;    \n            allCDs[\"29\"] = TehrsCDs._interrupts_warriors;\n            allCDs[\"30\"] = TehrsCDs._interrupts_druids;   \n            allCDs[\"31\"] = TehrsCDs._interrupts_warlocks;             \n            allCDs[\"32\"] = TehrsCDs._rezCDs_dks;      \n            allCDs[\"33\"] = TehrsCDs._rezCDs_druids; \n            allCDs[\"34\"] = TehrsCDs._utilityCDs_nightelf;\n            allCDs[\"35\"] = TehrsCDs._rezCDs_warlocks;\n            allCDs[\"36\"] = TehrsCDs._rezCDs_shamans;   \n            allCDs[\"37\"] = TehrsCDs._aoeCCs_druids;\n            allCDs[\"38\"] = TehrsCDs._aoeCCs_priests;        \n            allCDs[\"39\"] = TehrsCDs._aoeCCs_hunters;\n            allCDs[\"40\"] = TehrsCDs._aoeCCs_mages;\n            allCDs[\"41\"] = TehrsCDs._aoeCCs_monks;      \n            allCDs[\"42\"] = TehrsCDs._aoeCCs_shamans;       \n            allCDs[\"43\"] = TehrsCDs._aoeCCs_warriors;\n            allCDs[\"44\"] = TehrsCDs._aoeCCs_warlocks; \n            allCDs[\"45\"] = TehrsCDs._aoeCCs_dks; \n            allCDs[\"46\"] = TehrsCDs._interrupts_belfs;  \n            allCDs[\"47\"] = TehrsCDs._aoeCCs_tauren;           \n            allCDs[\"48\"] = TehrsCDs._immunityCDs_hunters;\n            allCDs[\"49\"] = TehrsCDs._immunityCDs_rogues;\n            allCDs[\"50\"] = TehrsCDs._immunityCDs_paladins; \n            allCDs[\"51\"] = TehrsCDs._immunityCDs_mages; \n            allCDs[\"52\"] = TehrsCDs._immunityCDs_dhs; \n            allCDs[\"53\"] = TehrsCDs._utilityCDs_hunters;\n            allCDs[\"54\"] = TehrsCDs._utilityCDs_rogues;\n            allCDs[\"55\"] = TehrsCDs._aoeCCs_hmtauren;\n            \n            if (not UnitInParty(\"player\")) then\n                if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: not in party, moving to inspectPlayer\") end\n                TehrsCDs._raidCDs_groupPoll_state = \"inspectPlayer\"\n            end\n            \n            if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: nilling\") end\n            \n            for theCDGroupColor, theCDGroup in pairs(allCDs) do                \n                if (theCDGroup ~= nil) then        \n                    for name, cdData in pairs(theCDGroup) do\n                        \n                        if name ~= UnitName(\"player\") then\n                            \n                            if (not UnitInParty(name)) then\n                                theCDGroup[name] = nil;\n                            end\n                            \n                            local raidIndex = UnitInRaid(name);                                               \n                            if (raidIndex ~= nil and raidIndex > playerCount) then\n                                theCDGroup[name] = nil;\n                            end\n                            \n                        end\n                        \n                    end\n                end\n            end\n            \n            TehrsCDs._raidCDs_groupPoll_playerCounter = 0;\n            return \"\";\n        end    \n        \n        local playerName = GetRaidRosterInfo(TehrsCDs._raidCDs_groupPoll_playerCounter)\n        \n        if playerName == nil then\n            if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"playerName is nil\") end\n            playerName = UnitName(\"player\")\n            TehrsCDs._raidCDs_groupPoll_playerCounter = TehrsCDs._raidCDs_groupPoll_playerCounter - 1\n        end\n        \n        local canInspect = CanInspect(playerName, false);\n        \n        if (not canInspect) then\n            if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: can't inspect\") end\n            return \"\";\n        end\n        \n        if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: moving to inspectPlayer\") end\n        \n        NotifyInspect(playerName);\n        TehrsCDs._raidCDs_groupPoll_currentPlayer = playerName;\n        TehrsCDs._raidCDs_groupPoll_state = \"inspectPlayer\";\n        \n        return \"\";\n    end\n    \n    TehrsCDs._raidCDs_groupPoll_state = nil;    \n    return \"\";     \nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "-- You must reload your UI after changing any these settings for them to take effect\nlocal parentName = WeakAurasSaved.displays[WeakAuras.regions[aura_env.id].region:GetParent().id]\nif (parentName[\"TehrsRaidCDs\"] == nil) then parentName[\"TehrsRaidCDs\"] = {} end    \nif (parentName[\"TehrsRaidCDs\"][\"Show Settings\"] == nil) then parentName[\"TehrsRaidCDs\"][\"Show Settings\"] = {} end    \nlocal TehrsCDs = parentName[\"TehrsRaidCDs\"]    \n\n-- Change this number to adjust how often the aura will poll the group to check for CDs (or stuff like spec changes). Note that this is the number of seconds between checks\naura_env.pollRate = 1\n-- You may experience lag if this number is below 1 second or so. If you do experience lag, increase this number OR set \"RaidCDs_GroupPoll\" to load only \"Out of Combat\" in the Load tab\n\n-- function that adds Pet abilities to the display\naura_env.CheckPetAbilities = function(currentPlayer,currentPet,currentPlayerClass,activeSpec,isPlayer)\n    if (TehrsCDs._interrupts_warlocks == nil) then TehrsCDs._interrupts_warlocks = {} end\n    if (TehrsCDs._interrupts_warlocks[currentPlayer] == nil) then TehrsCDs._interrupts_warlocks[currentPlayer] = {} end         \n    local _, _, _, sacSpecced = GetTalentInfo(6, 3, activeSpec, not isPlayer, playerName);  \n    \n    if (GetLocale() == \"enUS\") or (GetLocale() == \"enGB\") then\n        if UnitExists(currentPet) then\n            if TehrsCDs[\"Show Settings\"].SpellLock then\n                if UnitCreatureFamily(currentPet) == \"Felhunter\" then\n                    if (TehrsCDs._interrupts_warlocks[currentPlayer][\"Spell Lock\"] == nil) then\n                        TehrsCDs._interrupts_warlocks[currentPlayer][\"Spell Lock\"] = GetTime();\n                    end\n                    if TehrsCDs.DEBUG and TehrsCDs.DEBUG_GroupPoll then print(\"GroupPoll: added Felhunter Spell Lock CD\") end\n                else\n                    TehrsCDs._interrupts_warlocks[currentPlayer][\"Spell Lock\"] = nil;\n                end\n            else\n                TehrsCDs._interrupts_warlocks[currentPlayer][\"Spell Lock\"] = nil;\n            end\n        elseif not sacSpecced then    \n            TehrsCDs._interrupts_warlocks[currentPlayer][\"Spell Lock\"] = nil;\n        end\n    end\nend\n\n\n-- default for general settings\nTehrsCDs[\"Show Settings\"].ShowEmptySections = TehrsCDs[\"Show Settings\"].ShowEmptySections == nil and true or TehrsCDs[\"Show Settings\"].ShowEmptySections\nTehrsCDs[\"Show Settings\"].ShowOnCooldownOnly = TehrsCDs[\"Show Settings\"].ShowOnCooldownOnly == nil and false or TehrsCDs[\"Show Settings\"].ShowOnCooldownOnly\n\n-- Set this to false if you want BoP to be displayed as an External CD, useful for players such as tanks that disable Utility CDs but still want to track BoP\nTehrsCDs[\"Show Settings\"].BoPUtility = TehrsCDs[\"Show Settings\"].BoPUtility == nil and true or TehrsCDs[\"Show Settings\"].BoPUtility\n\n--External CDs\nTehrsCDs[\"Show Settings\"].Safeguard = TehrsCDs[\"Show Settings\"].Safeguard == nil and true or TehrsCDs[\"Show Settings\"].Safeguard\nTehrsCDs[\"Show Settings\"].GSpirit = TehrsCDs[\"Show Settings\"].GSpirit == nil and true or TehrsCDs[\"Show Settings\"].GSpirit\nTehrsCDs[\"Show Settings\"].PSup = TehrsCDs[\"Show Settings\"].PSup == nil and true or TehrsCDs[\"Show Settings\"].PSup\nTehrsCDs[\"Show Settings\"].IBark = TehrsCDs[\"Show Settings\"].IBark == nil and true or TehrsCDs[\"Show Settings\"].IBark\nTehrsCDs[\"Show Settings\"].Spellward = TehrsCDs[\"Show Settings\"].Spellward == nil and true or TehrsCDs[\"Show Settings\"].Spellward\nTehrsCDs[\"Show Settings\"].Sac = TehrsCDs[\"Show Settings\"].Sac == nil and true or TehrsCDs[\"Show Settings\"].Sac\nTehrsCDs[\"Show Settings\"].LCocoon = TehrsCDs[\"Show Settings\"].LCocoon == nil and true or TehrsCDs[\"Show Settings\"].LCocoon\nTehrsCDs[\"Show Settings\"].LoH = TehrsCDs[\"Show Settings\"].LoH == nil and true or TehrsCDs[\"Show Settings\"].LoH\n\n--Raid CDs\nTehrsCDs[\"Show Settings\"].CShout = TehrsCDs[\"Show Settings\"].CShout == nil and true or TehrsCDs[\"Show Settings\"].CShout\nTehrsCDs[\"Show Settings\"].DHymn = TehrsCDs[\"Show Settings\"].DHymn == nil and true or TehrsCDs[\"Show Settings\"].DHymn\nTehrsCDs[\"Show Settings\"].VE = TehrsCDs[\"Show Settings\"].VE == nil and true or TehrsCDs[\"Show Settings\"].VE\nTehrsCDs[\"Show Settings\"].Barrier = TehrsCDs[\"Show Settings\"].Barrier == nil and true or TehrsCDs[\"Show Settings\"].Barrier\nTehrsCDs[\"Show Settings\"].Apotheosis = TehrsCDs[\"Show Settings\"].Apotheosis == nil and true or TehrsCDs[\"Show Settings\"].Apotheosis\nTehrsCDs[\"Show Settings\"].Salvation = TehrsCDs[\"Show Settings\"].Salvation == nil and true or TehrsCDs[\"Show Settings\"].Salvation\nTehrsCDs[\"Show Settings\"].Rapture = TehrsCDs[\"Show Settings\"].Rapture == nil and true or TehrsCDs[\"Show Settings\"].Rapture\nTehrsCDs[\"Show Settings\"].Darkness = TehrsCDs[\"Show Settings\"].Darkness == nil and true or TehrsCDs[\"Show Settings\"].Darkness\nTehrsCDs[\"Show Settings\"].Tranq = TehrsCDs[\"Show Settings\"].Tranq == nil and true or TehrsCDs[\"Show Settings\"].Tranq\nTehrsCDs[\"Show Settings\"].Flourish = TehrsCDs[\"Show Settings\"].Flourish == nil and true or TehrsCDs[\"Show Settings\"].Flourish\nTehrsCDs[\"Show Settings\"].Tree = TehrsCDs[\"Show Settings\"].Tree == nil and true or TehrsCDs[\"Show Settings\"].Tree\nTehrsCDs[\"Show Settings\"].AuraM = TehrsCDs[\"Show Settings\"].AuraM == nil and true or TehrsCDs[\"Show Settings\"].AuraM\nTehrsCDs[\"Show Settings\"].Aegis = TehrsCDs[\"Show Settings\"].Aegis == nil and true or TehrsCDs[\"Show Settings\"].Aegis\nTehrsCDs[\"Show Settings\"].AProt = TehrsCDs[\"Show Settings\"].AProt == nil and true or TehrsCDs[\"Show Settings\"].AProt\nTehrsCDs[\"Show Settings\"].AG = TehrsCDs[\"Show Settings\"].AG == nil and true or TehrsCDs[\"Show Settings\"].AG\nTehrsCDs[\"Show Settings\"].HTide = TehrsCDs[\"Show Settings\"].HTide == nil and true or TehrsCDs[\"Show Settings\"].HTide\nTehrsCDs[\"Show Settings\"].Ascendance = TehrsCDs[\"Show Settings\"].Ascendance == nil and true or TehrsCDs[\"Show Settings\"].Ascendance\nTehrsCDs[\"Show Settings\"].SLT = TehrsCDs[\"Show Settings\"].SLT == nil and true or TehrsCDs[\"Show Settings\"].SLT\nTehrsCDs[\"Show Settings\"].Revival = TehrsCDs[\"Show Settings\"].Revival == nil and true or TehrsCDs[\"Show Settings\"].Revival\nTehrsCDs[\"Show Settings\"].Wings = TehrsCDs[\"Show Settings\"].Wings == nil and true or TehrsCDs[\"Show Settings\"].Wings\n\n--Utility CDs\nTehrsCDs[\"Show Settings\"].Hope = TehrsCDs[\"Show Settings\"].Hope == nil and true or TehrsCDs[\"Show Settings\"].Hope\nTehrsCDs[\"Show Settings\"].Grip = TehrsCDs[\"Show Settings\"].Grip == nil and true or TehrsCDs[\"Show Settings\"].Grip\nTehrsCDs[\"Show Settings\"].Innervate = TehrsCDs[\"Show Settings\"].Innervate == nil and true or TehrsCDs[\"Show Settings\"].Innervate\nTehrsCDs[\"Show Settings\"].Roar = TehrsCDs[\"Show Settings\"].Roar == nil and true or TehrsCDs[\"Show Settings\"].Roar\nTehrsCDs[\"Show Settings\"].BoP = TehrsCDs[\"Show Settings\"].BoP == nil and true or TehrsCDs[\"Show Settings\"].BoP\nTehrsCDs[\"Show Settings\"].WindRush = TehrsCDs[\"Show Settings\"].WindRush == nil and true or TehrsCDs[\"Show Settings\"].WindRush\nTehrsCDs[\"Show Settings\"].Misdirect = TehrsCDs[\"Show Settings\"].Misdirect == nil and true or TehrsCDs[\"Show Settings\"].Misdirect\nTehrsCDs[\"Show Settings\"].Tricks = TehrsCDs[\"Show Settings\"].Tricks == nil and true or TehrsCDs[\"Show Settings\"].Tricks\nTehrsCDs[\"Show Settings\"].Shroud = TehrsCDs[\"Show Settings\"].Shroud == nil and true or TehrsCDs[\"Show Settings\"].Shroud\nTehrsCDs[\"Show Settings\"].Treants = TehrsCDs[\"Show Settings\"].Treants == nil and true or TehrsCDs[\"Show Settings\"].Treants\nTehrsCDs[\"Show Settings\"].Shadowmeld = TehrsCDs[\"Show Settings\"].Shadowmeld == nil and true or TehrsCDs[\"Show Settings\"].Shadowmeld\n\n--Immunities\nTehrsCDs[\"Show Settings\"].Netherwalk = TehrsCDs[\"Show Settings\"].Netherwalk == nil and true or TehrsCDs[\"Show Settings\"].Netherwalk\nTehrsCDs[\"Show Settings\"].Bubble = TehrsCDs[\"Show Settings\"].Bubble == nil and true or TehrsCDs[\"Show Settings\"].Bubble\nTehrsCDs[\"Show Settings\"].Turtle = TehrsCDs[\"Show Settings\"].Turtle == nil and true or TehrsCDs[\"Show Settings\"].Turtle\nTehrsCDs[\"Show Settings\"].Cloak = TehrsCDs[\"Show Settings\"].Cloak == nil and true or TehrsCDs[\"Show Settings\"].Cloak\nTehrsCDs[\"Show Settings\"].Block = TehrsCDs[\"Show Settings\"].Block == nil and true or TehrsCDs[\"Show Settings\"].Block\n\n--Crowd Control\nTehrsCDs[\"Show Settings\"].Stomp = TehrsCDs[\"Show Settings\"].Stomp == nil and true or TehrsCDs[\"Show Settings\"].Stomp\nTehrsCDs[\"Show Settings\"].BullRush = TehrsCDs[\"Show Settings\"].BullRush == nil and true or TehrsCDs[\"Show Settings\"].BullRush\nTehrsCDs[\"Show Settings\"].Ursol = TehrsCDs[\"Show Settings\"].Ursol == nil and true or TehrsCDs[\"Show Settings\"].Ursol\nTehrsCDs[\"Show Settings\"].Typhoon = TehrsCDs[\"Show Settings\"].Typhoon == nil and true or TehrsCDs[\"Show Settings\"].Typhoon\nTehrsCDs[\"Show Settings\"].MindBomb = TehrsCDs[\"Show Settings\"].MindBomb == nil and true or TehrsCDs[\"Show Settings\"].MindBomb\nTehrsCDs[\"Show Settings\"].Shockwave = TehrsCDs[\"Show Settings\"].Shockwave == nil and true or TehrsCDs[\"Show Settings\"].Shockwave\nTehrsCDs[\"Show Settings\"].Chains = TehrsCDs[\"Show Settings\"].Chains == nil and true or TehrsCDs[\"Show Settings\"].Chains\nTehrsCDs[\"Show Settings\"].Grasp = TehrsCDs[\"Show Settings\"].Grasp == nil and true or TehrsCDs[\"Show Settings\"].Grasp\nTehrsCDs[\"Show Settings\"].CapTotem = TehrsCDs[\"Show Settings\"].CapTotem == nil and true or TehrsCDs[\"Show Settings\"].CapTotem\nTehrsCDs[\"Show Settings\"].Binding = TehrsCDs[\"Show Settings\"].Binding == nil and true or TehrsCDs[\"Show Settings\"].Binding\nTehrsCDs[\"Show Settings\"].Nova = TehrsCDs[\"Show Settings\"].Nova == nil and true or TehrsCDs[\"Show Settings\"].Nova\nTehrsCDs[\"Show Settings\"].Infernal = TehrsCDs[\"Show Settings\"].Infernal == nil and true or TehrsCDs[\"Show Settings\"].Infernal\nTehrsCDs[\"Show Settings\"].Shadowfury = TehrsCDs[\"Show Settings\"].Shadowfury == nil and true or TehrsCDs[\"Show Settings\"].Shadowfury\nTehrsCDs[\"Show Settings\"].Sweep = TehrsCDs[\"Show Settings\"].Sweep == nil and true or TehrsCDs[\"Show Settings\"].Sweep\nTehrsCDs[\"Show Settings\"].Shining = TehrsCDs[\"Show Settings\"].Shining == nil and true or TehrsCDs[\"Show Settings\"].Shining\nTehrsCDs[\"Show Settings\"].Ring = TehrsCDs[\"Show Settings\"].Ring == nil and true or TehrsCDs[\"Show Settings\"].Ring\nTehrsCDs[\"Show Settings\"].Thunderstorm = TehrsCDs[\"Show Settings\"].Thunderstorm == nil and true or TehrsCDs[\"Show Settings\"].Thunderstorm\n\n--Interrupts\n--[[TehrsCDs[\"Show Settings\"].Torrent = TehrsCDs[\"Show Settings\"].Torrent == nil and true or TehrsCDs[\"Show Settings\"].Torrent\nArcane Torrent isn't an interrupt anymore! Holding onto this until I add dispels.\n]]\nTehrsCDs[\"Show Settings\"].Pummel = TehrsCDs[\"Show Settings\"].Pummel == nil and true or TehrsCDs[\"Show Settings\"].Pummel\nTehrsCDs[\"Show Settings\"].Silence = TehrsCDs[\"Show Settings\"].Silence == nil and true or TehrsCDs[\"Show Settings\"].Silence\nTehrsCDs[\"Show Settings\"].Disrupt = TehrsCDs[\"Show Settings\"].Disrupt == nil and true or TehrsCDs[\"Show Settings\"].Disrupt\nTehrsCDs[\"Show Settings\"].SigilSilence = TehrsCDs[\"Show Settings\"].SigilSilence == nil and true or TehrsCDs[\"Show Settings\"].SigilSilence\nTehrsCDs[\"Show Settings\"].SBash = TehrsCDs[\"Show Settings\"].SBash == nil and true or TehrsCDs[\"Show Settings\"].SBash\nTehrsCDs[\"Show Settings\"].SBeam = TehrsCDs[\"Show Settings\"].SBeam == nil and true or TehrsCDs[\"Show Settings\"].SBeam\nTehrsCDs[\"Show Settings\"].MindFreeze = TehrsCDs[\"Show Settings\"].MindFreeze == nil and true or TehrsCDs[\"Show Settings\"].MindFreeze\nTehrsCDs[\"Show Settings\"].Rebuke = TehrsCDs[\"Show Settings\"].Rebuke == nil and true or TehrsCDs[\"Show Settings\"].Rebuke\nTehrsCDs[\"Show Settings\"].WShear = TehrsCDs[\"Show Settings\"].WShear == nil and true or TehrsCDs[\"Show Settings\"].WShear\nTehrsCDs[\"Show Settings\"].Muzzle = TehrsCDs[\"Show Settings\"].Muzzle == nil and true or TehrsCDs[\"Show Settings\"].Muzzle\nTehrsCDs[\"Show Settings\"].CShot = TehrsCDs[\"Show Settings\"].CShot == nil and true or TehrsCDs[\"Show Settings\"].CShot\nTehrsCDs[\"Show Settings\"].Kick = TehrsCDs[\"Show Settings\"].Kick == nil and true or TehrsCDs[\"Show Settings\"].Kick\nTehrsCDs[\"Show Settings\"].CSpell = TehrsCDs[\"Show Settings\"].CSpell == nil and true or TehrsCDs[\"Show Settings\"].CSpell\nTehrsCDs[\"Show Settings\"].SpellLock = TehrsCDs[\"Show Settings\"].SpellLock == nil and true or TehrsCDs[\"Show Settings\"].SpellLock\nTehrsCDs[\"Show Settings\"].SStrike = TehrsCDs[\"Show Settings\"].SStrike == nil and true or TehrsCDs[\"Show Settings\"].SStrike\n\n--Battle Rezzes\nTehrsCDs[\"Show Settings\"].Rebirth = TehrsCDs[\"Show Settings\"].Rebirth == nil and true or TehrsCDs[\"Show Settings\"].Rebirth\nTehrsCDs[\"Show Settings\"].RaiseAlly = TehrsCDs[\"Show Settings\"].RaiseAlly == nil and true or TehrsCDs[\"Show Settings\"].RaiseAlly\nTehrsCDs[\"Show Settings\"].Ankh = TehrsCDs[\"Show Settings\"].Ankh == nil and true or TehrsCDs[\"Show Settings\"].Ankh\nTehrsCDs[\"Show Settings\"].Soulstone = TehrsCDs[\"Show Settings\"].Soulstone == nil and true or TehrsCDs[\"Show Settings\"].Soulstone\n\n--Group Tables\nTehrsCDs._externCDs_druids = nil; \nTehrsCDs._externCDs_monks = nil;\nTehrsCDs._externCDs_paladins = nil;\nTehrsCDs._externCDs_priests = nil; \nTehrsCDs._externCDs_warriors = nil;\nTehrsCDs._externCDs_dhs = nil;\nTehrsCDs._raidCDs_druids = nil;\nTehrsCDs._raidCDs_monks = nil;\nTehrsCDs._raidCDs_paladins = nil;\nTehrsCDs._raidCDs_priests = nil;\nTehrsCDs._raidCDs_shamans = nil;\nTehrsCDs._raidCDs_warriors = nil;\nTehrsCDs._raidCDs_dhs = nil;\nTehrsCDs._utilityCDs_dks = nil;    \nTehrsCDs._aoeCCs_dhs = nil;                \nTehrsCDs._utilityCDs_shamans = nil;\nTehrsCDs._utilityCDs_druids = nil;\nTehrsCDs._utilityCDs_priests = nil;\nTehrsCDs._utilityCDs_paladins = nil;\nTehrsCDs._interrupts_priests = nil;\nTehrsCDs._interrupts_mages = nil;\nTehrsCDs._interrupts_hunters = nil;    \nTehrsCDs._interrupts_shamans = nil;\nTehrsCDs._interrupts_monks = nil;\nTehrsCDs._interrupts_paladins = nil;\nTehrsCDs._interrupts_dks = nil;  \nTehrsCDs._interrupts_dhs = nil;              \nTehrsCDs._interrupts_rogues = nil;    \nTehrsCDs._interrupts_warriors = nil;\nTehrsCDs._interrupts_druids = nil;   \nTehrsCDs._interrupts_warlocks = nil;             \nTehrsCDs._rezCDs_dks = nil;      \nTehrsCDs._rezCDs_druids = nil; \nTehrsCDs._rezCDs_warlocks = nil;\nTehrsCDs._rezCDs_shamans = nil;   \nTehrsCDs._aoeCCs_druids = nil;\nTehrsCDs._aoeCCs_priests = nil;        \nTehrsCDs._aoeCCs_hunters = nil;\nTehrsCDs._aoeCCs_mages = nil;\nTehrsCDs._aoeCCs_monks = nil;      \nTehrsCDs._aoeCCs_shamans = nil;       \nTehrsCDs._aoeCCs_warriors = nil;\nTehrsCDs._aoeCCs_warlocks = nil; \nTehrsCDs._aoeCCs_dks = nil; \nTehrsCDs._interrupts_belfs = nil;  \nTehrsCDs._aoeCCs_tauren = nil;   \nTehrsCDs._aoeCCs_hmtauren = nil;         \nTehrsCDs._immunityCDs_hunters = nil;\nTehrsCDs._immunityCDs_rogues = nil;\nTehrsCDs._immunityCDs_paladins = nil; \nTehrsCDs._immunityCDs_mages = nil; \nTehrsCDs._immunityCDs_dhs = nil; \nTehrsCDs._utilityCDs_hunters = nil;\nTehrsCDs._utilityCDs_rogues = nil; \nTehrsCDs._raidCDs_groupPoll = GetTime();\nTehrsCDs._raidCDs_groupPoll_state = nil;\nTehrsCDs._raidCDs_groupPoll_playerCounter = nil;\nTehrsCDs._raidCDs_groupPoll_currentPlayer = nil;\n\n-- This is just here so I can debug when shit hits the fan, you will never need to enable this\nTehrsCDs.DEBUG_GroupPoll = false",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["use_unit"] = true,
						["buffShowOn"] = "showOnActive",
						["names"] = {
						},
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["1"] = {
					["trigger"] = {
						["custom_type"] = "status",
						["type"] = "custom",
						["custom"] = "function()\n    return true;\nend",
						["unevent"] = "auto",
						["check"] = "update",
						["event"] = "Chat Message",
						["genericShowOn"] = "showOnActive",
						["custom_hide"] = "timed",
					},
				},
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 29,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desc"] = "Handles the polling of your group in order to determine which cooldowns are available.     \n    \n    \n    \nTo disable any individual cooldowns:\n\n    Use the button menu!\n    \n    \nTo change the polling rate of the aura:\n\n    Go to 'RaidCDs_GroupPoll' > Actions > On Init > 'Expand Text Editor'\n    Change 'aura_env.pollRate' to a number of your choosing (recommended 0.5 to 2)    \n\n    \nTo display Blessing of Protection (BoP) in the External section (displays in the Utility section by default):\n\n    Use the button menu!",
			["font"] = "Friz Quadrata TT",
			["version"] = 1,
			["height"] = 10.94017124176,
			["load"] = {
				["ingroup"] = {
					["single"] = "raid",
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_ingroup"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "ten",
					["multi"] = {
						["ten"] = true,
					},
				},
			},
			["fontSize"] = 11,
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["wordWrap"] = "WordWrap",
			["selfPoint"] = "BOTTOM",
			["fixedWidth"] = 200,
			["justify"] = "LEFT",
			["parent"] = "!Tehr's CDs",
			["id"] = "RaidCDs_GroupPoll",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["width"] = 22.658109664917,
			["uid"] = "r5WLFPYI01V",
			["config"] = {
			},
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["shadowYOffset"] = -1,
			["url"] = "https://wago.io/RaidCDs",
		},
		["Shield Block"] = {
			["selfPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["color"] = {
				1, -- [1]
				0.0431372549019608, -- [2]
				0.858823529411765, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = 100,
			["anchorPoint"] = "CENTER",
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["conditions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"Shield Block", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["texture"] = "603339",
			["alpha"] = 1,
			["internalVersion"] = 29,
			["config"] = {
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["id"] = "Shield Block",
			["rotation"] = 0,
			["frameStrata"] = 1,
			["width"] = 300,
			["discrete_rotation"] = 90,
			["uid"] = "aZl7YJ3K2LR",
			["desaturate"] = true,
			["anchorFrameType"] = "SCREEN",
			["height"] = 150,
			["rotate"] = false,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["use_combat"] = true,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0,
		},
		["FoF1"] = {
			["alpha"] = 1,
			["authorOptions"] = {
			},
			["xOffset"] = -100,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["mirror"] = false,
			["yOffset"] = 30,
			["regionType"] = "texture",
			["conditions"] = {
			},
			["blendMode"] = "BLEND",
			["anchorPoint"] = "CENTER",
			["desaturate"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["texture"] = "450930",
			["config"] = {
			},
			["internalVersion"] = 29,
			["discrete_rotation"] = 0,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["id"] = "FoF1",
			["width"] = 125,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["rotation"] = 90,
			["uid"] = "Y(OKNkMWojm",
			["selfPoint"] = "CENTER",
			["triggers"] = {
				{
					["trigger"] = {
						["useStacks"] = true,
						["auranames"] = {
							"Fingers of Frost", -- [1]
						},
						["matchesShowOn"] = "showOnActive",
						["names"] = {
							"Fingers of Frost", -- [1]
						},
						["useCount"] = true,
						["buffShowOn"] = "showOnActive",
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["subeventSuffix"] = "_CAST_START",
						["stacksOperator"] = ">=",
						["unit"] = "player",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["countOperator"] = ">=",
						["spellIds"] = {
						},
						["count"] = "1",
						["use_tooltip"] = false,
						["useName"] = true,
						["combineMatches"] = "showLowest",
						["stacks"] = "1",
						["useGroup_count"] = false,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["height"] = 200,
			["rotate"] = true,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "Fingers of Frost",
		},
		["RaidCDs_CDText"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "%c",
			["customText"] = "function ()    \n    \n    local parentName = WeakAurasSaved.displays[WeakAuras.regions[aura_env.id].region:GetParent().id]\n    if (parentName[\"TehrsRaidCDs\"] == nil) then parentName[\"TehrsRaidCDs\"] = {} end    \n    if (parentName[\"TehrsRaidCDs\"][\"Show Settings\"] == nil) then parentName[\"TehrsRaidCDs\"][\"Show Settings\"] = {} end\n    local TehrsCDs = parentName[\"TehrsRaidCDs\"]        \n    \n    if (TehrsCDs._raidCDs_cdText == nil) then TehrsCDs._raidCDs_cdText = \"\" end\n    \n    local filename, fontHeight, flags = WeakAuras.regions[WeakAurasSaved.displays[WeakAuras.regions[aura_env.id].region:GetParent().id][\"controlledChildren\"][3]].region.text:GetFont()\n    WeakAuras.regions[aura_env.id].region.text:SetFont(filename,fontHeight,flags)\n    \n    local point, relativeTo, relativePoint, xOffset, yOffset = WeakAuras.regions[WeakAurasSaved.displays[WeakAuras.regions[aura_env.id].region:GetParent().id][\"controlledChildren\"][3]].region:GetPoint()\n    local offsetAmount = -50 + (fontHeight-11)*5\n    WeakAuras.regions[aura_env.id].region:SetPoint(point, relativeTo, relativePoint, offsetAmount, yOffset)\n    \n    return \"                                  \"..TehrsCDs._raidCDs_cdText;   \nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/RaidCDs",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.point, aura_env.relativeTo, aura_env.relativePoint, aura_env.xOffset, aura_env.yOffset = WeakAuras.regions[aura_env.id].region:GetPoint()",
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["buffShowOn"] = "showOnActive",
						["unevent"] = "auto",
						["custom_type"] = "status",
						["use_absorbMode"] = true,
						["event"] = "Health",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["custom"] = "function()\n    local parentName = WeakAurasSaved.displays[WeakAuras.regions[aura_env.id].region:GetParent().id]\n    if (parentName[\"TehrsRaidCDs\"] == nil) then parentName[\"TehrsRaidCDs\"] = {} end    \n    if (parentName[\"TehrsRaidCDs\"][\"Show Settings\"] == nil) then parentName[\"TehrsRaidCDs\"][\"Show Settings\"] = {} end\n    local TehrsCDs = parentName[\"TehrsRaidCDs\"]    \n    return TehrsCDs.minmaxDisplay\nend",
						["spellIds"] = {
						},
						["check"] = "update",
						["unit"] = "player",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["custom"] = "function ()\n    return true\nend",
					},
				}, -- [1]
				["1"] = {
					["trigger"] = {
						["type"] = "custom",
						["custom"] = "function()\n    local parentName = WeakAurasSaved.displays[WeakAuras.regions[aura_env.id].region:GetParent().id]\n    if (parentName[\"TehrsRaidCDs\"] == nil) then parentName[\"TehrsRaidCDs\"] = {} end    \n    if (parentName[\"TehrsRaidCDs\"][\"Show Settings\"] == nil) then parentName[\"TehrsRaidCDs\"][\"Show Settings\"] = {} end\n    local TehrsCDs = parentName[\"TehrsRaidCDs\"]    \n    return TehrsCDs.minmaxDisplay\nend",
						["custom_type"] = "status",
						["check"] = "update",
						["genericShowOn"] = "showOnActive",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
						["custom"] = "function ()\n    return true\nend",
					},
				},
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 29,
			["wordWrap"] = "WordWrap",
			["desc"] = "Displays the name of cooldowns",
			["font"] = "Expressway",
			["version"] = 1,
			["height"] = 306.32479858398,
			["load"] = {
				["ingroup"] = {
					["single"] = "raid",
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_ingroup"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "ten",
					["multi"] = {
						["ten"] = true,
					},
				},
			},
			["fontSize"] = 11,
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["automaticWidth"] = "Auto",
			["fixedWidth"] = 200,
			["justify"] = "LEFT",
			["authorOptions"] = {
			},
			["id"] = "RaidCDs_CDText",
			["selfPoint"] = "BOTTOMLEFT",
			["frameStrata"] = 3,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "01CQk56woig",
			["config"] = {
			},
			["parent"] = "!Tehr's CDs",
			["width"] = 439.958984375,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["xOffset"] = -50,
			["shadowYOffset"] = -1,
		},
		["Right Full Power"] = {
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["xOffset"] = 145,
			["authorOptions"] = {
			},
			["mirror"] = true,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["parent"] = "Replacment Rampage Aura for Frothing Berserker",
			["blendMode"] = "BLEND",
			["regionType"] = "texture",
			["rotation"] = 0,
			["url"] = "https://wago.io/4k_QTWahf/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["powertype"] = 1,
						["use_powertype"] = true,
						["custom_hide"] = "timed",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["event"] = "Power",
						["use_percentpower"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["spellIds"] = {
						},
						["use_unit"] = true,
						["use_requirePowerType"] = false,
						["debuffType"] = "HELPFUL",
						["percentpower"] = "100",
						["percentpower_operator"] = "==",
					},
					["untrigger"] = {
						["use_unit"] = true,
						["unit"] = "player",
						["use_powertype"] = false,
						["use_percentpower"] = false,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnMissing",
						["unit"] = "player",
						["names"] = {
							"Meat Cleaver", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["texture"] = "Textures\\SpellActivationOverlays\\Raging_Blow",
			["internalVersion"] = 29,
			["config"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "grow",
					["easeStrength"] = 3,
				},
				["main"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "pulse",
					["easeStrength"] = 3,
				},
				["finish"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "grow",
					["easeStrength"] = 3,
				},
			},
			["id"] = "Right Full Power",
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 173,
			["discrete_rotation"] = 180,
			["uid"] = "6TSHMxsbWtg",
			["version"] = 3,
			["alpha"] = 1,
			["height"] = 305,
			["rotate"] = true,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 14,
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
			},
			["desaturate"] = true,
		},
		["RaidCDs_Background"] = {
			["user_y"] = 0,
			["desc"] = "DO NOT DELETE. Buttons get anchored to this frame, and if this frame doesn't exist, you will disable buttons, and can potentially get errors.\n    \n    \n    \nTo hide the background, or to adjust its darkness on-the-fly:\n\n    Use the button menu to Toggle Sliders, then adjust the alpha slider to your liking",
			["desaturateForeground"] = true,
			["user_x"] = 0,
			["parent"] = "!Tehr's CDs",
			["backgroundOffset"] = 2,
			["xOffset"] = -128.00006103516,
			["yOffset"] = -3,
			["anchorPoint"] = "CENTER",
			["desaturateBackground"] = true,
			["color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["authorOptions"] = {
			},
			["sameTexture"] = true,
			["url"] = "https://wago.io/RaidCDs",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "status",
						["event"] = "Health",
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["names"] = {
						},
						["spellIds"] = {
						},
						["custom"] = "function()\n    local parentName = WeakAurasSaved.displays[WeakAuras.regions[aura_env.id].region:GetParent().id]\n    if (parentName[\"TehrsRaidCDs\"] == nil) then parentName[\"TehrsRaidCDs\"] = {} end    \n    if (parentName[\"TehrsRaidCDs\"][\"Show Settings\"] == nil) then parentName[\"TehrsRaidCDs\"][\"Show Settings\"] = {} end\n    local TehrsCDs = parentName[\"TehrsRaidCDs\"]    \n    if TehrsCDs[\"Show Settings\"].WhenSolo or (GetNumGroupMembers() > 0) then\n        if TehrsCDs.minmaxDisplay and TehrsCDs._raidCDs_namesText ~= \"\\n\" then\n            return true\n        end\n    end\nend",
						["check"] = "update",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["custom"] = "function ()\n    return true\nend",
					},
				}, -- [1]
				["1"] = {
					["trigger"] = {
						["type"] = "custom",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["customName"] = "",
						["custom"] = "function()\n    local parentName = WeakAurasSaved.displays[WeakAuras.regions[aura_env.id].region:GetParent().id]\n    if (parentName[\"TehrsRaidCDs\"] == nil) then parentName[\"TehrsRaidCDs\"] = {} end    \n    if (parentName[\"TehrsRaidCDs\"][\"Show Settings\"] == nil) then parentName[\"TehrsRaidCDs\"][\"Show Settings\"] = {} end\n    local TehrsCDs = parentName[\"TehrsRaidCDs\"]    \n    if TehrsCDs[\"Show Settings\"].WhenSolo or (GetNumGroupMembers() > 0) then\n        if TehrsCDs.minmaxDisplay and TehrsCDs._raidCDs_namesText ~= \"\\n\" then\n            return true\n        end\n    end\nend",
						["check"] = "update",
						["custom_type"] = "status",
						["event"] = "Conditions",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
						["custom"] = "function ()\n    return true\nend",
					},
				},
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 29,
			["foregroundColor"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["selfPoint"] = "BOTTOMLEFT",
			["displayIcon"] = 134062,
			["customTextUpdate"] = "update",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["version"] = 1,
			["fontFlags"] = "OUTLINE",
			["height"] = 10,
			["rotate"] = false,
			["crop_y"] = 0.41,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["crop_x"] = 0.41,
			["fontSize"] = 12,
			["displayStacks"] = " ",
			["startAngle"] = 0,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "local parentName = WeakAurasSaved.displays[WeakAuras.regions[aura_env.id].region:GetParent().id]\nif (parentName[\"TehrsRaidCDs\"] == nil) then parentName[\"TehrsRaidCDs\"] = {} end    \nif (parentName[\"TehrsRaidCDs\"][\"Show Settings\"] == nil) then parentName[\"TehrsRaidCDs\"][\"Show Settings\"] = {} end\nlocal TehrsCDs = parentName[\"TehrsRaidCDs\"]       \n\nTehrsCDs.BackgroundAlpha = TehrsCDs.BackgroundAlpha or 0.5 \n\nWeakAuras.regions[parentName[\"controlledChildren\"][6]].region.texture:SetVertexColor(0,0,0,TehrsCDs.BackgroundAlpha)",
					["do_custom"] = true,
				},
				["finish"] = {
				},
			},
			["desaturate"] = false,
			["mirror"] = false,
			["discrete_rotation"] = 0,
			["crop"] = 0.41,
			["load"] = {
				["ingroup"] = {
					["single"] = "raid",
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_ingroup"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "ten",
					["multi"] = {
						["ten"] = true,
					},
				},
			},
			["blendMode"] = "BLEND",
			["uid"] = "h6PVz9ngPmH",
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["compress"] = false,
			["id"] = "RaidCDs_Background",
			["width"] = 200,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["regionType"] = "texture",
			["config"] = {
			},
			["inverse"] = false,
			["frameStrata"] = 2,
			["orientation"] = "VERTICAL",
			["conditions"] = {
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Brain Freeze"] = {
			["alpha"] = 1,
			["color"] = {
				1, -- [1]
				0.0784313725490196, -- [2]
				0.96078431372549, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["mirror"] = false,
			["yOffset"] = -90,
			["anchorPoint"] = "CENTER",
			["regionType"] = "texture",
			["blendMode"] = "BLEND",
			["conditions"] = {
			},
			["texture"] = "623952",
			["actions"] = {
				["start"] = {
					["do_loop"] = false,
					["do_glow"] = false,
					["sound"] = "Sound\\Doodad\\PortcullisActive_Closed.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["buffShowOn"] = "showOnActive",
						["type"] = "aura2",
						["use_debuffClass"] = false,
						["useGroup_count"] = false,
						["unit"] = "player",
						["matchesShowOn"] = "showOnActive",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["useName"] = true,
						["use_tooltip"] = false,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
							"Brain Freeze", -- [1]
						},
						["combineMatches"] = "showLowest",
						["auranames"] = {
							"Brain Freeze", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["anchorFrameType"] = "SCREEN",
			["internalVersion"] = 29,
			["config"] = {
			},
			["selfPoint"] = "CENTER",
			["id"] = "Brain Freeze",
			["discrete_rotation"] = 90,
			["frameStrata"] = 1,
			["width"] = 250,
			["rotation"] = 180,
			["uid"] = "3hMB9ZIwbSu",
			["desaturate"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["preset"] = "fade",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "shrink",
					["easeStrength"] = 3,
				},
			},
			["height"] = 100,
			["rotate"] = false,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "MAGE",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["use_class"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0,
		},
		["BattleCry"] = {
			["selfPoint"] = "CENTER",
			["xOffset"] = 0,
			["regionType"] = "texture",
			["mirror"] = false,
			["yOffset"] = -120,
			["anchorPoint"] = "CENTER",
			["color"] = {
				0.650980392156863, -- [1]
				0.0745098039215686, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["blendMode"] = "BLEND",
			["rotate"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
							1719, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"Recklessness", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["texture"] = "Textures\\SpellActivationOverlays\\Backlash",
			["desaturate"] = false,
			["internalVersion"] = 29,
			["config"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["id"] = "BattleCry",
			["rotation"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["discrete_rotation"] = 180,
			["uid"] = "L2807iR0Lp8",
			["width"] = 300,
			["alpha"] = 1,
			["height"] = 150,
			["conditions"] = {
			},
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["authorOptions"] = {
			},
		},
		["Left Full Power"] = {
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = -145,
			["conditions"] = {
			},
			["parent"] = "Replacment Rampage Aura for Frothing Berserker",
			["authorOptions"] = {
			},
			["mirror"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["blendMode"] = "BLEND",
			["regionType"] = "texture",
			["rotation"] = 0,
			["url"] = "https://wago.io/4k_QTWahf/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["powertype"] = 1,
						["use_powertype"] = true,
						["custom_hide"] = "timed",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["event"] = "Power",
						["use_percentpower"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["spellIds"] = {
						},
						["unit"] = "player",
						["use_requirePowerType"] = false,
						["debuffType"] = "HELPFUL",
						["percentpower"] = "100",
						["percentpower_operator"] = "==",
					},
					["untrigger"] = {
						["use_unit"] = true,
						["unit"] = "player",
						["use_powertype"] = false,
						["use_percentpower"] = false,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnMissing",
						["unit"] = "player",
						["names"] = {
							"Meat Cleaver", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["texture"] = "Textures\\SpellActivationOverlays\\Raging_Blow",
			["internalVersion"] = 29,
			["config"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["preset"] = "grow",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
				},
				["main"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["preset"] = "pulse",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
				},
				["finish"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["preset"] = "grow",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
				},
			},
			["id"] = "Left Full Power",
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 173,
			["discrete_rotation"] = 180,
			["uid"] = "XJ0h9gK8Wge",
			["version"] = 3,
			["alpha"] = 1,
			["height"] = 305,
			["rotate"] = true,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 14,
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
			},
			["desaturate"] = true,
		},
		["Battle Cry"] = {
			["xOffset"] = 0,
			["yOffset"] = 150,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnReady",
						["subeventPrefix"] = "SPELL",
						["use_showgcd"] = false,
						["spellName"] = 1719,
						["type"] = "status",
						["use_genericShowOn"] = true,
						["unevent"] = "auto",
						["use_showOn"] = true,
						["names"] = {
						},
						["event"] = "Cooldown Progress (Spell)",
						["debuffType"] = "HELPFUL",
						["realSpellName"] = "Recklessness",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_remaining"] = true,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["use_unit"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 1719,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["useGlowColor"] = false,
					["glow"] = true,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 48,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["stickyDuration"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["parent"] = "Cooldowns",
			["zoom"] = 0,
			["auto"] = true,
			["width"] = 48,
			["id"] = "Battle Cry",
			["config"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["uid"] = "cMNoL4AXZlr",
			["inverse"] = false,
			["cooldownTextDisabled"] = false,
			["conditions"] = {
			},
			["cooldown"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Cooldowns"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"Avatar", -- [1]
				"Battle Cry", -- [2]
				"Bloodbath", -- [3]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["border"] = false,
			["yOffset"] = 0,
			["regionType"] = "group",
			["borderSize"] = 16,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["scale"] = 1,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["names"] = {
						},
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["borderEdge"] = "None",
			["internalVersion"] = 29,
			["anchorPoint"] = "CENTER",
			["selfPoint"] = "BOTTOMLEFT",
			["id"] = "Cooldowns",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["borderOffset"] = 5,
			["uid"] = "kNWBJvfEakA",
			["config"] = {
			},
			["borderInset"] = 11,
			["conditions"] = {
			},
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["race"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["authorOptions"] = {
			},
		},
		["WARRIOR"] = {
			["authorOptions"] = {
			},
			["yOffset"] = 250,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["use_unit"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["use_alive"] = true,
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnMissing",
						["names"] = {
							"Battle Shout", -- [1]
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 12,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["useGlowColor"] = false,
					["glow"] = true,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 64,
			["load"] = {
				["use_class"] = true,
				["use_level"] = true,
				["level_operator"] = ">=",
				["spec"] = {
					["multi"] = {
					},
				},
				["level"] = "42",
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["parent"] = "ARPG Class Buffs",
			["stickyDuration"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["preset"] = "bounce",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "132333",
			["frameStrata"] = 5,
			["zoom"] = 0,
			["auto"] = false,
			["anchorFrameType"] = "SCREEN",
			["id"] = "WARRIOR",
			["config"] = {
			},
			["alpha"] = 1,
			["width"] = 64,
			["icon"] = true,
			["uid"] = "v6iXxZJvll6",
			["inverse"] = false,
			["cooldownTextDisabled"] = false,
			["conditions"] = {
			},
			["xOffset"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Left FP Cleaver"] = {
			["anchorFrameType"] = "SCREEN",
			["parent"] = "Replacment Rampage Aura for Frothing Berserker",
			["conditions"] = {
			},
			["xOffset"] = -145,
			["authorOptions"] = {
			},
			["mirror"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["color"] = {
				0.34117647058824, -- [1]
				0.40392156862745, -- [2]
				0.94901960784314, -- [3]
				0.75, -- [4]
			},
			["blendMode"] = "BLEND",
			["regionType"] = "texture",
			["rotation"] = 0,
			["url"] = "https://wago.io/4k_QTWahf/3",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["powertype"] = 1,
						["use_powertype"] = true,
						["custom_hide"] = "timed",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["event"] = "Power",
						["use_percentpower"] = true,
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["spellIds"] = {
						},
						["unit"] = "player",
						["use_requirePowerType"] = false,
						["debuffType"] = "HELPFUL",
						["percentpower"] = "100",
						["percentpower_operator"] = "==",
					},
					["untrigger"] = {
						["use_unit"] = true,
						["unit"] = "player",
						["use_powertype"] = false,
						["use_percentpower"] = false,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnActive",
						["custom_hide"] = "timed",
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"Meat Cleaver", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["texture"] = "Textures\\SpellActivationOverlays\\Raging_Blow",
			["internalVersion"] = 29,
			["config"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "grow",
					["easeStrength"] = 3,
				},
				["main"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "pulse",
					["easeStrength"] = 3,
				},
				["finish"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "grow",
					["easeStrength"] = 3,
				},
			},
			["id"] = "Left FP Cleaver",
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 173,
			["discrete_rotation"] = 180,
			["uid"] = "(r9b(E4Etwk",
			["version"] = 3,
			["alpha"] = 1,
			["height"] = 305,
			["rotate"] = true,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "WARRIOR",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["affixes"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["single"] = 14,
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["talent3"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
			},
			["desaturate"] = true,
		},
		["RaidCDs_TimeText"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "%c",
			["customText"] = "function ()    \n    \n    local parentName = WeakAurasSaved.displays[WeakAuras.regions[aura_env.id].region:GetParent().id]\n    if (parentName[\"TehrsRaidCDs\"] == nil) then parentName[\"TehrsRaidCDs\"] = {} end    \n    if (parentName[\"TehrsRaidCDs\"][\"Show Settings\"] == nil) then parentName[\"TehrsRaidCDs\"][\"Show Settings\"] = {} end\n    local TehrsCDs = parentName[\"TehrsRaidCDs\"]        \n    \n    if (TehrsCDs._raidCDs_timeText == nil) then TehrsCDs._raidCDs_timeText = \"\" end\n    \n    local filename, fontHeight, flags = WeakAuras.regions[WeakAurasSaved.displays[WeakAuras.regions[aura_env.id].region:GetParent().id][\"controlledChildren\"][3]].region.text:GetFont()\n    WeakAuras.regions[aura_env.id].region.text:SetFont(filename,fontHeight,flags)\n    \n    local point, relativeTo, relativePoint, xOffset, yOffset = WeakAuras.regions[WeakAurasSaved.displays[WeakAuras.regions[aura_env.id].region:GetParent().id][\"controlledChildren\"][3]].region:GetPoint()\n    local offsetAmount = (fontHeight-11)*15 + 65\n    WeakAuras.regions[aura_env.id].region:SetPoint(point, relativeTo, relativePoint, offsetAmount, yOffset)\n    \n    return \"                                  \"..TehrsCDs._raidCDs_timeText;   \nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/RaidCDs",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.point, aura_env.relativeTo, aura_env.relativePoint, aura_env.xOffset, aura_env.yOffset = WeakAuras.regions[aura_env.id].region:GetPoint()",
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["buffShowOn"] = "showOnActive",
						["unevent"] = "auto",
						["custom_type"] = "status",
						["use_absorbMode"] = true,
						["event"] = "Health",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["custom"] = "function()\n    local parentName = WeakAurasSaved.displays[WeakAuras.regions[aura_env.id].region:GetParent().id]\n    if (parentName[\"TehrsRaidCDs\"] == nil) then parentName[\"TehrsRaidCDs\"] = {} end    \n    if (parentName[\"TehrsRaidCDs\"][\"Show Settings\"] == nil) then parentName[\"TehrsRaidCDs\"][\"Show Settings\"] = {} end\n    local TehrsCDs = parentName[\"TehrsRaidCDs\"]    \n    return TehrsCDs.minmaxDisplay\nend",
						["spellIds"] = {
						},
						["check"] = "update",
						["unit"] = "player",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
						["custom"] = "function ()\n    return true\nend",
					},
				}, -- [1]
				["1"] = {
					["trigger"] = {
						["type"] = "custom",
						["custom"] = "function()\n    local parentName = WeakAurasSaved.displays[WeakAuras.regions[aura_env.id].region:GetParent().id]\n    if (parentName[\"TehrsRaidCDs\"] == nil) then parentName[\"TehrsRaidCDs\"] = {} end    \n    if (parentName[\"TehrsRaidCDs\"][\"Show Settings\"] == nil) then parentName[\"TehrsRaidCDs\"][\"Show Settings\"] = {} end\n    local TehrsCDs = parentName[\"TehrsRaidCDs\"]    \n    return TehrsCDs.minmaxDisplay\nend",
						["custom_type"] = "status",
						["check"] = "update",
						["genericShowOn"] = "showOnActive",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
						["custom"] = "function ()\n    return true\nend",
					},
				},
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 29,
			["wordWrap"] = "WordWrap",
			["desc"] = "Displays the remaining time on cooldowns",
			["font"] = "Expressway",
			["version"] = 1,
			["height"] = 306.32479858398,
			["load"] = {
				["ingroup"] = {
					["single"] = "raid",
					["multi"] = {
					},
				},
				["use_never"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_ingroup"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "ten",
					["multi"] = {
						["ten"] = true,
					},
				},
			},
			["fontSize"] = 11,
			["shadowXOffset"] = 1,
			["regionType"] = "text",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["automaticWidth"] = "Auto",
			["fixedWidth"] = 200,
			["justify"] = "RIGHT",
			["authorOptions"] = {
			},
			["id"] = "RaidCDs_TimeText",
			["selfPoint"] = "BOTTOMRIGHT",
			["frameStrata"] = 3,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "pMkNgdBlSH5",
			["config"] = {
			},
			["parent"] = "!Tehr's CDs",
			["width"] = 439.958984375,
			["shadowColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["xOffset"] = 65,
			["shadowYOffset"] = -1,
		},
	},
	["login_squelch_time"] = 10,
	["lastArchiveClear"] = 1588632359,
	["minimap"] = {
		["hide"] = true,
	},
	["lastUpgrade"] = 1588632367,
	["dbVersion"] = 29,
	["clearOldHistory"] = 30,
	["registered"] = {
	},
	["frame"] = {
		["xOffset"] = -445.19970703125,
		["yOffset"] = -125.55615234375,
		["height"] = 492,
		["width"] = 750.0000610351562,
	},
	["editor_theme"] = "Monokai",
}
