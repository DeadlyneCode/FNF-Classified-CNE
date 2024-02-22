public var cameraMovementStrength = 20;


function postUpdate(elapsed:Float){
    var anim = strumLines.members[curCameraTarget].characters[0].getAnimName();
    switch(anim){
        case "singLEFT"|"singLEFT-alt": camFollow.x -= cameraMovementStrength;
        case "singDOWN"|"singDOWN-alt": camFollow.y += cameraMovementStrength;
        case "singUP"|"singUP-alt": camFollow.y -= cameraMovementStrength;
        case "singRIGHT"|"singRIGHT-alt": camFollow.x += cameraMovementStrength;
    }
}