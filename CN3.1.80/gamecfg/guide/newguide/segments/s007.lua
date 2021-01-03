return {
	id = "S007",
	events = {
		{
			alpha = 0.422,
			code = 2,
			style = {
				text = "接下来我们的任务是支援白鹰航空舰队的作战演习    请点击<color=#ff7d36>出击</color>",
				mode = 2,
				dir = 1,
				posY = 0,
				posX = 0
			},
			ui = {
				pathIndex = -1,
				path = "OverlayCamera/Overlay/UIMain/toTop/frame/rightPanel/eventPanel/combatBtn",
				triggerType = {
					1
				},
				fingerPos = {
					posY = -18.1,
					posX = 68.35
				}
			}
		},
		{
			code = 2,
			waitScene = "LevelScene",
			alpha = 0.277,
			style = {
				text = "索敌结果显示了大黄蜂可能出现的位置，让我们朝着目标点前进吧~",
				mode = 2,
				dir = 1,
				posY = 0,
				posX = 0
			},
			ui = {
				pathIndex = -1,
				path = "OverlayCamera/Overlay/UIMain/top/LevelStageView(Clone)/bottom_stage/func_button",
				triggerType = {
					1
				},
				fingerPos = {
					posY = -29.71,
					posX = 25.08
				}
			}
		},
		{
			alpha = 0.297,
			code = 1,
			style = {
				text = "这次，我们先试试<color=#ff7d36>规避</color>敌人吧",
				mode = 2,
				dir = 1,
				posY = -295,
				posX = -297
			},
			baseui = {
				path = "OverlayCamera/Overlay/UIMain/top/LevelAmbushView(Clone)/window/dodge_button"
			}
		},
		{
			alpha = 0.303,
			ui = {
				pathIndex = -1,
				path = "OverlayCamera/Overlay/UIMain/top/LevelAmbushView(Clone)/window/dodge_button",
				triggerType = {
					1
				},
				fingerPos = {
					posY = -23.85,
					posX = 23.79
				}
			}
		}
	}
}
