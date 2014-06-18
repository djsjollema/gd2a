package gd2014 
{
	import flash.display.Sprite;
	/**
	 * ...
	 * @author Jelle Sjollema
	 */
	public class DrawLine extends Sprite
	{
		public var l:Line_slope_intercept;
		public var rooster:Rooster = new Rooster()
		
		public function DrawLine() 
		{
			addChild(rooster);
			l = new Line_slope_intercept(-0.1, 400);
			
			for (var x:uint = 0; x <= 800; x += 1) {
				var p:Punt = new Punt(x, l.calculateY(x));
				p.tekenPunt(10, 0xffff00);
				p.alpha = 0.5;
				addChild(p);
			}
		}
		
	}

}