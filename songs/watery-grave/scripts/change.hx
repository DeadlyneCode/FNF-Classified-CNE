import funkin.game.Character;
var chars:Array<String>= ["gf night", "bfnight stage", "dad night"];
var char:Array<Character>=[];
var icon:Array<HealthIcon>=[];
var preload:Character;
var opponentMode:Bool = false;

function create() {
    for (i in 0...chars.length) {
	preload = new Character(300, -200, chars[i]);
	}

}

function stepHit(curStep:Int){
	switch(curStep){
		case 134:
			FlxG.camera.flash(0xFFFFFFFF,3);
			change_dad('dad night');
			change_gf('gf night');
			change_bf('bfnight stage');
	}
}


function change_dad(type:String){
	for (i in 0...chars.length) {
		if (chars[i]!= type){
			continue;
		}
		remove(dad);
		remove(iconP2);
		dad = new Character(dad.x, dad.y, chars[i], dad.isPlayer, false);
		iconP2 = new HealthIcon(dad != null ? dad.getIcon() : "face", false);
		iconP2.cameras = [camHUD];
		iconP2.y = healthBar.y - (iconP2.height / 2);
		
		var leftColor:Int = dad != null && dad.iconColor != null && Options.colorHealthBar ? dad.iconColor : 0xFFFF0000;
		var rightColor:Int = boyfriend != null && boyfriend.iconColor != null && Options.colorHealthBar ? boyfriend.iconColor : 0xFF66FF33;
		if (opponentMode) healthBar.createFilledBar(rightColor, leftColor);
		else healthBar.createFilledBar(leftColor, rightColor);
		healthBar.updateBar();
		add(dad);
		add(iconP2);
		break;
        }
}

function change_gf(type:String){
	for (i in 0...chars.length) {
		if (chars[i]!= type){
			continue;
		}
		remove(gf);
		remove(iconP2);
		gf = new Character(gf.x, gf.y, chars[i], gf.isGf, false);
		add(gf);
		break;
        }
}

function change_bf(type:String){
	for (i in 0...chars.length) {
		if (chars[i]!= type){
			continue;
		}
		remove(boyfriend);
		remove(iconP1);
		boyfriend = new Character(boyfriend.x, boyfriend.y, chars[i], boyfriend.isPlayer, false);
		iconP1 = new HealthIcon(dad != null ? boyfriend.getIcon() : "face", false);
		iconP1.cameras = [camHUD];
		iconP1.y = healthBar.y - (iconP2.height / 2);
		
		var leftColor:Int = dad != null && dad.iconColor != null && Options.colorHealthBar ? dad.iconColor : 0xFFFF0000;
		var rightColor:Int = boyfriend != null && boyfriend.iconColor != null && Options.colorHealthBar ? boyfriend.iconColor : 0xFF66FF33;
		if (opponentMode) healthBar.createFilledBar(rightColor, leftColor);
		else healthBar.createFilledBar(leftColor, rightColor);
		healthBar.updateBar();
		add(boyfriend);
		add(iconP1);
		break;
        }
}