var oldtv = new CustomShader('VCRDistortion');
var oldtv2 = new CustomShader('tuto');
var nightSky:FlxSprite;

function postCreate(){
	camGame.scroll.set(225, -4700);
	FlxG.camera.followLerp = 0;
	for  (i in [iconP1, iconP2, healthBarBG, healthBar, scoreTxt, missesTxt, accuracyTxt])
		i.alpha = 0;
	camGame.addShader(oldtv2);
}




function create() {

	
	

	remove(dad);
    remove(gf);
    remove(boyfriend);

	defaultCamZoom = 0.8;

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

	blackScreen= new FlxSprite(-480, -5050);
	blackScreen.makeGraphic(Std.int(FlxG.width * 2), Std.int(FlxG.height * 2), FlxColor.BLACK);
	blackScreen.alpha = 1;
	//blackScreen.cameras = [camHUD];

	



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
	add(blackScreen);

	
	}

function stepHit(curStep:Int){
	for  (i in [iconP1, iconP2, healthBarBG, healthBar, scoreTxt, missesTxt, accuracyTxt])
	
	switch(curStep){
		case 1:
			FlxTween.tween(FlxG.camera, {zoom: defaultCamZoom / 1.5}, 5, {ease: FlxEase.quadInOut});
			FlxTween.tween(i, {alpha: 1}, 1.2, {ease: FlxEase.linear});
			FlxTween.tween(blackScreen, {alpha: 0}, 1.2, {ease: FlxEase.linear});

		case 55:
			FlxG.camera.follow(camFollow, null, 0.01);
		case 110:
			FlxG.camera.follow(camFollow, null, 0.03);
			defaultCamZoom = 0.5;
			remove(blackScreen);
		case 908:
			defaultCamZoom = 0.6;
			wellF.visible = false;
			sky.visible = true;
			backRock.visible = true;
			flags.visible = true;
			ship.visible = true;
			overRockShip.visible = true;
			walRocks.visible = true;
			depths.visible = true;
			foreRocks.visible = true;
			remove(gf);
		case 1241:
			defaultCamZoom = 0.7;
		case 1255:
			defaultCamZoom = 0.8;
		case 1296:
			defaultCamZoom = 1.2;
			add(blackScreen);
		case 1297:
			FlxTween.tween(FlxG.camera, {zoom: defaultCamZoom * 1.5}, 15, {ease: FlxEase.linear});
			FlxTween.tween(i, {alpha: 0}, 5, {ease: FlxEase.linear});
			FlxTween.tween(camHUD, {alpha: 0}, 5, {ease: FlxEase.linear});
			blackScreen.setPosition(-800, 300);
		case 1347:
			FlxTween.tween(blackScreen, {alpha: 1}, 3, {ease: FlxEase.linear});
			
	}
}
function postUpdate(elapsed:Float) {
	var time:Float = 0;
	time += elapsed;
	oldtv2.iTime = time;
	
	}