ShipType = {}
ShipType.QuZhu = 1
ShipType.QingXun = 2
ShipType.ZhongXun = 3
ShipType.ZhanXun = 4
ShipType.ZhanLie = 5
ShipType.QingHang = 6
ShipType.ZhengHang = 7
ShipType.QianTing = 8
ShipType.HangXun = 9
ShipType.HangZhan = 10
ShipType.LeiXun = 11
ShipType.WeiXiu = 12
ShipType.ZhongPao = 13
ShipType.QianMu = 17
ShipType.ChaoXun = 18
ShipType.Yunshu = 19
ShipType.YuLeiTing = 14
ShipType.JinBi = 15
ShipType.ZiBao = 16
ShipType.AllShipType = {
	1,
	2,
	3,
	18,
	4,
	5,
	6,
	7,
	10,
	17,
	13,
	8,
	12,
	19
}

function ShipType.Type2Name(ShipType)
	return pg.ship_data_by_type[ShipType].type_name
end

function ShipType.Type2Print(arg)
		prints = {
			"quzhu",
			"qingxun",
			"zhongxun",
			"zhanlie",
			"zhanlie",
			"hangmu",
			"hangmu",
			"qianting",
			"zhanlie",
			"hangzhan",
			"zhanlie",
			"weixiu",
			"zhongpao",
			"quzhu",
			"battle_jinbi",
			"battle_zibao",
			"qianmu",
			"chaoxun",
			"yunshu"
		}
	return prints[arg]
end

function ShipType.Type2BattlePrint(arg)
		bprints = {
			"battle_quzhu",
			"battle_qingxun",
			"battle_zhongxun",
			"battle_zhanlie",
			"battle_zhanlie",
			"battle_hangmu",
			"battle_hangmu",
			"battle_qianting",
			"battle_zhanlie",
			"battle_hangmu",
			"battle_zhanlie",
			"battle_weixiu",
			"battle_zhanlie",
			"battle_quzhu",
			"battle_jinbi",
			"battle_zibao",
			"battle_hangmu",
			"battle_zhanlie",
			"battle_yunshu"
		}
	return bprints[arg]
end

ShipType.BundleBattleShip = "zhan"
ShipType.BundleAircraftCarrier = "hang"
ShipType.BundleSubmarine = "qian"
ShipType.BundleLargeCrusier = "zhong"
ShipType.BundleAntiSubmarine = "fanqian"
ShipType.BundleList = {
	zhan = {
		ShipType.ZhanXun,
		ShipType.ZhanLie
	},
	hang = {
		ShipType.QingHang,
		ShipType.ZhengHang
	},
	qian = {
		ShipType.QianTing,
		ShipType.QianMu
	},
	zhong = {
		ShipType.ZhongXun,
		ShipType.ChaoXun
	},
	fanqian = {
		ShipType.QuZhu,
		ShipType.QingXun
	}
}

ShipType.CloakShipTypeList = {
	ShipType.QingHang,
	ShipType.ZhengHang
}

--function ShipType.CloakShipType(ShipType)
--	return table.contains(uv0.CloakShipTypeList, ShipType)
--end

