pg = pg or {}
pg.commander_skill_template = {
	[10011] = {
		name = "31节的正义",
		desc_world = "所在舰队中有三艘驱逐时，依据指挥喵战术属性，提高所在舰队中先锋舰队的雷击属性（效果中）",
		next_id = 10012,
		exp = 1,
		prev_id = 0,
		desc = "所在舰队中有三艘驱逐时，地图移动力+1",
		id = 10011,
		icon = "1001",
		lv = 1,
		effect_tactic = {
			100111
		},
		effect_tactic_world = {
			9100111
		}
	},
	[10012] = {
		name = "31节的正义",
		desc_world = "作为司令位指挥喵时，若先锋舰队中间位置为驱逐舰，进入战斗后发射一轮特殊弹幕I，每场战斗一次",
		next_id = 10013,
		exp = 3,
		prev_id = 10011,
		desc = "当作为司令位指挥喵，接触非旗舰敌方单位时，若队伍中有驱逐，则有15%概率发射一次鱼雷打击(地图)",
		id = 10012,
		icon = "1001",
		lv = 2,
		effect_tactic = {
			100111,
			100112
		},
		effect_tactic_world = {
			9100111,
			9100112
		}
	},
	[10013] = {
		name = "31节的正义",
		desc_world = "特殊弹幕I 强化为 特殊弹幕II",
		next_id = 0,
		exp = 0,
		prev_id = 10012,
		desc = "作为司令位指挥喵，编队中存在驱逐且未进入交战状态时，可选择相邻位置与敌方交战中的己方舰队，与之互换所在位置代替其与敌方交战",
		id = 10013,
		icon = "1001",
		lv = 3,
		effect_tactic = {
			100111,
			100112,
			100113
		},
		effect_tactic_world = {
			9100111,
			9100113
		}
	},
	[10021] = {
		name = "王牌射手",
		desc_world = "与主力舰队或侦查舰队交战时，依据指挥喵战术属性，提高所在舰队中战列、战巡、航战的命中属性(效果大)",
		next_id = 10022,
		exp = 1,
		prev_id = 0,
		desc = "与主力舰队或侦查舰队交战时，依据指挥喵战术属性，提高所在舰队中战列、战巡、航战的命中属性(效果大)",
		id = 10021,
		icon = "1002",
		lv = 1,
		effect_tactic = {
			100211
		},
		effect_tactic_world = {
			100211
		}
	},
	[10022] = {
		name = "王牌射手",
		desc_world = "若所在舰队旗舰为战列、战巡或航战，依据指挥喵指挥属性，提高旗舰造成的伤害",
		next_id = 10023,
		exp = 3,
		prev_id = 10021,
		desc = "若所在舰队旗舰为战列、战巡或航战，依据指挥喵指挥属性，提高旗舰造成的伤害",
		id = 10022,
		icon = "1002",
		lv = 2,
		effect_tactic = {
			100211,
			100212
		},
		effect_tactic_world = {
			100211,
			100212
		}
	},
	[10023] = {
		name = "王牌射手",
		desc_world = "依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的机动、防空属性(效果中)",
		next_id = 0,
		exp = 0,
		prev_id = 10022,
		desc = "依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的机动、防空属性(效果中)",
		id = 10023,
		icon = "1002",
		lv = 3,
		effect_tactic = {
			100211,
			100212,
			100213
		},
		effect_tactic_world = {
			100211,
			100212,
			100213
		}
	},
	[11011] = {
		name = "5英寸的勇气",
		desc_world = "当作为司令位指挥喵，依据指挥喵指挥属性，提高所在舰队中驱逐的雷击属性(效果小)",
		next_id = 11012,
		exp = 1,
		prev_id = 0,
		desc = "当作为司令位指挥喵，接触非旗舰敌方单位时，若队伍中有驱逐，则有15%概率发射一次鱼雷打击(地图)",
		id = 11011,
		icon = "1101",
		lv = 1,
		effect_tactic = {
			110111
		},
		effect_tactic_world = {
			9110111
		}
	},
	[11012] = {
		name = "5英寸的勇气",
		desc_world = "先锋领舰为驱逐时，战斗中靠近敌人时发射一轮特殊弹幕I，每场战斗一次",
		next_id = 11013,
		exp = 3,
		prev_id = 11011,
		desc = "先锋领舰为驱逐时，战斗中靠近敌人时发射一轮特殊弹幕I，每场战斗一次",
		id = 11012,
		icon = "1101",
		lv = 2,
		effect_tactic = {
			110111,
			110112
		},
		effect_tactic_world = {
			9110111,
			110112
		}
	},
	[11013] = {
		name = "5英寸的勇气",
		desc_world = "特殊弹幕I 强化为 特殊弹幕II",
		next_id = 0,
		exp = 0,
		prev_id = 11012,
		desc = "特殊弹幕I 强化为 特殊弹幕II",
		id = 11013,
		icon = "1101",
		lv = 3,
		effect_tactic = {
			110111,
			110113
		},
		effect_tactic_world = {
			9110111,
			110113
		}
	},
	[11021] = {
		name = "幸运之翼",
		desc_world = "作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻航、正航的装填属性(效果小)",
		next_id = 11022,
		exp = 1,
		prev_id = 0,
		desc = "作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻航、正航的装填属性(效果小)",
		id = 11021,
		icon = "1102",
		lv = 1,
		effect_tactic = {
			110211
		},
		effect_tactic_world = {
			110211
		}
	},
	[11022] = {
		name = "幸运之翼",
		desc_world = "作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻航、正航的机动、防空属性(效果小)",
		next_id = 11023,
		exp = 3,
		prev_id = 10021,
		desc = "所在舰队遭遇空袭时，依据指挥喵战术属性，有概率回避此次空袭伤害",
		id = 11022,
		icon = "1102",
		lv = 2,
		effect_tactic = {
			110211,
			110212
		},
		effect_tactic_world = {
			110211,
			9110212
		}
	},
	[11023] = {
		name = "幸运之翼",
		desc_world = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻航、正航的航空属性(效果中)",
		next_id = 0,
		exp = 0,
		prev_id = 10022,
		desc = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻航、正航的航空属性(效果中)",
		id = 11023,
		icon = "1102",
		lv = 3,
		effect_tactic = {
			110211,
			110212,
			110213
		},
		effect_tactic_world = {
			110211,
			9110212,
			110213
		}
	},
	[12011] = {
		name = "空母后勤",
		desc_world = "作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中轻航、正航的装填属性(效果小)",
		next_id = 12012,
		exp = 1,
		prev_id = 0,
		desc = "作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中轻航、正航的装填属性(效果小)",
		id = 12011,
		icon = "buff",
		lv = 1,
		effect_tactic = {
			120111
		},
		effect_tactic_world = {
			120111
		}
	},
	[12012] = {
		name = "空母后勤",
		desc_world = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻航、正航的航空属性(效果小)",
		next_id = 12013,
		exp = 3,
		prev_id = 12011,
		desc = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻航、正航的航空属性(效果小)",
		id = 12012,
		icon = "buff",
		lv = 2,
		effect_tactic = {
			120111,
			120112
		},
		effect_tactic_world = {
			120111,
			120112
		}
	},
	[12013] = {
		name = "空母后勤",
		desc_world = "作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻航、正航的命中属性(效果小)",
		next_id = 0,
		exp = 0,
		prev_id = 12012,
		desc = "作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻航、正航的命中属性(效果小)",
		id = 12013,
		icon = "buff",
		lv = 3,
		effect_tactic = {
			120111,
			120112,
			120113
		},
		effect_tactic_world = {
			120111,
			120112,
			120113
		}
	},
	[12021] = {
		name = "雷达侦察",
		desc_world = "作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中轻巡、重巡、超巡的机动属性(效果小)",
		next_id = 12022,
		exp = 1,
		prev_id = 0,
		desc = "依据指挥喵后勤属性，降低所在舰队遭遇伏击的概率",
		id = 12021,
		icon = "def",
		lv = 1,
		effect_tactic = {
			120121
		},
		effect_tactic_world = {
			9120121
		}
	},
	[12022] = {
		name = "雷达侦察",
		desc_world = "作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻巡、重巡、超巡的命中属性(效果小)",
		next_id = 12023,
		exp = 3,
		prev_id = 12011,
		desc = "作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻巡、重巡、超巡的命中属性(效果小)",
		id = 12022,
		icon = "def",
		lv = 2,
		effect_tactic = {
			120121,
			120122
		},
		effect_tactic_world = {
			9120121,
			120122
		}
	},
	[12023] = {
		name = "雷达侦察",
		desc_world = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻巡、重巡、超巡的炮击属性(效果小)",
		next_id = 0,
		exp = 0,
		prev_id = 12012,
		desc = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻巡、重巡、超巡的炮击属性(效果小)",
		id = 12023,
		icon = "def",
		lv = 3,
		effect_tactic = {
			120121,
			120122,
			120123
		},
		effect_tactic_world = {
			9120121,
			120122,
			120123
		}
	},
	[20011] = {
		name = "尽忠职守",
		desc_world = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的炮击、防空属性(效果中)",
		next_id = 20012,
		exp = 1,
		prev_id = 0,
		desc = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的炮击、防空属性(效果中)",
		id = 20011,
		icon = "2001",
		lv = 1,
		effect_tactic = {
			200111
		},
		effect_tactic_world = {
			200111
		}
	},
	[20012] = {
		name = "尽忠职守",
		desc_world = "作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队全员的炮击属性(效果中)，持续30秒",
		next_id = 20013,
		exp = 3,
		prev_id = 20011,
		desc = "作为参谋位指挥喵，舰队在沿岸区域(不可通行的岛屿陆地旁)交战时，依据指挥喵战术属性，提高所在舰队全员的炮击属性(效果中)",
		id = 20012,
		icon = "2001",
		lv = 2,
		effect_tactic = {
			200111,
			200112
		},
		effect_tactic_world = {
			200111,
			9200112
		}
	},
	[20013] = {
		name = "尽忠职守",
		desc_world = "依据指挥喵战术属性，提高所在舰队成员对战列、战巡、航战造成的伤害",
		next_id = 0,
		exp = 0,
		prev_id = 20012,
		desc = "依据指挥喵战术属性，提高所在舰队成员对战列、战巡、航战造成的伤害",
		id = 20013,
		icon = "2001",
		lv = 3,
		effect_tactic = {
			200111,
			200112,
			200113
		},
		effect_tactic_world = {
			200111,
			9200112,
			200113
		}
	},
	[20021] = {
		name = "狡黠之獾",
		desc_world = "作为司令位指挥喵时，依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的炮击、防空属性(效果中)",
		next_id = 20022,
		exp = 1,
		prev_id = 0,
		desc = "作为司令位指挥喵时，依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的炮击、防空属性(效果中)",
		id = 20021,
		icon = "2002",
		lv = 1,
		effect_tactic = {
			200211
		},
		effect_tactic_world = {
			200211
		}
	},
	[20022] = {
		name = "狡黠之獾",
		desc_world = "作为司令位指挥喵时，若队伍中皇家阵营角色数量不少于4名，战斗开始后，依据后勤属性，降低队伍中先锋角色受到的伤害，持续30秒",
		next_id = 20023,
		exp = 3,
		prev_id = 20021,
		desc = "作为司令位指挥喵时，若队伍中皇家阵营角色数量不少于4名，战斗开始后，依据后勤属性，降低队伍中先锋角色受到的伤害，持续30秒",
		id = 20022,
		icon = "2002",
		lv = 2,
		effect_tactic = {
			200211,
			200212
		},
		effect_tactic_world = {
			200211,
			200212
		}
	},
	[20023] = {
		name = "狡黠之獾",
		desc_world = "作为司令位指挥喵时，依据指挥喵后勤属性，提高所在舰队中皇家阵营角色的机动属性(效果大)",
		next_id = 0,
		exp = 0,
		prev_id = 20022,
		desc = "作为司令位指挥喵时，依据指挥喵后勤属性，提高所在舰队中皇家阵营角色的机动属性(效果大)",
		id = 20023,
		icon = "2002",
		lv = 3,
		effect_tactic = {
			200211,
			200212,
			200213
		},
		effect_tactic_world = {
			200211,
			200212,
			200213
		}
	},
	[21011] = {
		name = "物资拦截者",
		desc_world = "作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中轻巡、重巡、超巡的机动属性(效果小)",
		next_id = 21012,
		exp = 1,
		prev_id = 0,
		desc = "作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中轻巡、重巡、超巡的机动属性(效果小)",
		id = 21011,
		icon = "2101",
		lv = 1,
		effect_tactic = {
			210111
		},
		effect_tactic_world = {
			210111
		}
	},
	[21012] = {
		name = "物资拦截者",
		desc_world = "作为参谋位指挥喵，与运输舰队交战时，依据指挥喵战术属性，提高所在舰队中轻巡、重巡、超巡的炮击属性(效果大)",
		next_id = 21013,
		exp = 3,
		prev_id = 21011,
		desc = "作为参谋位指挥喵，与运输舰队交战时，依据指挥喵战术属性，提高所在舰队中轻巡、重巡、超巡的炮击属性(效果大)",
		id = 21012,
		icon = "2101",
		lv = 2,
		effect_tactic = {
			210111,
			210112
		},
		effect_tactic_world = {
			210111,
			210112
		}
	},
	[21013] = {
		name = "物资拦截者",
		desc_world = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻巡、重巡的雷击属性(效果中)",
		next_id = 0,
		exp = 0,
		prev_id = 21012,
		desc = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻巡、重巡的雷击属性(效果中)",
		id = 21013,
		icon = "2101",
		lv = 3,
		effect_tactic = {
			210111,
			210112,
			210113
		},
		effect_tactic_world = {
			210111,
			210112,
			210113
		}
	},
	[21021] = {
		name = "斥候猎手",
		desc_world = "作为参谋位指挥喵，与侦查舰队交战时，依据指挥喵战术属性，提高所在舰队中驱逐的命中属性(效果中)",
		next_id = 21022,
		exp = 1,
		prev_id = 0,
		desc = "作为参谋位指挥喵，与侦查舰队交战时，依据指挥喵战术属性，提高所在舰队中驱逐的命中属性(效果中)",
		id = 21021,
		icon = "2102",
		lv = 1,
		effect_tactic = {
			210211
		},
		effect_tactic_world = {
			210211
		}
	},
	[21022] = {
		name = "斥候猎手",
		desc_world = "作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中驱逐的机动属性(效果小)",
		next_id = 21023,
		exp = 3,
		prev_id = 21021,
		desc = "作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中驱逐的机动属性(效果小)",
		id = 21022,
		icon = "2102",
		lv = 2,
		effect_tactic = {
			210211,
			210212
		},
		effect_tactic_world = {
			210211,
			210212
		}
	},
	[21023] = {
		name = "斥候猎手",
		desc_world = "距离自身3格范围内存在敌方侦察舰队时，依据指挥喵指挥属性，提高所在舰队中驱逐的机动属性(效果小)",
		next_id = 0,
		exp = 0,
		prev_id = 21022,
		desc = "距离自身3格范围内存在敌方侦察舰队时，当前舰队移动力+1",
		id = 21023,
		icon = "2102",
		lv = 3,
		effect_tactic = {
			210211,
			210212,
			210213
		},
		effect_tactic_world = {
			210211,
			210212,
			9210213
		}
	},
	[21031] = {
		name = "守望者",
		desc_world = "作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻航、正航的命中属性(效果小)",
		next_id = 21032,
		exp = 1,
		prev_id = 0,
		desc = "作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻航、正航的命中属性(效果小)",
		id = 21031,
		icon = "2103",
		lv = 1,
		effect_tactic = {
			210311
		},
		effect_tactic_world = {
			210311
		}
	},
	[21032] = {
		name = "守望者",
		desc_world = "距离自身2格范围内存在敌方侦察舰队时，依据指挥喵后勤属性，提高所在舰队中驱逐的机动属性(效果小)",
		next_id = 21033,
		exp = 3,
		prev_id = 21031,
		desc = "距离自身2格范围内存在敌方侦察舰队时，当前舰队移动力+1",
		id = 21032,
		icon = "2103",
		lv = 2,
		effect_tactic = {
			210311,
			210312
		},
		effect_tactic_world = {
			210311,
			9210312
		}
	},
	[21033] = {
		name = "守望者",
		desc_world = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻航、正航的航空属性(效果中)",
		next_id = 0,
		exp = 0,
		prev_id = 21032,
		desc = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻航、正航的航空属性(效果中)",
		id = 21033,
		icon = "2103",
		lv = 3,
		effect_tactic = {
			210311,
			210312,
			210313
		},
		effect_tactic_world = {
			210311,
			9210312,
			210313
		}
	},
	[21041] = {
		name = "无畏的骑士",
		desc_world = "作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中战列、战巡、航战的机动属性(效果小)",
		next_id = 21042,
		exp = 1,
		prev_id = 0,
		desc = "依据指挥喵后勤属性，降低受到伏击的概率",
		id = 21041,
		icon = "2104",
		lv = 1,
		effect_tactic = {
			210411
		},
		effect_tactic_world = {
			9210411
		}
	},
	[21042] = {
		name = "无畏的骑士",
		desc_world = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的装填属性(效果小)",
		next_id = 21043,
		exp = 3,
		prev_id = 21041,
		desc = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的装填属性(效果小)",
		id = 21042,
		icon = "2104",
		lv = 2,
		effect_tactic = {
			210411,
			210412
		},
		effect_tactic_world = {
			9210411,
			210412
		}
	},
	[21043] = {
		name = "无畏的骑士",
		desc_world = "作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中皇家阵营角色的炮击属性(效果小)",
		next_id = 0,
		exp = 0,
		prev_id = 21042,
		desc = "作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中皇家阵营角色的炮击属性(效果小)",
		id = 21043,
		icon = "2104",
		lv = 3,
		effect_tactic = {
			210411,
			210412,
			210413
		},
		effect_tactic_world = {
			9210411,
			210412,
			210413
		}
	},
	[22011] = {
		name = "战列后勤",
		desc_world = "作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中战列、战巡、航战的装填属性(效果小)",
		next_id = 22012,
		exp = 1,
		prev_id = 0,
		desc = "作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中战列、战巡、航战的装填属性(效果小)",
		id = 22011,
		icon = "buff",
		lv = 1,
		effect_tactic = {
			220111
		},
		effect_tactic_world = {
			220111
		}
	},
	[22012] = {
		name = "战列后勤",
		desc_world = "作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中战列、战巡、航战的命中属性(效果小)",
		next_id = 22013,
		exp = 3,
		prev_id = 22011,
		desc = "作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中战列、战巡、航战的命中属性(效果小)",
		id = 22012,
		icon = "buff",
		lv = 2,
		effect_tactic = {
			220111,
			220112
		},
		effect_tactic_world = {
			220111,
			220112
		}
	},
	[22013] = {
		name = "战列后勤",
		desc_world = "作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中战列、战巡、航战的炮击属性(效果小)",
		next_id = 0,
		exp = 0,
		prev_id = 22012,
		desc = "作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中战列、战巡、航战的炮击属性(效果小)",
		id = 22013,
		icon = "buff",
		lv = 3,
		effect_tactic = {
			220111,
			220112,
			220113
		},
		effect_tactic_world = {
			220111,
			220112,
			220113
		}
	},
	[22021] = {
		name = "巡洋战术",
		desc_world = "作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻巡、重巡、超巡的炮击属性(效果小)",
		next_id = 22022,
		exp = 1,
		prev_id = 0,
		desc = "作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻巡、重巡、超巡的炮击属性(效果小)",
		id = 22021,
		icon = "buff",
		lv = 1,
		effect_tactic = {
			220211
		},
		effect_tactic_world = {
			220211
		}
	},
	[22022] = {
		name = "巡洋战术",
		desc_world = "作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻巡、重巡、超巡的命中属性(效果小)",
		next_id = 22023,
		exp = 3,
		prev_id = 22021,
		desc = "作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻巡、重巡、超巡的命中属性(效果小)",
		id = 22022,
		icon = "buff",
		lv = 2,
		effect_tactic = {
			220211,
			220212
		},
		effect_tactic_world = {
			220211,
			220212
		}
	},
	[22023] = {
		name = "巡洋战术",
		desc_world = "作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻巡、重巡、超巡的机动属性(效果小)",
		next_id = 0,
		exp = 0,
		prev_id = 22022,
		desc = "作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻巡、重巡、超巡的机动属性(效果小)",
		id = 22023,
		icon = "buff",
		lv = 3,
		effect_tactic = {
			220211,
			220212,
			220213
		},
		effect_tactic_world = {
			220211,
			220212,
			220213
		}
	},
	[30011] = {
		name = "反击的一拳",
		desc_world = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻航、正航的航空、装填属性(效果小)",
		next_id = 30012,
		exp = 1,
		prev_id = 0,
		desc = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻航、正航的航空、装填属性(效果小)",
		id = 30011,
		icon = "3001",
		lv = 1,
		effect_tactic = {
			300111
		},
		effect_tactic_world = {
			300111
		}
	},
	[30012] = {
		name = "反击的一拳",
		desc_world = "作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中轻航、正航的机动属性(效果小)",
		next_id = 30013,
		exp = 3,
		prev_id = 30011,
		desc = "依据指挥喵后勤属性，降低受到伏击的概率",
		id = 30012,
		icon = "3001",
		lv = 2,
		effect_tactic = {
			300111,
			300112
		},
		effect_tactic_world = {
			300111,
			9300112
		}
	},
	[30013] = {
		name = "反击的一拳",
		desc_world = "进入战斗时，若主力舰队仅剩下一艘轻航或正航，且无其他主力舰，则首轮空袭装填速度加快8%，同时首轮空袭时触发额外的鱼雷机编队攻击",
		next_id = 0,
		exp = 0,
		prev_id = 30012,
		desc = "进入战斗时，若主力舰队仅剩下一艘轻航或正航，且无其他主力舰，则首轮空袭装填速度加快8%，同时首轮空袭时触发额外的鱼雷机编队攻击",
		id = 30013,
		icon = "3001",
		lv = 3,
		effect_tactic = {
			300111,
			300112,
			300113
		},
		effect_tactic_world = {
			300111,
			9300112,
			300113
		}
	},
	[30021] = {
		name = "敢勇当先",
		desc_world = "作为司令位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻巡、重巡、超巡的炮击、雷击属性(效果中)",
		next_id = 30022,
		exp = 1,
		prev_id = 0,
		desc = "作为司令位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻巡、重巡、超巡的炮击、雷击属性(效果中)",
		id = 30021,
		icon = "3002",
		lv = 1,
		effect_tactic = {
			300211
		},
		effect_tactic_world = {
			300211
		}
	},
	[30022] = {
		name = "敢勇当先",
		desc_world = "作为司令位指挥喵时，若距离自身2格范围内存在敌方主力舰队，依据指挥属性，降低队伍中旗舰受到的伤害(Lv2生效)",
		next_id = 30023,
		exp = 3,
		prev_id = 30021,
		desc = "作为司令位指挥喵时，若距离自身2格范围内存在敌方主力舰队，依据指挥属性，降低队伍中旗舰受到的伤害(Lv2生效)",
		id = 30022,
		icon = "3002",
		lv = 2,
		effect_tactic = {
			300211,
			300212
		},
		effect_tactic_world = {
			300211,
			300212
		}
	},
	[30023] = {
		name = "敢勇当先",
		desc_world = "作为司令位指挥喵，与主力舰队交战时，战斗开始后，依据战术属性，提高所在舰队中轻巡、重巡、超巡的命中、机动属性(效果大)，持续30秒",
		next_id = 0,
		exp = 0,
		prev_id = 30022,
		desc = "作为司令位指挥喵，与主力舰队交战时，战斗开始后，依据战术属性，提高所在舰队中轻巡、重巡、超巡的命中、机动属性(效果大)，持续30秒",
		id = 30023,
		icon = "3002",
		lv = 3,
		effect_tactic = {
			300211,
			300212,
			300213
		},
		effect_tactic_world = {
			300211,
			300212,
			300213
		}
	},
	[31011] = {
		name = "必杀·三段击",
		desc_world = "作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻航、正航的命中属性(效果小)",
		next_id = 31012,
		exp = 1,
		prev_id = 0,
		desc = "作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中轻航、正航的命中属性(效果小)",
		id = 31011,
		icon = "3101",
		lv = 1,
		effect_tactic = {
			310111
		},
		effect_tactic_world = {
			310111
		}
	},
	[31012] = {
		name = "必杀·三段击",
		desc_world = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻航、正航的航空属性(效果中)",
		next_id = 31013,
		exp = 3,
		prev_id = 31011,
		desc = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻航、正航的航空属性(效果中)",
		id = 31012,
		icon = "3101",
		lv = 2,
		effect_tactic = {
			310111,
			310112
		},
		effect_tactic_world = {
			310111,
			310112
		}
	},
	[31013] = {
		name = "必杀·三段击",
		desc_world = "若所在舰队旗舰为轻航或正航，战斗开始后15秒触发额外的舰载机编队攻击",
		next_id = 0,
		exp = 0,
		prev_id = 31012,
		desc = "若所在舰队中有轻航或正航，当接触非旗舰敌方单位时，有15%的概率发射一次空袭打击（地图），伤害依据指挥喵战术属性、双方等级、战斗力决定",
		id = 31013,
		icon = "3101",
		lv = 3,
		effect_tactic = {
			310111,
			310112,
			310113
		},
		effect_tactic_world = {
			310111,
			310112,
			9310113
		}
	},
	[31021] = {
		name = "野性的直觉",
		desc_world = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中驱逐的机动属性(效果小)",
		next_id = 31022,
		exp = 1,
		prev_id = 0,
		desc = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中驱逐的机动属性(效果小)",
		id = 31021,
		icon = "3102",
		lv = 1,
		effect_tactic = {
			310211
		},
		effect_tactic_world = {
			310211
		}
	},
	[31022] = {
		name = "野性的直觉",
		desc_world = "作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中驱逐的雷击属性(效果中)",
		next_id = 31023,
		exp = 3,
		prev_id = 31021,
		desc = "作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中驱逐的雷击属性(效果中)",
		id = 31022,
		icon = "3102",
		lv = 2,
		effect_tactic = {
			310211,
			310212
		},
		effect_tactic_world = {
			310211,
			310212
		}
	},
	[31023] = {
		name = "野性的直觉",
		desc_world = "作为参谋位指挥喵，先锋舰队只有一艘舰船且为驱逐时，依据指挥喵指挥属性，提高所在舰队中驱逐的雷击属性(效果大)",
		next_id = 0,
		exp = 0,
		prev_id = 31022,
		desc = "作为参谋位指挥喵，先锋舰队只有一艘舰船且为驱逐时，依据指挥喵指挥属性，提高所在舰队中驱逐的雷击属性(效果大)",
		id = 31023,
		icon = "3102",
		lv = 3,
		effect_tactic = {
			310211,
			310212,
			310213
		},
		effect_tactic_world = {
			310211,
			310212,
			310213
		}
	},
	[32011] = {
		name = "巡洋指挥",
		desc_world = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻巡、重巡、超巡的炮击属性(效果小)",
		next_id = 32012,
		exp = 1,
		prev_id = 0,
		desc = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻巡、重巡、超巡的炮击属性(效果小)",
		id = 32011,
		icon = "buff",
		lv = 1,
		effect_tactic = {
			320111
		},
		effect_tactic_world = {
			320111
		}
	},
	[32012] = {
		name = "巡洋指挥",
		desc_world = "作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中轻巡、重巡的雷击属性(效果小)",
		next_id = 32013,
		exp = 3,
		prev_id = 32011,
		desc = "作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中轻巡、重巡的雷击属性(效果小)",
		id = 32012,
		icon = "buff",
		lv = 2,
		effect_tactic = {
			320111,
			320112
		},
		effect_tactic_world = {
			320111,
			320112
		}
	},
	[32013] = {
		name = "巡洋指挥",
		desc_world = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻巡、重巡的雷击属性(效果小)",
		next_id = 0,
		exp = 0,
		prev_id = 32012,
		desc = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻巡、重巡的雷击属性(效果小)",
		id = 32013,
		icon = "buff",
		lv = 3,
		effect_tactic = {
			320111,
			320112,
			320113
		},
		effect_tactic_world = {
			320111,
			320112,
			320113
		}
	},
	[32021] = {
		name = "战列后勤",
		desc_world = "作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中战列、战巡、航战的命中属性(效果小)",
		next_id = 32022,
		exp = 1,
		prev_id = 0,
		desc = "作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中战列、战巡、航战的命中属性(效果小)",
		id = 32021,
		icon = "buff",
		lv = 1,
		effect_tactic = {
			320211
		},
		effect_tactic_world = {
			320211
		}
	},
	[32022] = {
		name = "战列后勤",
		desc_world = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的防空属性(效果小)",
		next_id = 32023,
		exp = 3,
		prev_id = 32021,
		desc = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的防空属性(效果小)",
		id = 32022,
		icon = "buff",
		lv = 2,
		effect_tactic = {
			320211,
			320212
		},
		effect_tactic_world = {
			320211,
			320212
		}
	},
	[32023] = {
		name = "战列后勤",
		desc_world = "作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中战列、战巡、航战的炮击属性(效果小)",
		next_id = 0,
		exp = 0,
		prev_id = 32022,
		desc = "作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中战列、战巡、航战的炮击属性(效果小)",
		id = 32023,
		icon = "buff",
		lv = 3,
		effect_tactic = {
			320211,
			320212,
			320213
		},
		effect_tactic_world = {
			320211,
			320212,
			320213
		}
	},
	[40011] = {
		name = "静寂的狩猎者",
		desc_world = "依据指挥喵指挥、后勤属性，提高所在舰队中潜艇、潜母的雷击属性(效果小)",
		next_id = 40012,
		exp = 1,
		prev_id = 0,
		desc = "依据指挥喵指挥、后勤属性，提高所在舰队中潜艇、潜母的雷击属性(效果小)",
		id = 40011,
		icon = "4001",
		lv = 1,
		effect_tactic = {
			400111
		},
		effect_tactic_world = {
			400111
		}
	},
	[40012] = {
		name = "静寂的狩猎者",
		desc_world = "作为司令位指挥喵时，提高所在舰队中潜艇15点氧气",
		next_id = 40013,
		exp = 3,
		prev_id = 40011,
		desc = "狩猎范围等级+1",
		id = 40012,
		icon = "4001",
		lv = 2,
		effect_tactic = {
			400111,
			400112
		},
		effect_tactic_world = {
			400111,
			9400112
		}
	},
	[40013] = {
		name = "静寂的狩猎者",
		desc_world = "作为司令位指挥喵，潜艇舰队旗舰开始战斗时，触发额外的鱼雷攻击",
		next_id = 0,
		exp = 0,
		prev_id = 40012,
		desc = "依据指挥喵战术属性，提高鱼雷打击（地图）的伤害",
		id = 40013,
		icon = "4001",
		lv = 3,
		effect_tactic = {
			400111,
			400112,
			400113
		},
		effect_tactic_world = {
			400111,
			9400112,
			9400113
		}
	},
	[40021] = {
		name = "不屈的意志",
		desc_world = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的炮击、命中属性(效果中)",
		next_id = 40022,
		exp = 1,
		prev_id = 0,
		desc = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的炮击、命中属性(效果中)",
		id = 40021,
		icon = "4002",
		lv = 1,
		effect_tactic = {
			400211
		},
		effect_tactic_world = {
			400211
		}
	},
	[40022] = {
		name = "不屈的意志",
		desc_world = "作为参谋位指挥喵，若旗舰为战列、战巡、航战中的其中一种，开始战斗后20秒，有50%的概率发射一轮弹幕射击",
		next_id = 40023,
		exp = 3,
		prev_id = 40021,
		desc = "作为参谋位指挥喵，若所在舰队中有战列、战巡、航战，当接触非旗舰敌方单位时，有15%的概率发射一次主炮打击（地图），伤害依据指挥喵指挥属性、双方等级、战斗力决定",
		id = 40022,
		icon = "4002",
		lv = 2,
		effect_tactic = {
			400211,
			400212
		},
		effect_tactic_world = {
			400211,
			9400212
		}
	},
	[40023] = {
		name = "不屈的意志",
		desc_world = "作为参谋位指挥喵，与主力舰队交战时，依据指挥喵后勤属性，降低队伍中战列、战巡、航战受到的伤害，并提高装填(效果中)",
		next_id = 0,
		exp = 0,
		prev_id = 40022,
		desc = "作为参谋位指挥喵，与主力舰队交战时，依据指挥喵后勤属性，降低队伍中战列、战巡、航战受到的伤害，并提高装填(效果中)",
		id = 40023,
		icon = "4002",
		lv = 3,
		effect_tactic = {
			400211,
			400212,
			400213
		},
		effect_tactic_world = {
			400211,
			9400212,
			400213
		}
	},
	[41011] = {
		name = "海之铁骑士",
		desc_world = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的机动属性(效果小)",
		next_id = 41012,
		exp = 1,
		prev_id = 0,
		desc = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中战列、战巡、航战的机动属性(效果小)",
		id = 41011,
		icon = "4101",
		lv = 1,
		effect_tactic = {
			410111
		},
		effect_tactic_world = {
			410111
		}
	},
	[41012] = {
		name = "海之铁骑士",
		desc_world = "作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中战列、战巡、航战的命中属性(效果中)",
		next_id = 41013,
		exp = 3,
		prev_id = 41011,
		desc = "作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中战列、战巡、航战的命中属性(效果中)",
		id = 41012,
		icon = "4101",
		lv = 2,
		effect_tactic = {
			410111,
			410112
		},
		effect_tactic_world = {
			410111,
			410112
		}
	},
	[41013] = {
		name = "海之铁骑士",
		desc_world = "与主力舰队交战时，依据指挥喵战术属性，降低旗舰受到的伤害",
		next_id = 0,
		exp = 0,
		prev_id = 41012,
		desc = "与主力舰队交战时，依据指挥喵战术属性，降低旗舰受到的伤害",
		id = 41013,
		icon = "4101",
		lv = 3,
		effect_tactic = {
			410111,
			410112,
			410113
		},
		effect_tactic_world = {
			410111,
			410112,
			410113
		}
	},
	[41021] = {
		name = "海之勇者",
		desc_world = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中潜艇、潜母的雷击属性(效果小)",
		next_id = 41022,
		exp = 1,
		prev_id = 0,
		desc = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中潜艇、潜母的雷击属性(效果小)",
		id = 41021,
		icon = "4102",
		lv = 1,
		effect_tactic = {
			410211
		},
		effect_tactic_world = {
			410211
		}
	},
	[41022] = {
		name = "海之勇者",
		desc_world = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中潜艇、潜母的命中属性(效果中)",
		next_id = 41023,
		exp = 3,
		prev_id = 41021,
		desc = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中潜艇、潜母的命中属性(效果中)",
		id = 41022,
		icon = "4102",
		lv = 2,
		effect_tactic = {
			410211,
			410212
		},
		effect_tactic_world = {
			410211,
			410212
		}
	},
	[41023] = {
		name = "海之勇者",
		desc_world = "作为司令位指挥喵时，提高所在舰队中潜艇5点氧气",
		next_id = 0,
		exp = 0,
		prev_id = 41022,
		desc = "狩猎范围等级+1",
		id = 41023,
		icon = "4102",
		lv = 3,
		effect_tactic = {
			410211,
			410212,
			410213
		},
		effect_tactic_world = {
			410211,
			410212,
			9410213
		}
	},
	[41031] = {
		name = "守护之心",
		desc_world = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中潜艇、潜母的雷击属性(效果小)",
		next_id = 41032,
		exp = 1,
		prev_id = 0,
		desc = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中潜艇、潜母的雷击属性(效果小)",
		id = 41031,
		icon = "4103",
		lv = 1,
		effect_tactic = {
			410311
		},
		effect_tactic_world = {
			410311
		}
	},
	[41032] = {
		name = "守护之心",
		desc_world = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中潜艇、潜母的机动属性(效果中)",
		next_id = 41033,
		exp = 3,
		prev_id = 41031,
		desc = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中潜艇、潜母的机动属性(效果中)",
		id = 41032,
		icon = "4103",
		lv = 2,
		effect_tactic = {
			410311,
			410312
		},
		effect_tactic_world = {
			410311,
			410312
		}
	},
	[41033] = {
		name = "守护之心",
		desc_world = "作为潜艇舰队参谋位指挥喵时，若战斗中舰队旗舰为战列、战巡或航战，依据指挥喵指挥属性，提高所在舰队中潜艇、潜母的命中属性(效果中)",
		next_id = 0,
		exp = 0,
		prev_id = 41032,
		desc = "作为潜艇舰队参谋位指挥喵时，若战斗中舰队旗舰为战列、战巡或航战，依据指挥喵指挥属性，提高所在舰队中潜艇、潜母的命中属性(效果中)",
		id = 41033,
		icon = "4103",
		lv = 3,
		effect_tactic = {
			410311,
			410312,
			410313
		},
		effect_tactic_world = {
			410311,
			410312,
			410313
		}
	},
	[42011] = {
		name = "巡洋后勤",
		desc_world = "作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中轻巡、重巡、超巡的机动属性(效果小)",
		next_id = 42012,
		exp = 1,
		prev_id = 0,
		desc = "作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中轻巡、重巡、超巡的机动属性(效果小)",
		id = 42011,
		icon = "buff",
		lv = 1,
		effect_tactic = {
			420111
		},
		effect_tactic_world = {
			420111
		}
	},
	[42012] = {
		name = "巡洋后勤",
		desc_world = "作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中轻巡、重巡、超巡的炮击属性(效果小)",
		next_id = 42013,
		exp = 3,
		prev_id = 42011,
		desc = "作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中轻巡、重巡、超巡的炮击属性(效果小)",
		id = 42012,
		icon = "buff",
		lv = 2,
		effect_tactic = {
			420111,
			420112
		},
		effect_tactic_world = {
			420111,
			420112
		}
	},
	[42013] = {
		name = "巡洋后勤",
		desc_world = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻巡、重巡、超巡的炮击属性(效果小)",
		next_id = 0,
		exp = 0,
		prev_id = 42012,
		desc = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中轻巡、重巡、超巡的炮击属性(效果小)",
		id = 42013,
		icon = "buff",
		lv = 3,
		effect_tactic = {
			420111,
			420112,
			420113
		},
		effect_tactic_world = {
			420111,
			420112,
			420113
		}
	},
	[42021] = {
		name = "驱逐指挥",
		desc_world = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中驱逐的机动属性(效果小)",
		next_id = 42022,
		exp = 1,
		prev_id = 0,
		desc = "作为参谋位指挥喵时，依据指挥喵指挥属性，提高所在舰队中驱逐的机动属性(效果小)",
		id = 42021,
		icon = "buff",
		lv = 1,
		effect_tactic = {
			420211
		},
		effect_tactic_world = {
			420211
		}
	},
	[42022] = {
		name = "驱逐指挥",
		desc_world = "作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中驱逐的命中属性(效果小)",
		next_id = 42023,
		exp = 3,
		prev_id = 42021,
		desc = "作为参谋位指挥喵时，依据指挥喵战术属性，提高所在舰队中驱逐的命中属性(效果小)",
		id = 42022,
		icon = "buff",
		lv = 2,
		effect_tactic = {
			420211,
			420212
		},
		effect_tactic_world = {
			420211,
			420212
		}
	},
	[42023] = {
		name = "驱逐指挥",
		desc_world = "作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中驱逐的雷击属性(效果小)",
		next_id = 0,
		exp = 0,
		prev_id = 42022,
		desc = "作为参谋位指挥喵时，依据指挥喵后勤属性，提高所在舰队中驱逐的雷击属性(效果小)",
		id = 42023,
		icon = "buff",
		lv = 3,
		effect_tactic = {
			420211,
			420212,
			420213
		},
		effect_tactic_world = {
			420211,
			420212,
			420213
		}
	},
	all = {
		10011,
		10012,
		10013,
		10021,
		10022,
		10023,
		11011,
		11012,
		11013,
		11021,
		11022,
		11023,
		12011,
		12012,
		12013,
		12021,
		12022,
		12023,
		20011,
		20012,
		20013,
		20021,
		20022,
		20023,
		21011,
		21012,
		21013,
		21021,
		21022,
		21023,
		21031,
		21032,
		21033,
		21041,
		21042,
		21043,
		22011,
		22012,
		22013,
		22021,
		22022,
		22023,
		30011,
		30012,
		30013,
		30021,
		30022,
		30023,
		31011,
		31012,
		31013,
		31021,
		31022,
		31023,
		32011,
		32012,
		32013,
		32021,
		32022,
		32023,
		40011,
		40012,
		40013,
		40021,
		40022,
		40023,
		41011,
		41012,
		41013,
		41021,
		41022,
		41023,
		41031,
		41032,
		41033,
		42011,
		42012,
		42013,
		42021,
		42022,
		42023
	}
}
