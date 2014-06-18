package gd2014 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	/**
	 * ...
	 * @author Jelle Sjollema
	 */
	public class Punt extends Sprite
	{
		public var slepen:Boolean = false;
		
		public function Punt(x:Number, y:Number) 
		{
			this.x = x;
			this.y = y;
		}
		
		public function tekenPunt(r:Number, color:uint):void
		{
			graphics.lineStyle(3);
			graphics.beginFill(color);
			graphics.drawCircle(0, 0, r);
			graphics.endFill();
		}
		
		public function sleepPunt():void
		{
			this.buttonMode = true;
			this.addEventListener(MouseEvent.MOUSE_DOWN, startSleep);
			this.addEventListener(MouseEvent.MOUSE_UP, stopSleep);
		}
		
		public function startSleep(e:MouseEvent):void
		{
			this.startDrag();
			slepen = true;
		}
		
		private function stopSleep(e:MouseEvent):void
		{
			this.stopDrag();
			slepen = false;
		}	
	}
}