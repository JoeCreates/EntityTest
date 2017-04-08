package states ;

import flixel.FlxState;
import components.Attachable;
import components.CenterPositionable;
import components.Component;
import components.Entity;
import flixel.FlxSprite;

class PlayState extends FlxState {
	override public function create():Void {
		super.create();
		var a = new A();
		add(a);
	}
}

class A extends FlxSprite implements CenterPositionable {
	
}