package states ;

import flixel.FlxG;
import flixel.FlxState;
import components.Attachable;
import components.CenterPositionable;
import components.Component;
import components.Entity;
import flixel.FlxSprite;

class PlayState extends FlxState {
	var a:A;
	
	override public function create():Void {
		super.create();
		a = new A();
		add(a);
		FlxG.watch.add(a, "x");
		FlxG.watch.add(a, "y");
		FlxG.watch.add(a, "width");
		FlxG.watch.add(a, "height");
		FlxG.watch.add(a.center, "x");
		FlxG.watch.add(a.center, "y");
	}
	
	override public function update(dt:Float):Void {
		super.update(dt);
		
		a.velocity.x = 0;
		if (FlxG.keys.pressed.LEFT) a.velocity.x = -20;
		if (FlxG.keys.pressed.RIGHT) a.velocity.x = 20;
		if (FlxG.keys.pressed.X) a.center.x = 100;
	}
}

class A extends FlxSprite implements CenterPositionable {
	public function new() {
		super();
	}
}