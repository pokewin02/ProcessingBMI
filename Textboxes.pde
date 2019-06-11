public class Textboxes {
   public int X = 0, Y = 0, H = 35, W = 200;
   public int TEXTSIZE = 24;
   
   // COLORS
   public color Background = color(250, 250, 250);
   public color Foreground = color(10, 10, 10);
   public color BackgroundSelected = color(230, 187, 173);

   public String Text = "";
   public int TextLength = 0;

   private boolean selected = false;
   
   Textboxes() {
      // CREATE OBJECT DEFAULT TEXTBOX
   }
   
   Textboxes(int x, int y, int w, int h) {
      X = x; Y = y; W = w; H = h;
   }
   
   void DRAW() {
      // DRAWING THE BACKGROUND OF TEXTBOX
      if (selected) {
         fill(BackgroundSelected);
      } else {
         fill(Background);
      }
      
      
      rect(X, Y, W, H);
      
      // DRAWING THE TEXT ITSELF
      textFont(f);
      fill(Foreground);
      textSize(TEXTSIZE);
      text(Text, X + (textWidth("a") / 2), Y + TEXTSIZE);
   }
   
   // IF THE KEYCODE IS ENTER RETURN 1
   // ELSE RETURN 0
   boolean KEYPRESSED(char KEY, int KEYCODE) {
      if (selected) {
         if (KEYCODE == (int)BACKSPACE) {
            Delete();
         } else if (KEYCODE == 32) {
            // SPACE
            addText(' ');
         } else if (KEYCODE == (int)ENTER) {
            return true;
         } else {
            // CHECK WHAT CHARACTER IT IS
            boolean Number = (KEY >= '0' && KEY <= '9');
            boolean Point = (KEY == '.');
      
            if (Number || Point) {
               addText(KEY);
            }
         }
      }
      
      return false;
   }
   
   private void addText(char text) {
      // IF THE TEXT WIDTH IS IN BOUNDARIES OF THE TEXTBOX
      if (textWidth(Text + text) < W) {
         Text += text;
         TextLength++;
      }
   }
   
   private void Delete() {
      if (TextLength - 1 >= 0) {
         Text = Text.substring(0, TextLength - 1);
         TextLength--;
      }
   }
   
   // FUNCTION FOR TESTING IF THE POINT IS OVER THE TEXTBOX
   private boolean overBox(int x, int y) {
      if (x >= X && x <= X + W) {
         if (y >= Y && y <= Y + H) {
            return true;
         }
      }
      
      return false;
   }
   
   void PRESSED(int x, int y) {
      if (overBox(x, y)) {
         selected = true;
      } else {
         selected = false;
      }
   }

}
