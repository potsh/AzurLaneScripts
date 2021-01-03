return {
	map_id = 10001,
	id = 1479011,
	stages = {
		{
			stageIndex = 1,
			failCondition = 1,
			timeCount = 300,
			backGroundStageID = 1,
			passCondition = 1,
			totalArea = {
				-80,
				20,
				90,
				70
			},
			playerArea = {
				-80,
				20,
				45,
				68
			},
			enemyArea = {},
			fleetCorrdinate = {
				-80,
				0,
				75
			},
			waves = {
				{
					triggerType = 1,
					waveIndex = 100,
					preWaves = {},
					triggerParams = {
						timeout = 0.5
					}
				},
				{
					triggerType = 1,
					waveIndex = 202,
					preWaves = {},
					triggerParams = {
						timeout = 18
					}
				},
				{
					triggerType = 1,
					waveIndex = 203,
					preWaves = {},
					triggerParams = {
						timeout = 33
					}
				},
				{
					triggerType = 1,
					waveIndex = 204,
					preWaves = {},
					triggerParams = {
						timeout = 44
					}
				},
				{
					triggerType = 0,
					key = true,
					waveIndex = 101,
					conditionType = 1,
					preWaves = {
						100
					},
					triggerParam = {},
					spawn = {
						{
							monsterTemplateID = 14300005,
							delay = 0,
							moveCast = true,
							corrdinate = {
								0,
								0,
								55
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 14300005,
							delay = 0,
							moveCast = true,
							corrdinate = {
								0,
								0,
								25
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 14300003,
							delay = 4,
							moveCast = true,
							corrdinate = {
								-5,
								0,
								60
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 14300003,
							delay = 4,
							moveCast = true,
							corrdinate = {
								0,
								0,
								40
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 14300003,
							delay = 6,
							moveCast = true,
							corrdinate = {
								3,
								0,
								60
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 14300003,
							delay = 8,
							moveCast = true,
							corrdinate = {
								5,
								0,
								80
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 14300003,
							delay = 8,
							moveCast = true,
							corrdinate = {
								5,
								0,
								40
							},
							buffList = {
								8001,
								8007
							}
						}
					}
				},
				{
					triggerType = 0,
					key = true,
					waveIndex = 102,
					conditionType = 1,
					preWaves = {
						101,
						202
					},
					triggerParam = {},
					spawn = {
						{
							monsterTemplateID = 14300004,
							delay = 0,
							moveCast = true,
							corrdinate = {
								0,
								0,
								70
							},
							buffList = {
								8001
							}
						},
						{
							monsterTemplateID = 14300004,
							delay = 0,
							moveCast = true,
							corrdinate = {
								0,
								0,
								55
							},
							buffList = {
								8001
							}
						},
						{
							monsterTemplateID = 14300003,
							delay = 2,
							moveCast = true,
							corrdinate = {
								3,
								0,
								40
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 14300003,
							delay = 4,
							moveCast = true,
							corrdinate = {
								3,
								0,
								60
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 14300003,
							delay = 6,
							moveCast = true,
							corrdinate = {
								5,
								0,
								80
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 14300003,
							delay = 7,
							moveCast = true,
							corrdinate = {
								3,
								0,
								40
							},
							buffList = {
								8001,
								8007
							}
						},
						{
							monsterTemplateID = 14300003,
							delay = 9,
							moveCast = true,
							corrdinate = {
								5,
								0,
								80
							},
							buffList = {
								8001,
								8007
							}
						}
					}
				},
				{
					triggerType = 5,
					waveIndex = 400,
					preWaves = {
						101,
						102
					},
					triggerParams = {
						bgm = "story-6"
					}
				},
				{
					triggerType = 0,
					key = true,
					waveIndex = 201,
					conditionType = 0,
					preWaves = {
						101,
						102
					},
					triggerParam = {},
					spawn = {
						{
							monsterTemplateID = 14300001,
							delay = 0,
							moveCast = true,
							corrdinate = {
								-4,
								0,
								55
							},
							bossData = {
								hpBarNum = 100,
								icon = "sairen"
							},
							buffList = {
								8753,
								8782,
								8786
							},
							phase = {
								{
									switchParam = 0.3,
									switchTo = 2,
									index = 0,
									switchType = 2,
									setAI = 10001,
									addWeapon = {
										730004,
										730005,
										730006,
										730007
									},
									removeWeapon = {}
								},
								{
									switchType = 1,
									index = 2,
									switchParam = 1.5,
									setAI = 70093,
									switchTo = 3,
									addBuff = {
										8699
									},
									addWeapon = {},
									removeWeapon = {
										730004,
										730005,
										730006,
										730007
									},
									removeBuff = {
										8782
									}
								},
								{
									switchType = 1,
									switchParam = 999,
									index = 3,
									switchTo = 1,
									setAI = 10001,
									addWeapon = {
										730008
									},
									addBuff = {
										8783
									},
									removeWeapon = {}
								}
							}
						}
					}
				},
				{
					triggerType = 8,
					waveIndex = 900,
					preWaves = {
						201
					},
					triggerParams = {}
				}
			}
		}
	},
	fleet_prefab = {
		vanguard_unitList = {
			{
				configId = 900293,
				level = 120,
				skinId = 900293,
				id = 1,
				tmpID = 900293,
				equipment = {},
				properties = {
					cannon = 100,
					reload = 100,
					luck = 0,
					torpedo = 0,
					durability = 9999999,
					air = 0,
					dodge = 90,
					antiaircraft = 0,
					speed = 42,
					armor = 0,
					hit = 150
				},
				skills = {
					{
						id = 8785,
						level = 1
					}
				}
			}
		}
	}
}