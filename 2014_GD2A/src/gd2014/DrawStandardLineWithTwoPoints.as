package gd2014 
{
	import flash.display.Graphics;
	import flash.display.Sprite;
	import flash.events.Event;
	/**
	 * ...
	 * @author Jelle Sjollema
	 */
	public class DrawStandardLineWithTwoPoints extends Sprite
	{
		public var rooster:Rooster = new Rooster();
		public var P:Punt = new Punt(100, 100);
		public var Q:Punt = new Punt(600, 200);
		public var lijn:Line_standard = new Line_standard(0, 0, 0);
		
		public var lijn0:Punt = new Punt(0, 0);
		public var lijn800:Punt = new Punt(800, 0);
		private var g:Graphics;
		
		public function DrawStandardLineWithTwoPoints() 
		{
			g = this.graphics;
			addChild(rooster);
			P.tekenPunt(15, 0xff0000); Q.tekenPunt(15, 0x0000ff);
			P.sleepPunt(); Q.sleepPunt();
			addChild(P); addChild(Q);
			lijn0.tekenPunt(5, 0x000000); lijn800.tekenPunt(5, 0x000000);
			addChild(lijn0); addChild(lijn800);
			
			addEventListener(Event.ENTER_FRAME, loop);
		}
		
		private function loop(e:Event):void 
		{
			lijn.a = - (Q.y - P.y);
			lijn.b = Q.x - P.x;
			lijn.c = lijn.a * P.x + lijn.b * P.y;
			
			if (lijn.berekenY(0) > 0 && lijn.berekenY(0) < 450) {
				lijn0.x = 0;
				lijn0.y = lijn.berekenY(0);
			}
			else
			{
				lijn0.y = 0;
				lijn0.x = lijn.berekenX(0);
			}

			if (lijn.berekenY(800) > 0 && lijn.berekenY(800) < 450) {
				lijn800.x = 800;
				lijn800.y = lijn.berekenY(800);
			}
			else
			{
				lijn800.y = 450;
				lijn800.x = lijn.berekenX(450);
			}			
			
			
			g.clear();
			g.lineStyle(5,0x000000);
			g.moveTo(lijn0.x, lijn0.y);
			g.lineTo(lijn800.x, lijn800.y);
		}
		
	}

}