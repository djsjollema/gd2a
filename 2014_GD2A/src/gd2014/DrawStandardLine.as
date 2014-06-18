package gd2014 
{
	import flash.display.Graphics;
	import flash.display.LineScaleMode;
	import flash.display.Sprite;
	/**
	 * ...
	 * @author Jelle Sjollema
	 */
	public class DrawStandardLine extends Sprite
	{
		public var l:Line_standard = new Line_standard( -1, 2, 200);
		private var xstap:Number  = 1;
		public var rooster:Rooster = new Rooster();
		
		public function DrawStandardLine() 
		{
			var g:Graphics = this.graphics;
			addChild(rooster);
			
			for (var x:uint = 0; x <= 800; x += xstap) {
				var P:Punt = new Punt(x, l.berekenY(x));
				P.tekenPunt(10, 0x0000ff);
				trace(x, l.berekenY(x));
				addChild(P);
			}
			
		}
		
	}

}