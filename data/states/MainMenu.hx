
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


    FlxG.sound.playMusic(Paths.music("classified_menu"));
}

function update(){
    if (controls.BACK) {
        FlxG.switchState(new TitleState());
    }
    if (FlxG.keys.justPressed.ENTER) {
        FlxG.switchState(new MainMenuState());
    }
}

