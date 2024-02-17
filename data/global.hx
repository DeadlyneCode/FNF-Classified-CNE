window.title =  "FNF : CLASSIFIED";

var oldtv = new CustomShader('oldTVShader');
//var tv = new CustomShader('wave');

function update(elapsed){
    if (FlxG.keys.justPressed.F5)
        FlxG.resetState();
}
function postCreate(){
    camGame.addShader(oldtv);
}