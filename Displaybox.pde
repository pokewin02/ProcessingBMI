class Displaybox{
  public int X = 0, Y = 0, H = 35, W = 200;
   public int TEXTSIZE = 24;
   
   // COLORS
   public color Background = color(250, 250, 250);
   public color Foreground = color(10, 10, 10);

   public String Text = "";
   public int TextLength = 0;

   Displaybox(){
   }  //create default object
     
   Displaybox(int x, int y, int w, int h) {
      X = x; Y = y; W = w; H = h;
   }
   
   void DRAW() {
      // Drawing background of textbox and border thickness
      fill(Background);
      strokeWeight(1);
      
      rect(X, Y, W, H);
      
      // Drawing text and deciding font
      textFont(f);
      fill(Foreground);
      textSize(TEXTSIZE);
      text(Text, X + (textWidth("a") / 2), Y + TEXTSIZE);
   }
   void Display(){
     if (calc.userweight == 0.0){
       Text = "";
       button.Clicked = false;
     }else if (calc.userheight == 0.0){
       Text = "";
       button.Clicked = false;
     }else{
     Text = (str(calc.BMI));
   }
   }
}
