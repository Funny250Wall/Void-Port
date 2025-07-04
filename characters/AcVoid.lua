canDrain = false
healthdrain = 0.016
function onUpdate()
    if getProperty("dad.animation.curAnim.name") == 'Succ' then
        canDrain = true
    end
    if getProperty("dad.animation.curAnim.name") == 'Defeat' then 
        setProperty('dad.skipDance', true)
    end
    if getProperty("dad.animation.curAnim.name") == 'Succ' or getProperty("dad.animation.curAnim.name") == 'Defeat' then
        for notesLength = 0,getProperty('notes.length')-1 do
            if getPropertyFromGroup('notes', notesLength, 'noteType') == '' then
                if getPropertyFromGroup('notes', notesLength, 'mustPress') == false then
                    setPropertyFromGroup('notes', notesLength, 'noAnimation', true)
                end
            end
        end
    else
        canDrain = false
    end
end
function opponentNoteHit(membersIndex, noteData, noteType, isSustainNote)
    if canDrain == true then
        setProperty("health", getProperty("health") - healthdrain)
        triggerEvent("Screen Shake", 0, '0.06,0.01')
    elseif noteType == '-alt' then
        if curBeat <= 713 and songName == 'Singularity' then
            setProperty("health", getProperty("health") - healthdrain)
            triggerEvent("Screen Shake", 0, '0.06,0.01')
        end
    elseif altAnim == true then
        if curBeat <= 713 and songName == 'Singularity' then
            setProperty("health", getProperty("health") - healthdrain)
            triggerEvent("Screen Shake", 0, '0.06,0.01')
        end
    end
end