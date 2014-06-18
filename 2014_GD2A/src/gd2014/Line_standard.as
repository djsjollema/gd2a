package gd2014 
{
	/**
	 * ...
	 * @author Jelle Sjollema
	 */
	public class Line_standard 
	{
		public var a:Number;
		public var b:Number;
		public var c:Number;
		
		public function Line_standard(a:Number, b:Number, c:Number) 
		{
			this.a = a;
			this.b = b;
			this.c = c;
		}
		
		public function berekenY(x:Number):Number
		{
			return (this.c - this.a * x) / this.b;
		}
		
		public function berekenX(y:Number):Number
		{
			return (this.c - this.b * y) / this.a;
		}
		
	}

}