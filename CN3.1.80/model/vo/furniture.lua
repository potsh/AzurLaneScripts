slot0 = class("Furniture", import(".BaseVO"))
slot0.TYPE_WALLPAPER = 1
slot0.TYPE_FURNITURE = 2
slot0.TYPE_DECORATE = 3
slot0.TYPE_FLOORPAPER = 4
slot0.TYPE_MAT = 5
slot0.TYPE_WALL = 6
slot0.TYPE_COLLECTION = 7
slot0.TYPE_STAGE = 8
slot0.TYPE_ARCH = 9
slot0.TYPE_WALL_MAT = 10
slot0.TYPE_MOVEABLE = 11
slot0.TYPE_TRANSPORT = 12
slot0.INDEX_TO_COMFORTABLE_TYPE = {
	slot0.TYPE_WALLPAPER,
	slot0.TYPE_FURNITURE,
	slot0.TYPE_DECORATE,
	slot0.TYPE_FLOORPAPER,
	slot0.TYPE_MAT,
	slot0.TYPE_WALL,
	slot0.TYPE_COLLECTION,
	slot0.TYPE_FURNITURE,
	slot0.TYPE_FURNITURE,
	slot0.TYPE_WALL,
	slot0.TYPE_FURNITURE,
	slot0.TYPE_FURNITURE
}
slot0.INDEX_TO_SHOP_TYPE = {
	{
		slot0.TYPE_WALLPAPER
	},
	{
		slot0.TYPE_FLOORPAPER
	},
	{
		slot0.TYPE_FURNITURE,
		slot0.TYPE_MAT,
		slot0.TYPE_COLLECTION,
		slot0.TYPE_STAGE,
		slot0.TYPE_ARCH,
		slot0.TYPE_MOVEABLE,
		slot0.TYPE_TRANSPORT
	},
	{
		slot0.TYPE_DECORATE
	},
	{
		slot0.TYPE_WALL,
		slot0.TYPE_WALL_MAT
	}
}

function slot0.getCloneId(slot0, slot1)
	return slot0.configId * 10000000 + slot1
end

function slot0.Ctor(slot0, slot1)
	slot0.id = tonumber(slot1.id)
	slot0.configId = slot1.configId or tonumber(slot1.id)
	slot0.position = slot1.position
	slot0.dir = slot1.dir or 1
	slot0.child = slot1.child or {}
	slot0.parent = slot1.parent or 0
	slot0.count = slot1.count or 0
	slot0.date = slot1.get_time or slot1.date or 0
	slot0.floor = slot1.floor or 0
end

function slot0.getDate(slot0)
	if slot0.date > 0 then
		return pg.TimeMgr.GetInstance():STimeDescS(slot0.date, "%Y/%m/%d")
	end
end

function slot0.setCount(slot0, slot1)
	slot0.count = slot1
end

function slot0.isCloneFurnitrue(slot0)
	return slot0:bindConfigTable()[slot0.id] == nil
end

function slot0.isNotForSale(slot0)
	return slot0:getConfig("not_for_sale") == 1
end

function slot0.isForActivity(slot0)
	return slot0:getConfig("not_for_sale") == 2
end

function slot0.addFurnitrueCount(slot0, slot1)
	slot0.count = slot0.count + slot1
end

function slot0.canPurchase(slot0)
	return slot0.count < slot0:getConfig("count")
end

function slot0.bindConfigTable(slot0)
	return pg.furniture_data_template
end

function slot0.bindShopConfigTable(slot0)
	return pg.furniture_shop_template
end

function slot0.isFurniture(slot0)
	return slot0:getConfig("type") ~= 0
end

function slot0.updatePosition(slot0, slot1)
	slot0.position = slot1
end

function slot0.clearPosition(slot0)
	slot0.position = nil
	slot0.dir = 1
	slot0.child = {}
	slot0.parent = 0
	slot0.shipId = 0
	slot0.floor = 0
end

function slot0.getConfig(slot0, slot1)
	if slot0:bindConfigTable()[slot0.configId][slot1] then
		return slot3[slot1]
	elseif slot0:bindShopConfigTable()[slot0.configId] then
		return slot5[slot1]
	end
end

function slot0.getTypeForComfortable(slot0)
	return (slot0.INDEX_TO_COMFORTABLE_TYPE[slot0:getConfig("type")] and slot2) or slot0.TYPE_FURNITURE
end

function slot0.getDeblocking(slot0)
	return pg.backyard_theme_template[slot0:getConfig("themeId")].deblocking
end

function slot0.inTheme(slot0)
	if slot0:getConfig("themeId") == 0 then
		return false
	end

	return table.contains(pg.backyard_theme_template[slot1].ids, slot0.id)
end

function slot0.isLock(slot0, slot1)
	return slot0:inTheme() and slot1 < slot0:getDeblocking()
end

function slot0.isPaper(slot0)
	return slot0:getConfig("type") == 4 or slot1 == 1
end

function slot0.inTime(slot0)
	return pg.TimeMgr.GetInstance():inTime(slot0:getConfig("time"))
end

function slot0.isTimeLimit(slot0)
	return type(slot0:getConfig("time")) == "table"
end

function slot0.isRecordTime(slot0)
	return slot0:getConfig("is_get_time_note") == 1
end

function slot0.isDisCount(slot0)
	return slot0:getConfig("discount") > 0 and pg.TimeMgr.GetInstance():inTime(slot0:getConfig("discount_time"))
end

function slot0.sortSizeFunc(slot0)
	return (slot0:getConfig("size")[1] or 0) * (slot1[2] or 0)
end

function slot0.getPrice(slot0, slot1)
	slot3 = (100 - ((slot0:isDisCount() and slot0:getConfig("discount")) or 0)) / 100
	slot4 = (slot1 == 4 and slot0:getConfig("gem_price")) or (slot1 == 6 and slot0:getConfig("dorm_icon_price"))

	if slot4 then
		return (slot4 > 0 and math.floor(slot4 * slot3) == 0 and 1) or math.floor(slot4 * slot3)
	end
end

function slot0.canPurchaseByGem(slot0)
	return slot0:getPrice(4) and slot1 ~= 0
end

function slot0.canPurchaseByDormMoeny(slot0)
	return slot0:getPrice(6) and slot1 ~= 0
end

function slot0.getSortCurrency(slot0)
	slot1 = 0

	if slot0:canPurchaseByGem() then
		slot1 = slot1 + 2
	elseif slot0:canPurchaseByDormMoeny() then
		slot1 = slot1 + 1
	end

	return slot1
end

function slot0.sortPriceFunc(slot0)
	if slot0:getConfig("gem_price") > 0 then
		return slot0:getConfig("gem_price") + 1000000
	else
		return slot0:getConfig("dorm_icon_price")
	end
end

function slot0.isMatchSearchKey(slot0, slot1)
	if slot1 == "" or not slot1 then
		return true
	end

	slot3 = slot0:getConfig("describe")

	if string.find(slot0:getConfig("name"), slot1) or string.find(slot2, slot1) then
		return true
	end

	return false
end

function slot0.IsShopType(slot0)
	return slot0:bindShopConfigTable()[slot0.configId] ~= nil
end

return slot0
