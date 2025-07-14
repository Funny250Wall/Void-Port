playerSpeed = 1
oppSpeed = 1
function onSpawnNote(index, noteData, noteType, isSustain, strumTime)
    --[[if getProperty('notes.members[0].mustPress') then
        setProperty('notes.members[0].multSpeed', playerSpeed)
    else
        setProperty('notes.members[0].multSpeed', oppSpeed)
    end]]
end
function onEvent(event, value1, value2, strumTime)
  if event == 'Change Speeds' then
    if value1 == nil then
      playerSpeed = 1
    else
      playerSpeed = value1
    end
    if value2 == nil then
      oppSpeed = 1
    else
      oppSpeed = value2
    end
  end
    for i = 0, getProperty('unspawnNotes.length') - 1 do
        if getPropertyFromGroup('unspawnNotes', i, 'mustPress') == false then
        	setPropertyFromGroup('unspawnNotes', i, 'multSpeed', oppSpeed)
		else
			setPropertyFromGroup('unspawnNotes', i, 'multSpeed', playerSpeed)
		end
    end
    for i = 0, getProperty('notes.length') - 1 do
        if getPropertyFromGroup('notes', i, 'mustPress') == false then
        	setPropertyFromGroup('notes', i, 'multSpeed', oppSpeed)
		else
			setPropertyFromGroup('notes', i, 'multSpeed', playerSpeed)
		end
    end
end
