local stableSubnameMap = {
	{"CircuitAIBeginner", "AI: Beginner"},
	{"CircuitAINovice", "AI: Novice"},
	{"CircuitAIEasy", "AI: Easy"},
	{"CircuitAINormal", "AI: Normal"},
	{"CircuitAIHard", "AI: Hard"},
	{"CircuitAIBrutal", "AI: Brutal"},
	{"CAI", "AI: Legacy"},
}

local devSubnameMap = {
	{"DevCircuitAIBeginner", "AI: Beginner (new)"},
	{"DevCircuitAINovice", "AI: Novice (new)"},
	{"DevCircuitAIEasy", "AI: Easy (new)"},
	{"DevCircuitAINormal", "AI: Normal (new)"},
	{"DevCircuitAIHard", "AI: Hard (new)"},
	{"DevCircuitAIBrutal", "AI: Brutal (new)"},
	{"CAI", "AI: Legacy"},
}

local function GetAiSimpleName(name)
	if name == "Null AI" then
		return "Inactive AI"
	end
	if string.find(name, "Chicken") then
		return name
	end
	local subnameMap = (WG.Chobby.Configuration:GetIsDevEngine() and devSubnameMap) or stableSubnameMap
	for i = 1, #subnameMap do
		if string.find(name, subnameMap[i][1]) then
			return subnameMap[i][2]
		end
	end
	return false
end

local simpleAiOrder = {
	["AI: Beginner (new)"] = -6,
	["AI: Novice (new)"] = -5,
	["AI: Easy (new)"] = -4,
	["AI: Normal (new)"] = -3,
	["AI: Hard (new)"] = -2,
	["AI: Brutal (new)"] = -1,
	["AI: Beginner"] = 0,
	["AI: Novice"] = 1,
	["AI: Easy"] = 2,
	["AI: Normal"] = 3,
	["AI: Hard"] = 4,
	["AI: Brutal"] = 5,
	["Inactive AI"] = 6,
	["Chicken: Beginner"] = 6.5,
	["Chicken: Very Easy"] = 7,
	["Chicken: Easy"] = 8,
	["Chicken: Normal"] = 9,
	["Chicken: Hard"] = 10,
	["Chicken: Suicidal"] = 11,
	["Chicken: Custom"] = 12,
	["AI: Legacy"] = 13,
}

local aiTooltip = {
	["AI: Beginner (new)"] = "Recommended for players with no strategy game experience.",
	["AI: Novice (new)"] = "Recommended for players with some strategy game experience, or experience with related genres (such as MOBA).",
	["AI: Easy (new)"] = "Recommended for experienced strategy gamers with some experience of streaming economy.",
	["AI: Normal (new)"] = "Recommended for veteran strategy gamers.",
	["AI: Hard (new)"] = "Recommended for veteran strategy gamers who aren't afraid of losing.",
	["AI: Brutal (new)"] = "Recommended for veterans of Zero-K.",
	["AI: Beginner"] = "Recommended for players with no strategy game experience.",
	["AI: Novice"] = "Recommended for players with some strategy game experience, or experience with related genres (such as MOBA).",
	["AI: Easy"] = "Recommended for experienced strategy gamers with some experience of streaming economy.",
	["AI: Normal"] = "Recommended for veteran strategy gamers.",
	["AI: Hard"] = "Recommended for veteran strategy gamers who aren't afraid of losing.",
	["AI: Brutal"] = "Recommended for veterans of Zero-K.",
	["AI: Legacy"] = "Older unsupported AI, still potentially challenging.",
	["Inactive AI"] = "This AI does absolutely nothing after spawning.",
	["Chicken: Beginner"] = "Defeat waves of aliens.",
	["Chicken: Very Easy"] = "Defeat waves of aliens.",
	["Chicken: Easy"] = "Defeat waves of aliens.",
	["Chicken: Normal"] = "Defeat waves of aliens.",
	["Chicken: Hard"] = "Defeat waves of aliens.",
	["Chicken: Suicidal"] = "Defeat waves of aliens. Good luck.",
	["Chicken: Custom"] = "Customizable chicken defense. Look in Adv Options.",
}

return {
	GetAiSimpleName = GetAiSimpleName,
	simpleAiOrder = simpleAiOrder,
	aiTooltip = aiTooltip
}
