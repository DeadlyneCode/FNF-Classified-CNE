var oldtv2 = new CustomShader('tuto');

function postCreate(){
	camGame.addShader(oldtv2);
}

function create() {

	run = new FlxSprite(595,530);
	run.loadGraphic(Paths.image("characters/HeOnTheRun"));
	run.frames = Paths.getSparrowAtlas("characters/HeOnTheRun");
	run.animation.addByPrefix("bf siderun", "bf siderun", 24, false);
	run.scale.set(0.6,0.6);
	insert(members.indexOf(stage.stageSprites["wall"])+1, run);

	dad.scale.set(0,0);
	dad.alpha = 0;
	boyfriend.alpha = 1;
	run.alpha = 0;

	remove(gf);
	

}
function stepHit(curStep:Int){
	switch(curStep){
	case 2176:
		boyfriend.alpha = 0;
		run.alpha = 1;
		remove(stage.stageSprites["legs"]);
		remove(stage.stageSprites["body"]);
		run.animation.play("bf siderun");
	case 2179:
		FlxTween.tween(run, {x: run.x - 1000}, 0.8, {ease: FlxEase.quadInOut});
	}
}
function postUpdate(elapsed:Float) {
	var time:Float = 0;
	time += elapsed;
	oldtv2.iTime = time;
	
	}