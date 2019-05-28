

class Button{  
  int X = 0;
  int Y = 0;
  float Width = 0;
  float Height = 0;
  
  // colour
  color Colour;
  public color SelectedColour = color(200, 200, 200);
  
  
  String Text;
  
  //Hasn't been clicked
  Boolean Over = false;
  Boolean Clicked = false;
  
  // construction of button
  Button(int x, int y, int w, int h, String t){
    X = x;
    Y = y;
    Width = w;
    Height = h;
    Text = t;
    
    Colour = color(250, 250, 250);

  }
  void update(){ //place in draw to use mouseclicks
       if(mouseX>= X && mouseX <= X+Width && mouseY >= Y && mouseY <= Y+Height){
       Over = true;
       }
       else {
          Over = false;
       }
   }
   boolean press() {
    if (Over) {
      Clicked = true;
      return true;
      }
     else {
      return false;
    }
  }
    void release() {
    Clicked = false; // Set to false when the mouse is released
  }
   
 
  void render(){ //place in draw to place on screen.
    fill(Colour);
    rect(X, Y, Width, Height);
    
    fill(0);
    text(Text, 280, 360);
  }
}
