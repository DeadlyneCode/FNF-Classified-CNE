function postCreate(){
    boyfriend.setPosition(1100, 200);
    dad.setPosition(null, 250);
    gf.setPosition(600, 200);
}

function create(){
    remove(gf);
    remove(dad);
    remove(boyfriend);

    defaultCamZoom = 0.5;
    floor3d = new FlxSprite(-200, -500).loadGraphic(Paths.image("stages/personalized/ClassyEffect"));
    floor3d.scale.set(2, 2);
    light3d = new FlxSprite(-200, -500).loadGraphic(Paths.image("stages/personalized/3DSpotlight"));
    light3d.scale.set(2, 2);
    light3d.blend = 1;
    floor2d = new FlxSprite(-1000, -500).loadGraphic(Paths.image("stages/personalized/floor"));
    light2d = new FlxSprite(-1000, -500).loadGraphic(Paths.image("stages/personalized/spotlight"));
    light2d.blend = 1;
    piracy = new FlxSprite(-300, -180).loadGraphic(Paths.image("stages/personalized/Piracy_is_a_one_piece"));
    piracy.scale.set(0.7, 0.7);
    piracy.alpha = 0;
    piracy.cameras = [camHUD];
    
    add(floor3d);
	add(floor2d);
    add(gf);
    add(boyfriend);
    add(dad);
    add(light2d);
    add(piracy);
}

function stepHit(curStep:Int){
    for  (i in [iconP1, iconP2, healthBarBG, healthBar, scoreTxt, missesTxt, accuracyTxt])
		
    switch (curStep){
        case 1590:
            FlxTween.tween(piracy, {alpha: 1}, 1, {ease: FlxEase.linear});
            FlxTween.tween(i, {alpha: 0}, 1, {ease: FlxEase.linear});
        case 1620:
            FlxTween.tween(i, {alpha: 1}, 1, {ease: FlxEase.linear});
            FlxTween.tween(piracy, {alpha: 0}, 1, {ease: FlxEase.linear});
        case 1624:
            defaultCamZoom = 1;
            remove(light2d);
            remove(floor2d);
            add(light3d);
    }
}

function onCameraMove(){
    if (curCameraTarget == 1)
            event.animSuffix = "";
    if (curCameraTarget == 0)
            event.animSuffix = "-alt";
}