PFont f, impactf;
PImage logo, scale;
//f is Arial
Title page;
Labels label;
Button button;
Calculation calc;
Displaybox db;
ArrayList<Textboxes> textboxes = new ArrayList<Textboxes>();


void setup() {
  size(640, 640);
  logo = loadImage("24_Hour_Fitness_logo_symbol.png");
  scale = loadImage("BMI_Ranges.jpg");
  f = createFont("Arial", 20, true);
  impactf = createFont("Impact", 30, true);
  page = new Title();
  label = new Labels();
  calc = new Calculation();
  button = new Button(260, 305, 100, 50, "Enter", 250, 250, 250);
  
  Textboxes userW = new Textboxes();
  userW.X = 210;
  userW.Y = 125;
  userW.W = 200;
  userW.H = 35;
  
  Textboxes userH = new Textboxes();
  userH.X = 210;
  userH.Y = 225;
  userH.W = 200;
  userH.H = 35;
  
  //add textboxes to array
  textboxes.add(userW);
  textboxes.add(userH);
  
  db = new Displaybox();
  db.X = 210;
  db.Y = 400;
  db.W = 200;
  db.H = 35;

}

void draw() {
  background(173, 216, 230);
  textFont(f, 20);
  
  //display 24hour fitness logo
  image(logo, 420, 10, width/6, height/6);
  
  //display BMI scale
  image(scale, 0, 500);
  
  page.show();
  label.display();
  button.render();
  db.DRAW();
  
  for (Textboxes t : textboxes){
    t.DRAW();
  }
  //if enter or button was clicked, calculate BMI and put in textbox
    if (button.Clicked){
     calc.calculate();
     db.Display();
}
}

void mousePressed() {
   button.over();
   for (Textboxes t : textboxes) {
      t.PRESSED(mouseX, mouseY);
      }
   }
void keyPressed() {
  //When enter key is pressed, it submits results
    for (Textboxes t : textboxes) {
      if (t.KEYPRESSED(key, (int)keyCode)) {
         button.Over = true;
         button.Clicked = true;
      }
    }
}
void keyReleased(){
  button.release();
}

void mouseReleased(){
  button.release();
}


void newStart() {
  loop();

}