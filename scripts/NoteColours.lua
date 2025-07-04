--[[Where i got code:
Note skin changer: https://github.com/ShadowMario/FNF-PsychEngine/issues/14778
RGB stuff: https://github.com/ShadowMario/FNF-PsychEngine/issues/14823
Misc code help: MC07 https://gamebanana.com/members/1945940
]]
canRGB = false
candark = false
darknoteskin = 'noteSkins/NOTE_assets'..noteSkinPostfix.."_Singularity"
--bf rgb
    local bfRGBNr = { '7F4AC5', '24AEF3', '00FFB1', 'F83ECF' }
    local bfRGBNg = { 'FFFFFF', 'FFFFFF', 'FFFFFF', 'FFFFFF' }
    local bfRGBNb = { '21365A', '241F8D', '01114E', '571769' }
-- dad rgb
    local dadRGBNr = bfRGBNr 
    local dadRGBNg = bfRGBNg 
    local dadRGBNb = bfRGBNb 

-- note   
function onSpawnNote(id, nd, nt, sus)
    if canRGB == true then 
        if getPropertyFromGroup('notes', id, 'mustPress') == true then
            setPropertyFromGroup('notes', id, 'rgbShader.r', getColorFromHex(bfRGBNr[getPropertyFromGroup('notes', id, 'noteData')+1]))
            setPropertyFromGroup('notes', id, 'rgbShader.g', getColorFromHex(bfRGBNg[getPropertyFromGroup('notes', id, 'noteData')+1]))      
            setPropertyFromGroup('notes', id, 'rgbShader.b', getColorFromHex(bfRGBNb[getPropertyFromGroup('notes', id, 'noteData')+1]))
            setPropertyFromGroup('notes', id, 'noteSplashData.r', getColorFromHex(bfRGBNr[getPropertyFromGroup('notes', id, 'noteData')+1]))
            setPropertyFromGroup('notes', id, 'noteSplashData.g', getColorFromHex(bfRGBNg[getPropertyFromGroup('notes', id, 'noteData')+1]))
            setPropertyFromGroup('notes', id, 'noteSplashData.b', getColorFromHex(bfRGBNb[getPropertyFromGroup('notes', id, 'noteData')+1]))
        else
            setPropertyFromGroup('notes', id, 'rgbShader.r', getColorFromHex(dadRGBNr[getPropertyFromGroup('notes', id, 'noteData')+1]))
            setPropertyFromGroup('notes', id, 'rgbShader.g', getColorFromHex(dadRGBNg[getPropertyFromGroup('notes', id, 'noteData')+1]))
            setPropertyFromGroup('notes', id, 'rgbShader.b', getColorFromHex(dadRGBNb[getPropertyFromGroup('notes', id, 'noteData')+1]))
        end
    end
end

-- strum note
function onUpdatePost(e)
    --debugPrint(noteSkinPostfix)
    if canRGB == true then
        for i=0, getProperty('playerStrums.length')-1 do
            setPropertyFromGroup('playerStrums', i, 'rgbShader.r', ((getPropertyFromGroup('playerStrums', i, 'animation.curAnim.name') == 'pressed' or getPropertyFromGroup('playerStrums', i, 'animation.curAnim.name') == 'confirm') and getColorFromHex(bfRGBNr[i+1]) or getColorFromHex(bfRGBNr[i+1])))
            setPropertyFromGroup('playerStrums', i, 'rgbShader.g', ((getPropertyFromGroup('playerStrums', i, 'animation.curAnim.name') == 'pressed' or getPropertyFromGroup('playerStrums', i, 'animation.curAnim.name') == 'confirm') and getColorFromHex(bfRGBNg[i+1]) or getColorFromHex(bfRGBNg[i+1])))
            setPropertyFromGroup('playerStrums', i, 'rgbShader.b', ((getPropertyFromGroup('playerStrums', i, 'animation.curAnim.name') == 'pressed' or getPropertyFromGroup('playerStrums', i, 'animation.curAnim.name') == 'confirm') and getColorFromHex(bfRGBNb[i+1]) or getColorFromHex(bfRGBNb[i+1])))
        end
        for i=0, getProperty('opponentStrums.length')-1 do
            setPropertyFromGroup('opponentStrums', i, 'rgbShader.r', ((getPropertyFromGroup('opponentStrums', i, 'animation.curAnim.name') == 'pressed' or getPropertyFromGroup('opponentStrums', i, 'animation.curAnim.name') == 'confirm') and getColorFromHex(dadRGBNr[i+1]) or getColorFromHex(dadRGBNr[i+1])))
            setPropertyFromGroup('opponentStrums', i, 'rgbShader.g', ((getPropertyFromGroup('opponentStrums', i, 'animation.curAnim.name') == 'pressed' or getPropertyFromGroup('opponentStrums', i, 'animation.curAnim.name') == 'confirm') and getColorFromHex(dadRGBNg[i+1]) or getColorFromHex(dadRGBNg[i+1])))
            setPropertyFromGroup('opponentStrums', i, 'rgbShader.b', ((getPropertyFromGroup('opponentStrums', i, 'animation.curAnim.name') == 'pressed' or getPropertyFromGroup('opponentStrums', i, 'animation.curAnim.name') == 'confirm') and getColorFromHex(dadRGBNb[i+1]) or getColorFromHex(dadRGBNb[i+1])))

        end
    end
end
function onUpdate()
    
end
function onCreate()
    --debugPrint('images/'..darknoteskin)
    if checkFileExists('images/'..darknoteskin..'.png') == false  and songName == 'Singularity' then
        if noteSkin ~= 'Default' then
            debugPrint('Noteskin not found, setting to default.')
        end
        darknoteskin = 'noteSkins/NOTE_assets-default_Singularity'
    end
    if songName == 'Asteroids' or songName == 'Weightless' or songName == 'Event Horizon' or songName == 'Ultraviolet' or songName == 'Gravity' or songName == 'Singularity' or songName == 'Security' then 
        canRGB = true
    else 
        close('notasongdummy')
    end
    if songName == 'Singularity' then
        candark = true
    end
    
end
function onCreatePost()
    runHaxeCode(
        [[   for(note in playerStrums){
        note.playAnim("pressed");
        }

        for(note in opponentStrums){
        note.playAnim("pressed");
    }]])
    runTimer('NoteFixer', 0.2)
    if candark == true then
        for i = 0, getProperty('unspawnNotes.length')-1 do
            setPropertyFromGroup('unspawnNotes', i, 'texture', darknoteskin); --Change texture
            setPropertyFromGroup('unspawnNotes', i, 'rgbShader.enabled', false); --RGB Shader off, set true if you want
        end
        for i = 0, getProperty('opponentStrums.length')-1 do
            setPropertyFromGroup('opponentStrums', i, 'texture', darknoteskin); --Change texture
            setPropertyFromGroup('opponentStrums', i, 'rgbShader.enabled', false); --RGB Shader off, set true if you want
        end
        for i = 0, getProperty('playerStrums.length')-1 do
            setPropertyFromGroup('playerStrums', i, 'texture', darknoteskin); --Change texture
            setPropertyFromGroup('playerStrums', i, 'rgbShader.enabled', false); --RGB Shader off, set true if you want
        end
    end
end
function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'NoteFixer' then
        runHaxeCode(
            [[for(note in playerStrums){
            note.playAnim("static");
            }
            
            for(note in opponentStrums){
            note.playAnim("static");
        }]])
    end
end