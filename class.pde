/*
Burada istifade olunmuş class metodu çox sade
// metoddu hetda şekiller üçün de istifade etmeyi
//öyrendim ÖNEMLİ!!!
hemçinin müeyyen deyişken tanımlıyıb(misalçün mouseXX)
sonra belli aralıqda bunu sabitlemek olur. mouseXX de sabitlenmiş
koordinatı daha sonra istifade elemek üçün
qeyd: orta sınır üçün ana qehreman üçün h*0.57

*/

class MEKAN1 {
  float x;
  float y;
  float rex;
  float rey;
  
  
  MEKAN1(){ 
    x=w/2;
    y=h*0.5;
    rex = w;
    rey = h;
  }
  
  void display(){
    //noFill();
  //stroke(0);
  //strokeWeight(3);
 // rectMode(CENTER);
  image(imglevel1, x, y, rex, rey);
 // image(imgyer2, x, y*0.35, rex, rey);
    //rect(x, y, rex, rey);
  }
 
}



class XETT {
  float x;
  float y;
  float x1;
  float y1;
  
  
  XETT(){ 
    x=w*0.025;
    y=h/2;
    x1 = w*0.975;
    y1 = h/2;
  }
  
  void display(){
  stroke(0);
  strokeWeight(3);
    line(x, y, x1, y1);
  }
 
}

class XETLER {
  float x;
  float y;
  float x1;
  float y1;
  
  
  XETLER(){ 
    x=w*0.1;
    y=h*0.35;
    x1 = w*0.9;
    y1 = h*0.35;
  }
  
  void display(){
  stroke(240);
  strokeWeight(5);
    line(x, y, x1, y1);
    line(x, y*2, x1, y1*2);
  }
 
}

class SORUEKRAN {
  float x;
  float y;
  float rex;
  float rey;
  
  
  SORUEKRAN(){ 
    x=w*0.5;
    y=h*0.5;
    rex = w*0.9;
    rey = h*0.9;
  }
  
  void display(){
    fill(230);
  stroke(0);
  strokeWeight(3);
  rectMode(CENTER);
    rect(x, y, rex, rey);
  }
 
}