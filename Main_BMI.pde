PFont f;
Title page;
Inputs input;
Button enterbutton;
ArrayList<Textboxes> textboxes = new ArrayList<Textboxes>();


void setup() {
  size(640, 640);
  f = createFont("Arial", 16, true);
  page = new Title();
  input = new Inputs();
  enterbutton = new Button(260, 325, 100, 50, "Enter");
  
  Textboxes userW = new Textboxes();
  userW.X = 180;
  userW.Y = 125;
  userW.W = 200;
  userW.H = 35;
  
  Textboxes userH = new Textboxes();
  userH.X = 180;
  userH.Y = 225;
  userH.W = 200;
  userH.H = 35;
  
  textboxes.add(userW);
  textboxes.add(userH);
  
}

void draw() {
  background(150, 150, 150);
  textFont(f, 20);
  page.show();
  input.display();
  enterbutton.update();
  enterbutton.render();
  
  for (Textboxes t : textboxes){
    t.DRAW();
  }
}

void mousePressed() {
   for (Textboxes t : textboxes) {
      t.PRESSED(mouseX, mouseY);
   }
   {enterbutton.press();
 }
}
void keyPressed() {
   for (Textboxes t : textboxes) {
      if (t.KEYPRESSED(key, (int)keyCode)) {
         newStart();
      }
    }
}

void mouseReleased(){
  enterbutton.release();
}


void newStart() {
  loop();;
}


   
