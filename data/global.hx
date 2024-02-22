
import funkin.backend.utils.NativeAPI;
import openfl.system.Capabilities;
import funkin.backend.utils.NdllUtil;
import lime.graphics.Image;



static var initialized:Bool = false;

static var redirectStates:Map<FlxState, String> = [
    TitleState => "64TitleState",
    MainMenuState => "64MainMenu",
    StoryMenuState => "64MainMenu",
    
];
window.title =  "FNF : CLASSIFIED";
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