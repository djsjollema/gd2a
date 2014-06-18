package gd2014 
{
	import flash.display.Graphics;
	import flash.display.Sprite;
	import flash.events.Event;
	/**
	 * ...
	 * @author Jelle Sjollema
	 */
	public class DrawLineWithTwoPoints extends Sprite
	{
		public var l:Line_slope_intercept = new Line_slope_intercept(0,0);
		public var rooster:Rooster = new Rooster();
		public var P:Punt = new Punt(100, 200);
		public var Q:Punt = new Punt(600, 400);
		
		public function DrawLineWithTwoPoints() 
		{
			addChild(rooster);
			P.tekenPunt(10, 0xff0000); Q.tekenPunt(10, 0x0000ff);
			addChild(P); addChild(Q);			
			P.sleepPunt(); Q.sleepPunt();
			
			addEventListener(Event.ENTER_FRAME, loop);

		}
		
		private function loop(e:Event):void 
		{
			l.a = (P.y - Q.y) / (P.x - Q.x);
			l.b = P.y - (l.a * P.x); 
			
			var g:Graphics = this.graphics;
			g.clear();
		
			g.lineStyle(2);
			g.moveTo(0, l.calculateY(0));
			g.lineTo(800, l.calculateY(800));
		}
		
	}

}