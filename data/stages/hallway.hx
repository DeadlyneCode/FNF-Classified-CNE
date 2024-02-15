function postCreate() {
	dad.scale.set(0,0);	
}

function create() {

	remove(dad);
    remove(gf);
    remove(boyfriend);

	hall = new FlxSprite(300, 230).loadGraphic(Paths.image("stages/warioStage/Hallway"));
	hall.frames = Paths.getSparrowAtlas("stages/warioStage/Hallway");
	hall.animation.addByPrefix("Hallway idle", "Hallway idle", 30, true);
	hall.animation.play("Hallway idle");
	hall.scale.set(1.4, 1.4);
	add(hall);

	defaultCamZoom = 0.9;

    dad.x = 550;
    dad.y = 200;
    boyfriend.y = 210;
    boyfriend.x = 610;


	

	add(dad);
    add(boyfriend);
}

function stepHit(){
	if (curBeat == 128) {
		FlxTween.tween(dad.scale, {x: 1, y: 1}, 0.1, {ease: FlxEase.elasticInOut});
	}
}