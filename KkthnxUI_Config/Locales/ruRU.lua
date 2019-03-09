if (GetLocale() ~= "ruRU") then
	return
end

local MissingDesc = "The description for this module/setting is missing. Someone should really remind Kkthnx to do his job!"
local ModuleNewFeature = [[|TInterface\OptionsFrame\UI-OptionsFrame-NewFeatureIcon:0:0:0:0|t]] -- Used for newly implemented features.
local PerformanceIncrease = "|n|nОтключение этой функции может немного повысить производительность|r" -- For semi-high CPU options
local RestoreDefault = "|n|nЩелкните правой кнопкой чтобы вернуть настройку по-умолчанию" -- For color pickers

local _G = _G

local ARENA = _G.ARENA
local AURAS = _G.AURAS
local BATTLEGROUNDS = _G.BATTLEGROUNDS
local BINDING_HEADER_ACTIONBAR = _G.BINDING_HEADER_ACTIONBAR
local BINDING_NAME_TOGGLEGARRISONLANDINGPAGE = _G.BINDING_NAME_TOGGLEGARRISONLANDINGPAGE
local BOSS = _G.BOSS
local CHAT = _G.CHAT
local COMBAT = _G.COMBAT
local DUNGEONS = _G.DUNGEONS
local GARRISON_LANDING_PAGE_TITLE = _G.GARRISON_LANDING_PAGE_TITLE
local GARRISON_LOCATION_TOOLTIP = _G.GARRISON_LOCATION_TOOLTIP
local GENERAL = _G.GENERAL
local INVENTORY_TOOLTIP = _G.INVENTORY_TOOLTIP
local LOOT = _G.LOOT
local MINIMAP_LABEL = _G.MINIMAP_LABEL
local MISCELLANEOUS = _G.MISCELLANEOUS
local PARTY = _G.PARTY
local RAID = _G.RAID
local RAIDS = _G.RAIDS
local RAID_CONTROL = _G.RAID_CONTROL
local REVERSE_NEW_LOOT_TEXT = _G.REVERSE_NEW_LOOT_TEXT
local ROLE = _G.ROLE
local SCENARIOS = _G.SCENARIOS
local UNITFRAME_LABEL = _G.UNITFRAME_LABEL
local UNIT_NAMEPLATES = _G.UNIT_NAMEPLATES
local WORLDMAP_BUTTON = _G.WORLDMAP_BUTTON

KkthnxUIConfig["ruRU"] = {
	-- Menu Groups Display Names
	["GroupNames"] = {
		-- Let's keep this in alphabetical order, shall we?
		["ActionBar"] = BINDING_HEADER_ACTIONBAR,
		["Announcements"] = "Оповещения",
		["Arena"] = ARENA,
		["Auras"] = AURAS,
		["Automation"] = "Автодействия",
		["Boss"] = "Боссы", -- BOSS, works not correct on ruRU
		["Chat"] = "Чат", -- CHAT, works not correct on ruRU
		["DataBars"] = "Инфо-полосы",
		["DataText"] = "Инфо-текст",
		["Filger"] = "Откаты способностей",
		["Firestorm"] = "Firestorm", -- this is a realm name and shouldn't be translated.
		["General"] = GENERAL,
		["HealthPrediction"] = "Прогноз ХП",
		["Inventory"] = "Сумки", -- INVENTORY_TOOLTIP, works not correct on ruRU
		["Loot"] = LOOT,
		["Minimap"] = MINIMAP_LABEL,
		["MinimapButtons"] = "Кнопки миникарты",
		["Misc"] = MISCELLANEOUS,
		["Nameplates"] = UNIT_NAMEPLATES,
		["Party"] = PARTY,
		["Raid"] = RAID,
		["Skins"] = "Шкурки",
		["Tooltip"] = "Подсказки",
		["Unitframe"] = UNITFRAME_LABEL,
		["WorldMap"] = WORLDMAP_BUTTON
	},

	-- General Local
	["General"] = {
		["AutoScale"] = {
			["Name"] = "Автоматический масштаб",
			["Desc"] = "Автоматически масштабировать интерфейс в зависимости от вашего разрешения экрана",
		},

		["UIScale"] = {
			["Name"] = "Масштаб интерфейса",
			["Desc"] = "Установить масштаб вручную |n|n|cffFF0000'Автоматический масштаб' необходимо отключить|r",
		},

		["DisableTutorialButtons"] = {
			["Name"] = "Отключить кнопки обучения",
			["Desc"] = "Отключить кнопки обучения на некоторых окнах",
		},

		["Welcome"] = {
			["Name"] = "Приветственное сообщение",
			["Desc"] = "Включить `Добро пожаловать в KkthnxUI` в чате",
		},
		-- РУС Перевести
		["FixGarbageCollect"] = {
			["Name"] = "Fix Garbage Collection",
			["Desc"] = "Garbage collection is being overused and misused and it's causing lag and performance drops.|n|nMemory usage is unrelated to performance, and tracking memory usage does not track 'bad' addons.|n|nDevelopers can disable this setting to enable the functionality when looking for memory leaks, but for the average end-user this is a completely pointless thing to track.",
		},

		["ColorTextures"] = {
			["Name"] = "Включить Цвет границ",
			["Desc"] = "Изменить цвет границ окон интерфейса",
		},

		["TexturesColor"] = {
			["Name"] = "Цвет границ",
			["Desc"] = "Цвет границ окон интерфейса. |n|n|cffFF0000'Включить Цвет границ' должен быть включен|r"..RestoreDefault,
		},

		["Texture"] = {
			["Name"] = "Текстура панелей",
		},

		["Font"] = {
			["Name"] = "Шрифт",
		},

		["FontSize"] = {
			["Name"] = "Размер шрифта",
			["Desc"] = "Установить размер шрифта для большинства элементов интерфейса. Не подействует на те элементы, у которых есть собственная настройка шрифтов (шрифт рамок, инфо-текстов и т.д.)",
		},
		-- РУС Перевести
		["LagTolerance"] = {
			["Name"] = "Lag Tolerance",
			["Desc"] = "Automatically update the Blizzard Custom Lag Tolerance option to your latency",
		},

		["MoveBlizzardFrames"] = {
			["Name"] = "Двигать окна Blizzard",
		},

		["TaintLog"] = {
			["Name"] = "Log Taints",
			["Desc"] = "Send ADDON_ACTION_BLOCKED errors to the Lua Error frame. These errors are less important in most cases and will not effect your game performance. Also, a lot of these errors cannot be fixed. Please only report these errors if you notice a Defect in gameplay.",
		},

		["ReplaceBlizzardFonts"] = {
			["Name"] = "Заменить стандартные шрифты",
			["Desc"] = "Заменить некоторые шрифты Blizzard на шрифт KkthnxUI",
		},
	},

	-- Health Prediction Local
	["HealthPrediction"] = {
		["Absorbs"] = {
			["Name"] = "Поглощения",
			["Desc"] = MissingDesc,
		},

		["HealAbsorbs"] = {
			["Name"] = "Поглощения ХП",
			["Desc"] = MissingDesc,
		},

		["Others"] = {
			["Name"] = "Другие",
			["Desc"] = MissingDesc,
		},

		["Personal"] = {
			["Name"] = "Личные",
			["Desc"] = MissingDesc,
		},

		["Texture"] = {
			["Name"] = "Текстура панелей",
		},
	},

	-- Loot Local
	["Loot"] = {
		["Enable"] = {
			["Name"] = "Включить интерфейс добычи",
		},

		["GroupLoot"] = {
			["Name"] = "Добыча в группе",
			["Desc"] = "Включить окно с броском кубика для групповой добычи",
		},

		["AutoQuality"] = {
			["Name"] = "Качество добычи",
			["Desc"] = "Настройка Нужно/Распылить\n\nЗеленое: Бросать кубик только на зеленые вещи\nСинее: Бросать кубик на синие и зеленые",
		},

		["Font"] = {
			["Name"] = "Шрифт",
		},

		["Texture"] = {
			["Name"] = "Текстура панелей",
		},

		["AutoConfirm"] = {
			["Name"] = "Автоматически подтверждать",
			["Desc"] = "Автоматически нажимать ОК на вещах со свойством 'Персональные при поднятии'",
		},

		["AutoGreed"] = {
			["Name"] = "Автоматически Нужно",
			["Desc"] = "Автоматически выбирать 'Нужно' на розыгрыше зеленых вещей при достижении максимального уровня",
		},

		["AutoDisenchant"] = {
			["Name"] = "Автоматически распылять",
			["Desc"] = "Автоматически распылять зеленые вещи при достижении максимального уровня",
		},
		-- РУС Перевести
		["Level"] = {
			["Name"] = "Level",
			["Desc"] = "Level to start auto-rolling from",
		},
		-- РУС Перевести
		["ByLevel"] = {
			["Name"] = "Roll Based On Level",
			["Desc"] = "This will auto-roll if you are above the given level if: You cannot equip the item being rolled on, or the iLevel of your equipped item is higher than the item being rolled on or you have an heirloom equipped in that slot",
		},
		-- РУС Перевести
		["FastLoot"] = {
			["Name"] = "Fast Loot",
			["Desc"] = "The amount of time it takes to auto loot creatures will be significantly reduced.|n|n|cffFF0000Requires AutoLoot to be enabled!",
		},
	},

	-- Bags Local
	["Inventory"] = {
		["BagColumns"] = {
			["Name"] = "Колонки в сумке",
			["Desc"] = "Количество колонок в сумке",
		},

		["BankColumns"] = {
			["Name"] = "Колонки в банке",
			["Desc"] = "Количество колонок в банке",
		},

		["ButtonSize"] = {
			["Name"] = "Размер кнопок",
		},

		["ButtonSpace"] = {
			["Name"] = "Промежуток между кнопками",
		},

		["DetailedReport"] = {
			["Name"] = "Детальный отчет при продаже",
			["Desc"] = "Показывает детальный отчет по каждой проданной вещи. Если отключить, покажет только сумму проданных вещей и затраты",
		},

		["Enable"] = {
			["Name"] = "Включить сумки",
		},

		["BagBar"] = {
			["Name"] = "Bag Bar",
			["Desc"] = "Enable/Disable the Bag-Bar.",
		},

		["BagBarMouseover"] = {
			["Name"] = "Bag Bar Mouseover",
			["Desc"] = "The Bag Bar is not shown unless you mouse over the Bag Bar.",
		},

		["Font"] = {
			["Name"] = "Шрифт",
		},

		["ItemLevel"] = {
			["Name"] = "Уровень вещей",
			["Desc"] = "Показывать уровень на вещах, которые можно надеть",
		},
		-- РУС Перевести
		["ItemLevelThreshold"] = {
			["Name"] = "Item Level Threshold",
			["Desc"] = "The minimum item level required for it to be shown.",
		},

		["PulseNewItem"] = {
			["Name"] = "Границы новых вещей",
			["Desc"] = "Пульсация границы ячейки нового предмета в сумке",
		},

		["JunkIcon"] = {
			["Name"] = "Показывать хлам",
			["Desc"] = "Показывать иконку хлама на серых предметах экипировки, которые можно продать торговцу",
		},

		["ScrapIcon"] = {
			["Name"] = "Показывать мусор",
			["Desc"] = "Показывать иконку мусора на всех предметах, которые можно продать торговцу",
		},

		["ReverseLoot"] = {
			["Name"] = REVERSE_NEW_LOOT_TEXT,
			["Desc"] = REVERSE_NEW_LOOT_TEXT,
		},
		-- РУС Перевести
		["BindText"] = {
			["Name"] = "Bind Text",
			["Desc"] = "Show Bind on Equip/Use Text",
		},

		["SortInverted"] = {
			["Name"] = "Инвертировать сортировку",
			["Desc"] = "Направление сортировки в сумке для распределения предметов",
		},

		["AutoRepair"] = {
			["Name"] = "Автоматический ремонт",
			["Desc"] = "При посещении торговца автоматически ремонтировать вещи",
		},

		["AutoSell"] = {
			["Name"] = "Автоматическая продажа",
			["Desc"] = "При посещении торговца автоматически продавать все серые вещи",
		},

		["UseGuildRepairFunds"] = {
			["Name"] = "Использовать починку гильдии",
			["Desc"] = "При использовании 'Автоматический ремонт', ремонтировать вещи за счет гильдии",
		},
	},

	["MinimapButtons"] = {
		["EnableBar"] = {
			["Name"] = "Включить панель",
			["Desc"] = "Включить панель у миникарты, куда будут собираться иконки",
		},

		["BarMouseOver"] = {
			["Name"] = "Наведение мышки",
			["Desc"] = "Панель будет появляться при наведении мышки",
		},

		["ButtonSpacing"] = {
			["Name"] = "Промежуток иконок",
			["Desc"] = "Промежуток в пикселях между иконками (работает только если включена панель)",
		},

		["ButtonsPerRow"] = {
			["Name"] = "Кнопок на строку",
			["Desc"] = "Количество кнопок на одну строку (работает только если включена панель)",
		},

		["IconSize"] = {
			["Name"] = "Размер иконок",
			["Desc"] = "Размер иконок на панели у миникарты",
		},
	},

	-- Actionbar Local
	["ActionBar"] = {
		["MicroBar"] = {
			["Name"] = "Панель Blizzard",
			["Desc"] = "Включает стандартную панель с кнопками Blizzard (Магазин, Помощь и т.д.)",
		},

		["MicroBarMouseover"] = {
			["Name"] = "Панель Blizzard при наведении",
			["Desc"] = "Панель не будет отображаться, пока не наведете на нее мышку",
		},

		["BottomBars"] = {
			["Name"] = "Количество нижних панелей",
			["Desc"] = "Количество нижних панелей. От 1 до 3",
		},

		["ButtonSize"] = {
			["Name"] = "Размер кнопок",
			["Desc"] = "Размер кнопок на панелях",
		},

		["ButtonSpace"] = {
			["Name"] = "Промежуток кнопок",
			["Desc"] = "Промежуток между кнопок на панелях",
		},

		["Cooldowns"] = {
			["Name"] = "Откаты заклинаний",
			["Desc"] = "Показывать таймер откатов на кнопках",
		},

		["Enable"] = {
			["Name"] = "Включить панели",
		},

		["ShowGrid"] = {
			["Name"] = "Сетка панелей",
			["Desc"] = "Показывать пустые кнопки на панелях",
		},

		["EquipBorder"] = {
			["Name"] = "Границы на экипированных вещах",
			["Desc"] = "Показывать зеленую границу на экипированных вещах",
		},

		["RightMouseover"] = {
			["Name"] = "Скрывать правую панель",
		},

		["PetMouseover"] = {
			["Name"] = "Скрывать панель питомца",
			["Desc"] = "Показывать панель питомца при наведении мышки. Работает только при горизонтальной панели питомца",
		},

		["StanceMouseover"] = {
			["Name"] = "Скрывать панель стоек",
			["Desc"] = "Показывать панель стоек при наведении мышки. Работает только при горизонтальной панели стоек",
		},

		["HideHighlight"] = {
			["Name"] = "Proc Highlight",
			["Desc"] = "Hide proc highlight",
		},

		["Hotkey"] = {
			["Name"] = "Горячие клавиши",
			["Desc"] = "Показывать горячие клавиши на кнопках",
		},

		["Macro"] = {
			["Name"] = "Макросы",
			["Desc"] = "Показывать имена макросов на кнопках",
		},

		["OutOfMana"] = {
			["Name"] = "Недостаточно ресурсов",
			["Desc"] = "Окрашивать кнопку если недостаточно ресурсов на заклинание"..RestoreDefault,
		},

		["OutOfRange"] = {
			["Name"] = "Цель вне радиуса",
			["Desc"] = "Окрашивать иконку если цель за пределами досягаемости способности"..RestoreDefault,
		},

		["DisableStancePages"] = {
			["Name"] = "Переключение при скрытности",
			["Desc"] = "Отключает автоматическую смену основной панели в режиме скрытности. |n|nРаботает только у |cffFFF569Разбойников|r и |cffFF7D0AДруидов|r, у других классов эффекта не будет",
		},

		["PetBarHide"] = {
			["Name"] = "Скрыть панель питомца",
			["Desc"] = "Скрыть панель питомца",
		},

		["PetBarHorizontal"] = {
			["Name"] = "Горизонтальная панель питомца",
			["Desc"] = "Включить горизонтальную панель питомца",
		},

		["RightBars"] = {
			["Name"] = "Правые панели",
			["Desc"] = "Количество панелей на правой части экрана (0, 1, 2 или 3)",
		},

		["SplitBars"] = {
			["Name"] = "Разделить панель",
			["Desc"] = "Разделить 4-ую панель на две панели по 6 кнопок",
		},

		["StanceBarHide"] = {
			["Name"] = "Скрыть панель стоек",
			["Desc"] = "Скрыть панель стоек",
		},

		["StanceBarHorizontal"] = {
			["Name"] = "Горизонтальная панель стоек",
			["Desc"] = "Включить горизонтальную панель стоек",
		},

		["ToggleMode"] = {
			["Name"] = "Переключатель панелей",
			["Desc"] = "Включает переключатель панелей (Всегда будет отображаться над верхней панелью!)",
		},

		["AddNewSpells"] = {
			["Name"] = "Добавлять заклинания",
			["Desc"] = "Автоматически добавлять на панель новые заклинания. (Нужно для некоторых квестов)",
		},

		["Font"] = {
			["Name"] = "Шрифт",
		},
	},

	-- Nameplates Local
	["Nameplates"] = {
		["ClassResource"] = {
			["Name"] = "Ресурс классов",
			["Desc"] = "Показывать ресурс классов на индикаторах (Комбо-очки, Руны...)|n|nНе забудьте включить так же в настройках самой игры (Esc > Интерфейс > Имена > поставить галку на 'Индикатор личного ресурса')",
		},

		["QuestIcon"] = {
			["Name"] = "Иконка задания",
			["Desc"] = "Показывать иконку на квестовых монстрах",
		},

		["NonTargetAlpha"] = {
			["Name"] = "Прозрачность НЕ Цели",
			["Desc"] = "При выборе цели, остальные индикаторы могут быть полупрозрачными.",
		},

		["Totems"] = {
			["Name"] = "Иконки тотемов",
			["Desc"] = "Показывать иконки над тотемами других игроков",
		},

		["TrackAuras"] = {
			["Name"] = "Показывать ауры",
			["Desc"] = "Показывать баффы и дебаффы на индикаторах",
		},

		["ClassIcons"] = {
			["Name"] = "Иконка классов",
			["Desc"] = "Показывать иконку классов в PvP",
		},
		-- РУС Перевести
		["TankedByTankColor"] = {
			["Name"] = "Tanked Color",
			["Desc"] = "Use Tanked Color when a nameplate is being effectively tanked by another tank.",
		},
		-- РУС Перевести
		["BadTransition"] = {
			["Name"] = "Bad Transition",
			["Desc"] = "Bad Transition Color"..RestoreDefault,
		},
		-- РУС Перевести
		["GoodTransition"] = {
			["Name"] = "Good Transition",
			["Desc"] = "Good Transition Color"..RestoreDefault,
		},

		["AurasSize"] = {
			["Name"] = "Размер иконок аур",
			["Desc"] = "Размер иконок баффов и дебаффов на индикаторах",
		},
		-- РУС Перевести
		["DecimalLength"] = {
			["Name"] = "Decimal Length",
			["Desc"] = "Controls the amount of decimals used in values displayed on elements like NamePlates and UnitFrames.",
		},
		-- РУС Перевести
		["ShowEnemyCombat"] = {
			["Name"] = "Enemy Combat Toggle",
			["Desc"] = "Control enemy nameplates toggling on or off when in combat.",
		},
		-- РУС Перевести
		["ShowFriendlyCombat"] = {
			["Name"] = "Friendly Combat Toggle",
			["Desc"] = "Control friendly nameplates toggling on or off when in combat.",
		},

		["QuestIconSize"] = {
			["Name"] = "Размер иконки задания",
			["Desc"] = "Размер иконок на индикаторах у квестовых монстров",
		},
		-- РУС Перевести
		["OverlapH"] = {
			["Name"] = "Overlap Horizontal",
			["Desc"] = "How much nameplates will be spaced from one another left/right.",
		},
		-- РУС Перевести
		["OverlapV"] = {
			["Name"] = "Overlap Vertical",
			["Desc"] = "How much nameplates will be spaced from one another up/down.",
		},
		-- РУС Перевести
		["BadColor"] = {
			["Name"] = "Bad Color",
			["Desc"] = "Bad threat color, varies depending if your a tank or dps/heal"..RestoreDefault,
		},

		["CastHeight"] = {
			["Name"] = "Высота полосы заклинаний",
			["Desc"] = "Высота полосы заклинаний у индикатора",
		},

		["Combat"] = {
			["Name"] = "Только в бою",
			["Desc"] = "Показывать индикаторы только во время боя",
		},

		["Clamp"] = {
			["Name"] = "Прилепить",
			["Desc"] = "Если враги за пределами экрана, оставлять их индикаторы сверху экрана",
		},

		["Distance"] = {
			["Name"] = "Расстояние",
			["Desc"] = "Показывать индикаторы в пределах этого радиуса",
		},

		["TargetArrow"] = {
			["Name"] = "Стрелка над целью",
			["Desc"] = "Показывать стрелку над тем индикатором, который является вашей целью",
		},

		["EliteIcon"] = {
			["Name"] = "Иконка у Элитных",
			["Desc"] = "Показывать иконку дракона у элитных монстров на индикаторах",
		},

		["Enable"] = {
			["Name"] = "Включить индикаторы",
		},

		["Threat"] = {
			["Name"] = "Угроза",
			["Desc"] = "Включает отображение цвета угрозы, зависит от вашей роли",
		},
		-- РУС Перевести
		["GoodColor"] = {
			["Name"] = "Good Color",
			["Desc"] = "Good threat color, varies depending if your a tank or dps/heal"..RestoreDefault,
		},
		-- РУС Перевести
		["MarkHealers"] = {
			["Name"] = "Отметить лекарей",
			["Desc"] = "Show healer icon beside enemy healers nameplate in battlegrounds",
		},

		["HealthValue"] = {
			["Name"] = "Значение ХП",
			["Desc"] = "Показывать на индикаторах значение ХП",
		},

		["Height"] = {
			["Name"] = "Высота",
		},
		-- РУС Перевести
		["NearColor"] = {
			["Name"] = "Near Color",
			["Desc"] = "Losing/Gaining threat color"..RestoreDefault,
		},
		-- РУС Перевести
		["OffTankColor"] = {
			["Name"] = "Off Tank Color",
			["Desc"] = "Offtank threat color"..RestoreDefault,
		},
		-- РУС Перевести
		["Smooth"] = {
			["Name"] = "Smooth",
			["Desc"] = "Bars will transition smoothly."..PerformanceIncrease,
		},
		-- РУС Перевести
		["SmoothSpeed"] = {
			["Name"] = "Smooth Speed",
			["Desc"] = "How fast the bars will transition smoothly.",
		},

		["SelectedScale"] = {
			["Name"] = "Масштаб цели",
			["Desc"] = "Масштаб индикатора выбранной цели",
		},

		["Font"] = {
			["Name"] = "Шрифт",
		},

		["Texture"] = {
			["Name"] = "Текстура панелей",
		},

		["HealthFormat"] = {
			["Name"] = "Формат ХП",
			["Desc"] = "Стиль отображения ХП",
		},

		["Width"] = {
			["Name"] = "Ширина",
		},
	},

	-- Announcements Local
	["Announcements"] = {
		["PullCountdown"] = {
			["Name"] = "Начать отсчёт",
			["Desc"] = "Оповестить о начале отсчёта (/pc #)",
		},

		["SaySapped"] = {
			["Name"] = "Сказать об ошеломлении",
			["Desc"] = "Оповести в канале /сказать о том что вас ошеломили",
		},

		["Interrupt"] = {
			["Name"] = "Сбитие каста",
			["Desc"] = "Написать в нужный канал о сбитии каста",
		},

		["Dispel"] = {
			["Name"] = "Dispel",
			["Desc"] = "Announce in desired channel when you dispel",
		},

		["Steal"] = {
			["Name"] = "Steal",
			["Desc"] = "Announce in desired channel when you steal",
		},		
	},

	-- Automation Local
	["Automation"] = {
		["BlockMovies"] = {
			["Name"] = "Block Movies",
			["Desc"] = "Boss encounter movies will only be allowed to play once (so you can watch each one) and will then be blocked."
		},

		["AutoCollapse"] = {
			["Name"] = "Сворачивать задания",
			["Desc"] = "Автоматически сворачивать список заданий, настройки располагаются ниже",
		},

		["AutoReward"] = {
			["Name"] = "Награда за задания",
			["Desc"] = "При завершении задания, автоматически выделяет награду с наибольшей ценой. Подтвердить задание нужно всё равно вручную",
		},

		["AutoInvite"] = {
			["Name"] = "Принимать приглашения",
			["Desc"] = "Автоматически принимать приглашения от друзей и членов гильдии",
		},

		["AutoQuest"] = {
			["Name"] = "Автозадания",
			["Desc"] = "Автоматически принимает новые и сдаёт выполненные задания, ускоряя процесс набора опыта..",
		},  
		-- РУС Перевести
		["InviteKeyword"] = {
			["Name"] = "Invite Keyword",
			["Desc"] = "Automatically accept invites from from anyone who whispers you the invite keyword",
		},

		["AutoRelease"] = {
			["Name"] = "Выход из тела",
			["Desc"] = "Автоматически выходить из тела, когда вы погибаете",
		},

		["AutoResurrect"] = {
			["Name"] = "Воскрешения",
			["Desc"] = "Автоматически принимать предложения воскресить вас",
		},
		-- РУС Перевести
		["AutoResurrectCombat"] = {
			["Name"] = "Auto Resurrect Combat",
			["Desc"] = "Automatically accepts your resurrection request in combat",
		},

		["AutoResurrectThank"] = {
			["Name"] = "Благодарить за воскрешение",
			["Desc"] = "Автоматически говорить 'thank you' за воскрешение",
		},

		["DeclinePetDuel"] = {
			["Name"] = "Отклонять дуэли питомцев",
			["Desc"] = "Автоматически отклонять приглашения на дуэль питомцев",
		},

		["DeclinePvPDuel"] = {
			["Name"] = "Отклонять PvP дуэли",
			["Desc"] = "Автоматически отклонять приглашения на дуэль в PvP",
		},

		["ScreenShot"] = {
			["Name"] = "Скриншоты",
			["Desc"] = "Автоматически делать скриншот при получении достижения!",
		},

		["Rested"] = {
			["Name"] = "На отдыхе",
		},

		["Garrison"] = {
			["Name"] = GARRISON_LOCATION_TOOLTIP,
		},
		-- РУС Перевести
		["Orderhall"] = {
			["Name"] = "Class Hall",
		},

		["Battleground"] = {
			["Name"] = BATTLEGROUNDS,
		},

		["Arena"] = {
			["Name"] = ARENA,
		},

		["Dungeon"] = {
			["Name"] = DUNGEONS,
		},

		["Scenario"] = {
			["Name"] = SCENARIOS,
		},

		["Raid"] = {
			["Name"] = RAIDS,
		},

		["Combat"] = {
			["Name"] = COMBAT,
		},
	},

	-- Auras Local
	["Auras"] = {
		["Enable"] = {
			["Name"] = "Включить ауры",
		},

		["Font"] = {
			["Name"] = "Шрифт",
		},

		["HorizontalSpacing"] = {
			["Name"] = "Горизонтальные промежутки",
			["Desc"] = "Промежутки по горизонтали между аурами",
		},

		["MaxWraps"] = {
			["Name"] = "Количество строк",
			["Desc"] = "Максимальное количество строк для аур",
		},
		-- РУС Перевести
		["SeperateOwn"] = {
			["Name"] = "Seperate Own",
			["Desc"] = "Indicate whether buffs you cast yourself should be separated before or after.",
		},

		["Size"] = {
			["Name"] = "Размер иконки аур",
		},
		-- РУС Перевести
		["VerticalSpacing"] = {
			["Name"] = "Vertical Spacing",
		},

		["WrapAfter"] = {
			["Name"] = "Аур на строку",
			["Desc"] = "Количество аур на одну строку",
		},
		-- РУС Перевести
		["FadeThreshold"] = {
			["Name"] = "Fade Threshold",
		},

		["GrowthDirection"] = {
			["Name"] = "Направление роста иконок",
			["Desc"] = MissingDesc,
		},

		["SortDir"] = {
			["Name"] = "Направление сортировки",
			["Desc"] = "Определяет порядок сортировки при выбранном способе сортировки",
		},

		["SortMethod"] = {
			["Name"] = "Способ сортировки",
			["Desc"] = "Определяет как будут сортироваться группы аур",
		},
	},

	-- Chat Local
	["Chat"] = {
		["Background"] = {
			["Name"] = "Фон чата",
			["Desc"] = "Добавить фон у чата",
		},

		["BackgroundAlpha"] = {
			["Name"] = "Прозрачность фона",
			["Desc"] = "Настройка прозрачности фона (0 - 100)",
		},

		["Enable"] = {
			["Name"] = "Включить чат",
		},

		["Fading"] = {
			["Name"] = "Затухание",
			["Desc"] = "Затухание чата",
		},

		["WhisperSound"] = {
			["Name"] = "Звук привата",
			["Desc"] = "Проигрывать звук, когда вам пишут в приват",
		},
		-- РУС Перевести
		["VoiceOverlay"] = {
			["Name"] = "Voice Chat Overlay",
			["Desc"] = "Replace Blizzard's Voice Overlay.",
		},

		["FadingTimeFading"] = {
			["Name"] = "Скорость затухания",
			["Desc"] = "Настройка скорости затухания чата",
		},
		-- РУС Перевести
		["FadingTimeVisible"] = {
			["Name"] = "Видимость перед затуханием",
			["Desc"] = "Chat Visible Before Fade",
		},

		["ShortenChannelNames"] = {
			["Name"] = "Короткие имена каналов",
		},

		["RemoveRealmNames"] = {
			["Name"] = "Убрать название серверов",
		},

		["Height"] = {
			["Name"] = "Высота",
		},

		["LinkBrackets"] = {
			["Name"] = "Скобки на ссылки",
			["Desc"] = "Оформлять ссылки в квадратные скобки",
		},

		["LinkColor"] = {
			["Name"] = "Цвет ссылок",
			["Desc"] = "Определить цвет ссылок в чате"..RestoreDefault,
		},
		-- РУС Перевести
		["QuickJoin"] = {
			["Name"] = "Quick Join",
			["Desc"] = "Show clickable Quick Join messages inside of the chat.",
		},

		["Filter"] = {
			["Name"] = "Спам фильтр",
			["Desc"] = "Блокировать раздражающий спам в чате",
		},

		["Font"] = {
			["Name"] = "Шрифт",
		},

		["ScrollByX"] = {
			["Name"] = "Пролистывать X строк",
			["Desc"] = "Пролистывать чат на # строк",
		},

		["TabsMouseover"] = {
			["Name"] = "Вкладки при наведении мышки",
			["Desc"] = "Показывать вкладки при наведении мышки",
		},

		["Width"] = {
			["Name"] = "Ширина",
		},
	},

	-- Databars Local
	["DataBars"] = {
		["Enable"] = {
			["Name"] = "Включить инфо-полосы",
		},

		["Text"] = {
			["Name"] = "Показывать текст",
			["Desc"] = "Показывать текст на полосах",
		},

		["AzeriteColor"] = {
			["Name"] = "Цвет Азерита",
			["Desc"] = "Цвет полосы Азерита"..RestoreDefault,
		},

		["MouseOver"] = {
			["Name"] = "При наведении мышки",
			["Desc"] = "Панели не будут отображаться, пока вы не наведете на них мышкой"
		},

		["Width"] = {
			["Name"] = "Ширина",
		},

		["ExperienceColor"] = {
			["Name"] = "Цвет Опыта",
			["Desc"] = "Цвет полосы опыта"..RestoreDefault,
		},

		["ExperienceRestedColor"] = {
			["Name"] = "Цвет Отдыха",
			["Desc"] = "Цвет опыта при отдыхе"..RestoreDefault,
		},

		["Height"] = {
			["Name"] = "Высота",
		},

		["Texture"] = {
			["Name"] = "Текстура панелей",
		},

		["TrackHonor"] = {
			["Name"] = "Показывать Честь",
			["Desc"] = "Показывать панель Чести",
		},
	},

	-- DataText Local
	["DataText"] = {
		["Battleground"] = {
			["Name"] = "Поля боя",
			["Desc"] = "Инфо-текст для Полей боя (отображается только на BG)",
		},

		["LocalTime"] = {
			["Name"] = "Местное время",
			["Desc"] = "Показывать местное время вместо серверного",
		},

		["Outline"] = {
			["Name"] = "Обводка",
		},

		["System"] = {
			["Name"] = "Производительность",
			["Desc"] = "Показывать FPS-MS в правой верхней части экрана",
		},

		["Time"] = {
			["Name"] = "Время",
			["Desc"] = "Показывать часы в нижней части миникарты",
		},

		["Time24Hr"] = {
			["Name"] = "24 часовой формат",
			["Desc"] = "Показывать время по-людски",
		},
	},

	-- Skins Local
	["Skins"] = {
		["BlizzardBags"] = {
			["Name"] = "Стандартные сумки",
		},

		["Bagnon"] = {
			["Name"] = "Bagnon",
		},

		["BigWigs"] = {
			["Name"] = "BigWigs",
		},

		["ChatBubbles"] = {
			["Name"] = "Облачка сообщений",
		},

		["DBM"] = {
			["Name"] = "Deadly Boss Mods",
		},

		["Recount"] = {
			["Name"] = "Recount",
		},

		["Skada"] = {
			["Name"] = "Skada",
		},

		["Spy"] = {
			["Name"] = "Spy",
		},

		["Texture"] = {
			["Name"] = "Текстура панелей",
		},

		["WeakAuras"] = {
			["Name"] = "WeakAuras",
		},
	},

	-- Minimap Local
	["Minimap"] = {
		["Calendar"] = {
			["Name"] = "Календарь",
			["Desc"] = "Показывать маленький календарь",
		},

		["GarrisonLandingPage"] = {
			["Name"] = GARRISON_LANDING_PAGE_TITLE,
			["Desc"] = BINDING_NAME_TOGGLEGARRISONLANDINGPAGE,
		},

		["Enable"] = {
			["Name"] = "Включить миникарту",
		},
		-- РУС Перевести
		["VignetteAlert"] = {
			["Name"] = "Редкие существа",
			["Desc"] = "Displays alerts for Treasures and Rares that are on your Minimap so you don't miss them.",
		},

		["ResetZoom"] = {
			["Name"] = "Сброс увеличения",
		},

		["ResetZoomTime"] = {
			["Name"] = "Таймер сброса увеличение",
			["Desc"] = "Сбрасывать увеличение на миникарте через указанный промежуток в секундах",
		},

		["Size"] = {
			["Name"] = "Размер",
		},
	},

	-- Miscellaneous Local
	["Misc"] = {
		["AFKCamera"] = {
			["Name"] = "Камера AFK",
			["Desc"] = "Посмотри как ты танцуешь. (Позорище!)",
		},

		["BattlegroundSpam"] = {
			["Name"] = "Спам на Полях боя",
			["Desc"] = "Во время BG убирает разговорный спам от Боссов",
		},
		-- РУС Перевести
		["NoTalkingHead"] = {
			["Name"] = "Hide TalkingHead",
			["Desc"] = "Removes the message dialog that appears for quests/dungeons",
		},
		-- РУС Перевести
		["InspectInfo"] = {
			["Name"] = "Display Inspect Info",
			["Desc"] = "Shows item level of each item, enchants, and gems when inspecting another player.",
		},

		["ColorPicker"] = {
			["Name"] = "Улучшенная Палитра цветов",
			["Desc"] = "Улучшенная Палитра цветов",
		},

		["ItemLevel"] = {
			["Name"] = "Уровень снаряжения",
			["Desc"] = "Показывать уровень снаряжения в окне персонажа",
		},

		["EnhancedFriends"] = {
			["Name"] = "Улучшенный список друзей",
			["Desc"] = "Улучшает окно списка друзей",
		},
		-- РУС Перевести
		["ImprovedStats"] = {
			["Name"] = "Improved Stats",
			["Desc"] = "Provides an updated and logical display of the character stats",
		},
		-- РУС Перевести
		["KillingBlow"] = {
			["Name"] = "Killing Blow",
			["Desc"] = "Display a message about your killing blow",
		},
		-- РУС Перевести
		["PvPEmote"] = {
			["Name"] = "PVP Emote",
			["Desc"] = "Make a silly emote at the player you just killed (Kkthnx spits on you!)",
		},
		-- РУС Перевести
		["ProfessionTabs"] = {
			["Name"] = "Enhanced Profession Tabs",
			["Desc"] = "Makes it easier to get to your professions and keep them orderly",
		},

		["SlotDurability"] = {
			["Name"] = "Прочность вещей",
			["Desc"] = "Показывать прочность вещей в окне персонажа",
		},

		["CharacterInfo"] = {
			["Name"] = "Окно персонажа",
			["Desc"] = "Показывает уровень предметов, наложенные улучшения и камни в окне персонажа",
		},
	},

	-- Filger Local
	["Filger"] = {
		["Enable"] = {
			["Name"] = "Включить откаты",
			["Desc"] = PerformanceIncrease,
		},

		["TestMode"] = {
			["Name"] = "Тестовый режим",
		},

		["MaxTestIcon"] = {
			["Name"] = "Максимум иконок для теста",
			["Desc"] = "Количество иконок для теста",
		},

		["ShowTooltip"] = {
			["Name"] = "Показывать подсказку",
		},

		["DisableCD"] = {
			["Name"] = "Отключить время восстановления",
		},

		["BuffSize"] = {
			["Name"] = "Размер баффов",
		},
		-- РУС перевести
		["CooldownSize"] = {
			["Name"] = "Cooldown Size",
		},

		["PvPSize"] = {
			["Name"] = "Размер PVP иконок",
		},

		["Texture"] = {
			["Name"] = "Текстура панелей",
		},
	},

	-- Filger Local
	["Firestorm"] = {
		["ChatFilter"] = {
			["Name"] = "Firestorm Chat Filter",
			["Desc"] = "This will filter all the 'AutoBroadcast' and more to make chat more retail like",
		},
	},

	-- Unitframe Local
	["Unitframe"] = {
		["ClassResource"] = {
			["Name"] = "Ресурсы класса",
			["Desc"] = "Показывать ресурсы класса на рамке игрока (Комбо-очки, Руны...)",
		},
		-- РУС перевести
		["CastbarLatency"] = {
			["Name"] = "Castbar Latency",
		},

		["MouseoverHighlight"] = {
			["Name"] = "Подсветка мышкой",
			["Desc"] = "Подсвечивает полосу ХП при наведении мыши (Работает только на Цели и Группе на данный момент!)",
		},

		["CastbarHeight"] = {
			["Name"] = "Высота полосы заклинаний",
		},
		-- РУС перевести
		["DecimalLength"] = {
			["Name"] = "Decimal Length",
			["Desc"] = "Controls the amount of decimals used in values displayed on elements like NamePlates and UnitFrames.",
		},

		["CastbarIcon"] = {
			["Name"] = "Иконка заклинаний",
			["Desc"] = "показывает иконку рядом с полосой заклинаний",
		},

		["CombatFade"] = {
			["Name"] = "Скрывать вне боя",
			["Desc"] = "Скрывает рамку когда вы не в бою, не произносите заклинаний или не выбрана цель (Работает на рамку игрока и питомца)",
		},

		["OnlyShowPlayerDebuff"] = {
			["Name"] = "Только ваши дебаффы",
			["Desc"] = "Показывает на рамке Цели только ваши дебаффы",
		},
		-- РУС перевести
		["PlayerBuffs"] = {
			["Name"] = "Player Buffs",
			["Desc"] = "Display your buffs under the player frame",
		},
		-- РУС перевести
		["PortraitTimers"] = {
			["Name"] = "Portrait Timers",
			["Desc"] = "Displays important PvP buffs/debuffs with timers on your Portraits",
		},

		["Castbars"] = {
			["Name"] = "Включить полосы заклинаний",
			["Desc"] = "Показывает полосу заклинаний у рамок",
		},
		-- РУС перевести
		["CastbarTicks"] = {
			["Name"] = "Show Castbar Ticks",
			["Desc"] = "Display tick marks on the castbar for channelled spells. This will adjust automatically for spells like Drain Soul and add additional ticks based on haste.",
		},

		["CastbarWidth"] = {
			["Name"] = "Ширина полосы заклинаний",
		},
		-- РУС перевести
		["CastbarTicksWidth"] = {
			["Name"] = "Castbar Ticks Width",
		},
		-- РУС перевести
		["CastClassColor"] = {
			["Name"] = "Class Castbars",
			["Desc"] = "Color castbars by the class of player units.",
		},
		-- РУС перевести
		["CastReactionColor"] = {
			["Name"] = "Reaction Castbars",
			["Desc"] = "Color castbars by the reaction type of non-player units.",
		},
		-- РУС перевести
		["DebuffsOnTop"] = {
			["Name"] = "Debuffs On Top",
			["Desc"] = "Display debuffs ontop and buffs on the bottom (affects only Target Frame)",
		},
		-- РУС перевести
		["Enable"] = {
			["Name"] = "Enable Unitframes",
		},
		-- РУС перевести
		["Font"] = {
			["Name"] = "Шрифт",
		},
		-- РУС перевести
		["GlobalCooldown"] = {
			["Name"] = "Global Cooldown",
			["Desc"] = "Display a global CD on the unit frames healthbar (only shows for player frame)",
		},

		["TargetHighlight"] = {
			["Name"] = "Target Highlight",
			["Desc"] = "Highlight your current selected party target",
		},

		["PowerPredictionBar"] = {
			["Name"] = "Power Prediction Bar",
			["Desc"] = "Display a bar at which determines how much a spell will cost of power?",
		},

		["Smooth"] = {
			["Name"] = "Smooth Bars",
			["Desc"] = "Bars will transition smoothly."..PerformanceIncrease,
		},

		["SmoothSpeed"] = {
			["Name"] = "Smooth Speed",
			["Desc"] = "How fast the bars will transition smoothly.",
		},

		["Texture"] = {
			["Name"] = "Statusbar Texture",
		},

		["ThreatPercent"] = {
			["Name"] = "Threat Percent",
			["Desc"] = "Enable threat percent on the target/focus frames",
		},

		["PortraitStyle"] = {
			["Name"] = "Portrait Style",
			["Desc"] = "2D, Class Icons, Blizzlike and more |n|n3D Portraits could degrade performance",
		},

		["NumberPrefixStyle"] = {
			["Name"] = "Unit Prefix Style",
			["Desc"] = "The unit prefixes you want to use when values are shortened in KkthnxUI. This is mostly used on UnitFrames.",
		},
	},

	-- Arena Local
	["Arena"] = {
		["Castbars"] = {
			["Name"] = "Включить полосы заклинаний",
		},

		["CastbarIcon"] = {
			["Name"] = "Иконка заклинаний",
			["Desc"] = "Показывает иконку заклинания рядом с полосой",
		},

		["DecimalLength"] = {
			["Name"] = "Decimal Length",
			["Desc"] = "Controls the amount of decimals used in values displayed on elements like NamePlates and UnitFrames.",
		},

		["Enable"] = {
			["Name"] = "Включить панели арены",
		},

		["Font"] = {
			["Name"] = "Шрифт",
		},

		["Smooth"] = {
			["Name"] = "Smooth Bars",
			["Desc"] = "Bars will transition smoothly."..PerformanceIncrease,
		},

		["SmoothSpeed"] = {
			["Name"] = "Smooth Speed",
			["Desc"] = "How fast the bars will transition smoothly.",
		},

		["Texture"] = {
			["Name"] = "Текстура панелей",
		},

		["NumberPrefixStyle"] = {
			["Name"] = "Unit Prefix Style",
			["Desc"] = "The unit prefixes you want to use when values are shortened in KkthnxUI. This is mostly used on UnitFrames.",
		},
	},

	-- Arena Local
	["Boss"] = {
		["Castbars"] = {
			["Name"] = "Enable Castbars",
		},

		["CastbarIcon"] = {
			["Name"] = "Castbar Icon",
			["Desc"] = "Create an icon beside the cast bar",
		},

		["CastbarHeight"] = {
			["Name"] = "Castbar Height",
		},

		["CastbarWidth"] = {
			["Name"] = "Castbar Width",
		},

		["DecimalLength"] = {
			["Name"] = "Decimal Length",
			["Desc"] = "Controls the amount of decimals used in values displayed on elements like NamePlates and UnitFrames.",
		},

		["Enable"] = {
			["Name"] = "Enable Boss Frames",
		},

		["Font"] = {
			["Name"] = "Font",
		},

		["Smooth"] = {
			["Name"] = "Smooth Bars",
			["Desc"] = "Bars will transition smoothly."..PerformanceIncrease,
		},

		["SmoothSpeed"] = {
			["Name"] = "Smooth Speed",
			["Desc"] = "How fast the bars will transition smoothly.",
		},

		["Texture"] = {
			["Name"] = "Statusbar Texture",
		},

		["ThreatPercent"] = {
			["Name"] = "Threat Percent",
			["Desc"] = "Enable threat percent on the boss frame",
		},

		["NumberPrefixStyle"] = {
			["Name"] = "Unit Prefix Style",
			["Desc"] = "The unit prefixes you want to use when values are shortened in KkthnxUI. This is mostly used on UnitFrames.",
		},

		["PortraitStyle"] = {
			["Name"] = "Portrait Style",
			["Desc"] = "2D, Class Icons, Blizzlike and more |n|n3D Portraits could degrade performance",
		},
	},

	-- Party Local
	["Party"] = {
		["Castbars"] = {
			["Name"] = "Включить полосы заклинаний",
		},
		-- РУС перевести
		["CastbarIcon"] = {
			["Name"] = "Иконка заклинаний",
			["Desc"] = "Create an icon beside the cast bar",
		},

		["Enable"] = {
			["Name"] = "Включить окно группы",
		},
		-- РУС перевести
		["MouseoverHighlight"] = {
			["Name"] = "Mouseover Highlight",
			["Desc"] = "Highlight a units Health Bar when you are moused over them. (Only works for Target and Party right now!)",
		},
		-- РУС перевести
		["DecimalLength"] = {
			["Name"] = "Decimal Length",
			["Desc"] = "Controls the amount of decimals used in values displayed on elements like NamePlates and UnitFrames.",
		},
		-- РУС перевести
		["PartyAsRaid"] = {
			["Name"] = "Party as Raid Frames",
			["Desc"] = "Check this if you want to use the Raidframes instead of the Partyframes.",
		},
		-- РУС перевести
		["PortraitTimers"] = {
			["Name"] = "Portrait Timers",
			["Desc"] = "Displays important PvP buffs/debuffs with timers on your Portraits",
		},

		["ShowBuffs"] = {
			["Name"] = "Показывать баффы",
			["Desc"] = "Отображать баффы на окнах группы",
		},
		-- РУС перевести
		["ShowPlayer"] = {
			["Name"] = "Show Player In Party",
			["Desc"] = "Display your self in the party frames or not. Hell I don't care",
		},

		["Font"] = {
			["Name"] = "Шрифт",
		},
		-- РУС перевести
		["Smooth"] = {
			["Name"] = "Smooth Bars",
			["Desc"] = "Bars will transition smoothly." .. PerformanceIncrease,
		},
		-- РУС перевести
		["SmoothSpeed"] = {
			["Name"] = "Smooth Speed",
			["Desc"] = "How fast the bars will transition smoothly.",
		},

		["TargetHighlight"] = {
			["Name"] = "Target Highlight",
			["Desc"] = "Highlight your current selected party target",
		},

		["Texture"] = {
			["Name"] = "Текстура панелей",
		},

		["PortraitStyle"] = {
			["Name"] = "Portrait Style",
			["Desc"] = "2D, Class Icons, Blizzlike and more |n|n3D Portraits could degrade performance",
		},

		["NumberPrefixStyle"] = {
			["Name"] = "Unit Prefix Style",
			["Desc"] = "The unit prefixes you want to use when values are shortened in KkthnxUI. This is mostly used on UnitFrames.",
		},
	},

	-- Raidframe Local
	["Raid"] = {
		["AuraWatch"] = {
			["Name"] = "Aura Watch Timers",
			["Desc"] = "Display a timer on debuff icons created by Debuff Watch",
		},

		["AuraWatchIconSize"] = {
			["Name"] = "Aura Watch Icon Size",
		},

		["AuraWatchTexture"] = {
			["Name"] = "Aura Watch Texture",
			["Desc"] = "Display a colored texture over your aura watch corner icons. Disable this if you want to see the spell icon instead",
		},

		["RaidTools"] = {
			["Name"] = "Raid Utility",
			["Desc"] = "Enables the 'Raid Control' utility panel",
		},

		["RaidLayout"] = {
			["Name"] = "Raid Layout",
			["Desc"] = "Choose between a Healer or Damage raidframe layout"
		},

		["TargetHighlight"] = {
			["Name"] = "Target Highlight",
			["Desc"] = "Highlight your current selected raid target"
		},

		["AuraDebuffIconSize"] = {
			["Name"] = "Aura Debuff Icon Size",
		},

		["DeficitThreshold"] = {
			["Name"] = "Deficit Threshold",
			["Desc"] = "Show health deficit when it's more than displayed value",
		},

		["ColorHealthByValue"] = {
			["Name"] = "Health By Value",
			["Desc"] = "Color health by amount remaining.",
		},

		["Enable"] = {
			["Name"] = "Enable Raid Frames",
		},

		["Height"] = {
			["Name"] = "Raid Height",
		},

		["RaidGroups"] = {
			["Name"] = "Raid Groups",
			["Desc"] = "Number of groups in the raid",
		},

		["Width"] = {
			["Name"] = "Raid Width",
		},

		["MainTankFrames"] = {
			["Name"] = "Main Tank Frames",
			["Desc"] = "You know the people who take all the damage?",
		},

		["ManabarShow"] = {
			["Name"] = "Manabar Display",
			["Desc"] = "Off or on. Its a 50% chance here",
		},

		["MaxUnitPerColumn"] = {
			["Name"] = "Max Unit Per Column",
			["Desc"] = "How many frame will display per row/column",
		},

		["RaidUtility"] = {
			["Name"] = RAID_CONTROL,
			["Desc"] = "Enables the custom Raid Control panel.",
		},

		["ShowMouseoverHighlight"] = {
			["Name"] = "Show Mouseover Highlight",
			["Desc"] = "We can see better!",
		},

		["ShowNotHereTimer"] = {
			["Name"] = "Not Here Timer (AFK)",
			["Desc"] = "Display when someone is AFK in your raid",
		},

		["ShowRolePrefix"] = {
			["Name"] = "Show Role Prefix",
			["Desc"] = "Display an H for the healer or T for the tank",
		},

		["Smooth"] = {
			["Name"] = "Smooth",
			["Desc"] = "Bars will transition smoothly."..PerformanceIncrease,
		},

		["SmoothSpeed"] = {
			["Name"] = "Smooth Speed",
			["Desc"] = "How fast the bars will transition smoothly.",
		},

		["Texture"] = {
			["Name"] = "Statusbar Texture",
		},

		["Font"] = {
			["Name"] = "Font",
		},

		["GroupBy"] = {
			["Name"] = "Group By",
			["Desc"] = "Set the order that the group will sort.",
		},
	},

	-- Worldmap Local
	["WorldMap"] = {
		["AlphaWhenMoving"] = {
			["Name"] = "Прозрачность при движении",
			["Desc"] = "Alpha value at which the map will fade",
		},

		["Coordinates"] = {
			["Name"] = "Координаты",
			["Desc"] = "Размещает координаты на карте мира",
		},
		-- РУС перевести
		["FadeWhenMoving"] = {
			["Name"] = "Fade When Moving",
			["Desc"] = "Map Opacity When Moving",
		},

		["SmallWorldMap"] = {
			["Name"] = "Маленькая карта мира",
			["Desc"] = "Уменьшает развер карты мира",
		},
		-- РУС перевести
		["WorldMapPlus"] = {
			["Name"] = "WorldMap Plus",
			["Desc"] = "If checked, a checkbox/quest URLs will be shown at the top of the map which will allow you to toggle unexplored areas and obtain quest/arena link info directly.",
		},
	},

	-- Tooltip Local
	["Tooltip"] = {
		["PlayerRoles"] = {
			["Name"] = ROLE,
			["Desc"] = "Показывать роль игрока в подсказке",
		},

		["CursorAnchor"] = {
			["Name"] = "Возле курсора",
			["Desc"] = "Показывать подсказку рядом с курсором мышки",
		},

		["Enable"] = {
			["Name"] = "Включить подсказки",
		},

		["ShowMount"] = {
			["Name"] = "Средство передвижения",
			["Desc"] = "Показывать информацию о средстве передвижения на котором сидит игрок",
		},

		["FontOutline"] = {
			["Name"] = "Обводка шрифта",
		},

		["FontSize"] = {
			["Name"] = "Размер шрифта",
		},

		["CursorAnchorX"] = {
			["Name"] = "Возле курсора, отступ на X",
		},

		["CursorAnchorY"] = {
			["Name"] = "Возле курсора, отступ на Y",
		},

		["GuildRanks"] = {
			["Name"] = "Guild Ranks",
			["Desc"] = "Display players guild ranks",
		},

		["HealthbarHeight"] = {
			["Name"] = "Высота полосы ХП",
		},

		["HealthBarText"] = {
			["Name"] = "Текст на полосе ХП",
			["Desc"] = "Показывает текст на полоске ХП в подсказке",
		},

		["TargetInfo"] = {
			["Name"] = "Target Info",
			["Desc"] = "When in a raid group display if anyone in your raid is targeting the current tooltip unit.",
		},

		["Icons"] = {
			["Name"] = "Иконки",
			["Desc"] = "Показывает иконки в подсказках",
		},

		["InspectInfo"] = {
			["Name"] = "Inspect Info",
			["Desc"] = "Display a players item level and spec (you need to be holding the shift key down too)",
		},

		["NpcID"] = {
			["Name"] = "NPC IDs",
			["Desc"] = "Display the npc ID when mousing over a npc tooltip.",
		},

		["ItemQualityBorder"] = {
			["Name"] = "ItemQuality Border",
			["Desc"] = "Display item quality colors on the border",
		},

		["PlayerTitles"] = {
			["Name"] = "Звания игроков",
			["Desc"] = "Показывает звания у игроко",
		},

		["SpellID"] = {
			["Name"] = "Spell/Item IDs",
			["Desc"] = "Display the spell or item ID when mousing over a spell or item tooltip.",
		},

		["Texture"] = {
			["Name"] = "Текстура панелей",
		},
	},
}
