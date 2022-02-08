function onCreate()
	-- background shit
	makeLuaSprite('road', 'road', -600, 670);
	setScrollFactor('road', 0.9, 0.9);
	
	makeLuaSprite('cityview', 'cityview', -650, -300);
	setScrollFactor('cityview', 0.45, 0.45);
	scaleObject('cityview', 1.1, 1.1);

	addLuaSprite('cityview', false);
	addLuaSprite('road', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end