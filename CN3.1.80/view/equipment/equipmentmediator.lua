slot0 = class("EquipmentMediator", import("..base.ContextMediator"))
slot0.ON_DESTROY = "EquipmentMediator:ON_DESTROY"
slot0.ON_UNEQUIP_EQUIPMENT = "EquipmentMediator:ON_UNEQUIP_EQUIPMENT"
slot0.OPEN_DESIGN = "EquipmentMediator:OPEN_DESIGN"
slot0.CLOSE_DESIGN_LAYER = "EquipmentMediator:CLOSE_DESIGN_LAYER"
slot0.BATCHDESTROY_MODE = "EquipmentMediator:BATCHDESTROY_MODE"
slot0.ON_EQUIPMENT_SKIN_INFO = "EquipmentMediator:ON_EQUIPMENT_SKIN_INFO"
slot0.ON_UNEQUIP_EQUIPMENT_SKIN = "EquipmentMediator:ON_UNEQUIP_EQUIPMENT_SKIN"
slot0.ON_USE_ITEM = "EquipmentMediator:ON_USE_ITEM"
slot0.NO_UPDATE = "EquipmentMediator:NO_UPDATE"
slot0.ITEM_GO_SCENE = "item go scene"

function slot0.register(slot0)
	if not slot0.contextData.warp then
		slot0.contextData.warp = getProxy(SettingsProxy).getEquipSceneIndex(slot1)
	end

	slot0:bind(slot0.ITEM_GO_SCENE, function (slot0, slot1, slot2)
		slot0:sendNotification(GAME.GO_SCENE, slot1, slot2)
	end)
	slot0:bind(slot0.ON_USE_ITEM, function (slot0, slot1, slot2, slot3)
		slot0:sendNotification(GAME.USE_ITEM, {
			id = slot1,
			count = slot2,
			arg = slot3
		})
	end)
	slot0:bind(slot0.ON_DESTROY, function (slot0, slot1)
		slot0:sendNotification(GAME.DESTROY_EQUIPMENTS, {
			equipments = slot1
		})
	end)
	slot0:bind(slot0.ON_UNEQUIP_EQUIPMENT, function (slot0)
		slot0:sendNotification(GAME.UNEQUIP_FROM_SHIP, {
			shipId = slot0.contextData.shipId,
			pos = slot0.contextData.pos
		})
	end)
	slot0:bind(slot0.OPEN_DESIGN, function (slot0)
		if getProxy(ContextProxy).getContextByMediator(slot1, EquipmentMediator):getContextByMediator(EquipmentDesignMediator) then
			return
		end

		slot0:addSubLayers(Context.New({
			viewComponent = EquipmentDesignLayer,
			mediator = EquipmentDesignMediator,
			data = {
				LayerWeightMgr_groupName = LayerWeightConst.GROUP_EQUIPMENTSCENE
			}
		}))
	end)
	slot0:bind(slot0.CLOSE_DESIGN_LAYER, function (slot0)
		if getProxy(ContextProxy).getContextByMediator(slot1, EquipmentMediator):getContextByMediator(EquipmentDesignMediator) then
			slot0:sendNotification(GAME.REMOVE_LAYERS, {
				context = slot3
			})
		end
	end)
	slot0:bind(slot0.ON_EQUIPMENT_SKIN_INFO, function (slot0, slot1, slot2, slot3)
		slot0:addSubLayers(Context.New({
			mediator = EquipmentSkinMediator,
			viewComponent = EquipmentSkinLayer,
			data = {
				skinId = slot1,
				shipId = slot0.contextData.shipId,
				mode = (slot0.contextData.shipId and EquipmentSkinLayer.REPLACE) or EquipmentSkinLayer.DISPLAY,
				oldShipInfo = slot3,
				pos = slot2
			}
		}))
	end)
	slot0:bind(slot0.ON_UNEQUIP_EQUIPMENT_SKIN, function (slot0)
		slot0:sendNotification(GAME.EQUIP_EQUIPMENTSKIN_TO_SHIP, {
			equipmentSkinId = 0,
			shipId = slot0.contextData.shipId,
			pos = slot0.contextData.pos
		})
	end)

	slot0.canUpdate = true

	slot0.viewComponent:setShip(getProxy(BayProxy).getShipById(slot1, slot0.contextData.shipId))

	slot0.equipmentProxy = getProxy(EquipmentProxy)
	slot3 = {}

	if slot0.contextData.equipmentVOs then
		slot3 = slot0.contextData.equipmentVOs
	else
		slot3 = slot0.equipmentProxy:getEquipments(true)

		for slot7, slot8 in pairs(slot1:getEquipsInShips()) do
			table.insert(slot3, slot8)
		end

		for slot7, slot8 in pairs(slot0.equipmentProxy:getEquipmentSkins()) do
			table.insert(slot3, {
				isSkin = true,
				id = slot8.id,
				count = slot8.count
			})
		end

		for slot7, slot8 in pairs(slot1:getEquipmentSkinInShips()) do
			table.insert(slot3, {
				isSkin = true,
				count = 1,
				id = slot8.id,
				shipId = slot8.shipId,
				shipPos = slot8.shipPos
			})
		end
	end

	slot0.viewComponent:setEquipments(slot3)
	slot0.viewComponent:setCapacity(slot0.equipmentProxy:getCapacity())
	slot0.viewComponent:setItems(slot5)
	slot0.viewComponent:setPlayer(getProxy(PlayerProxy).getData(slot6))
end

function slot0.listNotificationInterests(slot0)
	return {
		EquipmentProxy.EQUIPMENT_ADDED,
		EquipmentProxy.EQUIPMENT_UPDATED,
		EquipmentProxy.EQUIPMENT_REMOVED,
		BayProxy.SHIP_UPDATED,
		PlayerProxy.UPDATED,
		GAME.USE_ITEM_DONE,
		GAME.DESTROY_EQUIPMENTS_DONE,
		BagProxy.ITEM_ADDED,
		BagProxy.ITEM_UPDATED,
		slot0.BATCHDESTROY_MODE,
		GAME.EQUIP_TO_SHIP_DONE,
		GAME.REVERT_EQUIPMENT_DONE,
		EquipmentProxy.EQUIPMENT_SKIN_UPDATED,
		GAME.EQUIP_EQUIPMENTSKIN_TO_SHIP_DONE,
		GAME.EQUIP_EQUIPMENTSKIN_FROM_SHIP_DONE,
		slot0.NO_UPDATE,
		GAME.FRAG_SELL_DONE
	}
end

function slot0.handleNotification(slot0, slot1)
	slot3 = slot1:getBody()

	if slot1:getName() == EquipmentProxy.EQUIPMENT_ADDED or slot2 == EquipmentProxy.EQUIPMENT_UPDATED then
		if slot0.canUpdate then
			slot0.viewComponent:setCapacity(slot0.equipmentProxy:getCapacity())
			slot0.viewComponent:setEquipment(slot3)
		end
	elseif slot2 == EquipmentProxy.EQUIPMENT_REMOVED then
		slot0.viewComponent:setCapacity(slot0.equipmentProxy:getCapacity())
		slot0.viewComponent:removeEquipment(slot3)
	elseif slot2 == EquipmentProxy.EQUIPMENT_SKIN_UPDATED then
		if slot0.canUpdate then
			slot0.viewComponent:setCapacity(slot0.equipmentProxy:getCapacity())
			slot0.viewComponent:setEquipmentSkin(slot3)
		end
	elseif slot2 == BayProxy.SHIP_UPDATED then
		if slot3.id == slot0.contextData.shipId then
			slot0.viewComponent:setShip(slot3)
		end
	elseif slot2 == PlayerProxy.UPDATED then
		slot0.viewComponent:setPlayer(slot3)
	elseif slot2 == GAME.USE_ITEM_DONE then
		if table.getCount(slot3) ~= 0 then
			slot0.viewComponent:emit(BaseUI.ON_AWARD, {
				animation = true,
				items = slot3
			})
		end
	elseif slot2 == GAME.FRAG_SELL_DONE then
		slot0.viewComponent:emit(BaseUI.ON_ACHIEVE, slot3.awards)
	elseif slot2 == GAME.DESTROY_EQUIPMENTS_DONE then
		if table.getCount(slot3) ~= 0 then
			slot0.viewComponent:emit(BaseUI.ON_AWARD, {
				items = slot3
			})
		end
	elseif slot2 == BagProxy.ITEM_ADDED or slot2 == BagProxy.ITEM_UPDATED then
		if slot0.canUpdate then
			slot0.viewComponent:setItems(getProxy(BagProxy).getItemsByExclude(slot4))
		end
	elseif slot2 == slot0.BATCHDESTROY_MODE then
		slot0.viewComponent:SwitchToDestroy()
	elseif slot2 == GAME.REVERT_EQUIPMENT_DONE then
		if table.getCount(slot3.awards) > 0 then
			slot0.viewComponent:emit(BaseUI.ON_AWARD, {
				items = slot3.awards
			})
		end
	elseif slot2 == GAME.EQUIP_TO_SHIP_DONE then
		slot0.viewComponent:emit(BaseUI.ON_BACK)
	elseif slot2 == GAME.EQUIP_EQUIPMENTSKIN_TO_SHIP_DONE or slot2 == GAME.EQUIP_EQUIPMENTSKIN_FROM_SHIP_DONE then
		slot0.viewComponent:emit(BaseUI.ON_BACK)
	elseif slot2 == slot0.NO_UPDATE then
		slot0.canUpdate = false
	end
end

function slot0.remove(slot0)
	getProxy(SettingsProxy):setEquipSceneIndex(slot0.contextData.warp)
end

return slot0
