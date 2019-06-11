class Calculation{
  Float userweight;
  Float userheight;
  public Float BMI;
  // userheight2 is userheight squared. Used in BMI calculation.
  Float userheight2;

//turns textbox string to float
//if nothing in the textbox, inputs equal 0
Float getuserweight(){
       if (textboxes.get(0).Text.trim().equals("")){
         userweight = 0.0;
       }else{
         userweight = Float.parseFloat(textboxes.get(0).Text);
     }
     return userweight;
      }

//converts textbox string to float
//if nothing in the textbox, inputs equal 0
Float getuserheight(){
     if (textboxes.get(1).Text.trim().equals("")){
         userheight = 0.0;
       }else{
         userheight = Float.parseFloat(textboxes.get(1).Text);
     }
      return userheight;
}
//calculate BMI using weight divided by height^2
void calculate(){
  getuserweight();
  getuserheight();
  userheight2 = userheight*userheight;
  
  
  
  if (userweight == 0.0){
    BMI = 0.0;
  }if (userheight == 0.0){
    BMI = 0.0;
    }else{
    BMI = userweight/userheight2;
    }
   }
  }
