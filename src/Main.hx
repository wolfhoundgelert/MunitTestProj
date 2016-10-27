package;

import openfl.display.Sprite;
import openfl.Lib;

/**
 * ...
 * @author gelert
 */
class Main extends Sprite {

	public function new() {
		super();
		
		// Assets:
		// openfl.Assets.getBitmapData("img/assetname.jpg");
		
		trace('@gelert: Hello!');
		haxe.Timer.delay(function() { trace('@gelert: Timer!'); }, 200);
	}

}
