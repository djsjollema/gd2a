package gd2014 
{
	/**
	 * ...
	 * @author Jelle Sjollema
	 */
	public class Line_slope_intercept 
	{
		public var a:Number;
		public var b:Number;
		
		public function Line_slope_intercept(a:Number,b:Number) 
		{
			this.a = a;
			this.b = b;
		}
		
		public function calculateY(x_in:Number):Number
		{
			return this.a * x_in + this.b;
		}
		
	}

}