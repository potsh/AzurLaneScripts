---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2021/1/2 17:07
---

EquipTypeEnum = {  -- compare_group in D_EDBT
    ["Cannon"] = 1,
    ["Torpedo"] = 2,
    ["Antiair"] = 3,
    ["plane"] = 4,
    ["facility"] = 5,
    ["Torpedo_SM"] = 6,
}

EquipTypeName= {  -- compare_group in D_EDBT
    [1] = "Cannon",
    [2] = "Torpedo",
    [3] = "Antiair",
    [4] = "plane",
    [5] = "facility",
    [6] = "Torpedo_SM",
}


EquipRarityEnum = {  -- rarity in D_EDS
    ["Gray"] = 2,
    ["Blue"] = 3,
    ["Purple"] = 4,
    ["Gold"] = 5,
    ["SSR"] = 6,
}

EquipRarityName = {  -- rarity in D_EDS
    [1] = "Gray",
    [2] = "Gray",
    [3] = "Blue",
    [4] = "Purple",
    [5] = "Gold",
    [6] = "SSR",
}

EquipTypeName = {  -- type in D_EDS, equip_type in D_EDBT
    [1] = "����(����)",
    [2] = "����(��Ѳ)",
    [3] = "����(��Ѳ)",
    [4] = "����(ս��)",
    [5] = "����",
    [6] = "������",
    [7] = "ս����",
    [8] = "���׻�",
    [9] = "��ը��",
    [10] = "�豸",
    [11] = "����(��ھ���Ѳ)",
    [12] = "ˮ�ϻ�",
    [13] = "����(Ǳͧ)",
    [14] = "�豸",
    [15] = "��Ǳ��",
    [17] = "ֱ����",
    [18] = "����",
}


NationalityName = {  -- nationality in D_WP
    [1] = "��ӥ",
    [2] = "�ʼ�",
    [3] = "��ӣ",
    [4] = "��Ѫ",
    [5] = "Unknown",
    [6] = "�����۹�",
    [7] = "��������",
    [8] = "�����β",
}



local D_EDT = pg.equip_data_template
local D_WP = pg.weapon_property
local D_BA_T = pg.barrage_template
local D_BU_T = pg.bullet_template

function getEquipMaxLv(key)
    local tmp = key
    while(D_EDT[tmp].next ~= 0) do
        tmp = tmp + 1
    end
    return tmp - key
end

function getEquipHalfLv(key)
    return math.min(10, getEquipMaxLv(key))
end

function getWeaponProp(equipNo, lv, propName)
    --print("#DEBUG#: " .. equipNo .. " " .. lv .. " " .. propName)
    local upProp = D_WP[equipNo + lv][propName]
    if upProp ~= nil then
        return upProp
    else
        return D_WP[equipNo][propName]
    end
end

function getBarrageProp(barrageNo, propName)
    return D_BA_T[barrageNo][propName]
end

function getBulletProp(bulletNo, propName)
    return D_BU_T[bulletNo][propName]
end

function CalculateReloadTime(reload_max, reload)
    if reload == nil then
        reload = BattleConfig.K2
    end
    return reload_max / BattleConfig.K1 / math.sqrt((reload + BattleConfig.K2) * BattleConfig.K3)
end

require("cannonExport")
require("antiairExport")
require("torpedoExport")
require("aircraftExport")


function equipExport()
    -- exportCannons()
    exportTorpedos()
    -- exportAntiairs()
    -- exportAircrafts()
end
