import funkin.backend.system.framerate.Framerate;
import funkin.backend.scripting.events.MenuChangeEvent;
import funkin.options.OptionsMenu;


var pauseGraphic:FlxSprite;
var box:FlxSprite;

var names:Array<String>=["Resume", "Restart Song", "Option", "Exit to menu"];
var name:Array<FlxText>=[];
var curSelected = 0;

var songs:Array<ChartMetaData> = [];
var songcomposer:String = '';

function create(){

    camera = new FlxCamera();
	camera.bgColor = 0x4F000000;
	FlxG.cameras.add(camera, false);
    camera.zoom= 0.88;

    pauseGraphic= new FlxSprite().loadGraphic(Paths.image("menu/PAUSE"));
    pauseGraphic.screenCenter();
    pauseGraphic.y -= (pauseGraphic.height) * 2;
    add(pauseGraphic);
    pauseGraphic.cameras = [camera];

    box = new FlxSprite().makeGraphic(630, 260, FlxColor.BLACK);
    box.screenCenter();
    box.alpha = 0.6;
    box.y += (pauseGraphic.height) * 2;
    add(box);
    box.cameras = [camera];

    for (i in 0...names.length) {
        menuItems  = new FlxText(325, 500, 660, names[i], 24);
        menuItems.setFormat(Paths.font("Mario64.ttf"), 36, FlxColor.WHITE);
        add(menuItems);
        menuItems.alignment = 'center';
        menuItems.antialiasing = true;
        name.push(menuItems);
        menuItems.ID=i;
    }   
    changeSelection(0);
}

function update(elapsed){
    if (FlxG.keys.justPressed.UP)
        changeSelection(-1);
    if (FlxG.keys.justPressed.DOWN)
        changeSelection(1);

    switch (curSelected){
    case 0:
            if (controls.ACCEPT)
                {
                    FlxG.cameras.remove(camera, true);
                    close();
                }
        case 1:
            if (controls.ACCEPT)
                {
                    FlxG.cameras.remove(camera, true);
                    FlxG.resetState();
                }
        case 2:

            if (controls.ACCEPT)
                {
                    FlxG.cameras.remove(camera, true);
                    FlxG.switchState(new OptionsMenu());
                }
        case 3:
            if (controls.ACCEPT)
                {
                    FlxG.cameras.remove(camera, true);
                    if (PlayState.isStoryMode)
                        FlxG.switchState(new StoryMenuState());
                    if (PlayState.chartingMode)
                        FlxG.switchState(new Charter(PlayState.SONG.meta.name, PlayState.difficulty, false));
                    if (!PlayState.isStoryMode && !PlayState.chartingMode)
                        FlxG.switchState(new FreeplayState());
                }
    }

    for (spr in name){
        spr.visible = (spr.ID==curSelected);
    }
}

function changeSelection(change) {
        curSelected += change;
    
        if (curSelected >= names.length)
            curSelected = 0;
        if (curSelected <0)
            curSelected = names.length-1;
}