function stepHit(curStep:Int){
	switch(curStep){
	case 70:
		FlxTween.tween(FlxG.camera, {zoom: defaultCamZoom * 1.8}, 4.5, {ease: FlxEase.quadInOut});
	case 126:
		FlxTween.tween(dad.scale, {x: 1, y: 1}, 0.7, {ease: FlxEase.elasticInOut});
		FlxTween.tween(dad, {alpha: 1}, 0.3, {ease: FlxEase.elasticInOut});
		defaultCamZoom = 0.9;
	case 1152:
		FlxTween.tween(stage.stageSprites["black"], {alpha: 1}, 1.7, {ease: FlxEase.linear});
	case 1232:
		FlxTween.tween(stage.stageSprites["black"], {alpha: 0}, 2, {ease: FlxEase.linear});
		defaultCamZoom = 1.2;
	case 1272:
		FlxTween.tween(stage.stageSprites["black"], {alpha: 1}, 0.2, {ease: FlxEase.linear});
	case 1280:
		FlxTween.tween(stage.stageSprites["black"], {alpha: 0}, 12.5, {ease: FlxEase.linear});
		defaultCamZoom = 0.9;
	case 2113:
		FlxTween.tween(FlxG.camera, {zoom: defaultCamZoom * 1.2}, 6, {ease: FlxEase.quadInOut});
	case 2175:
		FlxTween.tween(dad.scale, {x: 0.5, y: 0.5}, 0.7, {ease: FlxEase.sineInOut});
		FlxTween.tween(stage.stageSprites["wall"].scale, {x: 1, y: 1}, 0.7, {ease: FlxEase.linear});
	case 2177:
		FlxTween.tween(stage.stageSprites["black"], {alpha: 1}, 2.5, {ease: FlxEase.linear});
	}
}