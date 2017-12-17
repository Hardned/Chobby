--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- Planet config

local function GetPlanet(planetUtilities, planetID)
	
	local image = LUA_DIRNAME .. "images/planets/terran01.png"
	
	local planetData = {
		name = "Fel Diacia",
		startingPlanet = false,
		mapDisplay = {
			x = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][1]) or 0.57,
			y = (planetUtilities.planetPositions and planetUtilities.planetPositions[planetID][2]) or 0.61,
			image = image,
			size = planetUtilities.PLANET_SIZE_MAP,
		},
		infoDisplay = {
			image = image,
			size = planetUtilities.PLANET_SIZE_INFO,
			backgroundImage = planetUtilities.backgroundImages[math.floor(math.random()*#planetUtilities.backgroundImages) + 1],
			terrainType = "Steppe",
			radius = "7440 km",
			primary = "Woondai",
			primaryType = "G8V",
			milRating = 1,
			text = [[The enemy has dug into a reasonable defensive position, assisted by aircraft. Supplement your ground forces with Thunderbirds to disarm enemy defences and Swifts to shoot down their planes.]]
		},
		tips = {
			{
				image = "unitpics/staticrearm.png",
				text = [[After firing their payload, bombers must retreat to base and rearm. The Airplane Plant has one rearm pad. If you have a large number of bombers, build an Airpad so your bombers can get back into the fight sooner. ]]
			},
			{
				image = "unitpics/bomberdisarm.png",
				text = [[The Thunderbird can disarm a large army along its bombing path. Use the manual fire (default hotkey D) to fire immediately.]]
			},
			{
				image = "unitpics/planefighter.png",
				text = [[Swifts are good for intercepting enemy bombers or protecting your own. Use the manual fire (default hotkey D) to activate a speed boost.]]
			},
		},
		gameConfig = {
			mapName = "Vittra v2.1",
			playerConfig = {
				startX = 2500,
				startZ = 4500,
				allyTeam = 0,
				commanderParameters = {
					facplop = true,
					defeatIfDestroyedObjectiveID = 2,
				},
				extraUnlocks = {
					"factoryplane",
					"planecon",
					"planefighter",
					"bomberriot",
					"bomberdisarm",
					"staticrearm",
				},
				startUnits = {
					{
						name = "factoryplane",
						x = 2656,
						z = 4680,
						facing = 2,
					},
 					{
						name = "staticcon",
						x = 2536,
						z = 4808,
						facing = 2,
						selfPatrol = true,
					},
 					{
						name = "staticmex",
						x = 3096,
						z = 4728,
						facing = 0,
					},
 					{
						name = "staticmex",
						x = 3240,
						z = 5016,
						facing = 0,
					},
 					{
						name = "staticmex",
						x = 3432,
						z = 4696,
						facing = 0,
					},
 					{
						name = "staticmex",
						x = 1672,
						z = 4648,
						facing = 0,
					},
 					{
						name = "staticmex",
						x = 1864,
						z = 4872,
						facing = 0,
					},
 					{
						name = "staticmex",
						x = 2040,
						z = 4664,
						facing = 0,
					},
 					{
						name = "planecon",
						x = 2709,
						z = 4418,
						facing = 2,
					},
 					{
						name = "energysolar",
						x = 3144,
						z = 4824,
						facing = 2,
					},
 					{
						name = "energysolar",
						x = 3272,
						z = 4888,
						facing = 2,
					},
 					{
						name = "energysolar",
						x = 3304,
						z = 4744,
						facing = 2,
					},
 					{
						name = "energysolar",
						x = 1928,
						z = 4744,
						facing = 2,
					},
 					{
						name = "energysolar",
						x = 1768,
						z = 4728,
						facing = 2,
					},
 					{
						name = "turretlaser",
						x = 1616,
						z = 4768,
						facing = 3,
					},
 					{
						name = "turretlaser",
						x = 1472,
						z = 4384,
						facing = 2,
					},
 					{
						name = "turretlaser",
						x = 3552,
						z = 4752,
						facing = 1,
					},
 					{
						name = "turretlaser",
						x = 3712,
						z = 4416,
						facing = 2,
					},
 					{
						name = "turretlaser",
						x = 2176,
						z = 4320,
						facing = 2,
					},
 					{
						name = "turretlaser",
						x = 3072,
						z = 4432,
						facing = 2,
					},
 					{
						name = "staticradar",
						x = 3552,
						z = 4416,
						facing = 2,
					},
 					{
						name = "staticradar",
						x = 1584,
						z = 4416,
						facing = 2,
					},
 					{
						name = "cloakraid",
						x = 2175,
						z = 4450,
						facing = 0,
					},
 					{
						name = "cloakraid",
						x = 2225,
						z = 4450,
						facing = 0,
					},
 					{
						name = "cloakraid",
						x = 2275,
						z = 4450,
						facing = 0,
					},
 					{
						name = "cloakraid",
						x = 2325,
						z = 4450,
						facing = 0,
					},
 					{
						name = "cloakraid",
						x = 2375,
						z = 4450,
						facing = 0,
					},
 					{
						name = "cloakraid",
						x = 2177,
						z = 4520,
						facing = 0,
					},
 					{
						name = "cloakraid",
						x = 2224,
						z = 4520,
						facing = 0,
					},
 					{
						name = "cloakraid",
						x = 2275,
						z = 4520,
						facing = 0,
					},
 					{
						name = "cloakraid",
						x = 2329,
						z = 4520,
						facing = 0,
					},
 					{
						name = "cloakraid",
						x = 2384,
						z = 4520,
						facing = 0,
					},
 					{
						name = "bomberdisarm",
						x = 2604,
						z = 4672,
						facing = 3,
					},
				}
			},
			aiConfig = {
				{
					humanName = "Iwainiul",
					aiLib = "Circuit_difficulty_autofill",
					bitDependant = true,
					--aiLib = "Null AI",
					--bitDependant = false,
					commanderParameters = {
						facplop = false,
					},
					allyTeam = 1,
					unlocks = {
						"staticcon",
						"turretriot",
						"staticradar",
						"staticmex",
						"energysolar",
						"energywind",
						"factoryspider",
						"spidercon",
						"spiderscout",
						"spiderassault",
						"spideremp",
						"spiderriot",
						"spiderskirm",
						"spiderantiheavy",
						"factoryshield",
						"shieldcon",
						"shieldraid",
						"shieldriot",
						"shieldskirm",
						"shieldassault",
						"shieldfelon",
					},
					difficultyDependantUnlocks = {
						[3] = {"spidercrabe"},
						[4] = {"spidercrabe","shieldarty"},
						--[4] = {"planeheavyfighter","bomberdisarm"},
					},
					startX = 2500,
					startZ = 500,
					commanderLevel = 6,
					commander = {
						name = "Yangdi",
						chassis = "recon",
						decorations = {
							"skin_recon_leopard",
						},
						modules = { 
							"commweapon_heavymachinegun",
							"commweapon_concussion",
							"module_autorepair",
							"module_autorepair",
							"module_ablative_armor",
							"module_ablative_armor",
							"module_adv_targeting",
							"module_high_power_servos",
							"module_high_power_servos",
							"module_adv_nano",
						}
					},
					midgameUnits = {
						{
							name = "planeheavyfighter",
							x = 2820,
							z = 200,
							facing = 0,
							spawnRadius = 50,
							delay = 200,
							orbitalDrop = false,
						},
						-- Raptors at 2:30
						{
							name = "shieldaa",
							x = 2820,
							z = 200,
							facing = 0,
							spawnRadius = 50,
							delay = 2.5*30*60,
							orbitalDrop = true,
						},
						{
							name = "shieldaa",
							x = 2820,
							z = 200,
							facing = 0,
							spawnRadius = 50,
							delay = 2.5*30*60,
							orbitalDrop = true,
						},
						{
							name = "planeheavyfighter",
							x = 2820,
							z = 200,
							facing = 0,
							spawnRadius = 50,
							delay = 2.5*30*60,
							orbitalDrop = false,
						},
						{
							name = "planeheavyfighter",
							x = 2820,
							z = 200,
							facing = 0,
							spawnRadius = 50,
							delay = 2.5*30*60,
							orbitalDrop = false,
							difficultyAtLeast = 3,
						},
						{
							name = "planeheavyfighter",
							x = 2820,
							z = 200,
							facing = 0,
							spawnRadius = 50,
							delay = 2.5*30*60,
							orbitalDrop = false,
							difficultyAtLeast = 4,
						},
						-- Bombers at 4:30
						{
							name = "bomberprec",
							x = 2820,
							z = 200,
							facing = 0,
							spawnRadius = 50,
							delay = 4.5*30*60,
							orbitalDrop = false,
						},
						{
							name = "bomberprec",
							x = 2820,
							z = 200,
							facing = 0,
							spawnRadius = 50,
							delay = 4.5*30*60,
							orbitalDrop = false,
							difficultyAtMost = 3,
						},
						{
							name = "bomberprec",
							x = 2820,
							z = 200,
							facing = 0,
							spawnRadius = 50,
							delay = 4.5*30*60,
							orbitalDrop = false,
							difficultyAtLeast = 3,
							difficultyAtMost = 3,
						},
						{
							name = "bomberheavy",
							x = 2820,
							z = 200,
							facing = 0,
							spawnRadius = 50,
							delay = 4.5*30*60,
							orbitalDrop = false,
							difficultyAtLeast = 4,
						},
						-- Both at at 7:30
						{
							name = "shieldaa",
							x = 2820,
							z = 200,
							facing = 0,
							spawnRadius = 50,
							delay = 7.5*30*60,
							orbitalDrop = true,
						},
						{
							name = "shieldaa",
							x = 2820,
							z = 200,
							facing = 0,
							spawnRadius = 50,
							delay = 7.5*30*60,
							orbitalDrop = true,
						},
						{
							name = "planeheavyfighter",
							x = 2820,
							z = 200,
							facing = 0,
							spawnRadius = 50,
							delay = 7.5*30*60,
							orbitalDrop = false,
						},
						{
							name = "planeheavyfighter",
							x = 2820,
							z = 200,
							facing = 0,
							spawnRadius = 50,
							delay = 7.5*30*60,
							orbitalDrop = false,
						},
						{
							name = "bomberprec",
							x = 2820,
							z = 200,
							facing = 0,
							spawnRadius = 50,
							delay = 2.5*30*60,
							orbitalDrop = false,
							difficultyAtLeast = 3,
							difficultyAtMost = 3,
						},
						{
							name = "bomberheavy",
							x = 2820,
							z = 200,
							facing = 0,
							spawnRadius = 50,
							delay = 2.5*30*60,
							orbitalDrop = false,
							difficultyAtLeast = 3,
						},
					},
					startUnits = {
						{
							name = "turretheavylaser",
							x = 1880,
							z = 2264,
							facing = 0,
						},
						{
							name = "turretheavylaser",
							x = 4632,
							z = 1752,
							facing = 0,
						},
						{
							name = "turretheavylaser",
							x = 520,
							z = 1672,
							facing = 0,
						},
						{
							name = "turretheavylaser",
							x = 3320,
							z = 2280,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 680,
							z = 424,
							facing = 3,
							difficultyAtLeast = 2,
						},
 						{
							name = "staticmex",
							x = 3976,
							z = 1304,
							facing = 3,
							difficultyAtLeast = 2,
						},
 						{
							name = "staticmex",
							x = 1064,
							z = 1256,
							facing = 3,
							difficultyAtLeast = 2,
						},
						{
							name = "staticmex",
							x = 4600,
							z = 472,
							facing = 3,
							difficultyAtLeast = 2,
						},
 						{
							name = "energysolar",
							x = 1096,
							z = 1320,
							facing = 3,
							difficultyAtLeast = 2,
						},
 						{
							name = "energysolar",
							x = 1016,
							z = 1320,
							facing = 3,
							difficultyAtLeast = 2,
						},
 						{
							name = "energysolar",
							x = 3944,
							z = 1368,
							facing = 3,
							difficultyAtLeast = 2,
						},
 						{
							name = "energysolar",
							x = 4024,
							z = 1368,
							facing = 3,
							difficultyAtLeast = 2,
						},
 						{
							name = "energysolar",
							x = 712,
							z = 488,
							facing = 3, 
							difficultyAtLeast = 2,
						},
 						{
							name = "energysolar",
							x = 632,
							z = 488,
							facing = 3,
							difficultyAtLeast = 2,
						},
 						{
							name = "energysolar",
							x = 4648,
							z = 536,
							facing = 3,
							difficultyAtLeast = 2,
						},
 						{
							name = "energysolar",
							x = 4568,
							z = 536,
							facing = 3,
							difficultyAtLeast = 2,
						},
						{
							name = "staticcon",
							x = 2288,
							z = 376,
							facing = 0,
							selfPatrol = true,
							difficultyAtLeast = 2,
						},
 						{
							name = "energypylon",
							x = 2792,
							z = 392,
							facing = 3,
							difficultyAtLeast = 3,
						},
 						{
							name = "energypylon",
							x = 2184,
							z = 408,
							facing = 3,
							difficultyAtLeast = 3,
						},
 						{
							name = "energyfusion",
							x = 2584,
							z = 32,
							facing = 0,
							difficultyAtLeast = 3,
						},
 						{
							name = "staticmex",
							x = 2568,
							z = 1240,
							facing = 0,
							difficultyAtLeast = 3,
						},
 						{
							name = "turretaalaser",
							x = 2568,
							z = 1112,
							facing = 0,
							difficultyAtLeast = 3,
						},
						{
							name = "staticshield",
							x = 4632,
							z = 1552,
							facing = 0,
							difficultyAtLeast = 3,
						},
						{
							name = "staticshield",
							x = 520,
							z = 1472,
							facing = 0,
							difficultyAtLeast = 3,
						},
 						{
							name = "staticmex",
							x = 1624,
							z = 2072,
							facing = 0,
							difficultyAtLeast = 4,
						},
 						{
							name = "staticmex",
							x = 488,
							z = 2200,
							facing = 0,
							difficultyAtLeast = 4,
						},
 						{
							name = "staticmex",
							x = 3672,
							z = 2088,
							facing = 0,
							difficultyAtLeast = 4,
						},
 						{
							name = "staticmex",
							x = 4808,
							z = 2216,
							facing = 0,
							difficultyAtLeast = 4,
						},
 						{
							name = "turretriot",
							x = 4728,
							z = 2312,
							facing = 0,
							difficultyAtLeast = 4,
						},
 						{
							name = "turretmissile",
							x = 4624,
							z = 2256,
							facing = 0,
							difficultyAtLeast = 4,
						},
 						{
							name = "turretriot",
							x = 552,
							z = 2312,
							facing = 0,
							difficultyAtLeast = 4,
						},
 						{
							name = "turretmissile",
							x = 656,
							z = 2240,
							facing = 0,
							difficultyAtLeast = 4,
						},
						{
							name = "staticcon",
							x = 2688,
							z = 376,
							facing = 0,
							selfPatrol = true,
							difficultyAtLeast = 4,
						},
						{
							name = "spideremp",
							x = 2000,
							z = 1200,
							facing = 0,
							difficultyAtLeast = 4,
						},
						{
							name = "spideremp",
							x = 2100,
							z = 1200,
							facing = 0,
							difficultyAtLeast = 4,
						},
						--
						{
							name = "spiderriot",
							x = 2000,
							z = 1000,
							facing = 0,
						},
						{
							name = "spiderriot",
							x = 2100,
							z = 1000,
							facing = 0,
						},
						{
							name = "spiderskirm",
							x = 2000,
							z = 1100,
							facing = 0,
						},
						{
							name = "spiderskirm",
							x = 2100,
							z = 1100,
							facing = 0,
						},
						{
							name = "staticrearm",
							x = 2220,
							z = 220,
							facing = 0,
						},
						{
							name = "staticmex",
							x = 3032,
							z = 584,
							facing = 0,
						},
 						{
							name = "staticmex",
							x = 1928,
							z = 632,
							facing = 0,
						},
 						{
							name = "staticmex",
							x = 1752,
							z = 376,
							facing = 0,
						},
 						{
							name = "staticmex",
							x = 3384,
							z = 568,
							facing = 0,
						},
 						{
							name = "staticmex",
							x = 1624,
							z = 712,
							facing = 0,
						},
 						{
							name = "staticmex",
							x = 3208,
							z = 264,
							facing = 0,
						},
 						{
							name = "turretriot",
							x = 280,
							z = 1624,
							facing = 0,
						},
 						{
							name = "turretlaser",
							x = 400,
							z = 1664,
							facing = 0,
						},
 						{
							name = "turretlaser",
							x = 640,
							z = 1712,
							facing = 0,
						},
 						{
							name = "turretriot",
							x = 760,
							z = 1720,
							facing = 0,
						},
 						{
							name = "turretriot",
							x = 4880,
							z = 1720,
							facing = 0,
						},
 						{
							name = "turretriot",
							x = 4400,
							z = 1768,
							facing = 0,
						},
 						{
							name = "turretlaser",
							x = 4760,
							z = 1760,
							facing = 0,
						},
 						{
							name = "turretlaser",
							x = 4520,
							z = 1776,
							facing = 0,
						},
 						{
							name = "energysolar",
							x = 1624,
							z = 584,
							facing = 0,
						},
 						{
							name = "energysolar",
							x = 1752,
							z = 488,
							facing = 0,
						},
 						{
							name = "energysolar",
							x = 1816,
							z = 616,
							facing = 0,
						},
 						{
							name = "energysolar",
							x = 3336,
							z = 488,
							facing = 0,
						},
 						{
							name = "energysolar",
							x = 3240,
							z = 376,
							facing = 0,
						},
 						{
							name = "energysolar",
							x = 3112,
							z = 488,
							facing = 0,
						},
 						{
							name = "staticcon",
							x = 2488,
							z = 376,
							facing = 0,
							selfPatrol = true,
						},
 						{
							name = "factoryshield",
							x = 2352,
							z = 520,
							facing = 0,
						},
 						{
							name = "factoryspider",
							x = 2632,
							z = 504,
							facing = 0,
						},
 						{
							name = "turretriot",
							x = 1760,
							z = 2312,
							facing = 0,
						},
 						{
							name = "turretriot",
							x = 2000,
							z = 2232,
							facing = 0,
						},
 						{
							name = "turretlaser",
							x = 2120,
							z = 2208,
							facing = 0,
						},
 						{
							name = "turretlaser",
							x = 1640,
							z = 2352,
							facing = 0,
						},
 						{
							name = "turretaalaser",
							x = 664,
							z = 728,
							facing = 0,
						},
 						{
							name = "turretaalaser",
							x = 4472,
							z = 824,
							facing = 0,
						},
 						{
							name = "turretriot",
							x = 3200,
							z = 2248,
							facing = 0,
						},
 						{
							name = "turretriot",
							x = 3440,
							z = 2312,
							facing = 0,
						},
 						{
							name = "turretlaser",
							x = 3080,
							z = 2208,
							facing = 0,
						},
 						{
							name = "turretlaser",
							x = 3560,
							z = 2336,
							facing = 0,
						},
 						{
							name = "turretriot",
							x = 3112,
							z = 1384,
							facing = 0,
						},
 						{
							name = "turretriot",
							x = 3272,
							z = 1384,
							facing = 0,
						},
 						{
							name = "turretriot",
							x = 1992,
							z = 1352,
							facing = 0,
						},
 						{
							name = "staticradar",
							x = 1488,
							z = 848,
							facing = 0,
						},
 						{
							name = "turretriot",
							x = 1816,
							z = 1352,
							facing = 0,
						},
 						{
							name = "staticradar",
							x = 3664,
							z = 816,
							facing = 0,
						},
 						{
							name = "turretmissile",
							x = 1792,
							z = 864,
							facing = 0,
						},
 						{
							name = "turretmissile",
							x = 3408,
							z = 864,
							facing = 0,
						},
 						{
							name = "turretmissile",
							x = 3168,
							z = 768,
							facing = 0,
						},
 						{
							name = "turretmissile",
							x = 2112,
							z = 752,
							facing = 0,
						},
 						{
							name = "turretmissile",
							x = 2928,
							z = 768,
							facing = 0,
						},
 						{
							name = "turretaaflak",
							x = 2488,
							z = 472,
							facing = 0,
						},
 						{
							name = "turretmissile",
							x = 2448,
							z = 816,
							facing = 0,
						},
 						{
							name = "turretmissile",
							x = 2704,
							z = 720,
							facing = 0,
						},
 						{
							name = "turretlaser",
							x = 1472,
							z = 432,
							facing = 3,
						},
 						{
							name = "turretmissile",
							x = 1344,
							z = 640,
							facing = 3,
						},
 						{
							name = "turretlaser",
							x = 3680,
							z = 384,
							facing = 1,
						},
 						{
							name = "turretmissile",
							x = 3760,
							z = 624,
							facing = 1,
						},
					}
				},
			},
			defeatConditionConfig = {
				-- Indexed by allyTeam.
				[0] = { },
				[1] = {
					ignoreUnitLossDefeat = false,
					vitalCommanders = true,
					vitalUnitTypes = {
						"factoryshield",
						"factoryspider",
					},
					loseAfterSeconds = false,
					allyTeamLossObjectiveID = 1,
				},
			},
			objectiveConfig = {
				-- This is just related to displaying objectives on the UI.
				[1] = {
					description = "Destroy the enemy Commander and Factories",
				},
				[2] = {
					description = "Protect your Commander",
				},
			},
			bonusObjectiveConfig = {
				[1] = {
					victoryByTime = 15*60,
					image = planetUtilities.ICON_OVERLAY.CLOCK,
					description = "Win by 15:00",
					experience = planetUtilities.BONUS_EXP,
				},
				[2] = {
					onlyCountRemovedUnits = true,
					satisfyByTime = 6*60,
					comparisionType = planetUtilities.COMPARE.AT_LEAST,
					targetNumber = 4,
					enemyUnitTypes = {
						"turretheavylaser",
					},
					image = planetUtilities.ICON_DIR .. "turretheavylaser.png",
					imageOverlay = planetUtilities.ICON_OVERLAY.ATTACK,
					description = "Destroy 4 enemy Stingers before 6:00",
					experience = planetUtilities.BONUS_EXP,
				},
			}
		},
		completionReward = {
			experience = planetUtilities.MAIN_EXP,
			units = {
				"factoryplane",
				"planecon",
				"planefighter",
				"bomberdisarm",
			},
			modules = {
				"module_adv_nano_LIMIT_H_1",
			},
			abilities = {
			}
		},
	}
	
	return planetData
end

return GetPlanet
