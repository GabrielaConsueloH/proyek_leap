
class Color_class {
  static const MainColor = 0xffff003d;
  static const SecondaryColor = 0xffe9d8dB;
  static const Grey = 0xffc4c4c4;
  
  int getColor (String color){
    if (color == "MainColor"){
      return MainColor;
    }
    else if ( color == "SecondaryColor"){
      return SecondaryColor;
    }
    else if ( color == "Grey"){
      return Grey;
    }
    else{
      return 0xffffffff;
    }
  }
}