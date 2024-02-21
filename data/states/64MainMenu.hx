import funkin.backend.utils.DiscordUtil;
import funkin.backend.scripting.events.DiscordPresenceUpdateEvent;
import discord_rpc.DiscordRpc;
import funkin.menus.MainMenuState;
import funkin.backend.scripting.events.MenuChangeEvent;
import funkin.backend.scripting.events.NameEvent;
import funkin.backend.scripting.EventManager;
import funkin.menus.credits.CreditsMain;
import funkin.options.OptionsMenu;
import funkin.editors.EditorPicker;
import funkin.menus.ModSwitchMenu;
import flixel.effects.FlxFlicker;
import flixel.addons.display.FlxBackdrop;
import funkin.backend.utils.CoolUtil;
import openfl.text.TextFormat;
import flixel.text.FlxTextBorderStyle;
import funkin.backend.system.framerate.Framerate;
import funkin.savedata.FunkinSave;

trace(FunkinSave.getSongHighscore("your-copy", "normal").score);


function create(){
    FlxG.mouse.visible = true;

    yellowCunFart = new FlxSprite();
    yellowCunFart.loadGraphic(Paths.image("menu/mainmenu/funnyBG"));
    yellowCunFart.screenCenter();
    add(yellowCunFart);

    greenbutton = new FlxSprite(-105, 25);
    greenbutton.loadGraphic(Paths.image("menu/mainmenu/Quite_Green"));
    greenbutton.scale.set(0.150, 0.150);
    add(greenbutton);

    bluebutton = new FlxSprite(75, 25);
    bluebutton.loadGraphic(Paths.image("menu/mainmenu/Bluestone1"));
    bluebutton.scale.set(0.150, 0.150);
    add(bluebutton);


    redbutton = new FlxSprite(250, 25);
    redbutton.loadGraphic(Paths.image("menu/mainmenu/RedStone1"));
    redbutton.scale.set(0.150, 0.150);
    add(redbutton);


    purplebutton = new FlxSprite(410, 25);
    purplebutton.loadGraphic(Paths.image("menu/mainmenu/Purple1"));
    purplebutton.scale.set(0.150, 0.150);
    add(purplebutton);

    file = new FlxSprite();
    file.loadGraphic(Paths.image("menu/mainmenu/phile"));
    file.scale.set(2.8, 2.8);
    file.updateHitbox();
    file.screenCenter();
    file.y = 96;
    add(file);

    
    story = new FlxSprite(330, 176);
    story.loadGraphic(Paths.image("menu/mainmenu/button"));
    add(story);
    storyT  = new FlxText(500, 176, 660, "Story Mode", 24);
    storyT.setFormat(Paths.font("Mario64.ttf"), 36, FlxColor.WHITE);
    add(storyT);

    freeplay = new FlxSprite(660, 176);
    if(FunkinSave.getSongHighscore("your-copy", "normal").score > 0){
        freeplay.loadGraphic(Paths.image("menu/mainmenu/button"));
    }
    else
        freeplay.loadGraphic(Paths.image("menu/mainmenu/lockedbutton"));
    add(freeplay);
    freeplayT= new FlxText(825, 176, 660, "Freeplay", 24);
    freeplayT.setFormat(Paths.font("Mario64.ttf"), 36, FlxColor.WHITE);
    add(freeplayT);

    credits = new FlxSprite(330, 315);
    credits.loadGraphic(Paths.image("menu/mainmenu/button"));
    add(credits);
    creditsT  = new FlxText(500, 315, 660, "Credits", 24);
    creditsT.setFormat(Paths.font("Mario64.ttf"), 36, FlxColor.WHITE);
    add(creditsT);

    option = new FlxSprite(660, 315);
    option.loadGraphic(Paths.image("menu/mainmenu/button"));
    add(option);
    optionT  = new FlxText(825, 315, 660, "Option", 24);
    optionT.setFormat(Paths.font("Mario64.ttf"), 36, FlxColor.WHITE);
    add(optionT);


    FlxG.sound.playMusic(Paths.music("classified_menu"));
}

function update(elapsed){

    if (FlxG.keys.justPressed.SEVEN) {
            persistentUpdate = false;
            persistentDraw = true;
            openSubState(new EditorPicker());
    }


    if (controls.SWITCHMOD) {
        openSubState(new ModSwitchMenu());
        persistentUpdate = false;
        persistentDraw = true;
    }

    if(FlxG.mouse.overlaps(freeplay))
        {
            freeplay.scale.x = lerp(1.2, freeplay.scale.x, 0.95, true);
            freeplay.scale.y = lerp(1.2, freeplay.scale.y, 0.95, true);

            if(FlxG.mouse.justPressed && FunkinSave.getSongHighscore("your-copy", "normal").score > 0)
            {
                FlxG.switchState(new FreeplayState());
            }
        }
    else
        freeplay.scale.x = lerp(1, freeplay.scale.x, 0.95, true);
        freeplay.scale.y = lerp(1, freeplay.scale.y, 0.95, true);

    if(FlxG.mouse.overlaps(option))
        {
            option.scale.x = lerp(1.2, option.scale.x, 0.95, true);
            option.scale.y = lerp(1.2, option.scale.y, 0.95, true);
    
            if(FlxG.mouse.justPressed)
            {
                FlxG.switchState(new OptionsMenu());
            }
        }
    else
        option.scale.x = lerp(1, option.scale.x, 0.95, true);
        option.scale.y = lerp(1, option.scale.y, 0.95, true);
    
    if(FlxG.mouse.overlaps(credits))
        {
            credits.scale.x = lerp(1.2, credits.scale.x, 0.95, true);
            credits.scale.y = lerp(1.2, credits.scale.y, 0.95, true);

        if(FlxG.mouse.justPressed)
                {
                    FlxG.switchState(new OptionsMenu());
                }
        }
    else
            credits.scale.x = lerp(1, credits.scale.x, 0.95, true);
            credits.scale.y = lerp(1, credits.scale.y, 0.95, true);

        if(FlxG.mouse.overlaps(story))
            {
                story.scale.x = lerp(1.2, story.scale.x, 0.95, true);
                story.scale.y = lerp(1.2, story.scale.y, 0.95, true);
        
            if(FlxG.mouse.justPressed)
           {
            __gen_week();
            FlxG.switchState(new PlayState());

                }
    else
            story.scale.x = lerp(1, story.scale.x, 0.95, true);
            story.scale.y = lerp(1, story.scale.y, 0.95, true);
}}

function __gen_week() {
        name: "c",
        id: "c",
        sprite: null,
        chars: [null, null, null],
        songs: [{name: "watery-grave", hide: false}, {name: "funhouse", hide: false}, {name: "your-copy", hide: false}],
        difficulties: ['normal']
}