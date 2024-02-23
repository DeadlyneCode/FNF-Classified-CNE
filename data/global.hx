
import funkin.backend.utils.NativeAPI;
import openfl.system.Capabilities;
import funkin.backend.utils.NdllUtil;
import lime.graphics.Image;


import funkin.backend.system.framerate.Framerate;
import flixel.FlxCamera;
var oldtv2 = new CustomShader('tuto');
function create(){
    
    uiCamera = new FlxCamera(0, 0, 1280, 720);
	uiCamera.bgColor = FlxColor.TRANSPARENT;
	FlxG.cameras.add(uiCamera, false);
    uiCamera.addShader(oldtv2);
}
function new(){
    window.title =  "FNF : CLASSIFIED - Codename Engine ";
    window.setIcon(Image.fromBytes(Assets.getBytes(Paths.image('icon')))); 
}

static var initialized:Bool = false;

static var redirectStates:Map<FlxState, String> = [
    TitleState => "64TitleState",
    MainMenuState => "64MainMenu",
    StoryMenuState => "64MainMenu",
    FreeplayState => "64Freeplay",
];

function update(elapsed) {
    if (FlxG.keys.justPressed.F6)
        NativeAPI.allocConsole();
    if (FlxG.keys.justPressed.F5)
        FlxG.resetState();
}

function preStateSwitch() {
    FlxG.camera.bgColor = 0xFF000000;

	if (!initialized){
		initialized = true;
		FlxG.game._requestedState = new ModState('64TitleState');
    }else
		for (redirectState in redirectStates.keys())
			if (FlxG.game._requestedState is redirectState)
				FlxG.game._requestedState = new ModState(redirectStates.get(redirectState));
}
function postUpdate(elapsed:Float) {
	var time:Float = 0;
	time += elapsed;
	oldtv2.iTime = time;
	
	}