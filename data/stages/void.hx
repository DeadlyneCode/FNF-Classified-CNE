

function create() {

	remove(dad);
    remove(gf);
    remove(boyfriend);

	defaultCamZoom = 0.9;

    dad.x = 100;
    dad.y = 100;
    boyfriend.y = -27;
    boyfriend.x = 362;
  camHUD.alpha = 1;

	

	add(dad);
}

function onCameraMove(){
    if (curCameraTarget == 1)
		  FlxTween.tween(camHUD, {alpha: 1}, 0.1, {ease: FlxEase.quadInOut});
    if (curCameraTarget == 0)
		  FlxTween.tween(camHUD, {alpha: 0}, 0.1, {ease: FlxEase.quadInOut});
}