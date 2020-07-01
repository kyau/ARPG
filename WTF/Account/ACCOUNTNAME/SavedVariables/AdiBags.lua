
AdiBagsDB = {
	["namespaces"] = {
		["FilterOverride"] = {
			["profiles"] = {
				["Default"] = {
					["version"] = 3,
					["overrides"] = {
						[87216] = "Miscellaneous#Engineering",
						[49040] = "Miscellaneous#Engineering",
						[140192] = "Miscellaneous#Character",
						[132514] = "Miscellaneous#Engineering",
						[152509] = "Tradeskill#Herb",
						[33820] = "Miscellaneous#Fishing",
						[132515] = "Miscellaneous#Engineering",
						[153510] = "Miscellaneous#Engineering",
						[152510] = "Tradeskill#Herb",
						[124659] = "Miscellaneous#Darkmoon Faire",
						[153597] = "Miscellaneous#Engineering",
						[6532] = "Miscellaneous#Fishing",
						[40768] = "Miscellaneous#Engineering",
						[6533] = "Miscellaneous#Fishing",
						[8529] = "Miscellaneous#Character",
						[128353] = "Miscellaneous#Character",
						[141652] = "Miscellaneous#Character",
						[124671] = "Miscellaneous#Darkmoon Faire",
						[141605] = "Miscellaneous#Character",
						[139175] = "Miscellaneous#Fishing",
						[124660] = "Miscellaneous#Darkmoon Faire",
						[122742] = "Miscellaneous#Fishing",
						[110560] = "Miscellaneous#Character",
						[79249] = "Miscellaneous#Character",
						[64488] = "Miscellaneous#Character",
						[136377] = "Miscellaneous#Fishing",
						[152505] = "Tradeskill#Herb",
						[48933] = "Miscellaneous#Character",
						[152511] = "Tradeskill#Herb",
						[133755] = "Miscellaneous#Fishing",
						[109076] = "Miscellaneous#Engineering",
						[132511] = "Miscellaneous#Engineering",
						[114943] = "Miscellaneous#Engineering",
						[6948] = "Miscellaneous#Character",
						[152506] = "Tradeskill#Herb",
						[138111] = "Miscellaneous#Character",
						[124669] = "Miscellaneous#Darkmoon Faire",
						[46874] = "Miscellaneous#Character",
						[112384] = "Miscellaneous#Character",
						[65274] = "Miscellaneous#Character",
						[64457] = "Miscellaneous#Character",
						[144341] = "Miscellaneous#Engineering",
						[152507] = "Tradeskill#Herb",
						[167698] = "Miscellaneous#Fishing",
						[132516] = "Miscellaneous#Engineering",
						[63207] = "Miscellaneous#Character",
						[81055] = "Miscellaneous#Darkmoon Faire",
					},
				},
			},
		},
		["Herbalism"] = {
		},
		["Artifact Power Currency"] = {
		},
		["CurrencyFrame"] = {
			["profiles"] = {
				["Default"] = {
					["shown"] = {
						["Mark of the World Tree"] = false,
						["Ironpaw Token"] = false,
						["Garrison Resources"] = false,
						["Dalaran Jewelcrafter's Token"] = false,
						["Epicurean's Award"] = false,
						["Honor Points"] = false,
						["Essence of Corrupted Deathwing"] = false,
						["Lesser Charm of Good Fortune"] = false,
						["Oil"] = false,
						["Apexis Crystal"] = false,
						["Artifact Fragment"] = false,
						["Tol Barad Commendation"] = false,
						["Conquest Points"] = false,
						["Seal of Tempered Fate"] = false,
						["Illustrious Jewelcrafter's Token"] = false,
						["Mote of Darkness"] = false,
					},
					["text"] = {
						["name"] = "Friz Quadrata TT",
					},
				},
			},
		},
		["Junk"] = {
			["profiles"] = {
				["Default"] = {
					["exclude"] = {
						[81055] = true,
					},
				},
			},
		},
		["ItemLevel"] = {
			["profiles"] = {
				["Default"] = {
					["minLevel"] = 200,
					["useSyLevel"] = true,
					["equippableOnly"] = false,
				},
			},
		},
		["ItemCategory"] = {
			["profiles"] = {
				["Default"] = {
					["splitBySubclass"] = {
						["Tradeskill"] = true,
					},
				},
			},
		},
		["Garrison"] = {
		},
		["MoneyFrame"] = {
		},
		["AdiBags_TooltipInfo"] = {
		},
		["Legion"] = {
		},
		["Equipment"] = {
		},
		["NewItem"] = {
		},
		["Battle Pet Items"] = {
		},
		["Bound"] = {
		},
		["ItemSets"] = {
		},
		["DataSource"] = {
			["profiles"] = {
				["Default"] = {
					["mergeBags"] = true,
					["format"] = "free",
					["showBank"] = false,
				},
			},
		},
	},
	["profileKeys"] = {
	},
	["profiles"] = {
		["Default"] = {
			["virtualStacks"] = {
				["stackable"] = true,
				["incomplete"] = true,
			},
			["modules"] = {
				["BankSwitcher"] = false,
				["SectionVisibilityDropdown"] = false,
				["CurrencyFrame"] = false,
			},
			["skin"] = {
				["BackpackColor"] = {
					0.0745098039215686, -- [1]
					0.0745098039215686, -- [2]
					0.0745098039215686, -- [3]
				},
				["background"] = "Blizzard Parchment",
				["border"] = "Blizzard Achievement Wood",
				["insets"] = 5,
			},
			["bagFont"] = {
				["name"] = "Bree",
			},
			["positions"] = {
				["anchor"] = {
					["xOffset"] = -11.3778076171875,
					["yOffset"] = 11.37772941589356,
				},
				["Bank"] = {
					["xOffset"] = 5.33335121472703,
					["point"] = "BOTTOMLEFT",
					["yOffset"] = 7.78676540533849,
				},
				["Backpack"] = {
					["xOffset"] = -2.66750390530797,
					["yOffset"] = 28.4448337978845,
				},
			},
			["sectionFont"] = {
				["name"] = "Verlag",
			},
			["columnWidth"] = {
				["Bank"] = 12,
				["Backpack"] = 12,
			},
			["compactLayout"] = true,
			["rightClickConfig"] = false,
			["autoDeposit"] = true,
		},
	},
}
