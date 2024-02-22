//i will redo this bcz this is a illegal method -deadlyne
//this is more clean deadlyne -playeah

import funkin.backend.system.framerate.Framerate;


var names:Array<String>=["watery grave", "funhouse", "your-copy", "shrouded", "scuttlebug", "better-off"];
var name:Array<FlxText>=[];
var curSelected = 0;

function create(){
    FlxG.sound.playMusic(null);
    FlxG.sound.playMusic(Paths.music("classified_menu"));

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

    bg = new FlxSprite();
    bg.loadGraphic(Paths.image('menu/freeplay/bg/room'));
    bg.antialiasing = true;
	bg.updateHitbox();
	bg.screenCenter();
    bg.scale.set(0.335,0.335);
    add(bg);

    bf = new FlxSprite();
    bf.loadGraphic(Paths.image('menu/freeplay/bfAndGf/bf'));
    bf.antialiasing = true;
	bf.updateHitbox();
	bf.screenCenter();
    bf.scale.set(0.335,0.335);
    add(bf);

    var randomImage = FlxG.random.int(1, 4);
    gf = new FlxSprite();
    gf.loadGraphic(Paths.image('menu/freeplay/bfAndGf/gf'+randomImage));
    gf.antialiasing = true;
	gf.updateHitbox();
	gf.screenCenter();
    gf.scale.set(0.335,0.335);
    add(gf);



    harrow = new FlxSprite();
    harrow.loadGraphic(Paths.image('menu/freeplay/bg/arrow'));
    harrow.antialiasing = true;
	harrow.updateHitbox();
	harrow.screenCenter();
    harrow.scale.set(0.335,0.335);
    add(harrow);

    for (i in 0...names.length) {
        songName  = new FlxText(325, 50, 660, names[i], 24);
        songName.setFormat(Paths.font("sm64-v2-1.ttf"), 36, FlxColor.WHITE);
        add(songName);
        songName.alignment = 'center';
        songName.antialiasing = true;
        name.push(songName);
        songName.ID=i;
    }   
}

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
            bg.loadGraphic(Paths.image('menu/freeplay/bg/room'));
            bf.visible = true;
            gf.visible = true;
            FlxG.sound.music.volume = 1;
            if (controls.ACCEPT)
                {
                    PlayState.loadSong("your-copy", "normal");
                    FlxG.switchState(new PlayState());
                }
        case 3:
            paintings.animation.play("shrouded");
            bg.loadGraphic(Paths.image("menu/freeplay/bg/roomEvil"));
            bf.visible = false;
            gf.visible = false;
            FlxG.sound.music.volume = 0;
            if (controls.ACCEPT)
                {
                    PlayState.loadSong("shrouded", "normal");
                    FlxG.switchState(new PlayState());
                }
        case 4:
            paintings.animation.play("scuttlebug");
            FlxG.sound.music.volume = 1;
            bg.loadGraphic(Paths.image('menu/freeplay/bg/room'));
            bf.visible = true;
            gf.visible = true;
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