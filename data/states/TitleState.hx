function create() {
    mariohead = new FlxSprite();
    mariohead.frames = Paths.getSparrowAtlas('menu/title/MarioHead');
    mariohead.antialiasing = ClientPrefs.globalAntialiasing;
    mariohead.animation.addByPrefix('startup', 'MarioHead startup', 30, false);
    mariohead.animation.addByPrefix('idle', 'MarioHead idle', 30, true);
    mariohead.scale.set(0.9, 0.9);
    add(mariohead);


    mariohead.animation.play('startup', false);
    mariohead.animation.play('idle');

}