return {
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	{},
	desc_get = "与滨风同时出击时，炮击、装填、防空、雷击提升",
	name = "矶风技能",
	init_effect = "",
	id = 11190,
	time = 0,
	picture = "",
	desc = "与滨风同时出击时，炮击、装填、防空、雷击提升",
	stack = 1,
	color = "yellow",
	icon = 11190,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffCastSkill",
			trigger = {
				"onStartGame"
			},
			arg_list = {
				check_target = "TargetTemplate",
				minTargetNumber = 1,
				skill_id = 11190,
				target = "TargetSelf",
				targetTemplateIDList = {
					301611,
					301612,
					301613,
					301614
				}
			}
		}
	}
}
