package;
import massive.munit.Assert;
import massive.munit.async.AsyncFactory;
import openfl.display.Shape;
import openfl.events.Event;
import openfl.events.TimerEvent;

/**
 * ...
 * @author gelert
 */
class Test {

	public function new() {}
	
	@Test public function assets() {
		Assert.isNotNull(openfl.Assets.getBitmapData("img/test.jpg"));
		trace('@gelert: ${openfl.Assets.getText("json/movies.json")}');
	}
	
	//It's ok!
	@AsyncTest public function asyncWithMunitTimer(factory:AsyncFactory) {
		var handler:Dynamic = factory.createHandler(this, asyncCompleteCallback, 300);
		massive.munit.util.Timer.delay(handler, 200);
	}
	
	@AsyncTest public function asyncWithHaxeTimer(factory:AsyncFactory) {
		var handler:Dynamic = factory.createHandler(this, asyncCompleteCallback, 300);
		haxe.Timer.delay(handler, 200);
	}
	
	@AsyncTest public function asyncWithOpenflTimer(factory:AsyncFactory) {
		var handler:Dynamic = factory.createHandler(this, asyncCompleteCallback, 300);
		var timer = new openfl.utils.Timer(200, 1);
		timer.addEventListener(TimerEvent.TIMER, function(_) { handler(); });
		timer.start();
	}
	
	@AsyncTest public function asyncWithEnterFrame(factory:AsyncFactory) {
		var handler:Dynamic = factory.createHandler(this, asyncCompleteCallback, 300);
		var shape = new Shape();
		shape.addEventListener(Event.ENTER_FRAME, function(_) { handler(); });
	}
	
	private function asyncCompleteCallback() {
		Assert.isFalse(false);
	}
}