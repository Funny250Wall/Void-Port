luaDebugMode = true
function onCreate()
	makeLuaSprite("spaceBG", 'SpaceStuff/spaceBG', -450, -160)
	scaleObject("spaceBG", 1.5, 1.5)
	setScrollFactor("spaceBG", 0.1, 0.1)
	addLuaSprite("spaceBG", false)

	makeLuaSprite("spaceBGflash", 'SpaceStuff/spaceBGflash', -450, -160)
	scaleObject("spaceBGflash", 1.5, 1.5)
	setScrollFactor("spaceBGflash", 0.1, 0.1)
	addLuaSprite("spaceBGflash", false)
	setProperty("spaceBGflash.alpha", 0)
	--doTweenAlpha("alphaSwapFlash", "spaceBGflash", 1.0, 5.0)
	if songName == 'Asteroids' or songName == 'Weightless' or songName == 'Event Horizon' then
		makeAnimatedLuaSprite("holoBoppers", "SpaceStuff/holoBop", -360, -360)
		addAnimationByPrefix("holoBoppers", "Bop", "Holo Boppers", 24, false)
		setScrollFactor("holoBoppers", 0.2, 0.2)
		scaleObject("holoBoppers", 1.15, 1.15)
		addLuaSprite("holoBoppers")
	elseif songName == 'Ultraviolet' or songName == 'Gravity' then
		makeAnimatedLuaSprite("holoBoppers", "SpaceStuff/holoEmpty", -360, -360)
		addAnimationByPrefix("holoBoppers", "Bop", "Holo Boppers", 24, false)
		setScrollFactor("holoBoppers", 0.2, 0.2)
		scaleObject("holoBoppers", 1.15, 1.15)
		addLuaSprite("holoBoppers")
	elseif songName == 'Security' then
		makeAnimatedLuaSprite("holoBoppers", "SpaceStuff/holoEmpty-V", -360, -360)
		addAnimationByPrefix("holoBoppers", "Bop", "Holo Boppers", 24, false)
		setScrollFactor("holoBoppers", 0.2, 0.2)
		scaleObject("holoBoppers", 1.15, 1.15)
		addLuaSprite("holoBoppers")
	end
	if songName == 'Asteroids' or songName == 'Weightless' or songName == 'Event Horizon' or songName == 'Ultraviolet' or songName == 'Security' then
		
		doTweenY("HoloBopTween", "holoBoppers", -330, 3.1, "quadInOut")

		makeLuaSprite("spacerocks", 'SpaceStuff/spacerocks', -360, -30)
		setScrollFactor("spacerocks", 0.4, 0.4)
		addLuaSprite("spacerocks", false)
		doTweenY("SpaceRockTween", "spacerocks", -65, 2.9, "quadInOut")
		if songName == 'Asteroids' or songName == 'Weightless' or songName == 'Event Horizon' or songName == 'Ultraviolet' then
			makeAnimatedLuaSprite("spacestage", 'SpaceStuff/spacestage', -500, -330)
			addAnimationByPrefix("spacestage", "StageLights", "Stage Bop")
			scaleObject("spacestage", 1.2, 1.2)
			addLuaSprite("spacestage")
		elseif songName == 'Security' then 
			makeAnimatedLuaSprite("spacestage", 'SpaceStuff/spacestageAlt', -500, -330)
			addAnimationByPrefix("spacestage", "StageLights", "Stage Bop")
			scaleObject("spacestage", 1.2, 1.2)
			addLuaSprite("spacestage")

			setProperty("boyfriend.x", getProperty("boyfriend.x") + 80)
			setProperty("gf.x", getProperty("gf.x") + 80)
		end
		makeLuaSprite("spacerocksFG", 'SpaceStuff/spacerocksFG', -1620, -160)
		scaleObject("spacerocksFG", 1.3, 1.3)
		setScrollFactor("spacerocksFG", 1.6, 1.6)
		addLuaSprite("spacerocksFG", true)
		doTweenY("spacerocksFGtween", "spacerocksFG", -120, 2.9, "quadInOut")
	
	end
	if songName == 'Gravity' then
		setProperty("spaceBG.alpha", 0)
		makeAnimatedLuaSprite("darkspaceBG", 'SpaceStuff/darkSpaceBG', -500, -120)
		addAnimationByPrefix("darkspaceBG", "Bloop", "Bg Bloop","24",true)
		playAnim("darkspaceBG", "Bloop")
		scaleObject("darkspaceBG", 1.7, 1.7)
		setScrollFactor("darkspaceBG", 0.1, 0.1)
		addLuaSprite("darkspaceBG", false)
		setObjectOrder("darkspaceBG", 0)

		makeAnimatedLuaSprite("BgBreak", "SpaceStuff/bgBreak", -320, -500)
		addAnimationByPrefix("BgBreak", "InitialBreak", "Initial")
		addAnimationByPrefix("BgBreak", "1stBreak", "1st Break",24,false)
		addAnimationByPrefix("BgBreak", "2ndBreak", "2nd Break",24,false)
		setScrollFactor("BgBreak", 0.1, 0.1)
		scaleObject("BgBreak", 1.3, 1.3)
		addLuaSprite("BgBreak")
		setObjectOrder("BgBreak", 1)


		doTweenY("HoloBopTween", "holoBoppers", -330, 3.1, "quadInOut")

		makeLuaSprite("spacerocks", 'SpaceStuff/spacerocks', -360, -30)
		setScrollFactor("spacerocks", 0.4, 0.4)
		addLuaSprite("spacerocks", false)
		doTweenY("SpaceRockTween", "spacerocks", -65, 2.9, "quadInOut")

		makeAnimatedLuaSprite("spacestage", 'SpaceStuff/spacestageAlt', -500, -330)
		addAnimationByPrefix("spacestage", "StageLights", "Stage Bop")
		scaleObject("spacestage", 1.2, 1.2)
		addLuaSprite("spacestage")
		doTweenY("FuckAssStageTween", "spacestage", -310, 2.9, "quadInOut")

		makeLuaSprite("spacerocksFG", 'SpaceStuff/spacerocksFG', -1620, -160)
		scaleObject("spacerocksFG", 1.3, 1.3)
		setScrollFactor("spacerocksFG", 1.6, 1.6)
		addLuaSprite("spacerocksFG", true)
		doTweenY("spacerocksFGtween", "spacerocksFG", -120, 2.9, "quadInOut")
	end
	if songName == 'Singularity' then
		makeLuaSprite("tintedSpaceBG", 'SpaceStuff/tintedSpaceBG', -500, -220)
		scaleObject("tintedSpaceBG", 1.7, 1.7)
		setScrollFactor("tintedSpaceBG", 0.1, 0.1)
		addLuaSprite("tintedSpaceBG")

		removeLuaSprite("spacerocks",true)
		removeLuaSprite("spacerocksFG",true)
		makeLuaSprite("OblivionDark1", 'SpaceStuff/oblivionDark1', -720, -240)
		scaleObject("OblivionDark1", 1.25, 1.25)
		setScrollFactor("OblivionDark1", 0.1, 0.1)
		addLuaSprite("OblivionDark1", false)
		
		makeLuaSprite("OblivionDark2", 'SpaceStuff/oblivionDark2', -720, -240)
		scaleObject("OblivionDark2", 1.4, 1.4)
		setScrollFactor("OblivionDark2", 0.22, 0.22)
		addLuaSprite("OblivionDark2", false)

		makeLuaSprite("OblivionDark3", 'SpaceStuff/oblivionDark3', -720, -240)
		scaleObject("OblivionDark3", 1.6, 1.6)
		setScrollFactor("OblivionDark3", 0.35, 0.35)
		addLuaSprite("OblivionDark3", false)
		--setObjectOrder("spacestage", 6)

		makeLuaSprite("holoBoppers", 'SpaceStuff/holoBroken', -900, 200)
		scaleObject("holoBoppers", 1.4, 1.4)
		setScrollFactor("holoBoppers", 0.45, 0.45)
		addLuaSprite("holoBoppers")

		makeAnimatedLuaSprite("bgGlitch", 'SpaceStuff/bgGlitch', -820, -680)
		addAnimationByPrefix("bgGlitch", "glitch", "Glitch FX", 10, true)
		scaleObject("bgGlitch", 1.1, 1.1)
		setScrollFactor("bgGlitch", 0.3, 0.3)
		setProperty("bgGlitch.alpha", 0)
		addLuaSprite("bgGlitch")

		makeLuaSprite("phillyTrain", 'SpaceStuff/zippyrocks', 2000, -50)
		addLuaSprite("phillyTrain")

		makeAnimatedLuaSprite("neoBop", 'SpaceStuff/neoBop', -585, -240)
		addAnimationByPrefix("neoBop", "NeoBop", "Neo Boppin")
		scaleObject("neoBop", 1.2, 1.2)
		setScrollFactor("neoBop", 0.5, 0.5)
		addLuaSprite("neoBop")

		makeAnimatedLuaSprite("spacestage", 'SpaceStuff/spacestage', -500, -330)
		addAnimationByPrefix("spacestage", "StageLights", "Stage Bop")
		scaleObject("spacestage", 1.2, 1.2)
		addLuaSprite("spacestage")

		makeLuaSprite("spacerocksFG", 'SpaceStuff/spacerocksFG', -1620, -160)
		scaleObject("spacerocksFG", 1.3, 1.3)
		setScrollFactor("spacerocksFG", 1.6, 1.6)
		addLuaSprite("spacerocksFG", true)
		doTweenY("spacerocksFGtween", "spacerocksFG", -120, 2.9, "quadInOut")

		makeLuaSprite("camTint", 'SpaceStuff/camTint', 0, 0)
		scaleObject("camTint", 0.75, 0.75)
		setObjectCamera("camTint", 'hud')
		addLuaSprite("camTint", true)
	end
	
	doTweenY("FuckAssBFtween", "boyfriend", getProperty("boyfriend.y") + 20, 2.9, "quadInOut")
	doTweenY("FuckAssGFtween", "gf", getProperty("gf.y") + 20, 2.9, "quadInOut")
	doTweenY("FuckAssDadtween", "dad", getProperty("dad.y") + 20, 2.9, "quadInOut")
	setScrollFactor("gfGroup", 1.0, 1.0)
	doTweenY("FuckAssStageTween", "spacestage", -310, 2.9, "quadInOut")
end
function onBeatHit()
	--debugPrint('Beathit')
	playAnim("holoBoppers","Bop", true)
	playAnim("spacestage", "StageLights", true)
	if curBeat == 337 and songName == 'Gravity' then
		debugPrint('Break 1')
		playSound("BgBreak", 1, 'Break1')
		playAnim("BgBreak", "1stBreak",false)
	end
	if curBeat == 526 and songName == 'Gravity' then
		playAnim("BgBreak", "2ndBreak")
		playSound("BgBreak_Fade", 1, 'Break2')
	end
	if curBeat == 368 and songName == 'Gravity' then
		setProperty('gf.alpha', 0)
	end
end
function onTweenCompleted(tag)
	if tag == 'HoloBopTween' then
		doTweenY("HoloBopTween2", "holoBoppers", -360, 3.1, "quadInOut")
	end
	if tag == 'HoloBopTween2' then
		doTweenY("HoloBopTween", "holoBoppers", -330, 3.1, "quadInOut")
	end
	if tag == 'SpaceRockTween' then
		doTweenY("SpaceRockTween2", "spacerocks", -30, 2.9, "quadInOut")
	end
	if tag == 'SpaceRockTween2' then 
		doTweenY("SpaceRockTween", "spacerocks", -65, 2.9, "quadInOut")
	end
	--Any Tween with FuckAss in the name is related to the Spacestage moving up and down
	if tag == 'FuckAssStageTween' then
		doTweenY("FuckAssStageTween2", "spacestage", -330, 2.9, "quadInOut")
		doTweenY("FuckAssBFtween2", "boyfriend", getProperty("boyfriend.y") - 20, 2.9, "quadInOut")
		doTweenY("FuckAssGFtween2", "gf", getProperty("gf.y") - 20, 2.9, "quadInOut")
		doTweenY("FuckAssDadtween2", "dad", getProperty("dad.y") - 20, 2.9, "quadInOut")
		--debugPrint("tweendone")
	end
	if tag == 'FuckAssStageTween2' then 
		doTweenY("FuckAssStageTween", "spacestage", -310, 2.9, "quadInOut")
		doTweenY("FuckAssBFtween", "boyfriend", getProperty("boyfriend.y") + 20, 2.9, "quadInOut")
		doTweenY("FuckAssGFtween", "gf", getProperty("gf.y") + 20, 2.9, "quadInOut")
		doTweenY("FuckAssDadtween", "dad", getProperty("dad.y") + 20, 2.9, "quadInOut")
	end
	if tag == 'spacerocksFGtween' then
		doTweenY("spacerocksFGtween2", "spacerocksFG", -160, 2.9, "quadInOut")
	end
	if tag == 'spacerocksFGtween' then
		doTweenY("spacerocksFGtween", "spacerocksFG", -120, 2.9, "quadInOut")
	end
	if tag == 'alphaSwapFlash' then
		doTweenAlpha("alphaSwapFlash2", "spaceBGflash", 0.0, 0.8)
	end

end
function onUpdate(elapsed)
	--debugPrint(getProperty("dad.animation.curAnim.name"))
		
	--if stringEndsWith(answer, string.upper(password)) then
		--if checkFileExists('weeks/Void4.json') == false then
		--{\n"songs": [\n[\n"Stardust",\n"starbreak",\n[\n31,\n123,\n224\n]\n]\n],\n"hiddenUntilUnlocked": false,\n"hideFreeplay": false,\n"weekBackground": "stage",\n"difficulties": "",\n"weekCharacters": [\n"dad",\n"bf",\n"gf"\n],\n"storyName": "StarDust",\n"weekName": "StarDust",\n"hideStoryMode": true,\n"weekBefore": "tutorial",\n"startUnlocked": true\n}')
		--end		
	--end
	if songName == 'Singularity' then
		setProperty("holoBoppers.angle", getProperty("holoBoppers.angle") + 0.20)
	end
	--debugPrint(getProperty('SONG.speed'))
	--playAnim("opponentStrums", "pressed")
	--playAnim('playerStrums', 'pressed', true)
	
end

function onEvent(name, v1, v2)
	if name == 'SpaceFlash' then
		doTweenAlpha("alphaSwapFlash", "spaceBGflash", 1.0, 0.2)
	end

end


