class Button{  
  int X = 0;
  int Y = 0;
  float Width = 0;
  float Height = 0;
  
  // colour
  color Colour;
  color SelectedColour = color(230, 187, 173);
  
  
  String Text;
  
  //Hasn't been clicked and isn't over
  Boolean Over = false;
  Boolean Clicked = false;
  
  // construction of button
  Button(int x, int y, int w, int h, String t, int r, int g, int b){
    X = x;
    Y = y;
    Width = w;
    Height = h;
    Text = t;
    Colour = color(r,g,b);
  }

       //mouseX>= X && mouseX <= X+Width && mouseY >= Y && mouseY <= Y+Height
      //int mouseX, int mouseY
    void over(){   
       if(mouseX>= X && mouseX <= X+Width && mouseY >= Y && mouseY <= Y+Height){
         Over =  true;
         Clicked = true;
       }
       else {
         Over = false;
       }
  }
 
  void render(){ //place in draw to place on screen.
  if (Over){
   fill(SelectedColour);
  }else{
    fill(Colour);
  }
  
    rect(X, Y, Width, Height);
    
    fill(0);
    textFont(f);
    text(Text, 280, 340);
  }

   void release() {
      Over = false;
   }
   
}
