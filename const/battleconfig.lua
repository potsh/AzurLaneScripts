BattleConfig = {}
BattleConfig.calcFPS = 30
BattleConfig.viewFPS = 30
BattleConfig.AIFPS = 10
BattleConfig.calcInterval = 1 / BattleConfig.calcFPS
BattleConfig.viewInterval = 1 / BattleConfig.viewFPS
BattleConfig.AIInterval = 1 / BattleConfig.AIFPS
BattleConfig.FRIENDLY_CODE = 1
BattleConfig.FOE_CODE = -1
BattleConfig.SHIELD_CENTER_CONST = 3.14
BattleConfig.SHIELD_CENTER_CONST_2 = 2.0933333333333333
BattleConfig.SHIELD_CENTER_CONST_4 = 4.1866666666666665
BattleConfig.SHIELD_ROTATE_CONST = 30 / math.pi * 18
BattleConfig.K1 = 6
BattleConfig.K2 = 100
BattleConfig.K3 = 3.14
BattleConfig.AIR_ASSIST_RELOAD_RATIO = 220
BattleConfig.RANDOM_DAMAGE_MIN = 0
BattleConfig.RANDOM_DAMAGE_MAX = 2
BattleConfig.BASIC_TIME_SCALE = 1
BattleConfig.SPINE_SCALE = 2
BattleConfig.CAMERA_INIT_POS = {0, 62, -10}
BattleConfig.CAMERA_SIZE = 20
BattleConfig.CAMERA_BASE_HEIGH = 8
BattleConfig.CAMERA_GOLDEN_RATE = 0.618
BattleConfig.AntiAirConfig = {
	const_n = 10,
	const_K = 1000,
	const_N = 5,
	const_A = 20,
	const_B = 40,
	Restore_Interval = 1,
	Precast_duration = 0.25
}
BattleConfig.AnitAirRepeaterConfig = {
	const_A = 32,
	const_B = 12,
	const_C = 220,
	upper_range = 35,
	lower_range = 15
}
BattleConfig.ChargeWeaponConfig = {
	a1 = 0,
	K1 = 0,
	K2 = 1000,
	FIX_CD = 7,
	MEGA_FIX_CD = 3,
	GCD = 1,
	Enhance = 1.2,
	SIGHT_A = 0.35,
	SIGHT_B = -40,
	SIGHT_C = 38
}
BattleConfig.TorpedoCFG = {
	T = 10,
	N = 1000,
	GCD = 0.5
}
BattleConfig.AirAssistCFG = {
	GCD = 0.5
}
BattleConfig.BulletHeight = 1
BattleConfig.HeightOffsetRate = 1.5
BattleConfig.CharacterFeetHight = -0.5
BattleConfig.BombDetonateHeight = 1.2
BattleConfig.CameraSizeChangeSpeed = 0.04
BattleConfig.AircraftHeight = 10
BattleConfig.AirFighterOffsetZ = 3
BattleConfig.AirFighterHeight = 10
BattleConfig.MaxLeft = -10000
BattleConfig.MaxRight = 10000
BattleConfig.BornOffset = {0, 0, 0.1}
BattleConfig.FORMATION_ID = 10001
BattleConfig.CelebrateDuration = 3
BattleConfig.EscapeDuration = 5
BattleConfig.BulletMotionRate = 0.4
BattleConfig.BulletSpeedConvertConst = 0.1
BattleConfig.ShipSpeedConvertConst = 0.01
BattleConfig.AircraftSpeedConvertConst = 0.01
BattleConfig.PLAYER_WEAPON_GLOBAL_COOL_DOWN_DURATION = 0.5
BattleConfig.COUNT_DOWN_ESCAPE_AI_ID = 80006
BattleConfig.RESOURCE_STEP = 10
BattleConfig.RESOURCE_STAY_DURATION = 2
BattleConfig.CAST_CAM_ZOOM_SIZE = 14
BattleConfig.CAST_CAM_ZOOM_IN_DURATION = 0.1
BattleConfig.CAST_CAM_ZOOM_IN_DURATION_SKILL = 0.04
BattleConfig.CAST_CAM_ZOOM_OUT_DURATION_CANNON = 0.1
BattleConfig.CAST_CAM_ZOOM_OUT_EXTRA_DELAY_CANNON = 0.04
BattleConfig.CAST_CAM_ZOOM_OUT_DELAY_CANNON = 0
BattleConfig.CAST_CAM_ZOOM_OUT_DURATION_AIR = 0.1
BattleConfig.CAST_CAM_ZOOM_OUT_EXTRA_DELAY_AIR = 0.03
BattleConfig.CAST_CAM_ZOOM_OUT_DELAY_AIR = 0.05
BattleConfig.AIR_ASSIST_SPEED_RATE = 2.8
BattleConfig.CAST_CAM_ZOOM_OUT_DURATION_SKILL = 0.04
BattleConfig.CAST_CAM_ZOOM_OUT_EXTRA_DELAY_SKILL = 0
BattleConfig.CAST_CAM_ZOOM_OUT_DELAY_SKILL = 0
BattleConfig.CALIBRATE_ACCELERATION = 1.2
BattleConfig.CAST_CAM_OVERLOOK_SIZE = 24
BattleConfig.CAST_CAM_OVERLOOK_REVERT_DURATION = 1.5
BattleConfig.CAM_RESET_DURATION = 0.7
BattleConfig.SPEED_FACTOR_FOCUS_CHARACTER = "focusCharacter"
BattleConfig.FOCUS_MAP_RATE = 0.1
BattleConfig.MAIN_UNIT_POS = {
	[BattleConfig.FRIENDLY_CODE] = {
		{-105, 0, 58},
		{-105, 0, 78},
		{-105, 0, 38}
	},
	[BattleConfig.FOE_CODE] = {
		{15, 0, 58},
		{15, 0, 78},
		{15, 0, 38}
	}
}
BattleConfig.SUB_UNIT_POS_Z = {
	58,
	78,
	38
}
BattleConfig.SUB_UNIT_OFFSET_X = -5
BattleConfig.SUB_BENCH_POS = {
	{-325, 0, 228},
	{-325, 0, 128}
}
BattleConfig.SHIP_CLD_INTERVAL = 1
BattleConfig.SHIP_CLD_BUFF = 8010
BattleConfig.START_SPEED_CONST_A = 2.5
BattleConfig.START_SPEED_CONST_B = 0.25
BattleConfig.START_SPEED_CONST_C = 0.3
BattleConfig.START_SPEED_CONST_D = 2.5
BattleConfig.GRAVITY = -0.05
BattleConfig.DUEL_MAIN_RAGE_BUFF = 6
BattleConfig.DULE_BALANCE_BUFF = 19
BattleConfig.SIMULATION_BALANCE_BUFF = 49
BattleConfig.ARENA_LIST = {
	80000,
	80001,
	80002,
	80003
}
BattleConfig.SIMULATION_FREE_BUFF = 41
BattleConfig.SIMULATION_ADVANTAGE_BUFF = 42
BattleConfig.SIMULATION_ADVANTAGE_CANCEL_LIST = {
	42,
	44,
	45
}
BattleConfig.SIMULATION_DISADVANTAGE_BUFF = 43
BattleConfig.SIMULATION_RIVAL_RAGE_TOTAL_COUNT = 30
BattleConfig.CHALLENGE_INVINCIBLE_BUFF = 50
BattleConfig.WARNING_HP_RATE = 0.7
BattleConfig.WARNING_HP_RATE_MAIN = 0.3
BattleConfig.SKILL_BUTTON_DEFAULT_PREFERENCE = {
	{
		scale = 1,
		x = 0.924,
		y = 0.135
	},
	{
		scale = 1,
		x = 0.81,
		y = 0.135
	},
	{
		scale = 1,
		x = 0.696,
		y = 0.135
	},
	{
		scale = 1,
		x = 0.58,
		y = 0.135
	}
}
BattleConfig.JOY_STICK_DEFAULT_PREFERENCE = {
	scale = 1,
	x = 0.12,
	y = 0.183
}
BattleConfig.AUTO_DEFAULT_PREFERENCE = {
	scale = 1,
	x = 0.0625,
	y = 0.925
}
BattleConfig.DOT_CONFIG = {
	{
		reduce = "igniteReduce",
		prolong = "igniteProlong",
		shorten = "igniteShorten",
		resist = "igniteResist",
		enhance = "igniteEnhance",
		hit = "ignite_accuracy"
	},
	{
		reduce = "floodingReduce",
		prolong = "floodingProlong",
		shorten = "floodingShorten",
		resist = "floodingResist",
		enhance = "floodingEnhance",
		hit = "flooding_accuracy"
	}
}
BattleConfig.DOT_CONFIG_DEFAULT = {
	reduce = 0,
	prolong = 0,
	shorten = 0,
	resist = 0,
	enhance = 0,
	hit = 0
}
BattleConfig.AMMO_DAMAGE_ENHANCE = {
	"damageRatioByAmmoType_1",
	"damageRatioByAmmoType_2",
	"damageRatioByAmmoType_3",
	nil,
	nil,
	nil,
	"damageRatioByAmmoType_7"
}
BattleConfig.AMMO_DAMAGE_REDUCE = {
	"damageReduceFromAmmoType_1",
	"damageReduceFromAmmoType_2",
	"damageReduceFromAmmoType_3",
	nil,
	nil,
	nil,
	"damageReduceFromAmmoType_7"
}
BattleConfig.AGAINST_ARMOR_ENHANCE = {
	"damageAgainstArmorEnhance_1",
	"damageAgainstArmorEnhance_2",
	"damageAgainstArmorEnhance_3"
}
BattleConfig.SHIP_TYPE_ACCURACY_ENHANCE = {
	[ShipType.QuZhu] = "accuracyToShipType_1",
	[ShipType.QingXun] = "accuracyToShipType_2",
	[ShipType.ZhongXun] = "accuracyToShipType_3",
	[ShipType.ZhanXun] = "accuracyToShipType_4",
	[ShipType.ZhanLie] = "accuracyToShipType_5",
	[ShipType.QingHang] = "accuracyToShipType_6",
	[ShipType.ZhengHang] = "accuracyToShipType_7",
	[ShipType.QianTing] = "accuracyToShipType_8",
	[ShipType.HangXun] = "accuracyToShipType_9",
	[ShipType.HangZhan] = "accuracyToShipType_10",
	[ShipType.LeiXun] = "accuracyToShipType_11",
	[ShipType.WeiXiu] = "accuracyToShipType_12",
	[ShipType.ZhongPao] = "accuracyToShipType_13",
	[ShipType.YuLeiTing] = "accuracyToShipType_14",
	[ShipType.JinBi] = "accuracyToShipType_15",
	[ShipType.ZiBao] = "accuracyToShipType_16",
	[ShipType.QianMu] = "accuracyToShipType_17",
	[ShipType.ChaoXun] = "accuracyToShipType_18",
	[ShipType.Yunshu] = "accuracyToShipType_19"
}
BattleConfig.OXY_RAID_BASE_LINE_PVE = -20
BattleConfig.OXY_RAID_BASE_LINE_PVP = -20
BattleConfig.SUB_DEFAULT_STAY_AI = 10006
BattleConfig.SUB_DEFAULT_ENGAGE_AI = 90001
BattleConfig.SUB_DEFAULT_RETREAT_AI = 90002
BattleConfig.SONAR_DURATION_K = 0.1
BattleConfig.SONAR_INTERVAL_K = 0.1
BattleConfig.VAN_SONAR_PROPERTY = {
	[ShipType.QuZhu] = {
		a = 2,
		maxRange = 100,
		minRange = 45,
		b = 32
	},
	[ShipType.QingXun] = {
		a = 2.86,
		maxRange = 80,
		minRange = 30,
		b = 0
	}
}
BattleConfig.MAIN_SONAR_PROPERTY = {
	a = 24,
	maxRange = 15,
	minRange = 0
}
BattleConfig.SUB_EXPOSE_LASTING_DURATION = 0.5
BattleConfig.SUB_FADE_IN_DURATION = 0.5
BattleConfig.SUB_FADE_OUT_DURATION = 0.5
BattleConfig.SUB_DIVE_IMMUNE_IGNITE_BUFF = 314
BattleConfig.SUB_FLOAT_DISIMMUNE_IGNITE_BUFF = 315
BattleConfig.PLAYER_SUB_BUBBLE_FX = "bubble"
BattleConfig.PLAYER_SUB_BUBBLE_INIT = 200
BattleConfig.PLAYER_SUB_BUBBLE_INTERVAL = 3
BattleConfig.MONSTER_SUB_KAMIKAZE_DUAL_K = 50
BattleConfig.MONSTER_SUB_KAMIKAZE_DUAL_P = 0.15
BattleConfig.BATTLE_SHADER = {
	SEMI_TRANSPARENT = "assets/artresource/shader/unlit_colored_semitransparent.shader",
	GRID_TRANSPARENT = "assets/artresource/shader/Skeleton-Colored_Additive.shader"
}
BattleConfig.BATTLE_DODGEM_STAGES = {
	1140101,
	1140102,
	1140103
}
BattleConfig.BATTLE_DODGEM_PASS_SCORE = 10
BattleConfig.SR_CONFIG = {
	FLOAT_CD = 2,
	DIVE_CD = 2,
	BOOST_CD = 10,
	SHIFT_CD = 5,
	BOOST_SPEED = 2,
	BOOST_DECAY = 0.2,
	BOOST_DURATION = 12,
	BOOST_DECAY_STAMP = 9,
	BASE_POINT = 100,
	POINT = 10,
	DEAD_POINT = 15,
	M = 2
}
BattleConfig.CHALLENGE_ENHANCE = {
	K = 1,
	X = 3,
	A = 2,
	X1 = 5,
	X2 = 5,
	Y1 = 10,
	Y2 = 5
}
BattleConfig.LOADING_TIPS_LIMITED_SYSTEM = {
	SYSTEM_WORLD
}
BattleConfig.WORLD_ENEMY_ENHANCEMENT_CONST_B = 80
BattleConfig.WORLD_ENEMY_ENHANCEMENT_CONST_C = 1.1
BattleConfig.BULLET_DECREASE_DMG_FONT = {
	4,
	0.9
}
BattleConfig.CLOAK_EXPOSE_CONST = 50
BattleConfig.CLOAK_EXPOSE_MAX = 100
BattleConfig.CLOAK_BASE_RESTORE_DELTA = -60
BattleConfig.CLOAK_RECOVERY = 5
BattleConfig.BASE_ARP = 0.1
BattleConfig.CLOAK_STRIKE_ADDITIVE = 6
BattleConfig.CLOAK_STRIKE_ADDITIVE_LIMIT = 60
