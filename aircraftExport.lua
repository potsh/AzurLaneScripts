---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2021/1/2 17:07
---

aircraftList = {}

local outputFileName = "舰载机FromScripts.csv"


local D_EDT = pg.equip_data_template
local D_EDS = pg.equip_data_statistics
local D_WP = pg.weapon_property
local D_BA_T = pg.barrage_template
local D_EDBT = pg.equip_data_by_type
local D_A_T = pg.aircraft_template


local function calcPlaneHp(equipNo, lv)
    local SHIP_LV = 120
    return D_A_T[equipNo + lv].max_hp + D_A_T[equipNo + lv].hp_growth / 1000 * (SHIP_LV - 1)
end

local function getGunInfo(gunNo, max_lv)
    gun = {}
    gun["name"] = D_WP[gunNo].name
    gun["damage"] = D_WP[gunNo].damage
    gun["up_damage"] = getWeaponProp(gunNo, max_lv, "damage")
    if max_lv > 10 then
        gun["damage_up10"] = getWeaponProp(gunNo, 10, "damage")
    end
    gun["reload_max"] = D_WP[gunNo].reload_max
    gun["up_reload_max"] = getWeaponProp(gunNo, max_lv, "reload_max")
    gun["range"] = D_WP[gunNo].range
    gun["angle"] = D_WP[gunNo].angle

    return gun
end

local function getBombInfo(bombNo, max_lv)
    bomb = {}
    bomb["name"] = D_WP[bombNo].name
    bomb["num"] = 0
    for _, v in pairs(D_WP[bombNo].barrage_ID) do
        bomb["num"] = bomb["num"] + D_BA_T[v].primal_repeat + 1
    end
    bomb["damage"] = D_WP[bombNo].damage
    bomb["up_damage"] = getWeaponProp(bombNo, max_lv, "damage")
    if max_lv > 10 then
        bomb["damage_up10"] = getWeaponProp(bombNo, 10, "damage")
    end
    bomb["range"] = getBulletProp(D_WP[bombNo].bullet_ID[1], "hit_type").range
    bomb["spread"] = getBulletProp(D_WP[bombNo].bullet_ID[1], "extra_param").randomOffsetX
    bomb["damage_type"] = getBulletProp(D_WP[bombNo].bullet_ID[1], "damage_type")

    return bomb
end

local function getTorpedoInfo(torpedoNo, max_lv)
    torpedo = {}
    torpedo["name"] = D_WP[torpedoNo].name
    torpedo["aim_type"] = D_WP[torpedoNo].aim_type
    torpedo["num"] = 0
    for _, v in pairs(D_WP[torpedoNo].barrage_ID) do
        torpedo["num"] = torpedo["num"] + D_BA_T[v].primal_repeat + 1
    end
    torpedo["damage"] = D_WP[torpedoNo].damage
    torpedo["up_damage"] = getWeaponProp(torpedoNo, max_lv, "damage")
    if max_lv > 10 then
        torpedo["damage_up10"] = getWeaponProp(torpedoNo, 10, "damage")
    end
    torpedo["velocity"] = getBulletProp(D_WP[torpedoNo].bullet_ID[1], "velocity")
    torpedo["damage_type"] = getBulletProp(D_WP[torpedoNo].bullet_ID[1], "damage_type")

    return torpedo
end

local function getPlaneWeaponInfo(plane, planeNo)
    local gunCount , bombCount = 1, 1
    for _, wid in pairs(D_A_T[planeNo].weapon_ID) do
        if D_WP[wid].type == BattleConst.BulletType.DIRECT then
            plane["gun_"..gunCount] = getGunInfo(wid, plane.max_lv)
            gunCount = gunCount + 1
        elseif D_WP[wid].type == BattleConst.BulletType.BOMB then
            plane["bomb_"..bombCount] = getBombInfo(wid, plane.max_lv)
            bombCount = bombCount + 1
        elseif D_WP[wid].type == BattleConst.BulletType.TORPEDO then
            plane["torpedo"] = getTorpedoInfo(wid, plane.max_lv)
        end
    end
end



local function genPlaneWeaponStr(plane, is_half_up)
    local res = ""
    local guns = {plane["gun_1"], plane["gun_2"], plane["gun_3"]}
    local bombs = {plane["bomb_1"], plane["bomb_2"]}
    local torpedo = plane["torpedo"]

    for i = 1,3 do
        gun = guns[i]
        if gun then
            res = res .. "," .. gun.name
            res = res .. "," .. gun.damage
            if is_half_up then
                res = res .. "," .. gun.damage_up10
            else
                res = res .. "," .. gun.up_damage
            end
            res = res .. "," .. string.format("%0.2f", CalculateReloadTime(gun.reload_max))
            res = res .. "," .. string.format("%0.2f", CalculateReloadTime(gun.up_reload_max))
            res = res .. "," .. gun.range
            res = res .. "," .. gun.angle
        else
            res = res .. ",,,,,,,"
        end
    end

    for i = 1,2 do
        bomb = bombs[i]
        if bomb then
            res = res .. "," .. bomb.name
            res = res .. "," .. bomb.num
            res = res .. "," .. bomb.damage
            if is_half_up then
                res = res .. "," .. bomb.damage_up10
            else
                res = res .. "," .. bomb.up_damage
            end
            res = res .. "," .. bomb.range
            res = res .. "," .. bomb.spread
            res = res .. "," .. bomb.damage_type[1]
            res = res .. "," .. bomb.damage_type[2]
            res = res .. "," .. bomb.damage_type[3]
        else
            res = res .. ",,,,,,,,,"
        end
    end

    if torpedo then
        res = res .. "," .. torpedo.name
        if torpedo.aim_type == BattleConst.WeaponAimType.FORWARD then
            res = res .. "," .. "平行雷"
        else
            res = res .. "," .. "集束雷"
        end
        res = res .. "," .. torpedo.num
        res = res .. "," .. torpedo.damage
        if is_half_up then
            res = res .. "," .. torpedo.damage_up10
        else
            res = res .. "," .. torpedo.up_damage
        end
        res = res .. "," .. torpedo.velocity
        res = res .. "," .. torpedo.damage_type[1]
        res = res .. "," .. torpedo.damage_type[2]
        res = res .. "," .. torpedo.damage_type[3]
    else
        res = res .. ",,,,,,,,,"
    end

    return res
end

local function genAircraftList()
    for key, value in pairs(D_EDT) do
        if value and type(key) == "number" and not value.base then
            compare_group = D_EDBT[value.type].compare_group
            if compare_group == EquipTypeEnum["plane"] then
                --aircraftList[key] = {}
                table.insert(aircraftList, key, {})
            end
        end
    end
end

local function collectAircraftData()
    for k, v in pairs(aircraftList) do
        if EquipRarityName[D_EDS[k].rarity] ~= "Gray" then
            v["icon"] = D_EDS[k].icon
            v["name"] = D_EDS[k].name
            v["tech"] = D_EDS[k].tech
            v["rarity"] = D_EDS[k].rarity
            v["type"] = D_EDS[k].type
            v["max_lv"] = getEquipMaxLv(k)
            v["reload_max"] = D_WP[k].reload_max
            v["up_reload_max"] = getWeaponProp(k, v.max_lv, "reload_max")
            v["value_2"] = D_EDS[k].value_2  --aircraft
            v["speed"] = D_A_T[k].speed
            v["hp"] = calcPlaneHp(k, 0)
            v["up_hp"] = calcPlaneHp(k, v.max_lv)
            if v.max_lv > 10 then
                v["hp_10"] = calcPlaneHp(k, 10)
            end
            v["dodge_limit"] = D_A_T[k].dodge_limit
            v["nationality"] = D_EDS[k].nationality

            getPlaneWeaponInfo(v, k)
        end
    end
end

local aircraftHeaderString = "icon,name,rarity,type,max_lv,reload_time,up_reload_time,air,cruiseSpeed,hp,up_hp,dodge_limit,nationality,name,damage,up_damage,speed,up_speed,range,angle,name,damage,up_damage,speed,up_speed,range,angle,name,damage,up_damage,speed,up_speed,range,angle,name,num,damage,up_damage,range,spread,vs轻,vs中,vs重,name,num,damage,up_damage,range,spread,vs轻,vs中,vs重,name,aim_type,num,damage,up_damage,velocity,vs轻,vs中,vs重"
local function aircraftToString(e, is_half_up)
    name = e.name .. "T" .. e.tech
    res = e.icon
    res = res .. "," .. name
    if is_half_up then
        res = res .. "_up10"
    end
    res = res .. "," .. EquipRarityName[e.rarity]
    res = res .. "," .. EquipType.Type2Name2(e.type)
    res = res .. "," .. e.max_lv
    res = res .. "," .. string.format("%0.2f", CalculateReloadTime(e.reload_max))
    res = res .. "," .. string.format("%0.2f", CalculateReloadTime(e.up_reload_max))
    res = res .. "," .. e.value_2
    res = res .. "," .. e.speed
    res = res .. "," .. e.hp
    if is_half_up then
        res = res .. "," .. e.hp_10
    else
        res = res .. "," .. e.up_hp
    end
    res = res .. "," .. e.dodge_limit
    res = res .. "," .. ((e.nationality and NationalityName[e.nationality]) or "")
    res = res .. genPlaneWeaponStr(e, is_half_up)

    return res
end

local function writeAircraftsToFile()
    local file = io.open (outputFileName, "w")

    file:write(aircraftHeaderString.."\n")

    for k, v in pairs(aircraftList) do
        if EquipRarityName[D_EDS[k].rarity] ~= "Gray" then
            local str = aircraftToString(v, false)
            file:write(str .."\n")
            if v.max_lv > 10 then
                str = aircraftToString(v, true)
                file:write(str .."\n")
            end
        end
    end

    file:close()
end

function exportAircrafts()
    genAircraftList()
    collectAircraftData()
    writeAircraftsToFile()
end
