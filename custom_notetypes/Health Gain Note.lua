function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Health Gain Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'HEALTHGAINNOTE_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.345'); --Default value is: 0.023, health gained on hit
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function noteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Health Gain Note' then
		characterPlayAnim('bf', 'hey', true);
		playSound('healthGoesUp', 1);
	end
end

-- Called after the note miss calculations
-- Player missed a note by letting it go offscreen
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Health Gain Note' then
		-- put something here if you want
	end
end