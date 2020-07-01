--file: Modules/SellGrey.lua

--get the addon namespace
local addon, namespace = ...
--get ARPG namespace (just in case needed)
local ARPG = namespace.ARPG or ARPG

function FormatMoney(money)
	local SILVER = "|cFFC0C0C0"
	local COPPER = "|cFFCC9900"
	local GOLD = "|cFFFFFF66"
	local WHITE = "|cFFFFFFFF"
	local c,s,g
	local retstr = ""
	g = floor(money/10000)
	s = mod(floor(money/100),100)
	c = mod(money,100)
	
	if(g>0) then
		retstr = retstr..WHITE..g..GOLD.." Gold"
	end
	if(s>0) then
		if ( retstr ~= "" ) then retstr = retstr .. " " end
		retstr = retstr..WHITE..s..SILVER.." Silver"
	end
	if(c>0) then
		if ( retstr ~= "" ) then retstr = retstr .. " " end
		retstr = retstr..WHITE..c..COPPER.." Copper"
	end
	return retstr
end

function SellGrey()
	if(not MerchantFrame:IsShown()) then
		kLib:PrintError("Visit a vendor first")
		return
	end
	local bag,slot,item
	local nr_selled,price_selled = 0,0
	for bag=0,NUM_BAG_SLOTS do
		for slot=1,GetContainerNumSlots(bag) do
			item = GetContainerItemLink(bag,slot)
			local _, itemCount = GetContainerItemInfo(bag,slot)
			if(item) then
				local itemName, _, itemRarity, _, _, _, _, _, _, _, itemSellPrice = GetItemInfo(item)
				if(itemRarity==0) then
					print("Auto Selling: "..item)
					nr_selled = nr_selled + itemCount
					price_selled = price_selled + itemSellPrice*itemCount
					UseContainerItem(bag,slot)
				end
			end
		end
	end
	if(nr_selled>0) then
		local text = "items"
		if(nr_selled==1) then
			text = "item"
		end
		kLib:Print("Auto Sold |cFF0080ff"..nr_selled.."|r|cFFFFFFFF "..text.." for |r"..FormatMoney(price_selled))
	end
end

kLib:RegisterCallback("MERCHANT_SHOW", SellGrey)
