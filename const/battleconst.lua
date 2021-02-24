BattleConst = {}
BattleConst.BATTLE_GLOBAL_BUFF = "battle_buff"
-- BattleConst.NORMALIZE_FLEET_SPEED = Vector3.right
BattleConst.SUMMONING_SICKNESS_DURATION = 1.5
BattleConst.NON_QUEUE_WEAPON = 0
BattleConst.SMOKING_HP_RATE = 0.3
BattleConst.NORMAL_TEXT_SCALE = 1
BattleConst.SMALL_TEXT_SCALE = 0.8
BattleConst.TEXT_MOVE_TIME = 0.4
BattleConst.TEXT_FADEOUT_TIME = 0.6
BattleConst.TEXT_SCALE_TIME = 0.4
BattleConst.CRI_TEXT_OFFSET = 1
BattleConst.MAX_EQUIPMENT_COUNT = 6
BattleConst.DEAD_FLAG = "flagDead"
BattleConst.WaveTriggerType = {
	NORMAL = 0,
	TIMER = 1,
	RANGE = 2,
	STORY = 3,
	AID = 4,
	BGM = 5,
	GUIDE = 6,
	CAMERA = 7,
	CLEAR = 8,
	JAMMING = 9,
	ENVIRONMENT = 10
}
BattleConst.UnitType = {
	PLAYER_UNIT = 1,
	ENEMY_UNIT = 2,
	BOSS_UNIT = 3,
	AIRCRAFT_UNIT = 4,
	AIRFIGHTER_UNIT = 5,
	NPC_UNIT = 6,
	MAIN_UNIT = 7,
	FUNNEL_UNIT = 8,
	UAV_UNIT = 9,
	SUB_UNIT = 10,
	CONST_UNIT = 11
}
BattleConst.EquipmentType = {
	MAIN_CANNON = 1,
	SUB_CANNON = 2,
	TORPEDO = 3,
	ANTI_AIR = 4,
	ARMOR = 5,
	ENGINE = 6,
	RADAR = 7,
	PASSIVE_SCOUT = 10,
	SCOUT = 11,
	CREW = 12,
	CHARGE = 13,
	SPECIAL = 14,
	MEGA_CHARGE = 15,
	MANUAL_TORPEDO = 16,
	ANTI_SEA = 17,
	HAMMER_HEAD = 18,
	BOMBER_PRE_CAST_ALERT = 19,
	MULTI_LOCK = 20,
	MANUAL_SUB = 21,
	FLEET_ANTI_AIR = 22,
	POINT_HIT_AND_LOCK = 23,
	BEAM = 24,
	DEPTH_CHARGE = 25,
	REPEATER_ANTI_AIR = 26,
	MANUAL_AAMISSILE = 28,
	DISPOSABLE_TORPEDO = 27,
	SPACE_LASER = 28,
	MISSILE = 29,
	PREVIEW_ARICRAFT = 99,
	AIR_ASSIST = "airAssist"
}
BattleConst.OXY_STATE = {
	FLOAT = 1,
	DIVE = 2
}
BattleConst.ActionName = {
	ATTACK = "attack",
	ATTACKLEFT = "attack_left",
	DEFAULT_ATTACK = "attack",
	DEAD = "dead",
	DEAD_SWIM = "dead_swim",
	MOVE = "move",
	IDLE = "normal",
	STAND = "stand",
	VICTORY = "victory",
	VICTORY_SWIM = "victory_swim",
	WALK = "walk",
	MOVELEFT = "move_left",
	SKILL = "skill",
	SPELL = "suoquan",
	DIVE = "swim",
	DIVELEFT = "swim_left",
	RAID = "attack_swim",
	RAIDLEFT = "attack_swim_left",
	INTERRUPT = "break",
	DIVING = "xiaqian"
}
BattleConst.ActionLoop = {
	attack = false,
	attack_left = false,
	fire = false,
	fire_left = false,
	dead = false,
	dead_swim = false,
	skill = false,
	move = true,
	normal = true,
	stand = true,
	victory = true,
	victory_swim = true,
	walk = true,
	move_left = true,
	suoquan = true,
	swim = true,
	swim_left = true,
	swim_attack = false,
	swim_attack_left = false,
	xiaqian = false
}
BattleConst.CldType = {
	BULLET = "bullet",
	SHIP = "ship",
	AIRCRAFT = "aircraft",
	AOE = "AOE",
	WALL = "Wall"
}
BattleConst.CldMass = {
	L1 = 1,
	L2 = 2,
	L3 = 3,
	L4 = 4
}
BattleConst.UnitDir = {
	RIGHT = 1,
	LEFT = -1,
	MIDDLE = 0
}
BattleConst.WeaponSearchType = {
	SECTOR = 1,
	SQUARE = 2
}
BattleConst.WeaponAimType = {
	FORWARD = 0,
	AIM = 1
}
BattleConst.WeaponSuppressType = {
	NONE = 1,
	SUPPRESSION = 0
}
BattleConst.WeaponDamageAttr = {
	CANNON = 1,
	TORPEDO = 2,
	ANTI_AIR = 3,
	AIR = 4,
	ANIT_SUB = 5
}
BattleConst.BulletType = {
	CANNON = 1,
	BOMB = 2,
	TORPEDO = 3,
	DIRECT = 4,
	SHRAPNEL = 5,
	ANTI_AIR = 6,
	ANTI_SEA = 7,
	STRAY = 8,
	EFFECT = 9,
	BEAM = 10,
	G_BULLET = 11,
	ELECTRIC_ARC = 12,
	MISSILE = 13,
	SPACE_LASER = 14,
	SCALE = 15,
	TRIGGER_BOMB = 16,
	AAMissile = 17
}
BattleConst.BulletDamageType = {
	NORMAL = 1,
	BOMBER = 2,
	REAL = 3
}
BattleConst.BulletField = {
	SURFACE = 1,
	UNDER_WATER = 2,
	AIR = 3
}
BattleConst.BulletOutBound = {
	COMMON = 0,
	EXIST = 1,
	RANDOM = 2
}
BattleConst.AOEField = {
	SURFACE = 1,
	UNDER_WATER = 2,
	AIR = 3
}
BattleConst.AreaType = {
	CUBE = 1,
	COLUMN = 2
}
BattleConst.ShakeType = {
	HIT = 301,
	FIRE = 302,
	UNIT_DIE = 302
}
BattleConst.BuffEffectType = {
	ON_INIT_GAME = "onInitGame",
	ON_START_GAME = "onStartGame",
	ON_MANUAL = "onManual",
	ON_AUTOBOT = "onAutoBot",
	ON_FLAG_SHIP = "onFlagShip",
	ON_UPPER_CONSORT = "onUpperConsort",
	ON_LOWER_CONSORT = "onLowerConsort",
	ON_LEADER = "onLeader",
	ON_CENTER = "onCenter",
	ON_REAR = "onRear",
	ON_SUB_LEADER = "onSubLeader",
	ON_UPPER_SUB_CONSORT = "onUpperSubConsort",
	ON_LOWER_SUB_CONSORT = "onLowerSubConsort",
	ON_ATTACH = "onAttach",
	ON_REMOVE = "onRemove",
	ON_STACK = "onStack",
	ON_UPDATE = "onUpdate",
	ON_BUFF_ADDED = "onBuffAdded",
	ON_BUFF_REMOVED = "onBuffRemoved",
	ON_BULLET_CREATE = "onBulletCreate",
	ON_CHARGE_BULLET_CREATE = "onChargeWeaponBulletCreate",
	ON_TORPEDO_BULLET_CREATE = "onTorpedoWeaponBulletCreate",
	ON_ANTIAIR_BULLET_CREATE = "onAntiAirWeaponBulletCreate",
	ON_INTERNAL_BULLET_CREATE = "onInternalBulletCreate",
	ON_MANUAL_BULLET_CREATE = "onManualBulletCreate",
	ON_BOMB_BULLET_BANG = "onBombBulletBang",
	ON_BULLET_COLLIDE = "onBulletCollide",
	ON_BULLET_HIT_BEFORE = "onBulletHitBefore",
	ON_BULLET_HIT = "onBulletHit",
	ON_BULLET_KILL = "onBulletKill",
	ON_BE_HIT = "onBeHit",
	ON_TAKE_DAMAGE = "onTakeDamage",
	ON_TAKE_HEALING = "onTakeHealing",
	ON_COMBO = "onCombo",
	ON_WEAPON_STEDAY = "onWeaponSteday",
	ON_FIRE = "onFire",
	ON_CHARGE_FIRE = "onChargeWeaponFire",
	ON_TORPEDO_FIRE = "onTorpedoWeaponFire",
	ON_ANTIAIR_FIRE = "onAntiAirWeaponFire",
	ON_ALL_IN_STRIKE_STEADY = "onAllInStrikeSteady",
	ON_ALL_IN_STRIKE = "onAllInStrike",
	ON_DEPTH_CHARGE_DROP = "onDepthChargeDrop",
	ON_CHARGE_READY = "onChargeWeaponReady",
	ON_MANUAL_TORPEDO_READY = "onManualTorpedoReady",
	ON_AIR_ASSIST_READY = "onAirAssistReady",
	ON_BEFORE_FATAL_DAMAGE = "onBeforeFatalDamage",
	ON_FRIENDLY_AIRCRAFT_DYING = "onFriendlyAircraftDying",
	ON_FRIENDLY_SHIP_DYING = "onFriendlyShipDying",
	ON_SINK = "onSink",
	ON_FOE_DYING = "onFoeDying",
	ON_FOE_AIRCRAFT_DYING = "onFoeAircraftDying",
	ON_RETREAT = "onRetreat",
	ON_FRIENDLY_HP_RATIO_UPDATE = "onFriendlyHpRatioUpdate",
	ON_TEAMMATE_HP_RATIO_UPDATE = "onTeammateHpRatioUpdate",
	ON_HP_RATIO_UPDATE = "onHPRatioUpdate",
	ON_BATTLE_BUFF_COUNT = "onBattleBuffCount",
	ON_SHIELD_BROKEN = "onShieldBroken",
	ON_SUBMARINE_AID = "onSubmarineAid",
	ON_SUBMARINE_FREE_DIVE = "onSubmarinFreeDive",
	ON_SUBMARINE_FREE_FLOAT = "onSubmarinFreeFloat",
	ON_SUBMARINE_FREE_SPECIAL = "onSubmarineFreeSpecial",
	ON_SUBMARINE_DIVE = "onSubmarineDive",
	ON_SUBMARINE_RAID = "onSubmarineRaid",
	ON_SUBMARINE_FLOAT = "onSubmarineFloat",
	ON_SUBMARINE_RETREAT = "onSubmarineRetreat",
	ON_SUB_DETECTED = "onSubDetected",
	ON_SUB_UNDETECTED = "onSubUnDetected",
	ON_ANTI_SUB_HATE_CHAIN = "onAntiSubHateChain",
	ON_RECORD = "onRecord"
}
BattleConst.FXContainerIndex = {
	"center",
	"top",
	"bottom",
	"auradown"
}
BattleConst.UnitDeathReason = {
	KILLED = 1,
	LEAVE = 2,
	DESTRUCT = 3,
	TOUCHDOWN = 4,
	CRUSH = 5,
	CLS = 6
}
BattleConst.BattleScore = {
	D = 0,
	C = 1,
	B = 2,
	A = 3,
	S = 4
}
BattleConst.CPChatType = {
	GROUP_ID = 0,
	SHIP_TYPE = 1,
	RARE = 2,
	NATIONALITY = 3,
	ILLUSTRATOR = 4
}
BattleConst.AIStepType = {
	STAY = 0,
	MOVE_TO = 1,
	MOVE = 2,
	BROWNIAN = 3,
	CIRCLE = 4,
	RELATIVE_BROWNIAN = 5,
	HIVE_STAY = 6,
	HIVE_CIRCLE = 7,
	RELATIVE_FLEET_MOVE_TO = 8
}
BattleConst.BossPhaseSwitchType = {
	NONE = 0,
	DURATION = 1,
	HP = 2,
	POSITION_X_GREATER = 3,
	POSITION_X_LESS = 4
}
BattleConst.SubAidFlag = {
	AMMO_EMPTY = 0,
	AID_EMPTY = -1,
	OIL_EMPTY = -2
}
BattleConst.ManualWeaponIndex = {
	CALIBRATION = 1,
	TORPEDO = 2,
	AIR_ASSIST = 3
}
BattleConst.EnviroumentBehaviour = {
	PLAY_FX = 1,
	DAMAGE = 2,
	BUFF = 3,
	MOVEMENT = 4,
	FORCE = 5,
	SPAWN = 6,
	PLAY_SFX = 7,
	SHAKE_SCREEN = 8,
	SPAWN = 6
}
BattleConst.Difficulty = {
	CASUAL = 1,
	ELITE = 2,
	RANDOM = 3,
	WORLD = 4
}
BattleConst.FIRE_FX_TYPE = {
	COMMON = 1,
	LASTING = 2
}
BattleConst.DEATH_MARK_SKILL = {
	IGNORE = 0,
	DEACTIVE = 1
}
