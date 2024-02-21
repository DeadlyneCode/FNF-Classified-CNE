

function postCreate() {
    CoolUtil.playMusic(null);
    FlxG.sound.play(Paths.music('freakyMenu'));

    bg = new FlxSprite();
    bg.loadGraphic(Paths.image('menu/title/bg'));
    bg.antialiasing = true;
    bg.screenCenter();
    bg.scale.set(2.5, 2.5);
    add(bg);




    pressenter = new FlxSprite(150, 600);
    pressenter.loadGraphic(Paths.image('menu/title/pressenter'));
    pressenter.antialiasing = false;
    pressenter.scale.set(4.2, 4.2);
    add(pressenter);

    mariohead = new FlxSprite();
    mariohead.frames = Paths.getSparrowAtlas('menu/title/MarioHead');
    mariohead.animation.addByPrefix('startup', 'MarioHead startup', 30, false);
    mariohead.animation.addByPrefix('idle', 'MarioHead idle', 30, true);
    mariohead.scale.set(0.9, 0.9);
    add(mariohead);


    mariohead.animation.play('startup', false);
    mariohead.animation.play('idle');


}

function update(){
    if  (FlxG.keys.justPressed.ENTER){
        FlxG.switchState(new MainMenuState());
    }
}