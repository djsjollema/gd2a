package gd2014  
{
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author Jelle Sjollema
	 */
	public class Rooster extends Sprite
	{
		
		public function Rooster() 
		{
			for (var i:int = 0; i <= 30; i++)
			{
				if (i % 4 == 0)
				{
					graphics.lineStyle(3, 0xAAAAAA);
				}
				else
				{
					graphics.lineStyle(1, 0x999999);
				}
				graphics.moveTo(0, i*25);
				graphics.lineTo(800, i*25);
			}
			
			for (var j:int = 0; j <= 40; j++)
			{
				if (j % 4 == 0)
				{
					graphics.lineStyle(3, 0xAAAAAA);
				}
				else
				{
					graphics.lineStyle(1, 0x999999);
				}
				graphics.moveTo(j * 25, 0);
				graphics.lineTo(j * 25, 450);
				
			}

			
			
		}
		
	}
	
}