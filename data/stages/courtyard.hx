import flixel.effects.particles.FlxEmitter;
import flixel.effects.particles.FlxParticle;

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

	bubbleEmitter = new FlxEmitter(-1200, 1000);

	for (i in 0 ... 500)
       		 	{
		var p = new FlxParticle();
		p.loadGraphic(Paths.image("bubble"));
		p.scale.set(0.2, 0.2);
        // p.exists = false;
        bubbleEmitter.add(p);
        		}
	bubbleEmitter.launchMode = FlxEmitterMode.SQUARE;
	bubbleEmitter.velocity.set(-50, -400, 50, -800, -100, 0, 100, -800);
	bubbleEmitter.scale.set(0.05, 0.05, 0.06, 0.06, 0, 0, 0, 0);
	bubbleEmitter.drag.set(0, 0, 0, 0, 5, 5, 10, 10);
	bubbleEmitter.width = 4200.45;
	bubbleEmitter.alpha.set(1, 1);
	bubbleEmitter.lifespan.set(4, 4.5);
	// bubbleEmitter.cameras = [camHUD];
	// SONICADVENTURE2BITCHHHHH

	bubbleEmitter.start(false, FlxG.random.float(0.05, 0.35), 1000000);
	bubbleEmitter.emitting = false;

	SONICADVENTURE2BITCHHHHH = new FlxEmitter(-1200, 1000);

	for (i in 0 ... 500)
       		 	{
		var p = new FlxParticle();
		p.loadGraphic(Paths.image("bubble"));
		p.scale.set(0.2, 0.2);
        // p.exists = false;
        SONICADVENTURE2BITCHHHHH.add(p);
        		}
	SONICADVENTURE2BITCHHHHH.launchMode = FlxEmitterMode.SQUARE;
	SONICADVENTURE2BITCHHHHH.velocity.set(-50, -400, 50, -800, -100, 0, 100, -800);
	SONICADVENTURE2BITCHHHHH.scale.set(0.075, 0.075, 0.1, 0.1, 0, 0, 0, 0);
	SONICADVENTURE2BITCHHHHH.drag.set(0, 0, 0, 0, 5, 5, 10, 10);
	SONICADVENTURE2BITCHHHHH.width = 4200.45;
	SONICADVENTURE2BITCHHHHH.alpha.set(1, 1);
	SONICADVENTURE2BITCHHHHH.lifespan.set(4, 4.5);
	SONICADVENTURE2BITCHHHHH.cameras = [camHUD];
	// SONICADVENTURE2BITCHHHHH

	SONICADVENTURE2BITCHHHHH.start(false, 0.005, 1000000);
	SONICADVENTURE2BITCHHHHH.emitting = false;
	trace("COCK");

	fart = new WateryShader();
	filter = new ShaderFilter(fart.shader);

	poopbrah = new FlxSprite().makeGraphic(1280, 720, FlxColor.WHITE);
	poopbrah.cameras =[camHUD];
	poopbrah.alpha = 0;
	add(poopbrah);

	blackScreen = new FlxSprite().makeGraphic(Std.int(FlxG.width * 2), Std.int(FlxG.height * 2), FlxColor.BLACK);
	blackScreen.scrollFactor.set();
	blackScreen.cameras = [camOther];

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