//i will redo this bcz this is a illegal method -deadlyne

import funkin.backend.system.framerate.Framerate;
import flixel.FlxCamera;
import flixel.text.FlxTextBorderStyle;
import flixel.text.FlxTextFormatMarkerPair;
import flixel.text.FlxTextFormat;

var names:Array<String>=["watery-grave", "funhouse", "your-copy", "shrouded", "scuttlebug", "better-off"];
var name:Array<FlxText>=[];
var curSelected = 0;


//sob sob ;c aaaaaaaaaaaaaaah why i do thissssss aaaaaaaaaaaaaaa alpha shit mf aaaaaaaaaaaaaaaaaah fart fart aaaaaaaaaaaaaaaaaaaaaaaaaaa
function create(){
    FlxG.sound.playMusic(null);
    FlxG.sound.playMusic(Paths.music("classified_menu"));
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
    //bg.alpha = 0;

    for (i in 0...names.length) {
        songName = new FlxText(70, 50, 1150, names[i],  40, true);
        //songName.setFormat(Paths.font("sm64-v2-1.ttf"), 40, 0xFFFFFFFF);
        songName.alignment = 'center';
        
        add(songName);
        songName.cameras = [uiCamera];
        songName.antialiasing = true;
        name.push(songName);
        songName.ID=i;
    }   

    //changePortrait();
}
//mf

function update (){

    switch (curSelected){
        case 0:
            paintings.animation.play("watery-grave");
            if (controls.ACCEPT)
                {
                    PlayState.loadSong("watery-grave", "normal");
                    FlxG.switchState(new PlayState());
                }
        case 1:
            paintings.animation.play("funhouse");
            if (controls.ACCEPT)
                {
                    PlayState.loadSong("funhouse", "normal");
                    FlxG.switchState(new PlayState());
                }
        case 2:
            paintings.animation.play("your-copy");
            if (controls.ACCEPT)
                {
                    PlayState.loadSong("your-copy", "normal");
                    FlxG.switchState(new PlayState());
                }
        case 3:
            paintings.animation.play("shrouded");
            if (controls.ACCEPT)
                {
                    PlayState.loadSong("shrouded", "normal");
                    FlxG.switchState(new PlayState());
                }
        case 4:
            paintings.animation.play("scuttlebug");
            if (controls.ACCEPT)
                {
                    PlayState.loadSong("scuttlebug", "normal");
                    FlxG.switchState(new PlayState());
                }
        case 5:
            paintings.animation.play("better-off");
            if (controls.ACCEPT)
                {
                    PlayState.loadSong("better-off", "normal");
                    FlxG.switchState(new PlayState());
                }
    }
    if (controls.BACK)
		{
			FlxG.switchState(new MainMenuState());
		}
    if (FlxG.keys.justPressed.RIGHT)
        changeSelection(1);
    if (FlxG.keys.justPressed.LEFT)
        changeSelection(-1);

    for (spr in name){
        spr.visible = (spr.ID==curSelected);
    }

}

function changeSelection(change) 
    {
        curSelected += change;
    
        if (curSelected >= names.length)
            curSelected = 0;
        if (curSelected <0)
            curSelected = names.length-1;
    }