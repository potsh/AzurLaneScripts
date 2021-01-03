class("PrepControllerCommand", pm.SimpleCommand).execute = function (slot0, slot1)
	slot0.facade:registerCommand(GAME.LOAD_CONTEXT, LoadContextCommand)
	slot0.facade:registerCommand(GAME.LOAD_SCENE, LoadSceneCommand)
	slot0.facade:registerCommand(GAME.GO_BACK, GoBackCommand)
	slot0.facade:registerCommand(GAME.REMOVE_LAYERS, RemoveLayersCommand)
	slot0.facade:registerCommand(GAME.LOAD_LAYERS, LoadLayersCommand)
	slot0.facade:registerCommand(GAME.USER_LOGIN, UserLoginCommand)
	slot0.facade:registerCommand(GAME.USER_REGISTER, UserRegisterCommand)
	slot0.facade:registerCommand(GAME.SERVER_LOGIN, ServerLoginCommand)
	slot0.facade:registerCommand(GAME.CREATE_NEW_PLAYER, CreateNewPlayerCommand)
	slot0.facade:registerCommand(GAME.LOAD_PLAYER_DATA, LoadPlayerDataCommand)
	slot0.facade:registerCommand(GAME.LOGOUT, LogoutCommand)
	slot0.facade:registerCommand(GAME.CHANGE_PLAYER_NAME, ChangePlayerNameCommand)
	slot0.facade:registerCommand(GAME.CHANGE_PLAYER_ICON, ChangePlayerIconCommand)
	slot0.facade:registerCommand(GAME.CHANGE_PLAYER_MANIFESTO, ChangeManifestoCommand)
	slot0.facade:registerCommand(GAME.CHANGE_PLAYER_MEDAL_DISPLAY, ChangeMedalDisplayCommand)
	slot0.facade:registerCommand(GAME.HARVEST_RES, HarvestResourceCommand)
	slot0.facade:registerCommand(GAME.UPDATE_GUIDE_INDEX, UpdateGuideIndexCommand)
	slot0.facade:registerCommand(GAME.ZERO_HOUR, ZeroHourCommand)
	slot0.facade:registerCommand(GAME.GET_PLAYER_SUMMARY_INFO, GetSummaryInfoCommand)
	slot0.facade:registerCommand(GAME.CHEATER_MARK, CheaterMarkCommand)
	slot0.facade:registerCommand(GAME.COMMON_FLAG, UpdateCommonFlagCommand)
	slot0.facade:registerCommand(GAME.BUILD_SHIP, BuildShipCommand)
	slot0.facade:registerCommand(GAME.BUILD_SHIP_IMMEDIATELY, BuildShipImmediatelyCommand)
	slot0.facade:registerCommand(GAME.GET_SHIP, GetShipCommand)
	slot0.facade:registerCommand(GAME.DESTROY_SHIPS, DestroyShipsCommand)
	slot0.facade:registerCommand(GAME.UPGRADE_STAR, UpgradeStarCommand)
	slot0.facade:registerCommand(GAME.EQUIP_TO_SHIP, EquipToShipCommand)
	slot0.facade:registerCommand(GAME.EQUIP_FROM_SHIP, EquipFromShipCommand)
	slot0.facade:registerCommand(GAME.UNEQUIP_FROM_SHIP, UnequipFromShipCommand)
	slot0.facade:registerCommand(GAME.UNEQUIP_FROM_SHIP_ALL, UnEquipFromShipAllCommand)
	slot0.facade:registerCommand(GAME.REMOULD_SHIP, RemouldShipCommand)
	slot0.facade:registerCommand(GAME.UPDATE_LOCK, UpdateShipLockCommand)
	slot0.facade:registerCommand(GAME.UPDATE_PREFERENCE, UpdateShipPreferenceTagCommand)
	slot0.facade:registerCommand(GAME.MOD_SHIP, ModShipCommand)
	slot0.facade:registerCommand(GAME.SET_SHIP_FLAG, SetShipsFlagCommand)
	slot0.facade:registerCommand(GAME.GET_BATCH_SHIP, GetBatchShipCommand)
	slot0.facade:registerCommand(GAME.GET_EXCHANGE_SHIPS, GetExchangeShipsCommand)
	slot0.facade:registerCommand(GAME.GET_EXCHANGE_ITEMS, GetExchangeItemsCommand)
	slot0.facade:registerCommand(GAME.EXCHANGE_SHIP, ExchangeShipCommand)
	slot0.facade:registerCommand(GAME.EXCHANGE_ITEM, ExchangeItemCommand)
	slot0.facade:registerCommand(GAME.LIKE_SHIP, LikeShipCommand)
	slot0.facade:registerCommand(GAME.EVALUATE_SHIP, EvaluateShipCommand)
	slot0.facade:registerCommand(GAME.ZAN_SHIP_EVALUATION, ZanShipEvaCommand)
	slot0.facade:registerCommand(GAME.FETCH_EVALUATION, FetchEvaluationCommand)
	slot0.facade:registerCommand(GAME.SET_SHIP_SKIN, SetShipSkinCommand)
	slot0.facade:registerCommand(GAME.PROPOSE_SHIP, ProposeCommand)
	slot0.facade:registerCommand(GAME.RENAME_SHIP, RenameShipCommand)
	slot0.facade:registerCommand(GAME.REQ_PLAYER_ASSIST_SHIP, ReqPlayerAssistShipCommand)
	slot0.facade:registerCommand(GAME.RECORD_SHIP_EQUIPMENT, RecordShipEquipmentCommand)
	slot0.facade:registerCommand(GAME.EQUIP_EQUIPMENTSKIN_TO_SHIP, UpdateShipEquipmentSkinCommand)
	slot0.facade:registerCommand(GAME.EQUIP_EQUIPMENTSKIN_FROM_SHIP, EquipESkinFormShipCommand)
	slot0.facade:registerCommand(GAME.UPGRADE_MAX_LEVEL, UpgradeShipMaxLevelCommand)
	slot0.facade:registerCommand(GAME.UPDATE_FLEET, UpdateFleetCommand)
	slot0.facade:registerCommand(GAME.RENAME_FLEET, RenameFleetCommand)
	slot0.facade:registerCommand(GAME.QUICK_REPAIR_SHIPS, RepairShipsCommand)
	slot0.facade:registerCommand(GAME.DESTROY_EQUIPMENTS, DestroyEquipmentsCommand)
	slot0.facade:registerCommand(GAME.COMPOSITE_EQUIPMENT, CompositeEquipmentCommand)
	slot0.facade:registerCommand(GAME.UPGRADE_EQUIPMENTS, UpGradeEquipmentCommand)
	slot0.facade:registerCommand(GAME.REVERT_EQUIPMENT, RevertEquipmentCommand)
	slot0.facade:registerCommand(GAME.ATTIRE_APPLY, AttireApplyCommand)
	slot0.facade:registerCommand(GAME.HANDLE_OVERDUE_ATTIRE, HandleOverDueAttireCommand)
	slot0.facade:registerCommand(GAME.CHAPTER_OP, ChapterOpCommand)
	slot0.facade:registerCommand(GAME.TRACKING, TrackingCommand)
	slot0.facade:registerCommand(GAME.BEGIN_STAGE, BeginStageCommand)
	slot0.facade:registerCommand(GAME.FINISH_STAGE, FinishStageCommand)
	slot0.facade:registerCommand(GAME.AUTO_BOT, AutoBotCommand)
	slot0.facade:registerCommand(GAME.AUTO_SUB, AutoSubCommand)
	slot0.facade:registerCommand(GAME.SUB_CHAPTER_FETCH, FetchSubChapterCommand)
	slot0.facade:registerCommand(GAME.SUB_CHAPTER_REFRESH, RefreshSubChapterCommand)
	slot0.facade:registerCommand(GAME.UPDATE_CUSTOM_FLEET, UpdateCustomFleetCommand)
	slot0.facade:registerCommand(GAME.CHALLENGE2_INITIAL, Challenge2InitialRequestCommand)
	slot0.facade:registerCommand(GAME.CHALLENGE2_RESET, Challenge2ResetRequestCommand)
	slot0.facade:registerCommand(GAME.CHALLENGE2_INFO, Challenge2InfoRequestCommand)
	slot0.facade:registerCommand(GAME.CHALLENGE2_SETTLE, Challenge2SettleRequestCommand)
	slot0.facade:registerCommand(GAME.ACTIVATE_REMASTER, ActivateRemasterCommand)
	slot0.facade:registerCommand(GAME.SPECIAL_ACT, SpecialActivityCommand)
	slot0.facade:registerCommand(GAME.FETCH_NPC_SHIP, FetchNpcShipCommand)
	slot0.facade:registerCommand(GAME.MAINUI_ACT_BTN, MainUIActBtnCommand)
	slot0.facade:registerCommand(GAME.GET_SEASON_INFO, GetSeasonInfoCommand)
	slot0.facade:registerCommand(GAME.REPLACE_RIVALS, ReplaceRivalsCommand)
	slot0.facade:registerCommand(GAME.REFRESH_MILITARY_SHOP, RefreshMilitaryShopCommand)
	slot0.facade:registerCommand(GAME.UPDATE_EXERCISE_FLEET, UpdateExerciseFleetCommand)
	slot0.facade:registerCommand(GAME.EXERCISE_COUNT_RECOVER_UP, ExerciseCountRecoverUpCommand)
	slot0.facade:registerCommand(GAME.GET_MILITARY_SHOP, GetMilitaryShopCommand)
	slot0.facade:registerCommand(GAME.GET_RIVAL_INFO, GetRivalInfoCommand)
	slot0.facade:registerCommand(GAME.GET_POWERRANK, GetPowerRankCommand)
	slot0.facade:registerCommand(GAME.ADD_FOOD, AddFoodCommand)
	slot0.facade:registerCommand(GAME.BUY_FURNITURE, BuyFurnitureCommand)
	slot0.facade:registerCommand(GAME.ADD_SHIP, AddShipCommand)
	slot0.facade:registerCommand(GAME.EXIT_SHIP, ShipExitCommand)
	slot0.facade:registerCommand(GAME.PUT_FURNITURE, PutFurnitureCommand)
	slot0.facade:registerCommand(GAME.BACKYARD_ADD_EXP, BackYardShipAddExpCommand)
	slot0.facade:registerCommand(GAME.BACKYARD_ADD_INTIMACY, ShipAddInimacyCommand)
	slot0.facade:registerCommand(GAME.BACKYARD_ADD_MONEY, ShipAddMoneyCommand)
	slot0.facade:registerCommand(GAME.OPEN_ADD_EXP, BackYardOpenAddExpCommand)
	slot0.facade:registerCommand(GAME.EXTEND_BACKYARD_AREA, ExtendBackYardAreaCommand)
	slot0.facade:registerCommand(GAME.BACKYARD_RENAME, BackYardRenameCommand)
	slot0.facade:registerCommand(GAME.GET_DORMTHEME, GetDormThemeListCommand)
	slot0.facade:registerCommand(GAME.SAVE_DORMTHEME, SaveDormThemeCommand)
	slot0.facade:registerCommand(GAME.DELETE_BACKYARD_THEME, BackYardDeleteThemeCommand)
	slot0.facade:registerCommand(GAME.GET_BACKYARD_DATA, GetBackYardDataCommand)
	slot0.facade:registerCommand(GAME.SHOPPING, ShoppingCommand)
	slot0.facade:registerCommand(GAME.EXTEND, ExtendCommand)
	slot0.facade:registerCommand(GAME.FRAG_SHOPPING, FragmentShoppingCommand)
	slot0.facade:registerCommand(GAME.FRAG_SELL, FragmentSellCommand)
	slot0.facade:registerCommand(GAME.USE_ITEM, UseItemCommand)
	slot0.facade:registerCommand(GAME.USE_FUDAI_ITEM, UseFudaiItemCommand)
	slot0.facade:registerCommand(GAME.COMPOSE_ITEM, ComposeItemCommand)
	slot0.facade:registerCommand(GAME.GET_MAIL_LIST, GetMailListCommand)
	slot0.facade:registerCommand(GAME.OPEN_MAIL, OpenMailCommand)
	slot0.facade:registerCommand(GAME.DELETE_MAIL, DeleteMailCommand)
	slot0.facade:registerCommand(GAME.DELETE_ALL_MAIL, DeleteAllMailCommand)
	slot0.facade:registerCommand(GAME.TAKE_ATTACHMENT, TakeAttachmentCommand)
	slot0.facade:registerCommand(GAME.TAKE_ALL_ATTACHMENT, TakeAllAttachmentCommand)
	slot0.facade:registerCommand(GAME.OPEN_MAIL_ATTACHMENT, OpenAttachmentCommand)
	slot0.facade:registerCommand(GAME.CHANGE_MAIL_IMP_FLAG, ChangeMailImpFlagCommand)
	slot0.facade:registerCommand(GAME.SEND_MSG, SendMsgCommand)
	slot0.facade:registerCommand(GAME.SEND_CMD, SendCmdCommand)
	slot0.facade:registerCommand(GAME.CHANGE_CHAT_ROOM, ChangeChatRoomCommand)
	slot0.facade:registerCommand(GAME.SUBMIT_TASK, SubmitTaskCommand)
	slot0.facade:registerCommand(GAME.TRIGGER_TASK, TriggerTaskCommand)
	slot0.facade:registerCommand(GAME.TASK_GO, TaskGoCommand)
	slot0.facade:registerCommand(GAME.ACCEPT_ACTIVITY_TASK, AcceptActivityTaskCommand)
	slot0.facade:registerCommand(GAME.UPDATE_TASK_PROGRESS, UpdateTaskProgressCommand)
	slot0.facade:registerCommand(GAME.SUBMIT_TASK_ONESTEP, SubmitTaskOneStepCommand)
	slot0.facade:registerCommand(GAME.ADD_ITEM, AddItemCommand)
	slot0.facade:registerCommand(GAME.CONSUME_ITEM, ConsumeItemCommand)
	slot0.facade:registerCommand(GAME.START_TO_LEARN_TACTICS, StartLearnTacticsCommand)
	slot0.facade:registerCommand(GAME.CANCEL_LEARN_TACTICS, CancelLearnTacticsCommand)
	slot0.facade:registerCommand(GAME.GET_SHOPSTREET, GetShopStreetCommand)
	slot0.facade:registerCommand(GAME.FRIEND_SEARCH, SearchFriendCommand)
	slot0.facade:registerCommand(GAME.FRIEND_DELETE, DeleteFriendCommand)
	slot0.facade:registerCommand(GAME.FRIEND_SEND_REQUEST, SendFriendRequestCommand)
	slot0.facade:registerCommand(GAME.FRIEND_SEND_MSG, SendFriendMsgCommand)
	slot0.facade:registerCommand(GAME.FRIEND_FETCH_MSG, FetchFriendMsgCommand)
	slot0.facade:registerCommand(GAME.FRIEND_ACCEPT_REQUEST, AcceptFriendRequestCommand)
	slot0.facade:registerCommand(GAME.FRIEND_REJECT_REQUEST, RejectFriendRequestCommand)
	slot0.facade:registerCommand(GAME.VISIT_BACKYARD, VisitBackYardCommand)
	slot0.facade:registerCommand(GAME.FRIEND_RELIEVE_BLACKLIST, RelieveBlackListCommand)
	slot0.facade:registerCommand(GAME.FRIEND_ADD_BLACKLIST, AddBlackListCommand)
	slot0.facade:registerCommand(GAME.GET_BLACK_LIST, GetBlackListCommand)
	slot0.facade:registerCommand(GAME.INFORM, InformCommand)
	slot0.facade:registerCommand(GAME.CHARGE_OPERATION, ChargeCommand)
	slot0.facade:registerCommand(GAME.GET_CHARGE_LIST, GetChargeListCommand)
	slot0.facade:registerCommand(GAME.CHARGE_SUCCESS, ChargeSuccessCommand)
	slot0.facade:registerCommand(GAME.CHARGE_CONFIRM, ChargeConfirmCommand)
	slot0.facade:registerCommand(GAME.CLICK_MING_SHI, ClickMingShiCommand)
	slot0.facade:registerCommand(GAME.CHARGE_FAILED, ChargeFailedCommand)
	slot0.facade:registerCommand(GAME.CREATE_GUILD, CreateGuildCommand)
	slot0.facade:registerCommand(GAME.MODIFY_GUILD_INFO, ModifyGuildInfoCommand)
	slot0.facade:registerCommand(GAME.SET_GUILD_DUTY, SetGuildDutyCommand)
	slot0.facade:registerCommand(GAME.GUILD_FIRE, GuildFireCommand)
	slot0.facade:registerCommand(GAME.GUILD_QUIT, GuildQuitCommand)
	slot0.facade:registerCommand(GAME.GUILD_DISSOLVE, GuildDissolveCommand)
	slot0.facade:registerCommand(GAME.GUIDL_REQUEST_ACCEPT, GuildRequestAcceptCommand)
	slot0.facade:registerCommand(GAME.GUIDL_REQUEST_REJECT, GuildRequestRejectCommand)
	slot0.facade:registerCommand(GAME.GUILD_LIST_REFRESH, GuildsRefreshCommand)
	slot0.facade:registerCommand(GAME.GUILD_SEARCH, GuildSearchCommand)
	slot0.facade:registerCommand(GAME.GUILD_APPLY, GuildApplyCommand)
	slot0.facade:registerCommand(GAME.GUILD_IMPEACH, GuildImpeachCommand)
	slot0.facade:registerCommand(GAME.GUILD_GET_REQUEST_LIST, GetGuildRequestsCommand)
	slot0.facade:registerCommand(GAME.GUILD_SEND_MSG, GuildSendMsgCommand)
	slot0.facade:registerCommand(GAME.GET_GUILD_SHOP, GetGuildShopCommand)
	slot0.facade:registerCommand(GAME.GET_GUILD_MEMBER_RANK, GetGuildMemberRankCommand)
	slot0.facade:registerCommand(GAME.GET_GUILD_RANK, GetGuildRankCommand)
	slot0.facade:registerCommand(GAME.SUBMIT_GUILD_TASK, SubmitGuildTaskCommand)
	slot0.facade:registerCommand(GAME.GUILD_CHANGE_FORMATION, GuildChangeFormationCommand)
	slot0.facade:registerCommand(GAME.GUILD_ENTER, GuildEnterCommand)
	slot0.facade:registerCommand(GAME.GUILD_OP, GuildOpCommand)
	slot0.facade:registerCommand(GAME.BOSS_EVENT_START, GuildEventStartCommand)
	slot0.facade:registerCommand(GAME.GET_GUILD_EVENT, GetGuildEventCommand)
	slot0.facade:registerCommand(GAME.GUILD_FACILITY_UPGRADE, GuildFacilityUpgradeCommand)
	slot0.facade:registerCommand(GAME.GUILD_CONTRIBUTE_RES, GuildContributeCommand)
	slot0.facade:registerCommand(GAME.GET_GUILD_CHAT_LIST, GetGuildChatListCommand)
	slot0.facade:registerCommand(GAME.COMMANDER_ON_OPEN_BOX, GetCommanderCommand)
	slot0.facade:registerCommand(GAME.COMMANDER_ON_BUILD, BuildCommaderCommand)
	slot0.facade:registerCommand(GAME.COMMANDER_RESET_TALENTS, ResetCommanderTalentsCommand)
	slot0.facade:registerCommand(GAME.COMMANDER_LEARN_TALENTS, CommanderLearnTalentCommand)
	slot0.facade:registerCommand(GAME.COMMANDER_FETCH_NOT_LEARNED_TALENT, FetchCommanderTalentCommand)
	slot0.facade:registerCommand(GAME.COMMANDER_UPGRADE, UpgradeCommanderCommand)
	slot0.facade:registerCommand(GAME.COOMMANDER_EQUIP_TO_FLEET, EquipCommanderToFleetCommande)
	slot0.facade:registerCommand(GAME.COMMANDER_LOCK, LockCommanderCommande)
	slot0.facade:registerCommand(GAME.COMMANDER_RESERVE_BOX, ReserveCommanderBoxCommand)
	slot0.facade:registerCommand(GAME.COMMANDER_RENAME, RenameCommanderCommand)
	slot0.facade:registerCommand(GAME.SET_COMMANDER_PREFAB, SetComanderPrefabFleetCommand)
	slot0.facade:registerCommand(GAME.SET_COMMANDER_PREFAB_NAME, SetCommanderPrefabFleetNameCommand)
	slot0.facade:registerCommand(GAME.USE_COMMANDER_PREFBA, CommanderUsePrefabCommand)
	slot0.facade:registerCommand(GAME.COMMANDER_FORMATION_OP, CommanderFormationOPCommand)
	slot0.facade:registerCommand(GAME.SELECT_ELIT_CHAPTER_COMMANDER, SelectEliteCommanderCommand)
	slot0.facade:registerCommand(GAME.SELECT_FLEET_COMMANDER, SelectFleetCommanderCommand)
	slot0.facade:registerCommand(GAME.SELECT_ACTIVITY_COMMANDER, SelectActivityCommanderCommand)
	slot0.facade:registerCommand(GAME.COMMANDER_ON_BATCH, BatchGetCommanderCommand)
	slot0.facade:registerCommand(GAME.COLLECT_GET_AWARD, CollectionGetAwardCommand)
	slot0.facade:registerCommand(GAME.TROPHY_CLAIM, TrophyClaimCommand)
	slot0.facade:registerCommand(GAME.EVENT_FINISH, EventFinishCommand)
	slot0.facade:registerCommand(GAME.EVENT_FLUSH, EventFlushCommand)
	slot0.facade:registerCommand(GAME.EVENT_START, EventStartCommand)
	slot0.facade:registerCommand(GAME.EVENT_GIVEUP, EventGiveUpCommand)
	slot0.facade:registerCommand(GAME.ACTIVITY_OPERATION, ActivityOperationCommand)
	slot0.facade:registerCommand(GAME.ACTIVITY_BOSS_PAGE_UPDATE, ActivityBossPageUpdateCommond)
	slot0.facade:registerCommand(GAME.GET_ACTIVITY_SHOP, GetActivityShopCommand)
	slot0.facade:registerCommand(GAME.SUBMIT_INVESTIGATION, SubmitInvestigationCommand)
	slot0.facade:registerCommand(GAME.MONOPOLY_OP, MonopolyOPCommand)
	slot0.facade:registerCommand(GAME.EDIT_ACTIVITY_FLEET, EditActivityFleetCommand)
	slot0.facade:registerCommand(GAME.BLACK_WHITE_GRID_OP, BlackWhiteGridOPCommand)
	slot0.facade:registerCommand(GAME.ACT_NEW_PT, ActivityNewPtOPCommand)
	slot0.facade:registerCommand(GAME.MEMORYBOOK_UNLOCK, ActivityMemoryOPCommand)
	slot0.facade:registerCommand(GAME.RETURN_AWARD_OP, ReturnAwardOPCommand)
	slot0.facade:registerCommand(GAME.ACTIVITY_BE_UPDATED, ActivityBeUpdatedCommand)
	slot0.facade:registerCommand(GAME.SUBMIT_VOTE_BOOK, SubmitVoteBookCommand)
	slot0.facade:registerCommand(GAME.ON_NEW_VOTE, VoteCommand)
	slot0.facade:registerCommand(GAME.ACT_BOSS_NORMAL_UPDATE, ActivityBossNormalUpdateCommand)
	slot0.facade:registerCommand(GAME.ACT_BOSS_EXCHANGE_TICKET, ActivityBossExchangeTicketCommand)
	slot0.facade:registerCommand(GAME.ACT_INSTAGRAM_OP, InstagramActivityCommand)
	slot0.facade:registerCommand(GAME.ACT_INSTAGRAM_FETCH, InstagramFetchCommand)
	slot0.facade:registerCommand(GAME.SHAM_CHANGE_MY_ASSIST, ShamChangeMyAssistCommand)
	slot0.facade:registerCommand(GAME.SHAM_CHANGE_FORMATION, ShamChangeFormationCommand)
	slot0.facade:registerCommand(GAME.SHAM_ENTER, ShamEnterCommand)
	slot0.facade:registerCommand(GAME.SHAM_OP, ShamOpCommand)
	slot0.facade:registerCommand(GAME.SHAM_SHOPPING, ShamShoppingCommand)
	slot0.facade:registerCommand(GAME.ESCORT_FETCH, FetchEscortCommand)
	slot0.facade:registerCommand(GAME.ESCORT_SHOPPING, EscortShoppingCommand)
	slot0.facade:registerCommand(GAME.REQUEST_VOTE_INFO, RequestVoteInfoCommand)
	slot0.facade:registerCommand(GAME.REQUEST_WEB_VOTE_INFO, RequestWebVoteInofCommand)
	slot0.facade:registerCommand(GAME.FETCH_VOTE_INFO, FetchVoteInfoCommand)
	slot0.facade:registerCommand(GAME.FETCH_VOTE_RANK, FetchVoteRankCommand)
	slot0.facade:registerCommand(GAME.CLASS_START_COURSE, StartToLearnCommand)
	slot0.facade:registerCommand(GAME.CLASS_STOP_COURSE, EndToLearnCommand)
	slot0.facade:registerCommand(GAME.START_TECHNOLOGY, StartTechnologyCommand)
	slot0.facade:registerCommand(GAME.FINISH_TECHNOLOGY, FinishTechnologyCommand)
	slot0.facade:registerCommand(GAME.STOP_TECHNOLOGY, StopTechnologyCommand)
	slot0.facade:registerCommand(GAME.REFRESH_TECHNOLOGYS, RefreshTechnologysCommand)
	slot0.facade:registerCommand(GAME.CHANGE_REFRESH_TECHNOLOGYS_TENDENCY, ChangeRefreshTechnologysTendencyCommand)
	slot0.facade:registerCommand(GAME.BUILD_SHIP_BLUEPRINT, BuildShipBluePrintCommand)
	slot0.facade:registerCommand(GAME.FINISH_SHIP_BLUEPRINT, FinishBluePrintCommand)
	slot0.facade:registerCommand(GAME.MOD_BLUEPRINT, ModBluePrintCommand)
	slot0.facade:registerCommand(GAME.STOP_BLUEPRINT, StopBluePrintCommand)
	slot0.facade:registerCommand(GAME.START_CAMP_TEC, StartCampTecCommand)
	slot0.facade:registerCommand(GAME.FINISH_CAMP_TEC, FinishCampTecCommand)
	slot0.facade:registerCommand(GAME.COLORING_CELL, ColoringCellCommand)
	slot0.facade:registerCommand(GAME.COLORING_ACHIEVE, ColoringAchieveCommand)
	slot0.facade:registerCommand(GAME.COLORING_CLEAR, ColoringClearCommand)
	slot0.facade:registerCommand(GAME.COLORING_FETCH, ColoringFetchCommand)
	slot0.facade:registerCommand(GAME.ANSWER_START, StartAnswerCommand)
	slot0.facade:registerCommand(GAME.ANSWER_SUBMIT, SubmitAnswerCommand)
	slot0.facade:registerCommand(GAME.WORLD_ACTIVATE, WorldActivateCommand)
	slot0.facade:registerCommand(GAME.WORLD_MAP_REQ, WorldMapReqCommand)
	slot0.facade:registerCommand(GAME.WORLD_MAP_OP, WorldMapOpCommand)
	slot0.facade:registerCommand(GAME.WORLD_STAMINA_EXCHANGE, WorldStaminaExchangeCommand)
	slot0.facade:registerCommand(GAME.WORLD_SUMBMIT_TASK, WorldSubmitTaskCommand)
	slot0.facade:registerCommand(GAME.WORLD_TRIGGER_TASK, WorldTriggerTaskCommand)
	slot0.facade:registerCommand(GAME.WORLD_ITEM_USE, WorldItemUseCommand)
	slot0.facade:registerCommand(GAME.WORLD_PORT_REQ, WorldPortReqCommand)
	slot0.facade:registerCommand(GAME.WORLD_PORT_SHOPPING, WorldPortShoppingCommand)
	slot0.facade:registerCommand(GAME.WORLD_UPDATE_FORMATION, WorldUpdateFormationCommand)
	slot0.facade:registerCommand(GAME.WORLD_SHIP_REPAIR, WorldShipRepairCommand)
	slot0.facade:registerCommand(GAME.EXCHANGECODE_USE, ExchangeCodeUseCommand)
	slot0.facade:registerCommand(GAME.STORY_UPDATE, UpdateStoryCommand)
	slot0.facade:registerCommand(GAME.MONTH_CARD_SET_RATIO, SetMonthCardRatioCommand)
	slot0.facade:registerCommand(GAME.TIME_SYNCHRONIZATION, TimeSynchronizationCommand)
	slot0.facade:registerCommand(GAME.GET_REMASTER_TICKETS, GetRemasterCommand)
	slot0.facade:registerCommand(PrayPoolConst.BUILD_PRAY_POOL_CMD, PrayPoolBuildCommand)
	slot0.facade:registerCommand(GAME.REQUEST_EMOJI_INFO_FROM_SERVER, EmojiInfoRequestCommand)
	slot0.facade:registerCommand(GAME.FETCH_PASSWORD_STATE, FetchSecondaryPasswordCommand)
	slot0.facade:registerCommand(GAME.SET_PASSWORD, SetSecondaryPasswordCommand)
	slot0.facade:registerCommand(GAME.SET_PASSWORD_SETTINGS, SetSecondaryPasswordSettingsCommand)
	slot0.facade:registerCommand(GAME.CONFIRM_PASSWORD, ConfirmSecondaryPasswordCommand)
	slot0.facade:registerCommand(GAME.SEND_MINI_GAME_OP, MiniGameOPCommand)
	slot0.facade:registerCommand(GAME.REQUEST_MINI_GAME, MiniGameRequestCommand)
	slot0.facade:registerCommand(GAME.MODIFY_MINI_GAME_DATA, MiniGameModifyDataCommand)
end

return class("PrepControllerCommand", pm.SimpleCommand)
