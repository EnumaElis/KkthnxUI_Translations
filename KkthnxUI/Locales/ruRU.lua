local K, _, L = unpack(select(2, ...))
-- Localization for ruRU

if (GetLocale() ~= "ruRU") then
	return
end

local _G = _G

local GetItemClassInfo = _G.GetItemClassInfo
local GetItemSubClassInfo = _G.GetItemSubClassInfo
local LE_ITEM_CLASS_ITEM_ENHANCEMENT = _G.LE_ITEM_CLASS_ITEM_ENHANCEMENT
local LE_ITEM_CLASS_MISCELLANEOUS = _G.LE_ITEM_CLASS_MISCELLANEOUS
local LE_ITEM_CLASS_QUESTITEM = _G.LE_ITEM_CLASS_QUESTITEM
local LE_ITEM_CLASS_TRADEGOODS = _G.LE_ITEM_CLASS_TRADEGOODS

-- Install Localization
L["Install"] = {
	Chat_Set = "Настроить чат",
	CVars_Set = "Настроить CVars",
	Step_0 = "Благодарим за выбор |cff4488ffKkthnxUI|r!|n|nМы вас проведём через установку за несколько этапов. На каждом этапе вы можете решить принимать или пропустить предлагаемые настройки.",
	Step_1 = "Первый этап применяет важные настройки. Этот этап |cffff0000рекомендуется|r для всех игроков, кроме тех случаев когда вы хотите применить какие-либо другие специфичные настройки.|n|nНажмите 'Применить' для принятия настроек и затем 'Далее', чтобы продолжить процесс установки. Если вы хотите пропустить этот этап, просто нажмите 'Далее'.",
	Step_2 = "Второй этап применяет корректные настройки чата. Если вы новый пользователь, то этот этап рекомендуется к применению. Если у вас уже есть собственные настройки чата, вы можете пропустить этот этап.|n|nНажмите 'Применить' для принятия настроек и затем 'Далее', чтобы продолжить процесс установки. Если вы хотите пропустить этот этап, просто нажмите 'Далее'.",
	Step_3 = "Установка завершена. Нажмите на кнопку 'Завершено' для перезагрузки интерфейса. Пользуйтесь KkthnxUI в удовольствие!",
	Welcome_1 = "Добро пожаловать в |cff4488ffKkthnxUI|r v"..K.Version.." "..K.Client..", "..string.format("|cff%02x%02x%02x%s|r", K.Color.r * 255, K.Color.g * 255, K.Color.b * 255, K.Name),
	Welcome_2 = "Напиши |cffffbb44/cfg|r чтобы открыть окно с настройками.",
	Welcome_3 = "Если вам нужна поддержка, заходите в Discord |cffffbb44YUmxqQm|r",

	StepTitle_0 = "ПРИВЕТ",
	StepTitle_1 = "ПЕРЕМЕННЫЕ (CVARS)",
	StepTitle_2 = "ЧАТ",
	StepTitle_3 = "ЗАВЕРШЕНО",
}

-- StaticPopups Localization
L["StaticPopups"] = {
	-- РУС Перевести
	BoostUI = "Accepting this will adjust your GFX(Graphics) settings to 'try' to improve your FPS.",
	Cancel = "Вы отменили этот диалог.",
	Changes_Reload = "Для того чтобы изменения вступили в силу, необходимо перезагрузить интерфейс (UI).",
	Config_Reload = "Для того чтобы изменения вступили в силу, необходимо перезагрузить интерфейс (UI).",
	Delete_Grays = "Удалить серые предметы?",
	Disband_Group = "Вы уверены что хотите распустить эту группу?",
	Fix_Actionbars = "Кажется есть проблема с отображением ваших панелей. Хотите попытаться исправить эту проблему?",
	KkthnxUI_Update = "Версия KkthnxUI устаревшая. Вы можете загрузить более новую версию на Curse!",
	Reset_UI = "Вы уверены, что хотите сбросить все настройки на этом профиле?",
	Resolution_Changed = "Мы обнаружили, что поменялось разрешение экрана. Мы ОЧЕНЬ РЕКОМЕНДУЕМ перезагрузить игру. Приступить к перезагрузке?",
	Restart_GFX = "Для того чтобы изменения вступили в силу, необходимо перезагрузить игру.",
	Set_UI_Scale = "Автоматически масштабировать интерфейс, основываясь на вашем разрешении экрана?",
	Warning_Blizzard_AddOns = "Похоже что одно из ваших дополнений отключило дополнение Blizzard_CompactRaidFrames. Это может приводить к ошибкам и прочим проблемам. Дополнение будет переподключено.",
	WoWHeadLink = "Ссылка на Wowhead",
}

-- Commands Localization
L["Commands"] = {
	AbandonQuests = "Все задания, не помеченные как 'Выполненные', будут удалены!",
	BlizzardAddOnsOn = "Следующие дополнения были заново включены: ",
	CheckQuestInfo = "\nВведите questID, который можно найти на Wowhead URL\nhttp://wowhead.com/quest=ID\nПример: /checkquest 12045\n",
	CheckQuestComplete = " был завершён!",
	CheckQuestNotComplete = " не был завершён!",
	ConfigNotFound = "Конфигурационный файл KkthnxUI не найден!",
	-- РУС Перевести
	ConfigPerAccount = "Your settings are currently set across all your characters! You can't use this command!",
	FixParty = "\n|cff4488ff".."Если вы застряли в группе, попробуйте следующее:".."|r\n\n|cff00ff001.|r Пригласите кого-нибудь в группу.\n|cff00ff002.|r Переделайте группу в рейд.\n|cff00ff003.|r Используйте ту же команду что и ранее чтобы покинуть группу.\n|cff00ff004.|r Снова пригласите вашего друга в группу.\n\n",
	LuaErrorInfo = "|cffff0000/luaerror on - /luaerror off|r",
	LuaErrorOff = "|cffff0000Lua ошибки выключены.|r",
	Profile = "Профиль ",
	ProfileDel = " Удалён: ",
	ProfileInfo = "\n/profile list\n/profile #\n/profile delete #\n\n",
	ProfileNotFound = "Профиль не найден",
	ProfileSelection = "Напишите профиль для использования (пример: /profile Stormreaver-Kkthnx)",
	SetUIScale = "KkthnxUI уже использует функцию автоматического масштаба!",
	SetUIScaleSucc = "Масштаб успешно изменён на ",
	-- РУС Перевести
	UIHelp = "\nKkthnxUI Команды:\n\n'|cff00ff00/install|r' или '|cff00ff00/reset|r' : Запуск установки или сброс на начальные настройки.\n'|cff00ff00/config|r' : Показать меню настроек.\n'|cff00ff00/moveui|r' : Перемещение элементов интерфейса.\n'|cff00ff00/testui|r' : Режим тестовых панелей.\n'|cff00ff00/profile|r' : Использовать настройки KkthnxUI  (существующий профиль) от другого персонажа.\n'|cff00ff00/killquests|r' : Отменить все незавершённые задания.\n'|cff00ff00/clearcombat|r' : Очистить все записи Журнала Боя.\n'|cff00ff00/setscale|r' : Sets the UI to pixel perfect.\n'|cff00ff00/rd|r' : Распустить рейд.\n'|cff00ff00/clearchat|r' : Очистить окно чата.\n'|cff00ff00/checkquest|r' : Проверить, выполняли ли вы этот квест или нет.\n",
}

-- ActionBars Localization
L["Actionbars"] = {
	All_Binds_Cleared = "Все горячие клавиши сброшены для",
	All_Binds_Discarded = "Новые назначения горячих клавиш были отменены.",
	All_Binds_Saved = "Все горячие клавиши были сохранены.",
	Binding = "Назначение",
	Fix_Actionbars = "Кажется есть проблема с отображением ваших панелей. Хотите попытаться исправить эту проблему?",
	Key = "Кнопка",
	Keybind_Mode = "Наведите мышкой на кнопку и нажмите нужную кнопку на клавиатуре. Для сброса горячей клавиши на выбранной кнопке, нажмите 'Esc' или правой кнопкой мыши.",
	Locked = "|CFFFF0000Заблокировано|r",
	-- РУС Перевести
	No_Bindings_Set = "No Bindings Set",
	Trigger = "Trigger",
	Unlocked = "|CFF008000Разблокировано|r",
}

-- AFKCam Localization
L["AFKCam"] = {
	NoGuild = "Без гильдии",
}

-- AddOnsData Localization
L["AddOnData"] = {
	AllAddOnsText = "Настройки для всех поддерживаемых дополнений загружены!",
	InfoText = "|cffffff00Используйте эти команды для загрузки профилей к дополнениям.|r\n\n|cff00ff00/settings dbm|r, чтобы применить настройки к |cff00ff00DeadlyBossMods.|r\n|cff00ff00/settings msbt|r, чтобы применить настройки к |cff00ff00MikScrollingBattleText.|r\n|cff00ff00/settings skada|r, чтобы применить настройки к |cff00ff00Skada.|r\n|cff00ff00/settings bt4 или bartender|r, чтобы применить настройки к |cff00ff00Bartender4.|r\n|cff00ff00/settings buggrabber|r, чтобы применить настройки к |cff00ff00!BugGrabber.|r\n|cff00ff00/settings bugsack|r, чтобы применить настройки к |cff00ff00BugSack.|r\n|cff00ff00/settings bugsack|r, чтобы применить настройки к |cff00ff00BugSack.|r\n|cff00ff00/settings pawn|r, чтобы применить настройки к |cff00ff00Pawn.|r\n|cff00ff00/settings bigwigs|r, чтобы применить настройки к |cff00ff00BigWigs.|r\n|cff00ff00/settings all|r, чтобы применить настройки ко всем дополнениям, если они включены!\n\n",
	BigWigsText = "|cffffff00".."BigWigs профиль загружен".."|r",
	BigWigsNotText = "|CFFFF0000Дополнение BigWigs не загружено!|r",
	BartenderText = "|cffffff00".."Bartender4 профиль загружен".."|r",
	BartenderNotText = "|CFFFF0000Дополнение Bartender4 не загружено!|r",
	BugGrabberText = "|cffffff00".."BugGrabber профиль загружен".."|r",
	BugGrabberNotText = "|CFFFF0000Дополнение !BugGrabber не загружено!|r",
	BugSackText = "|cffffff00".."BugSack профиль загружен".."|r",
	BugSackNotText = "|CFFFF0000Дополнение BugSack не загружено!|r",
	DBMText = "|cffffff00".."DBM профиль загружен".."|r",
	DBMNotText = "|CFFFF0000Дополнение DeadlyBossMods не загружено!|r",
	MSBTText = "|cffffff00".."MikScrollingBattleText профиль загружен".."|r",
	MSBTNotText = "|CFFFF0000Дополнение MikScrollingBattleText не загружено!|r",
	PawnText = "|cffffff00".."Pawn профиль загружен".."|r",
	PawnNotText ="|CFFFF0000Дополнение Pawn не загружено!|r",
	SkadaText = "|cffffff00".."Skada профиль загружен".."|r",
	SkadaNotText = "|CFFFF0000Дополнение Skada не загружено!|r",
}

-- Announcements Localization
L["Announcements"] = {
	-- Считаю что некоторые не стоит переводить
	Dispelled = "Dispelled",
	Pull_Aborted = "Отсчёт ПРЕРВАН!",
	Pulling = "Отсчёт до %s..", -- "Отсчёт %s из %s..", doesnt work
	Sapped = "Sapped!",
	Sapped_By = "Sapped by: ",
	Stole = "Украдено",
}

-- Auras Localization
L["Auras"] = {

}

-- Automation Localization
L["Automation"] = {
	DuelCanceled_Pet = "Запрос на битву питомцев от %s был отклонён.",
	DuelCanceled_Regular = "Запрос на дуэль от %s был отклонён.",
	MovieBlocked = "Вы уже видели это кино ранее, пропускаем.",
}

-- Blizzard Localization
L["Blizzard"] = {
	Disband_Group = "Распустить группу",
	Lua_Error_Recieved = "|cFFE30000Получена ошибка Lua. Вы сможете посмотреть окно с ошибкой, когда выйдете из боя.",
	No_Errors = "Без ошибок",
	Raid_Menu = "Меню Рейда",
	Taint_Error = "%s: %s tried to call the protected function '%s'.",
}

-- Chat Localization
L["Chat"] = {
	AFK = "",
	DND = "",
	Invaild_Target = "Неверная Цель",
	-- Channel Names
	Conversation = "Общение",
	General = "Общий",
	LocalDefense = "LocalDefense",
	LookingForGroup = "Поиск Группы",
	Trade = "Торговля",
	WorldDefense = "WorldDefense",
	-- Short Channel Names
	-- Считаю что их не стоит переводить
	S_Conversation = "C",
	S_General = "G",
	S_Guild = "g",
	S_InstanceChat = "i",
	S_InstanceChatLeader = "I",
	S_LocalDefense = "LD",
	S_LookingForGroup = "LFG",
	S_Officer = "o",
	S_Party = "p",
	S_PartyGuide = "PG",
	S_PartyLeader = "PL",
	S_Raid = "r",
	S_RaidLeader = "R",
	S_RaidWarning = "W",
	S_Say = "s",
	S_Trade = "T",
	S_WhisperIncoming = "w",
	S_WhisperOutgoing = "@",
	S_WorldDefense = "WD",
	S_Yell = "y",
}

-- Configbutton Localization
L["ConfigButton"] = {
	ActionbarLock = "Заблокировать панели",
	Changelog = "Список изменений",
	CopyChat = "Скопировать чат",
	Emotions = "Смайлики",
	Functions = "Функции",
	Install = "Установка",
	LeftClick = "Левый клик:",
	MiddleClick = "Клик колесом:",
	MoveUI = "Перемещать",
	ProfileList = "Список профилей",
	Right_Click = "Правый клик:",
	Roll = "Roll 1-100. Ты победишь!",
	ToggleConfig = "Окно настроек",
	UIHelp = "Помощь",
}

-- Databars Localization
L["Databars"] = {
	AP = "AP:",
	Bars = "Ячеек",
	Current_Level = "Текущий уровень:",
	Experience = "Опыт",
	Honor_Remaining = "Осталось Чести:",
	Honor_XP = "Очков Чести:",
	Remaining = "Осталось:",
	Rested = "Отдых:",
	Share = "Поделиться свои опытом",
	-- РУС Перевести
	Toggle_PvP = "Toggle PvP UI",
	Toggle_Reputation = "Toggle Reputation UI",
	XP = "XP:",
}

-- Datatext Localization
L["DataText"] = {
	-- Не хожу в ПвП и БГ, не знаю как корректно перевести
	BaseAssault = "Bases Assaulted:",
	BaseDefend = "Bases Defended:",
	CallToArms = "Призыв к Оружию",
	CartControl = "Carts Controlled:",
	ControlBy = "Контролируется:",
	Damage = "Урон: ",
	DamageDone = "Нанесено урона:",
	Death = "Смерти:",
	DemolisherDestroy = "Demolishers Destroyed:",
	FlagCapture = "Флагов Захвачено:",
	FlagReturn = "Флагов Возвращено:",
	GateDestroy = "Gates Destroyed:",
	GraveyardAssault = "Graveyards Assaulted:",
	GraveyardDefend = "Graveyards Defended:",
	Healing = "Лечение: ",
	HealingDone = "Произведено лечения:",
	Honor = "Честь: ",
	HonorableKill = "Honorable Kills:",
	HonorGained = "Получено Чести:",
	KillingBlow = "Смертельные удары: ",
	OrbPossession = "Orb Possessions:",
	StatsFor = "Stats for ",
	TowerAssault = "Towers Assaulted:",
	TowerDefend = "Towers Defended:",
	VictoryPts = "Очков Победы:",
}

-- Inventory Localization
L["Inventory"] = {
	Artifact_Count = "Количество: ",
	Artifact_Use = "|cff02FF02|nПравой кнопкой чтобы использовать|r",
	Bank = "Переключиться в банк",
	--Buttons_Artifact = "|cff02FF02|nRight click to use Artifact Power item in bag|r",
	Buttons_Sort = "Левый клик: Сортировка |nПравый клик: Сортировка как у Blizzard",
	-- РУС Перевести
	Buttons_Stack = "Stack Items",
	Cant_Buy_Slot = "Can't buy anymore slots!",
	GuildRepair = "Ваши вещи были отремонтированы за счёт гильдии на сумму: ",
	NotatVendor = "Вы должны быть у торговца.",
	NotEnoughMoney = "У вас недостаточно денег для ремонта!",
	Purchase_Slot = "Купить слоты для сумок",
	Reagents = "Переключиться на реагенты",
	RepairCost = "Ваши вещи были отремонтированы на сумму: ",
	Right_Click_Search = "Правый клик для поиска",
	Shift_Move = "Зажмите Shift и перетаскивайте",
	Show_Bags = "Показать сумки",
	SoldTrash = "Продано серых вещей на сумму: ",
	TrashList = "|n|nСписок мусора:|n",
	VendorGrays = "Продать серое",
}

-- Loot Localization
L["Loot"] = {
	Empty_Slot = "Пустой слот",
	-- Не знаю где это. РУС Перевести
	Fishy_Loot = "Fishy Loot",
}

-- Maps Localization
L["Maps"] = {
	DisableToHide = "Отключите чтобы скрыть области|nв которых вы ещё не были.",
	EnableToShow = "Включите чтобы показать все области|nдаже если вы в них ещё не были.",
	HideUnDiscovered = "Скрыть неисследованные области",
	PressToCopy = "|nНажмите <CTRL/C> чтобы скопировать.",
	Reveal = "Убрать туман",
	RevealHidden = "Показать неисследованные области",
	Spotted = "обнаружен! ",
	TomTom = "Включите TomTom для этой функции. Вы можете скачать его с Curse",
}

-- Miscellaneous Localization
L["Miscellaneous"] = {
	Config_Not_Found = "KkthnxUI_Config не был найден!",
	Copper_Short = "|cffeda55fc|r",
	Gold_Short = "|cffffd700g|r",
	-- РУС Перевести
	KkthnxUI_Scale_Button = "KkthnxUI Scale Config",
	Mail_Complete = "Готово.",
	Mail_Messages = "писем",
	Mail_Need = "Нужен почтовый ящик.",
	Mail_Stopped = "Остановлено, нет места в сумках.",
	Mail_Unique = "Остановлено. Обнаружена копия этого уникального предмета в сумках или в банке.",
	Repair = "Внимание! Вам необходимо починить свою экипировку как можно скорее!",
	Silver_Short = "|cffc7c7cfs|r",
	UIOutdated = "Версия KkthnxUI устаревшая. Вы можете загрузить более новую версию на Curse.com. Установите приложение Curse и пусть KkthnxUI автоматически обновляется в этом приложении!",
}

-- Nameplates Localization
L["Nameplates"] = {

}

-- Panels Localization
L["Panels"] = {

}

-- Quests Localization
L["Quests"] = {

}

-- Skins Localization
L["Skins"] = {
	Skada_Reset = "Вы хотите сбросить Skada?",
}

-- Tooltip Localization
L["Tooltip"] = {
	Bank = "Банк",
	Companion_Pets = GetItemSubClassInfo(LE_ITEM_CLASS_MISCELLANEOUS, 2),
	Count = "Количество",
	Item_Enhancement = GetItemClassInfo(LE_ITEM_CLASS_ITEM_ENHANCEMENT),
	Other = GetItemSubClassInfo(LE_ITEM_CLASS_MISCELLANEOUS, 4),
	Quest = GetItemClassInfo(LE_ITEM_CLASS_QUESTITEM),
	Tradeskill = GetItemClassInfo(LE_ITEM_CLASS_TRADEGOODS),
}

-- UnitFrames Localization
L["Unitframes"] = {
	Dead = "Мёртв",
	Ghost = "Призрак",
}

-- Config Localization
L["Config"] = {
	CharSettings = "Исп. на персонажа",
	ConfigNotFound = "Настройки не найдены!",
	GlobalSettings = "Исп. Глобально",
	ResetCVars = "Сброс CVars",
	ResetChat = "Сброс чата",
}
