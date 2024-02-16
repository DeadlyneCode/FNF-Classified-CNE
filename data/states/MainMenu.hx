function create(){
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
}

function update(){
    if (controls.BACK) {
        FlxG.switchState(new TitleState());
    }
}

