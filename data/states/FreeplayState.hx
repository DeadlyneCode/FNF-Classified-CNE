//i will redo this bcz this is a illegal method -deadlyne

import funkin.backend.system.framerate.Framerate;
import flixel.FlxCamera;
import funkin.menus.FreeplayState;

//sob sob ;c aaaaaaaaaaaaaaah why i do thissssss aaaaaaaaaaaaaaa alpha shit mf aaaaaaaaaaaaaaaaaah fart fart aaaaaaaaaaaaaaaaaaaaaaaaaaa
function create(){
    
    uiCamera = new FlxCamera(0, 0, 1280, 720);
	uiCamera.bgColor = FlxColor.TRANSPARENT;
	FlxG.cameras.add(uiCamera, false);

    paintings = new FlxSprite();
    paintings.frames = Paths.getSparrowAtlas('menu/freeplay/paintings/pt');
    paintings.animation.addByPrefix("watery-grave", "pt watery-grave", 24, true);
    paintings.animation.addByPrefix("funhouse", "pt funhouse", 24, true);
    paintings.animation.addByPrefix("your-copy", "pt your-copy", 24, true);
    paintings.animation.addByPrefix("shrouded", "pt shrouded", 24, true);
    paintings.animation.addByPrefix("scuttlebug", "pt scuttlebug", 24, true);
    paintings.animation.addByPrefix("better-off", "pt better-off", 24, true);
    paintings.antialiasing = true;
    paintings.scale.set(0.35,0.35);
    paintings.screenCenter();
    add(paintings);
    paintings.cameras = [uiCamera];

    bg = new FlxSprite();
    bg.loadGraphic(Paths.image('menu/freeplay/bg/room'));
    bg.antialiasing = true;
	bg.updateHitbox();
	bg.screenCenter();
    bg.scale.set(0.335,0.335);
    add(bg);
    bg.cameras = [uiCamera];

    changePortrait();
}
//mf
function postUpdate(){
    switch(songs[curSelected].name){
        case 'watery-grave':
            paintings.animation.play('watery-grave');
            paintings.alpha = 1;
            FlxG.sound.music.volume = 1;
        case 'funhouse': 
            paintings.animation.play('funhouse');
        case "your-copy": 
            paintings.animation.play('your-copy');
        case "shrouded":
            paintings.animation.play('shrouded');
            FlxG.sound.music.volume = 0;
        case "scuttlebug": 
            paintings.animation.play('scuttlebug');
        case "better-off":
            paintings.alpha = 1;
            paintings.animation.play('better-off');
            FlxG.sound.music.volume = 1;
    }
}
function changePortrait(){
    portrait.alpha = 0;
    FlxTween.tween(portrait, {alpha: 1}, 0.3, {ease: FlxEase.expoOut});
}