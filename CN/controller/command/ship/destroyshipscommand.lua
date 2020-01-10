class("DestroyShipsCommand", pm.SimpleCommand).execute = function (slot0, slot1)
	slot3 = slot1:getBody().shipIds
	slot4 = slot1.getBody().destroyEquipment or false
	slot5 = getProxy(BayProxy)
	slot6 = {}

	for slot10, slot11 in ipairs(slot3) do
		if slot5:getShipById(slot11) == nil then
			pg.TipsMgr.GetInstance():ShowTips(i18n("ship_error_noShip", slot11))

			return
		end

		table.insert(slot6, slot12)
	end

	pg.ConnectionMgr.GetInstance():Send(12004, {
		ship_id_list = slot3
	}, 12005, function (slot0)
		if slot0.result == 0 then
			slot1 = 0
			slot2 = 0
			slot3 = 0
			slot4 = getProxy(EquipmentProxy)
			slot5 = {}
			slot6 = {}

			for slot10, slot11 in ipairs(slot0) do
				slot1:removeShip(slot11)

				slot12, slot13, slot14 = slot11:calReturnRes()
				slot1 = slot1 + slot12
				slot2 = slot2 + slot13
				slot3 = slot3 + slot14

				for slot18, slot19 in ipairs(slot11.equipments) do
					if slot19 then
						if slot19:hasSkin() then
							slot4:addEquipmentSkin(slot19.skinId, 1)

							slot19.skinId = 0

							pg.TipsMgr.GetInstance():ShowTips(i18n("equipment_skin_unload"))
						end

						slot4:addEquipment(slot19)

						if not slot5[slot19.id] then
							slot5[slot19.id] = slot19:clone()
						else
							slot5[slot19.id].count = slot5[slot19.id].count + 1
						end
					end
				end

				table.insert(slot6, slot11.id)
			end

			slot7 = getProxy(PlayerProxy)
			slot8 = slot7:getData()

			slot8:addResources({
				gold = slot1,
				oil = slot2
			})

			slot9 = {
				{
					id = 1,
					type = DROP_TYPE_RESOURCE,
					count = slot1
				},
				{
					id = 2,
					type = DROP_TYPE_RESOURCE,
					count = slot2
				}
			}

			slot7:updatePlayer(slot8)

			if slot3 > 0 then
				getProxy(BagProxy).addItemById(slot10, 15001, slot3)
				table.insert(slot9, {
					id = 15001,
					type = DROP_TYPE_ITEM,
					count = slot3
				})
			end

			slot2:sendNotification(GAME.DESTROY_SHIP_DONE, {
				destroiedShipIds = slot6,
				bonus = slot9,
				equipments = slot5
			})
		else
			pg.TipsMgr.GetInstance():ShowTips(errorTip("ship_destoryShips", slot0.result))
		end
	end)
end

return class("DestroyShipsCommand", pm.SimpleCommand)
