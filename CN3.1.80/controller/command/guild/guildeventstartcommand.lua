class("GuildEventStartCommand", pm.SimpleCommand).execute = function (slot0, slot1)
	if getProxy(GuildProxy):getData() then
		pg.TipsMgr.GetInstance():ShowTips(i18n("guild_boss_appear"))

		slot2.eventTip = true

		slot0:sendNotification(GAME.BOSS_EVENT_START_DONE)
	end
end

return class("GuildEventStartCommand", pm.SimpleCommand)
