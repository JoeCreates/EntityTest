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
	var b:B;
	
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
		
		b = new B();
		add(b);
		FlxG.watch.add(b, "x");
		a.attachable.attach(b);
	}
	
	override public function update(dt:Float):Void {
		super.update(dt);
		
		a.velocity.x = 0;
		if (FlxG.keys.pressed.LEFT) a.velocity.x = -20;
		if (FlxG.keys.pressed.RIGHT) a.velocity.x = 20;
		if (FlxG.keys.pressed.X) a.center.x = 100;
		
		a.attachable.lateUpdate(dt);
		b.attachable.lateUpdate(dt);
	}
}

class A extends FlxSprite implements CenterPositionable implements Attachable {
	public function new() { // TODO c'tor is currently required
		super();
	}
}

class B extends FlxSprite implements Attachable {
	public function new() {
		super();
	}
}