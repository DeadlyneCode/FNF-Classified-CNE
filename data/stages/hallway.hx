var oldtv2 = new CustomShader('tuto');

function postCreate(){
	camGame.addShader(oldtv2);
}

function create() {

	gf.y = 225;
    gf.x = 610;
	remove(dad);
	remove(gf);
    remove(boyfriend);

	hall = new FlxSprite(300, 230).loadGraphic(Paths.image("stages/warioStage/Hallway"));
	hall.frames = Paths.getSparrowAtlas("stages/warioStage/Hallway");
	hall.animation.addByPrefix("Hallway idle", "Hallway idle", 30, true);
	hall.animation.play("Hallway idle");
	hall.scale.set(1.4, 1.4);
	add(hall);

	body = new FlxSprite(790, 750).loadGraphic(Paths.image("stages/warioStage/running bf body"));
	body.frames = Paths.getSparrowAtlas("stages/warioStage/running bf body");
	body.animation.addByPrefix("Bf idle body", "Bf idle body", 45, true);
	body.animation.play("Bf idle body");
	body.scale.set(0.65, 0.65);

	legs = new FlxSprite(790, 850).loadGraphic(Paths.image("stages/warioStage/running bf shoe"));
	legs.frames = Paths.getSparrowAtlas("stages/warioStage/running bf shoe");
	legs.animation.addByPrefix("Bf idle shoe", "Bf idle shoe", 45, true);
	legs.animation.play("Bf idle shoe");
	legs.scale.set(0.65, 0.65);

	blackScreen= new FlxSprite();
	blackScreen.makeGraphic(Std.int(FlxG.width * 2.5), Std.int(FlxG.height * 2.5), FlxColor.BLACK);
	blackScreen.alpha = 0;
	blackScreen.cameras = [camGame];

	wall = new FlxSprite(0, 135);
	wall.loadGraphic(Paths.image("stages/warioStage/thetitularhallway"));
	wall.scale.set(10,10);

	run = new FlxSprite(595,530);
	run.loadGraphic(Paths.image("characters/HeOnTheRun"));
	run.frames = Paths.getSparrowAtlas("characters/HeOnTheRun");
	run.animation.addByPrefix("bf siderun", "bf siderun", 24, false);
	run.scale.set(0.6,0.6);

	defaultCamZoom = 0.9;

    dad.x = 550;
    dad.y = 200;
    boyfriend.y = 225;
    boyfriend.x = 620;

	add(dad);
	add(wall);
	add(body);
	add(legs);
    add(boyfriend);
	add(blackScreen);
	add(run);

	dad.scale.set(0,0);
	dad.alpha = 0;
	boyfriend.alpha = 1;
	run.alpha = 0;
	

}
function stepHit(curStep:Int){
	switch(curStep){
	case 70:
		FlxTween.tween(FlxG.camera, {zoom: defaultCamZoom * 1.8}, 4.5, {ease: FlxEase.quadInOut});
	case 126:
		FlxTween.tween(dad.scale, {x: 1, y: 1}, 0.7, {ease: FlxEase.elasticInOut});
		FlxTween.tween(dad, {alpha: 1}, 0.3, {ease: FlxEase.elasticInOut});
		defaultCamZoom = 0.9;
	case 1152:
		FlxTween.tween(blackScreen, {alpha: 1}, 1.7, {ease: FlxEase.linear});
	case 1232:
		FlxTween.tween(blackScreen, {alpha: 0}, 2, {ease: FlxEase.linear});
		defaultCamZoom = 1.2;
	case 1272:
		FlxTween.tween(blackScreen, {alpha: 1}, 0.2, {ease: FlxEase.linear});
	case 1280:
		FlxTween.tween(blackScreen, {alpha: 0}, 12.5, {ease: FlxEase.linear});
		defaultCamZoom = 0.9;
	case 2113:
		FlxTween.tween(FlxG.camera, {zoom: defaultCamZoom * 1.2}, 6, {ease: FlxEase.quadInOut});
	case 2175:
		FlxTween.tween(dad.scale, {x: 0.5, y: 0.5}, 0.7, {ease: FlxEase.sineInOut});
		FlxTween.tween(wall.scale, {x: 1, y: 1}, 0.7, {ease: FlxEase.linear});
	case 2176:
		boyfriend.alpha = 0;
		run.alpha = 1;
		remove(legs);
		remove(body);
		run.animation.play("bf siderun");
	case 2177:
		FlxTween.tween(blackScreen, {alpha: 1}, 2.5, {ease: FlxEase.linear});
	case 2179:
		FlxTween.tween(run, {x: run.x - 1000}, 0.8, {ease: FlxEase.quadInOut});
	}
}