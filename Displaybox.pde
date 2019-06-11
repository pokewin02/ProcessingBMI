class Displaybox{
  public int X = 0, Y = 0, H = 35, W = 200;
   public int TEXTSIZE = 24;
   
   // COLORS
   public color Background = color(250, 250, 250);
   public color Foreground = color(10, 10, 10);

   public String Text = "";
   public int TextLength = 0;

   Displaybox(){
   }
     
   Displaybox(int x, int y, int w, int h) {
      X = x; Y = y; W = w; H = h;
   }
   
   void DRAW() {
      // DRAWING THE BACKGROUND OF TEXTBOX

         fill(Background);
      
      
      
      rect(X, Y, W, H);
      
      // DRAWING THE TEXT ITSELF
      textFont(f);
      fill(Foreground);
      textSize(TEXTSIZE);
      text(Text, X + (textWidth("a") / 2), Y + TEXTSIZE);
   }
   void Display(){
     Text = (str(calc.BMI));
   }

}
