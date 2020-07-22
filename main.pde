float w;
float h;
float runx=0;
float runy=0;

float runxx=0;
float runyy=0;  

float runmermix=0;
float runmermiy=0;
float [] rx = new float[3];
float [] ry = new float[3];
float [] canx = new float[3];
float [] cany = new float[3];
PImage imglevel1, imglevel2, imglevel3;
PImage imgkar1dur, imgkar1sol, imgkar1sag; 
PImage imgkar2dur, imgkar2sol, imgkar2sag; 

float [] cx = new float[3];
float [] cy = new float[3];
float [] canxx = new float[3];
float [] canyy = new float[3];

int [] textbox = new int[4];
String rakams;


float mermiX=0; 
float mermiY=0;
float bencan=30;
float duscan=30;
float zerbe=0;
float zerbetimer=0;

int textolcu60;
int strokeolcu20;
int mtimer=0;
float fakeX;
float fakeY;

float emouseX;
float emouseY;
float emouseXX;
float emouseYY;

float mousezerbe1x;
float mousezerbe1y;

float mousezerbe2x;
float mousezerbe2y;


int A3, B3, C3, A1, B1, C1, A2, B2, C2;
int mouseXX, mouseYY, mouseXXX, mouseYYY;
int sech = 0;
int animtimer=0;
int anim2timer=0;
int rakamsec;
int shoottimer=0; //ateş anı
int fakeRandom;
int cevapsec=0; // hangi soruya cevap vereceğimizi seçmek için
int sonuc =0;  // sorunun cevabı
int durum=-1; // durum =-1 ilk durum
// durum =0 soru elranı,     durum =1  ateş (ve durum=-1 e dönüş)

int sual1, sual11;
int sual2, sual22;
int sual3, sual33;
int belir =1;
int kardur;

int timer=0; // fakeX ve fakeY random locationlar üçün randomun timeri
int randomX; // fakeX üçün random deyer
int randomY; // fakeY üçün random deyer
MEKAN1 rectangle; // Oyunun oynanıldığı çerçevə
XETT xett; 
XETLER xetler;
SORUEKRAN sorukare;



void setup() {
  size(400,600);
  w= width;
  h= height;
  rectangle = new MEKAN1();
  xett = new XETT();
  xetler = new XETLER();
  sorukare = new SORUEKRAN();
  smooth();
 rectMode(CENTER);
 ellipseMode(CENTER);
 imageMode(CENTER);
 //Programı yavaşlatmasın deye evvelceden müeyyen olunmuş sabitler:
 textolcu60=int(h/20);
 strokeolcu20=int(w/40);
 kardur = int(w/80);
 fill(0);
 noStroke();
 rx[0] = w*0.3; 
 rx[1] = w*0.4; 
 rx[2] = w*0.5; 
 
 ry[0] = h*0.95; 
 ry[1] = h*0.95; 
 ry[2] = h*0.95; 
 
 orientation(PORTRAIT);
 
 imglevel1 = loadImage("level1x.jpg");
  imgkar1dur = loadImage("1arxadur.png");
  imgkar1sol = loadImage("1arxasol.png");
  imgkar1sag = loadImage("1arxasag.png");

imgkar2dur = loadImage("2arxadur.png");
  imgkar2sol = loadImage("2arxasol.png");
  imgkar2sag = loadImage("2arxasag.png");

 //imgmars1 = loadImage("mars1.jpg");
 //imgmars2 = loadImage("mars2.jpg");
   bencan =w/20;
   duscan =w/20;
zerbetimer=w*0.95;
fakeX = w/2;
fakeY= h/3;

for (int i=0; i<3; i++) {
  textbox[i]=0;
}



}



void draw () {
 background(250);
rectangle.display();
if (durum != 0) {
  //xett.display();
}
//rectMode(CENTER);

timer =timer +1;
if (timer >100) {
  fakeRandom = int(random(0,10));
fakeX = int(random(w*0.1, w*0.9));
fakeY = int(random(h*0.1, h*0.45));
timer=0;
}
noStroke();

  fill(0);
  //---------ANA KARAKTERİMİZİN ANİMASYONLU HAREKETİ
 // rect(rx[1], ry[1], w/40, h/60);
 if (emouseY>h/2 && dist(emouseX, emouseY, rx[1], ry[1])>kardur/2) {
 animtimer=animtimer+1;
 if (animtimer>0 && animtimer<=5) {
   image(imgkar1dur, rx[1], ry[1], w/10, w/10);
 } else if (animtimer>3 && animtimer<=10) {
    image(imgkar1sol, rx[1], ry[1], w/10, w/10);
 } else if (animtimer>8 && animtimer<=15) {
   image(imgkar1dur, rx[1], ry[1], w/10, w/10);
 } else if (animtimer>13 && animtimer<=20) {
   image(imgkar1sag, rx[1], ry[1], w/10, w/10);
 }
 if (animtimer>18 ) {
 animtimer=0;
 }
 
 } else {
   animtimer=0;
   image(imgkar1dur, rx[1], ry[1], w/10, w/10);
 }
 
 //-------------------------------------
 
 
 //-------DÜŞMAN KARAKTERİNİN ANİMASYONLU HAREKETİ-
 // ellipse(cx[1], cy[1], w/40,h/60);
  
  if (dist(fakeX, fakeY, cx[1], cy[1])>kardur/2) {
 anim2timer=anim2timer+1;
 if (anim2timer>0 && anim2timer<=5) {
   image(imgkar2dur, cx[1], cy[1], w/10, w/10);
 } else if (anim2timer>3 && anim2timer<=10) {
    image(imgkar2sol, cx[1], cy[1], w/10, w/10);
 } else if (anim2timer>8 && anim2timer<=15) {
   image(imgkar2dur, cx[1], cy[1], w/10, w/10);
 } else if (anim2timer>13 && anim2timer<=20) {
   image(imgkar2sag, cx[1], cy[1], w/10, w/10);
 }
 if (anim2timer>18 ) {
 anim2timer=0;
 }
 
 } else {
   anim2timer=0;
   image(imgkar2dur, cx[1], cy[1], w/10, w/10);
 }
 
//--------------------------------------------------------
 
 
 
 
 
  fill(200, 0, 0);
  //rectMode(CORNER);
  rect(canx[1], cany[1], bencan, 5);
  rect(canxx[1], canyy[1], duscan, 5);




if (mouseX>int(w*0.9)) {
  mouseX=int(w*0.9);
}else if (mouseX < int(0.1*w)) {
  mouseX = int(w*0.1);
}


if (mouseY>int(h*0.96)) {
  mouseY=int(h*0.96);
} else if (mouseY<int(h*0.57) && mouseY>h/2) {
  mouseY=int(h*0.57);
  }



  
    if (ry[1] - cy[1] < h/2 && fakeRandom>5) {
      fakeY = h*0.2;
    }

canx[1] = rx[1];
cany[1] = ry[1]-25;

canxx[1] = cx[1];
canyy[1] = cy[1]-25;



 

   
   
   
    noFill();
    stroke(200,0,0, 50);
    strokeWeight(strokeolcu20);
    
    if (durum==-1) {
    zerbetimer=zerbetimer+7;
    }
    if (zerbetimer>w*0.95) {
      zerbetimer = w*0.95;
    }
    
    
if (mousePressed && durum==-1) {
  
    
 
    ellipse(mouseX, mouseY, h*0.1, h*0.1);
    ellipse(mouseX, mouseY, h*0.15, h*0.15);
    ellipse(mouseX, mouseY, h*0.2, h*0.2);
    if (mouseY<h/2 && zerbetimer==0.95*w) {
      belir=1;
     durum=0;
    mouseXX = mouseX;  // ateş edilecek yerin koordinatı basdığımız zaman üçün sabitlendi
    mouseYY= mouseY;
    }
    
    
    if (mouseY>h/2) {
      mouseXXX = mouseX;
      mouseYYY = mouseY;
      
    }
    
    
    
  }
 
 //------------------RANDOM ÇALIŞTIRICI
 if (belir==1) {
     sual1=int(random(2, 10));
     sual11=int(random(2, 10));
     
     sual2=int(random(11, 17));
     sual22=int(random(11, 17));
     
     sual3=int(random(17, 29));
     sual33=int(random(17, 29));
     belir=0;
   }
   
   
   
   
 if (durum==0) { 
   
   zerbetimer=zerbetimer-2;
      xetler.display();
      sorukare.display();
     
      textSize(textolcu60);
      fill(0,0,0,95);
      text(sual1 + " x " + sual11 + " = ", w*0.35, h*0.2);
      text(sual2 + " x " + sual22 + " = ", w*0.35, h*0.5);
      text(sual3 + " x " + sual33 + " = ", w*0.35, h*0.8);
      A1 = sual1*sual11;
      B1=sual1*sual11-4+ sual1;
      C1=sual1*sual11+5;
      
      A2 = sual2*sual22;
      B2=sual2*sual22-sual2+4;
      C2=sual2*sual22+5-sual22;
      
      A3= sual3*sual33;
      B3=sual3*sual33-4+sual3;
      C3=sual3*sual33+5-sual33;
      
      
     text(A1, w*0.2, h*0.3);
     text(B1, w*0.4, h*0.3);
     text(C1, w*0.6, h*0.3);
      
     text(A2, w*0.2, h*0.6);
     text(B2, w*0.4, h*0.6);
     text(C2, w*0.6, h*0.6);
      
      text(A3, w*0.2, h*0.9);
     text(B3, w*0.4, h*0.9);
     text(C3, w*0.6, h*0.9);
     
     if (mousePressed) {
       noFill();
       stroke(0,0,0,90);
       strokeWeight(10);
       
       if (mouseX<w*0.3 && mouseY<h*0.4){
         cevapsec =A1;
         rect(w*0.25, h*0.3, w*0.2, h*0.08);
       } else if (mouseX>w*0.3 && mouseX<w*0.5 && mouseY<h*0.4){
         cevapsec = B1;
         rect(w*0.45, h*0.3, w*0.2, h*0.08);
     } else if (mouseX>w*0.5 && mouseY<h*0.4){
         cevapsec = C1;
         rect(w*0.65, h*0.3, w*0.2, h*0.08);
      } 
      
      
      
       if (mouseX<w*0.3 && mouseY<h*0.7 && mouseY>h*0.4){
         cevapsec =A2;
         rect(w*0.25, h*0.6, w*0.2, h*0.08);
       } else if (mouseX>w*0.3 && mouseX<w*0.5 && mouseY<h*0.7 && mouseY>h*0.4){
         cevapsec = B2;
         rect(w*0.45, h*0.6, w*0.2, h*0.08);
     } else if (mouseX>w*0.5 && mouseY<h*0.7 && mouseY > h*0.4){
         cevapsec = C2;
         rect(w*0.65, h*0.6, w*0.2, h*0.08);
      }
      
      
       if (mouseX<w*0.3 && mouseY<h && mouseY>h*0.7){
         cevapsec =A3;
         rect(w*0.25, h*0.9, w*0.2, h*0.08);
       } else if (mouseX>w*0.3 && mouseX<w*0.5 && mouseY<h && mouseY>h*0.7){
         cevapsec = B3;
         rect(w*0.45, h*0.9, w*0.2, h*0.08);
     } else if (mouseX>w*0.5 && mouseY<h && mouseY>h*0.7){
         cevapsec = C3;
         rect(w*0.65, h*0.9, w*0.2, h*0.08);
      }
      
      
      if (zerbetimer<w*0.9) {
      if (cevapsec==sual1*sual11) {
        sonuc=1;
        durum=1;
      } else if (cevapsec==sual2*sual22){
        sonuc=2;
        durum=1;
      }  else if (cevapsec==sual3*sual33){
        sonuc=3;
        durum=1;
      } else {
        cevapsec=0;
        zerbetimer=-1;
      }   
      
      
      }
         /*
       if (zerbetimer<w*0.9 && cevapsec==0) {
          zerbetimer =-1;
        }
        
        */
      }
      
   
    
   if (zerbetimer<0) {
       durum=-1;
       zerbetimer=0;
     } 
 }
 
 noStroke();
    fill(200,10,20);
    rect(w/2, h*0.98, zerbetimer, 20);
 
 if (durum ==-1) {
 rectangles();
 }
 shoot();
 ellipses();
  ellipse(mermiX, mermiY, 30, 30);





}



//----------------------------SHOOT----------------------------


void shoot(){
  noStroke();
  fill(250,0,0);
  if (duscan <0 ) {
      duscan =0;
    }
    
    
    
  if (durum==1) {
    emouseX=rx[1];
    emouseY=ry[1];
    
   if (sonuc ==1) {
      zerbe = w*0.005;
    } else if (sonuc ==2) { 
      zerbe = w*0.01;
    } else if (sonuc ==3) {    
      zerbe = w*0.02;
    }
   
  
   
    
    if (sonuc >0) {
      shoottimer=shoottimer+1;
     
      if (shoottimer <2) {
        
        mousezerbe1x = rx[1];
        mousezerbe1y = ry[1];
        mousezerbe2x = mouseXX;
        mousezerbe2y = mouseYY;
      runmermix = (mousezerbe2x-mousezerbe1x)/30;
     runmermiy = (mousezerbe1y-mousezerbe2y)/30;
      mermiX=mousezerbe1x;
         mermiY=mousezerbe1y;
      } else if (shoottimer >=2) {
       
     mermiX= mermiX+runmermix;
    mermiY=mermiY-runmermiy;

      if (dist(mermiX, mermiY, cx[1], cy[1])<h*0.05 && zerbetimer>0) {
      duscan = duscan - zerbe;
       mermiX=0;
         mermiY=0; 
       zerbetimer=0;
       shoottimer=0;
        sonuc=0;
        durum=-1;
    } 
    
   
    if (dist(mermiX, mermiY, mousezerbe2x, mousezerbe2y) <10 && zerbetimer>0) {
       if (dist(mermiX, mermiY, cx[1], cy[1])<h*0.1) {
      duscan = duscan - zerbe/2; 
    } else if (dist(mermiX, mermiY, cx[1], cy[1])<h*0.15) {
      duscan = duscan - zerbe/4; 
    }
    
      mermiX=0;
         mermiY=0; 
       zerbetimer=0;
       shoottimer=0;
        sonuc=0;
        durum=-1;
        
  
}
      }  
      
    //zerbetimer=0;
    //sonuc =0;
    //durum=-1;
    text(shoottimer, w/2, h/2);
    
    } else {      
      //do nothing.
    }
  }
}


//----------------------------RECTANGLES-----------------------


void rectangles() {
  if (mousePressed && mouseY>h/2) {
  emouseX = mouseX;
  emouseY= mouseY;
  }
  
  
  
   if (dist(emouseX, emouseY, rx[1], ry[1])<kardur) {
   emouseX=rx[1];
   emouseY=ry[1];
   }
  
  if ( emouseY > h/2 && durum==-1){
runx =(emouseX-rx[1])/30;
runy = (emouseY-ry[1])/30;

if(emouseX>rx[1]) {
      rx[1] = rx[1] +runx;
      //rx[0] = rx[1] -w*0.1;
     // rx[2] = rx[1] +w*0.1;
    } else {
      rx[1] = rx[1] +runx ;
      //rx[0] = rx[1] -w*0.1;
     // rx[2] = rx[1] +w*0.1;
    }
    
    
    
   if(emouseY>ry[1] ) {
      ry[1] = ry[1] +runy ;
    //  ry[0] = ry[1];
     // ry[2] = ry[1];
    } else {
      
      ry[1] = ry[1]+ runy;
     // ry[0] = ry[1];
    //  ry[2] = ry[1];
    }
} 
  
}


//-----------------------------ELLIPSES-------------------------------



void ellipses() {
  
  
  if (dist(fakeX, fakeY, cx[1], cy[1])<kardur*1.5) {
   fakeX=cx[1];
   fakeY=cy[1];
   }
  
  
runxx =(fakeX-cx[1])/30;
runyy = (fakeY-cy[1])/30;




if(fakeX>cx[1]) {
      cx[1] = cx[1] +runxx;
     // cx[0] = cx[1] -w*0.1;
     // cx[2] = cx[1] +w*0.1;
    } else {
      cx[1] = cx[1] +runxx ;
     // cx[0] = cx[1] -w*0.1;
    //  cx[2] = cx[1] +w*0.1;
    }
    
    
   if(fakeY>cy[1] ) {
      cy[1] = cy[1] +runyy ;
      //cy[0] = cy[1];
     // cy[2] = cy[1];
    } else {
      
      cy[1] = cy[1]+ runyy;
     // cy[0] = cy[1];
     // cy[2] = cy[1];
    }  
}
