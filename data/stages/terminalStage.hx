function create() {

	remove(dad);
    remove(gf);
    remove(boyfriend);

	defaultCamZoom = 0.7;

    dad.x = -290;
    dad.y = 100;
    boyfriend.y = 50;
    boyfriend.x = 600;
	gf.y = 50;
	gf.x = 100;

	var sky:FlxSprite = new FlxSprite(-1500, -1000).loadGraphic(Paths.image('stages/terminalStage/Background_Sky'));
	sky.scrollFactor.set(1, 1);
	sky.scale.set(1.2, 1.2);
	add(sky);

	var clouds:FlxSprite = new FlxSprite(200,-150).loadGraphic(Paths.image('stages/terminalStage/Background_Clouds'));
	clouds.scrollFactor.set(0.6, 0.6);
	add(clouds);

	var clouds2:FlxSprite = new FlxSprite(-900,-450).loadGraphic(Paths.image('stages/terminalStage/Background_Clouds'));
	clouds2.scrollFactor.set(0.6, 0.6);
	add(clouds2);

	var clouds3:FlxSprite = new FlxSprite(-1600,-50).loadGraphic(Paths.image('stages/terminalStage/Background_Clouds'));
	clouds3.scrollFactor.set(0.6, 0.6);
	add(clouds3);

	var clouds4:FlxSprite = new FlxSprite(-2500,-50).loadGraphic(Paths.image('stages/terminalStage/Background_Clouds'));
	clouds4.scrollFactor.set(0.6, 0.6);
	add(clouds4);

	var clouds5:FlxSprite = new FlxSprite(-3400,-15).loadGraphic(Paths.image('stages/terminalStage/Background_Clouds'));
	clouds5.scrollFactor.set(0.6, 0.6);
	add(clouds5);

	var clouds6:FlxSprite = new FlxSprite(-4100,-45).loadGraphic(Paths.image('stages/terminalStage/Background_Clouds'));
	clouds6.scrollFactor.set(0.6, 0.6);
	add(clouds6);

	var clouds7:FlxSprite = new FlxSprite(-5000,50).loadGraphic(Paths.image('stages/terminalStage/Background_Clouds'));
	clouds7.scrollFactor.set(0.6, 0.6);
	add(clouds7);

	var clouds8:FlxSprite = new FlxSprite(-6500,-50).loadGraphic(Paths.image('stages/terminalStage/Background_Clouds'));
	clouds8.scrollFactor.set(0.6, 0.6);
	add(clouds8);


	var castle:FlxSprite = new FlxSprite(1100,-400).loadGraphic(Paths.image('stages/terminalStage/Castle'));
	add(castle);

	var bgground:FlxSprite = new FlxSprite(-950,60).loadGraphic(Paths.image('stages/terminalStage/Background_BehindFloor'));
	bgground.scrollFactor.set(0.75, 0.75);
	add(bgground);

	var bgground2:FlxSprite = new FlxSprite(-950,110).loadGraphic(Paths.image('stages/terminalStage/Background_1BehindFloor'));
	bgground2.scrollFactor.set(0.75, 0.75);
	add(bgground2);

	var hill1:FlxSprite = new FlxSprite(-400, -100);
	hill1.frames = Paths.getSparrowAtlas("stages/terminalStage/Hill2_Bump");
	hill1.scrollFactor.set(0.65, 0.65);
	hill1.animation.addByPrefix('2 Hills_Idle instance', '2 Hills_Idle instance', 24, true);
	hill1.animation.play('2 Hills_Idle instance');
	add(hill1);

	var hill2:FlxSprite = new FlxSprite(-600, -100);
	hill2.frames = Paths.getSparrowAtlas("stages/terminalStage/Hill1_Bump");
	hill2.animation.addByPrefix('1 Hills_Idle instance', '1 Hills_Idle instance', 24, true);
	hill2.animation.play('1 Hills_Idle instance');
	add(hill2);

	var ground:FlxSprite = new FlxSprite( -950, 400).loadGraphic(Paths.image('stages/terminalStage/Background_Floor'));
	ground.scrollFactor.set(1, 1);
	add(ground);

	var regtoad:FlxSprite = new FlxSprite(675, 390);
	regtoad.frames = Paths.getSparrowAtlas("stages/terminalStage/RedToad");
	regtoad.animation.addByPrefix('Red Toad_Idle instance', 'Red Toad_Idle', 24, true);
	regtoad.animation.play('Red Toad_Idle instance');
	regtoad.scrollFactor.set(1, 1);
	add(regtoad);

	var loogi:FlxSprite = new FlxSprite( 885, 130);
	loogi.frames = Paths.getSparrowAtlas("stages/terminalStage/Luigi");
	loogi.scrollFactor.set(1, 1);
	loogi.animation.addByPrefix('luigi porn', 'luigi idle', 24, true);
	loogi.animation.play('luigi porn');
	add(loogi);

	var yoshige:FlxSprite = new FlxSprite(-320, 120);
	yoshige.frames = Paths.getSparrowAtlas("stages/terminalStage/yoshi_1");
	yoshige.animation.addByPrefix('yoshi porn', 'yoshi idle', 24, true);
	yoshige.animation.play('yoshi porn');
	yoshige.scrollFactor.set(1, 1);
	add(yoshige);

	var blutoad:FlxSprite = new FlxSprite(-480, 520);
	blutoad.scrollFactor.set(1, 1);
	blutoad.frames = Paths.getSparrowAtlas("stages/terminalStage/BlueToad");
	blutoad.animation.addByPrefix('BlueToad_Idle instance', 'BlueToad_Idle', 24, true);
	blutoad.animation.play('BlueToad_Idle instance');
	add(blutoad);

	var leantoad = new FlxSprite(-370, 800);
	leantoad.scrollFactor.set(0.85, 1);
	leantoad.frames = Paths.getSparrowAtlas("stages/terminalStage/PurpleToad");
	leantoad.animation.addByPrefix('PurpleToad_Idle instance', 'PurpleToad_Idle instance', 24, true);
	leantoad.animation.play('PurpleToad_Idle instance');
	//whoever named this "lean toad" should die in a fiery car crash

	var grentoad = new FlxSprite(150, 800);
	grentoad.scrollFactor.set(0.9, 1);
	grentoad.frames = Paths.getSparrowAtlas("stages/terminalStage/GreenToad");
	grentoad.animation.addByPrefix('GreenToad_Idle instance', 'GreenToad_Idle instance', 24, true);
	grentoad.animation.play('GreenToad_Idle instance');

	var yeltoad = new FlxSprite(750, 800);
	yeltoad.scrollFactor.set(0.85, 1);
	yeltoad.frames = Paths.getSparrowAtlas("stages/terminalStage/YellowToad");
	yeltoad.animation.addByPrefix('YellowToad_Idle instance', 'YellowToad_Idle instance', 24, true);
	yeltoad.animation.play('YellowToad_Idle instance');
	
	

	add(dad);
    add(gf);
    add(boyfriend);
	add(leantoad);
	add(grentoad);
	add(yeltoad);
}