--from CN.model.const.equiptype

EquipType.CannonQuZhu = 1
EquipType.CannonQingXun = 2
EquipType.CannonZhongXun = 3
EquipType.CannonZhanlie = 4
EquipType.Torpedo = 5
EquipType.AntiAircraft = 6
EquipType.FighterAircraft = 7
EquipType.TorpedoAircraft = 8
EquipType.BomberAircraft = 9
EquipType.Equipment = 10
EquipType.CannonZhongXun2 = 11
EquipType.SeaPlane = 12
EquipType.SubmarineTorpedo = 13
EquipType.Sonar = 14
EquipType.AntiSubAircraft = 15
EquipType.Helicopter = 17
EquipType.Goods = 18
EquipType.AmmoType_1 = 1
EquipType.AmmoType_2 = 2
EquipType.AmmoType_3 = 3
EquipType.AmmoType_4 = 4
EquipType.AmmoType_5 = 5
EquipType.AmmoType_6 = 6
EquipType.AmmoType_7 = 7
EquipType.AmmoType_8 = 8
EquipType.AmmoType_8 = 9
EquipType.AmmoType_8 = 10
EquipType.CannonEquipTypes = {
	EquipType.CannonQuZhu,
	EquipType.CannonQingXun,
	EquipType.CannonZhongXun,
	EquipType.CannonZhanlie,
	EquipType.CannonZhongXun2
}
EquipType.AirProtoEquipTypes = {
	EquipType.FighterAircraft,
	EquipType.TorpedoAircraft,
	EquipType.BomberAircraft
}
EquipType.AirEquipTypes = {
	EquipType.FighterAircraft,
	EquipType.TorpedoAircraft,
	EquipType.BomberAircraft,
	EquipType.SeaPlane
}
EquipType.AirExtendEquipTypes = {
	EquipType.FighterAircraft,
	EquipType.TorpedoAircraft,
	EquipType.BomberAircraft,
	EquipType.SeaPlane,
	EquipType.AntiSubAircraft,
	EquipType.Helicopter
}
EquipType.AirDomainEquip = {
	EquipType.FighterAircraft,
	EquipType.TorpedoAircraft,
	EquipType.BomberAircraft,
	EquipType.SeaPlane
}
EquipType.TorpedoEquipTypes = {
	EquipType.Torpedo,
	EquipType.SubmarineTorpedo
}
EquipType.DeviceEquipTypes = {
	EquipType.Equipment,
	EquipType.AntiSubAircraft,
	EquipType.Sonar,
	EquipType.Helicopter,
	EquipType.Goods
}
EquipType.AircraftSkinType = {
	EquipType.FighterAircraft,
	EquipType.TorpedoAircraft,
	EquipType.BomberAircraft,
	EquipType.SeaPlane,
	EquipType.AntiSubAircraft
}

EquipTypeName = {
	"cannon",
	"cannon",
	"cannon",
	"cannon",
	"torpedo",
	"antiair",
	"fighter",
	"attacker",
	"bomber",
	"equipment",
	"cannon",
	"seaplane",
	"torpedo",
	"equipment",
	"equipment",
	nil,
	"equipment",
	"equipment"
}

function EquipType.Type2Name(EquipType)
	return pg.equip_data_by_type[EquipType].type_name
end

function EquipType.Type2Name2(EquipType)
	return pg.equip_data_by_type[EquipType].type_name2
end

function EquipType.type2Tag(EquipType)
	tagPrints = {
		"4",
		"4",
		"4",
		"4",
		"5",
		"6",
		"7",
		"8",
		"9",
		"10",
		"4",
		"12",
		"5",
		"10",
		"13",
		nil,
		"14",
		"15"
	}
	return tagPrints[EquipType]
end

function EquipType.getCompareGroup(EquipType)
	return pg.equip_data_by_type[pg.equip_data_template[EquipType].type].compare_group
end

function EquipType.type2Title(EquipType, slot1)
	if slot1 <= 4 then
		return uv0[EquipType]
	elseif slot1 == uv1.Torpedo then
		return uv0[3]
	elseif slot1 == uv1.AntiAircraft then
		return uv0[4]
	elseif slot1 >= 7 and slot1 <= 9 or slot1 == uv1.SeaPlane then
		return uv1.Type2Name(slot1)
	elseif slot1 == uv1.Equipment or slot1 == uv1.AntiSubAircraft then
		return uv0[6]
	elseif slot1 == uv1.SubmarineTorpedo then
		return uv0[7]
	end
end

slot3 = {
	1,
	2,
	3,
	4,
	11
}
slot4 = {
	7,
	8,
	9,
	12
}
slot5 = {
	1,
	2
}
slot6 = {
	10,
	14,
	15,
	17,
	18
}

--function slot7(EquipType)
--	if _.all(EquipType, function (EquipType)
--		return table.contains(uv0, EquipType)
--	end) then
--		return "equipment"
--	elseif _.all(EquipType, function (EquipType)
--		return table.contains(uv0, EquipType)
--	end) then
--		return "main_cannons"
--	elseif #EquipType == 1 then
--		return uv2[EquipType[1]]
--	elseif #EquipType > 1 then
--		if _.all(EquipType, function (EquipType)
--			return table.contains(uv0, EquipType)
--		end) then
--			return "equipment_aircraft"
--		else
--			return "primary_weapons"
--		end
--	end
--
--	return ""
--end
--
--function slot8(EquipType, slot1)
--	if _.all(slot1, function (EquipType)
--		return table.contains(uv0, EquipType)
--	end) and _.is_equal(EquipType, slot1) then
--		return "main_cannons"
--	elseif _.all(EquipType, function (EquipType)
--		return table.contains(uv0, EquipType)
--	end) then
--		return "equipment"
--	elseif _.all(EquipType, function (EquipType)
--		return table.contains(uv0, EquipType)
--	end) then
--		return "sub_cannons"
--	elseif #EquipType == 1 then
--		return uv3[EquipType[1]]
--	elseif #EquipType > 1 then
--		if _.all(EquipType, function (EquipType)
--			return table.contains(uv0, EquipType)
--		end) then
--			return "equipment_aircraft"
--		else
--			return "sub_weapons"
--		end
--	end
--
--	return ""
--end
--
--function slot9(EquipType)
--	if _.all(EquipType, function (EquipType)
--		return table.contains(uv0, EquipType)
--	end) then
--		return "equipment"
--	elseif _.all(EquipType, function (EquipType)
--		return table.contains(uv0, EquipType)
--	end) then
--		return "sub_cannons"
--	elseif #EquipType == 1 then
--		return uv2[EquipType[1]]
--	elseif #EquipType > 1 then
--		if _.all(EquipType, function (EquipType)
--			return table.contains(uv0, EquipType)
--		end) then
--			return "equipment_aircraft"
--		else
--			return "sub_weapons"
--		end
--	end
--
--	return ""
--end

function EquipType.Types2Title(EquipType, slot1)
	if EquipType == 1 then
		return uv0(pg.ship_data_template[slot1]["equip_" .. EquipType])
	elseif EquipType == 2 then
		return uv1(slot3, slot2.equip_1)
	elseif EquipType == 3 then
		return uv2(slot3)
	elseif EquipType == 4 or EquipType == 5 then
		return uv3[slot3[1]]
	end
end

function EquipType.LabelToName(EquipType)
	if EquipType == "antiair" then
		EquipType = "air_defense_artillery"
	elseif EquipType == "equipment" then
		EquipType = "device"
	end

	return i18n("word_" .. EquipType)
end

return EquipType
