function create() {

    defaultCamZoom = 0.7;

    dad.x = 250;
    dad.y = 150;
    boyfriend.y = 300;
    boyfriend.x = 1300;


    remove(dad);
	remove(gf);
    remove(boyfriend);

    bg = new FlxSprite(-610, -500).loadGraphic(Paths.image("stages/bobOmbBattlefield/bg"));
    bg.scrollFactor.set(0.6, 0.6);
    add(bg);

    hill = new FlxSprite(-610, -500).loadGraphic(Paths.image("stages/bobOmbBattlefield/hill"));
    hill.scale.set(1.2, 1.2);
    hill.updateHitbox();
    hill.antialiasing = true;
    add(hill);

    add(dad);
    add(boyfriend);
}