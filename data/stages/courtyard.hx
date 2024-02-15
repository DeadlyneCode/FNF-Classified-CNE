function create() {

	remove(dad);
    remove(gf);
    remove(boyfriend);

	defaultCamZoom = 0.5;

    dad.x = -330;
    dad.y = 160;
    boyfriend.y = 300;
    boyfriend.x = 1040;
	gf.y = 260;
	gf.x = -820;


	nightSky = new FlxSprite(-1020, -5050).loadGraphic(Paths.image("stages/courtyard/Sky-Clouds-Stars"));
	add(nightSky);

	courtyard = new FlxSprite(-1020, -1880).loadGraphic(Paths.image("stages/courtyard/well_mid"));
	// courtyard.alpha = 0.5;
	add(courtyard);

	clouds = new FlxSprite(-1020, -4000).loadGraphic(Paths.image("stages/courtyard/clouds-fore"));
	add(clouds);

	wellF = new FlxSprite(-560, 735).loadGraphic(Paths.image("stages/courtyard/well_fore"));

	ripple = new FlxSprite(-470, 820);
	ripple.frames = Paths.getSparrowAtlas("stages/courtyard/waterwiggle");
	ripple.animation.addByPrefix("waters", "waterwiggle", 24, true);
	ripple.animation.play("waters");
	ripple.scrollFactor.set(1, 1);
	add(ripple);

	sky = new FlxSprite(-1350, -480).loadGraphic(Paths.image("stages/courtyard/back"));
	sky.scrollFactor.set(0.4, 0.4);
	add(sky);

	backRock = new FlxSprite(-1350, -480).loadGraphic(Paths.image("stages/courtyard/backrocks"));
	backRock.scrollFactor.set(0.55, 0.55);
	add(backRock);

	flags = new FlxSprite(-1770, -425);
	flags.frames = Paths.getSparrowAtlas("stages/courtyard/luigiunderwaterbg");
	flags.animation.addByPrefix("waters", "sail", 24, true);
	flags.animation.play("waters");
	flags.scrollFactor.set(0.55, 0.55);
	add(flags);

	ship = new FlxSprite(-1350, -480).loadGraphic(Paths.image("stages/courtyard/ship"));
	ship.scrollFactor.set(0.55, 0.55);
	add(ship);

	overRockShip = new FlxSprite(-1350, -480).loadGraphic(Paths.image("stages/courtyard/rocksovership"));
	overRockShip.scrollFactor.set(0.65, 0.65);
	add(overRockShip);

	walRocks = new FlxSprite(-1350, -480).loadGraphic(Paths.image("stages/courtyard/wallorocks"));
	walRocks.scrollFactor.set(0.8, 0.8);
	add(walRocks);

	depths = new FlxSprite(-1350, -480).loadGraphic(Paths.image("stages/courtyard/ground"));
	add(depths);

	foreRocks = new FlxSprite(-1350, -480).loadGraphic(Paths.image("stages/courtyard/frontrocks"));
	foreRocks.scrollFactor.set(0.8, 0.8);

	sky.visible = false;
	backRock.visible = false;
	flags.visible = false;
	ship.visible = false;
	overRockShip.visible = false;
	walRocks.visible = false;
	depths.visible = false;
	foreRocks.visible = false;

	add(dad);
	add(wellF);
    add(gf);
    add(boyfriend);
}