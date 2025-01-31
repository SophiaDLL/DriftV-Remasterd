local function GetCorrectExpForLevel(level)
    if level < 1 or level > 8000 then
        error("Level must be between 1 and 8000")
    end

    local x1, y1 = 1, 50          -- Level 1: 50 XP
    local x2, y2 = 8000, 25e9     -- Level 8000: 25,000,000,000 XP

    local a = (y2 - y1) / (x2^2 - x1^2)
    local c = y1 - a * x1^2

    local xp = a * (level^2) + c

    return math.floor(xp + 0.5)
end

-- Example usage
print(GetCorrectExpForLevel(1))      -- Should print 50
print(GetCorrectExpForLevel(4000))   -- Should print an intermediate value
print(GetCorrectExpForLevel(8000))   -- Should print 25,000,000,000

-- local function GetCorrectExpForLevel(level)
--     local startingExp = 50  -- Lower starting XP to reduce overall scaling
--     local baseExp = startingExp * (1.25 ^ 24)  -- EXP at level 25 (this stays similar)
    
--     -- Adjust XP calculations to slow growth
--     if level <= 25 then
--         return math.floor(startingExp * (1.3 ^ (level - 1)))  -- Slightly slower growth
--     elseif level <= 50 then
--         local expAt25 = baseExp
--         return math.floor(expAt25 * (1.3 ^ (level - 25)))  -- Slower growth after level 25
--     elseif level <= 75 then
--         local expAt50 = baseExp * (1.3 ^ 25)  -- Slower growth at level 50
--         return math.floor(expAt50 * (1.4 ^ (level - 50)))  -- Slightly faster than previous growth
--     elseif level <= 100 then
--         local expAt75 = baseExp * (1.3 ^ 25) * (1.4 ^ 25)  -- After level 75
--         return math.floor(expAt75 * (1.5 ^ (level - 75)))  -- Normal growth rate up to level 100
--     elseif level <= 250 then
--         local expAt100 = baseExp * (1.3 ^ 25) * (1.4 ^ 25) * (1.5 ^ 25)  -- EXP at level 100
--         local multiplier = 1.1 ^ ((level - 100) / 3)  -- Slower multiplier growth after level 100
--         return math.floor(expAt100 * multiplier)
--     elseif level <= 500 then
--         local expAt250 = baseExp * (1.3 ^ 25) * (1.4 ^ 25) * (1.5 ^ 25) * (1.1 ^ 150)  -- EXP at level 250
--         local multiplier = 1.1 ^ ((level - 250) / 3)  -- More gradual growth after level 250
--         return math.floor(expAt250 * multiplier)
--     elseif level <= 1000 then
--         local expAt500 = baseExp * (1.3 ^ 25) * (1.4 ^ 25) * (1.5 ^ 25) * (1.1 ^ 150) * (1.1 ^ 250)  -- EXP at level 500
--         local multiplier = 1.05 ^ ((level - 500) / 3)  -- Slower growth after level 500
--         return math.floor(expAt500 * multiplier)
--     elseif level <= 8000 then
--         local expAt1000 = baseExp * (1.3 ^ 25) * (1.4 ^ 25) * (1.5 ^ 25) * (1.1 ^ 150) * (1.1 ^ 250) * (1.05 ^ 500)  -- EXP at level 1000
--         local multiplier = 1.02 ^ ((level - 1000) / 3)  -- Slow down the multiplier after level 1000
--         return math.floor(expAt1000 * multiplier)
--     else
--         error("Level must be between 1 and 8000")
-- 		print(GetCorrectExpForLevel(1500))  -- Should print a value close to 1.5 million XP
--     end
-- end




function GetPlayerLevelFromXp(xp)
	local xp = xp -- Duh
	local found = false
	local level = 1
	while not found do
		if xp < GetCorrectExpForLevel(level) then
			break
		else
			level = level + 1
		end
	end
	return level
end

function DisplayRankBar(oldxp, newxp, oldlevel, newlevel, take)
	Citizen.CreateThread(function()
		local XP_StartLimit_RankBar = math.floor(oldxp)
		local XP_EndLimit_RankBar = math.floor(GetCorrectExpForLevel(newlevel))
		local playersPreviousXP = math.floor(oldxp)
		local playersCurrentXP = math.floor(p:getExp())
		local CurrentPlayerLevel = math.floor(GetPlayerLevelFromXp(p:getExp()))
		local TakingAwayXP = take
		CreateRankBar(XP_StartLimit_RankBar, XP_EndLimit_RankBar, playersPreviousXP, playersCurrentXP, CurrentPlayerLevel, TakingAwayXP)
	end)
end

function CreateRankBar(XP_StartLimit_RankBar, XP_EndLimit_RankBar, playersPreviousXP, playersCurrentXP, CurrentPlayerLevel, TakingAwayXP)
	local RankBarColor = 0 -- The Normal Online Ranbar color (IS NOT used for the globes!)
	if TakingAwayXP and XNL_UseRedBarWhenLosingXP then
		RankBarColor = 6 -- Dark Red
	end

	if not HasHudScaleformLoaded(19) then							-- Here we check if the scaleform has been loaded or not
        RequestHudScaleform(19)										-- If it's not loaded we will request (load) it
		while not HasHudScaleformLoaded(19) do						-- here we will wait until it has loaded
			Wait(1)													-- you will HAVE to put this wait here to prevent script hang and game freezing!
		end
    end
	
	BeginScaleformMovieMethodHudComponent(19, "SET_COLOUR")
	PushScaleformMovieFunctionParameterInt(RankBarColor) -- 116 is the "normal multiplayer rankbar color"
    EndScaleformMovieMethodReturn()

	
	--[[
	    PURE_WHITE 	= 0
		WHITE 		= 1
		BLACK 		= 2
		GREY 		= 3
		GREYLIGHT 	= 4
		GREYDARK 	= 5
		RED 		= 6
		REDLIGHT 	= 7
		REDDARK 	= 8
		BLUE 		= 9
		BLUELIGHT 	= 10
		BLUEDARK 	= 11
		YELLOW 		= 12
		YELLOWLIGHT = 13
		YELLOWDARK 	= 14
		ORANGE 		= 15
		ORANGELIGHT = 16
		ORANGEDARK 	= 17
		GREEN 		= 18
		GREENLIGHT 	= 19
		GREENDARK 	= 20
		PURPLE 		= 21
		PURPLELIGHT	= 22
		PURPLEDARK 	= 23
		PINK 		= 24
		BRONZE 		= 107
		SILVER 		= 108
		GOLD 		= 109
		PLATINUM 	= 110
		FREEMODE 	= 116	-- This is the 'normal blue color' for the Rankbar
	]]
	

    BeginScaleformMovieMethodHudComponent(19, "SET_RANK_SCORES")		-- The HUD/Movie Component we want to use to draw the Rankbar
	PushScaleformMovieFunctionParameterInt(XP_StartLimit_RankBar)	-- This sets the 'absolute begin limit' for the bar where it can start drawing from (includes the blue "you already had this XP" bar)
	PushScaleformMovieFunctionParameterInt(XP_EndLimit_RankBar)		-- This sets the 'end limit' for the current level bar AND the 'top value' of the displayed XP text beneath the bar
	PushScaleformMovieFunctionParameterInt(playersPreviousXP)		-- This sets where the previous XP 'was located' at the bar and thus from where to start drawing the 'white/new xp bar'
	PushScaleformMovieFunctionParameterInt(playersCurrentXP)		-- This sets the current players XP (to 'where' the bar has to move!)
	PushScaleformMovieFunctionParameterInt(CurrentPlayerLevel)		-- This one Determines the LEFT 'globe', so the CURRENT player's level!
	PushScaleformMovieFunctionParameterInt(100)						-- This one sets the opacity (visibility %) from 0 
    EndScaleformMovieMethodReturn()
end
