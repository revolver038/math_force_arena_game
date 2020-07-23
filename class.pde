class ILKGIRIS {
  float x;
  float y;
  float rex0;
  float rey0;
  float elx;
  float ely;
  float y1;
  ILKGIRIS() { 
    x=w/2;
    y=h*0.5;
    y1=h*0.6;
    rex0 = w;
    rey0 = h;
    elx= w/2;
    ely=w/2;
  }

  void display() {
    image(igirisback, x, y, rex0, rey0);
    fill(0, 150, 150, 30);
    stroke(0, 150, 150, 50);

    ellipse(x, y1, elx, ely);
  }
}

class GIRISARKAPLAN {
  float x;
  float y;
  float rex0;
  float rey0;
  GIRISARKAPLAN() { 
    x=w/2;
    y=h*0.5;
    rex0 = w;
    rey0 = h;
  }

  void display() {
    image(imggiris, x, y, rex0, rey0);

    // diqqet şekil yatay ve yekefi deyişdir onu!
  }
}

class GIRISKARE {
  float x;
  float y;
  float rex0;
  float rey0;
  float rex1;
  float rey1;
  float strk;
  float textX;
  float textY;
  float textwuz;
  float texthuz;
  GIRISKARE() { 
    x=w/2;
    y=h*0.5;
    rex0 = w*0.9;
    rey0 = h*0.3;
    rex1 = w*0.9*0.95;
    rey1 = h*0.3*0.9;
    strk = int(w/400);
    textX=w*0.5;
    textY=h*0.5;
    textwuz=w*0.7;
    texthuz=h*0.3;
  }

  void display() {
    fill(0, 200, 230, 30);
    stroke(0, 250, 250);
    strokeWeight(strk);
    rectMode(CENTER);
    rect(x, y, rex0, rey0);

    fill(0, 200, 230, 0);
    rect(x, y, rex1, rey1);
  } 

  void update() {   
    optxt=optxt+10;
    if (optxt>250) {
      optxt=255;
    }
    fill(0, 255, 100, optxt);
    textSize(textolcu50);
    text(ilkyazi, textX, textY, textwuz, texthuz);
    if (ilkyazibelir==0) {
      ilkyazi= "Bu bir demo versiyonudur.Devam etmek için tıkla ";
    } else if (ilkyazibelir>=1) {
      pages=1;        
      ilkyazibelir=0;
    }
  }
}

class MENUKARE {
  float x;
  float y;
  float rexx;
  float reyy;
  float rexx1;
  float reyy1;
  float strk1;
  float textX;
  float textY;
  float textwuz;
  float texthuz;
  float solX;
  float sagX;
  MENUKARE() { 
    x=w/2;
    y=h*0.5;
    rexx = w*0.9;
    reyy = h*0.3;
    rexx1 = w*0.9*0.95;
    reyy1 = h*0.3*0.9;
    strk1 = int(w/400);
    textX=w*0.5;
    textY=h*0.5;
    textwuz=w*0.7;
    texthuz=h*0.3;
    sagX = w*0.8;
    solX=w*0.2;
  }

  void display() {  

    reyy= reyy+30;
    if (reyy > h*0.8) {
      reyy=h*0.8;
    }
    reyy1=reyy*0.96;
    optxt2=optxt2+10;
    if (optxt2>250) {
      optxt2=255;
    }


    fill(0, 200, 230, 30);
    stroke(0, 250, 250);
    strokeWeight(strk1);
    rectMode(CENTER);
    rect(x, y, rexx, reyy);
    fill(0, 200, 230, 0);
    rect(x, y, rexx1, reyy1);
    if (reyy==h*0.8) {
      fill(0, 255, 100);
      textSize(textolcu100);
      if (dilbelir==0) {
        text("MAIN MENU", x, y*0.4);
      } else {
        text("ANA MENÜ", x, y*0.4);
      } 

      text("<", solX, y);
      text(">", sagX, y);
    }
  }

  void update() {
    textSize(textolcu70);
    fill(0, 250, 100, optxt2);
    text(ilkyazi, textX, textY, textwuz, texthuz);
    if (ilkyazibelir<0) {
      if (pausedurum==1) {
        ilkyazibelir=4;
      } else {
        ilkyazibelir=3;
      }
    } else if (ilkyazibelir==0) {
      if (dilbelir==0) {
        ilkyazi = " NEW GAME ";
      } else {
        ilkyazi = " YENİ OYUN ";
      } 
      menubelir=1;
    } else if (ilkyazibelir==1) {
      if (dilbelir==0) {
        ilkyazi = " SETTINGS ";
      } else {
        ilkyazi = " AYARLAR ";
      }
      menubelir=2;
    } else if (ilkyazibelir==2) {
      if (dilbelir==0) {
        ilkyazi = " ABOUT ";
      } else {
        ilkyazi= " HAKKINDA ";
      }
      menubelir=3;
    } else if (ilkyazibelir==3) {
      if (dilbelir==0) {
        ilkyazi = " EXIT ";
      } else {
        ilkyazi = " ÇIKIŞ ";
      }
      menubelir=4;
    } else if (ilkyazibelir==4) {
      if (pausedurum==0) {
        ilkyazibelir=0;
      } else {
        if (dilbelir==0) {
          ilkyazi = " RESUME ";
        } else {
          ilkyazi = " DEVAM ET ";
        }
        menubelir=5;
      }
    } else if (ilkyazibelir==5) { 
      ilkyazibelir=0;
    }
  }
}

class HAKKINDA {
  float x;
  float y;
  float y1;
  float rex0;
  float rey0;
  float rex1;
  float rey1;
  float strk;
  float textX;
  float textY;
  float textwuz;
  float texthuz;
  float solX, sagX;
  HAKKINDA() { 
    x=w/2;
    y=h*0.5;
    y1=h*0.8;
    rex0 = w*0.9;
    rey0 = h*0.8;
    rex1 = w*0.9*0.95;
    rey1 = h*0.8*0.96;
    strk = int(w/400);
    textX=w*0.5;
    textY=h*0.45;
    textwuz=w*0.6;
    texthuz=h*0.9;
    solX=w*0.15;
    sagX = w*0.85;
  }

  void display() {
    //ESAS OPACITYLI KARE
    fill(0, 200, 230, 30);
    stroke(0, 250, 250);
    strokeWeight(strk);
    rectMode(CENTER);
    rect(x, y, rex0, rey0);

    fill(0, 200, 230, 0);
    rect(x, y, rex1, rey1);
  } 



  void update() {   
    textSize(textolcu70);
    fill(0, 255, 100);
    if (dilbelir ==0) {
      text("< RETURN ", x, y1);
      menubelir=3;
    } else { 
      text("< GERİ ", x, y1);
      menubelir=3;
    }

    textSize(textolcu100);
    text("<", solX, y);
    text(">", sagX, y);

    optxt=optxt+10;
    if (optxt>250) {
      optxt=255;
    }
    fill(0, 255, 100, optxt);
    textSize(textolcu50);
    text(ilkyazi, textX, textY, textwuz, texthuz);
    if (ilkyazibelir<0) {
      ilkyazibelir=1;
    }
    if (ilkyazibelir==0) {
      ilkyazi = "Merhaba dost. Matematik meydanına hoş geldin. "+ 
        "Burada yeteneklerini konuşturarak yapay zekayla matematik yarışına gireceksin. " +
        "Rakiblerin Mor, Yeşil, Kırmızı ve Beyaz Güç olacaktır. " +
        "Devam etmek için sağ '>' okuna tıkla! ";
    } else  if (ilkyazibelir==1) {   
      ilkyazi = " Sol '<' ve  Sağ '>' oklarını kullanarak sayfalar ve seçenekler arası geçiş yapa bilirsin. " +
        "Nasıl oynanılır: İster sürükleyerek, isterse de tıklayarak "+
        "karakterini kendi meydanında özgürce hareket ettire bilirsin. Rakibini yenmek içinse.."+
        "Devam et..";
    } else if (ilkyazibelir==2) {
      ilkyazi = "..onun meydanına, en uygun stratejik bölgeye tıklayarak açılan soru penceresindeki 3 sorudan birini doğru yanıtlaman ve bunu rakibin "+
        " yenilenemez enerjisi bitene kadar sürdürmen gerekmektedir. Devam et.. ";
    } else if (ilkyazibelir==3) {
      ilkyazi = "Sorular kolay/orta/zor, dolayısıyla doğru yanıtın etki gücü de zayıf/orta/güçlü olarak derecelendirilmiştir. Başarılar! ";
    } else if (ilkyazibelir>=4) {
      ilkyazibelir=0;
    }
  }
}


class ZORKARE {
  float x;
  float y;
  float rexx;
  float reyy;
  float rexx1;
  float reyy1;
  float strk1;
  float textX;
  float textY;
  float textwuz;
  float texthuz;
  float solX;
  float sagX;
  float y1;
  ZORKARE() { 
    x=w/2;
    y=h*0.5;
    y1=h*0.8;
    rexx = w*0.9;
    reyy = h*0.8;
    rexx1 = w*0.9*0.95;
    reyy1 = h*0.8*0.96;
    strk1 = int(w/400);
    textX=w*0.5;
    textY=h*0.5;
    textwuz=w*0.7;
    texthuz=h*0.3;
    sagX = w*0.8;
    solX=w*0.2;
  }

  void display() {   
    optxt2=optxt2+10;
    if (optxt2>250) {
      optxt2=255;
    }
    fill(0, 200, 230, 30);
    stroke(0, 250, 250);
    strokeWeight(strk1);
    rectMode(CENTER);
    rect(x, y, rexx, reyy);
    fill(0, 200, 230, 0);
    rect(x, y, rexx1, reyy1);

    fill(0, 255, 100);
    if (dilbelir ==0) {
      text("< RETURN ", x, y1);
    } else { 
      text("< GERİ ", x, y1);
    }
    //fill(0,255,100, optxt2);
    textSize(textolcu100);
    if (dilbelir ==0) {
      text("DIFFICULTY", x, y*0.4);
    } else {
      text("SEVİYE", x, y*0.4);
    }
    text("<", solX, y);
    text(">", sagX, y);
  }


  void update() {
    menubelir=1; 
    if (ilkyazibelir<0) {
      ilkyazibelir=2;
    } 
    textSize(textolcu100);
    if (ilkyazibelir==0) {
      fill(0, 250, 100, optxt2);
      if (dilbelir ==0) {
        ilkyazi = " 1 ";
      } else {
        ilkyazi = " 1 ";
      }
      menubelir=1;
    } else if (ilkyazibelir==1) {
      fill(250, 250, 0, optxt2);
      if (dilbelir ==0) {
        ilkyazi = " 2 ";
      } else {
        ilkyazi = " 2 ";
      }
      menubelir=2;
    } else if (ilkyazibelir==2) {
      fill(255, 50, 50, optxt2);
      if (dilbelir ==0) {
        ilkyazi = " 3 ";
      } else {
        ilkyazi = " 3 ";
      }
      menubelir=3;
    } else if (ilkyazibelir==3) {
      ilkyazibelir=0;
    } 
    text(ilkyazi, textX, textY, textwuz, texthuz);
    textSize(textolcu70);
  }
}


class MEKAN1 {
  float x;
  float y;
  float rex0;
  float rey0;
  float rex1;
  float rey1;
  float strk;

  MEKAN1() { 
    x=w/2;
    y=h*0.5;
    rex0 = w*0.9;
    rey0 = h*0.9;
    rex1 = w;
    rey1 =h;
    strk=int(w/400);
  }
  void display() {
    image(imgoyun1, x, y, rex1, rey1);
  }

  void update() {
    if (optxt2<250) {
      optxt2=optxt2+5;
    }
    if (optxt2>248) {
      optxt2=255;
    }
    fill(0, 80, 250, 20);
    stroke(0, 250, 250, optxt2);
    strokeWeight(strk);
    rectMode(CENTER);
    rect(x, y, rex0, rey0);
  }
}


class GAMEOVER {
  float x;
  float y;
  float rex0;
  float rey0;
  float rex1;
  float rey1;
  float strk;

  GAMEOVER() { 
    x=w/2;
    y=h*0.5;
    rex0 = w*1.1;
    rey0 = h*1.1;
    rex1 = w;
    rey1 =h;
    strk=int(w/800);
  }


  void update() {
    background(0);
  }

  void display() {
    optxt2=optxt2+10;
    if (optxt2>250) {
      optxt2=255;
    }
    fill(0, optxt2);
    //stroke(0, 250, 250);
    //strokeWeight(strk);
    rectMode(CENTER);

    textSize(textolcu70);
    fill(0, 250, 100, optxt2);
    if (bencan<=0) {
      if (dilbelir==0) {
        text("GAME OVER, YOU LOST!", w/2, h/2);
      } else {
        text("OYUN BİTTİ, KAYBETTİN!", w/2, h/2);
      }
    } else if (duscan<=0) {
      if (dilbelir==0) {
        text("CONGRATULATIONS, YOU WON!", w/2, h/2);
      } else {
        text("TEBRİKLER, KAZANDIN!", w/2, h/2);
      }
    }  
    textSize(textolcu50);
    if (dilbelir==0) {
      text("Press anywhere to return to main menu!", w/2, h*0.9);
    } else {
      text("Ana menüye dönmek için her hangi bir yere tıkla!", w/2, h*0.85, w*0.7, h*0.5);
    }
  }
}

class XETLER {
  float x;
  float y;
  float x1;
  float y1;
  //float opacty;
  float strk;
  XETLER() { 
    x=w*0.2;
    y=h*0.35;
    x1 = w*0.8;
    y1 = h*0.35;
    strk=int(w/800);
  }
  void display() {
    stroke(0, 250, 250);
    strokeWeight(strk);
    line(x, y, x1, y1);
    line(x, y*2, x1, y1*2);
  }
}

class XETT {
  float x;
  float y;
  float xpause;
  float ypause;
  float ypause1;
  float ara;
  float x1;
  float y1;
  float strk;
  float strk2;
  float opacty;
  XETT() { 
    x=w*0.05;
    y=h*0.5;
    x1 = w*0.95;
    y1 = h*0.5;
    strk = int(w/400);
    strk2=int(w/200);
    opacty=255;
    xpause = w/2-w/80;
    ypause=h*0.96;
    ypause1=h*0.98;
    ara=w/40;
  }

  void display() {

    if (opabelir==1) {
      // optxt2=0;
    } else {
    }

    if (optxt2<250) {
      optxt2=optxt2+5;
    }
    if (optxt2>248) {
      optxt2=255;
    }
    stroke(0, 250, 250, optxt2);
    strokeWeight(strk);
    if (durum !=0) {
      line(x, y, x1, y1);
    }
    strokeWeight(strk2);
    line(xpause, ypause, xpause, ypause1);   
    line(xpause+ara, ypause, xpause+ara, ypause1);
  }
}

class SORUEKRAN {
  float x;
  float y;
  float rex;
  float rey;
  float strk;
  SORUEKRAN() { 
    x=w*0.5;
    y=h*0.5;
    rex = w*0.9;
    rey = h*0.9;
    strk=int(w/800);
  }

  void display() {
    oprctAz=oprctAz+30;
    if (oprctAz>220) {
      oprctAz=220;
    }
    fill(0, 30, 40, oprctAz);
    stroke(0, 230, 250);
    strokeWeight(strk);
    rectMode(CENTER);
    rect(x, y, rex, rey);
  }
}

class PATLAMA {
  float x;
  float y;
  float rex;
  float rey;
  float strk;
  float opsayi;
  float opsayix;
  float stroke5;
  PATLAMA() { 
    //x=w*0.5;
    //y=h*0.5;
    rex = w/3;
    rey = w/3;
    strk=int(w/200);
    opsayi=int(w/12);
    opsayix=int(w/15);
    stroke5=int(w/150);
  }

  void patlama1() {
    noFill();
    strokeWeight(stroke5);
    if (dusman==1) {
      stroke(255, 50, 255);
    } else if (dusman==2) {
      stroke(50, 255, 50);
    } else if (dusman==3) {
      stroke(255, 50, 50);
    } else if (dusman==4) {
      stroke(255, 255, 255);
    }
    ellipse(mermiX1, mermiY1, rex, rey);
  }


  void patlama2() {
    noFill();
    strokeWeight(stroke5);

    if (dusman==1) {
      stroke(255, 50, 255);
    } else if (dusman==2) {
      stroke(50, 255, 50);
    } else if (dusman==3) {
      stroke(255, 50, 50);
    } else if (dusman==4) {
      stroke(255, 255, 255);
    }
    ellipse(mousezerbe22x, mousezerbe22y, rex, rey);
  }
}


class MERMI {
  float x;
  float y;
  float rex;
  float rey;
  float strk;
  float opsayi;
  float opsayix;
  float opac;
  MERMI() { 
    //x=w*0.5;
    //y=h*0.5;
    rex = w/40;
    rey = w/40;
    strk=int(w/200);
    opsayi=int(w/12);
    opsayix=int(w/15);
    opac=255;
  }

  void update() {
    noFill();
    strokeWeight(strk);
    if (ucikibir<210) {
      opac=0;
    } else {
      opac=255;
    }
    //for (int i=0; i<opsayi; i++) {
    if (dusman==1) {
      stroke(255, 50, 255, opac);
    } else if (dusman==2) {
      stroke(50, 255, 50, opac);
    } else if (dusman==3) {
      stroke(255, 50, 50, opac);
    } else if (dusman==4) {
      stroke(255, 255, 255, opac);
    }
    ellipse(mermiX1, mermiY1, rex, rey);
    //  }  

    //  for (int i=0; i<opsayi; i++) {
    stroke(0, 250, 250, opac);
    ellipse(mermiX, mermiY, rex, rey);
    // }
  }
}

class KAHRO {
  float x;
  float y;
  float rex;
  float rey;
  float strk;
  float strk1;
  float strk2;
  float x1;
  float y1;
  float opakspes;

  int Byz;
  float en;
  int parlakbelir=0;
  float har;
  float opacty;
  float rex0;
  float rey0;
  float opsayi;
  float opsayix;
  KAHRO() { 
    x=w*0.5;
    y=h*0.5;
    rex = w/10;
    rey = w/10;
    rex0=w/12;
    rey0=w/12;
    strk=int(w/150);
    strk2=int(w/120);
    strk1=int(w/150);
    x1=w*0.05;
    y1=h*0.04;
    opsayi=int(w/12);
    opsayix=int(w/15);

    opakspes=255;
    Byz=0;
    en = bencanen; //hemçimim duscanen
    har=h/640;
    opacty=255;
  }

  void update() {
    if (opabelir==1) {
      opacty =opasondur;
    } else {
      opacty=255;
    }

    if (durum == 0) {
      opakspes=30;
    } else {
      opakspes=255;
    }
    noFill();
    strokeWeight(strk2);
    //  for (int i=0; i<opsayi; i++) {
    if (dusman==1) {
      stroke(255, 50, 255, opakspes);
    } else if (dusman==2) {
      stroke(50, 255, 50, opakspes);
    } else if (dusman==3) {
      stroke(255, 50, 50, opakspes);
    } else if (dusman==4) {
      stroke(255, 255, 255, opakspes);
    }
    ellipse(cx[1], cy[1], rex, rey);

    // }  
    // for (int i=0; i<opsayi; i++) {
    stroke(0, 255, 255, opakspes);
    ellipse(rx[1], ry[1], rex, rey);
    // }

    strokeWeight(strk);
    rectMode(CORNER);
    //fill(Byz,250,250);
    stroke(0, 250, 250);
    rect(duszerbex, duszerbey, zerbetimer1, en);
    rect(canx[1], cany[1], bencan, en);
    rect(canxx[1], canyy[1], duscan, en);
    stroke(Byz, 250, 250);
    strokeWeight(strk1);

    if (zerbetimer > w/3.05 && zerbetimer <w/3) {
      parlakbelir=1;
    } else if (zerbetimer<w/3.05) {
      parlakbelir=0;
    }


    if (parlakbelir==1 && zerbetimer==w/3) {
      strk1=strk1+har;

      Byz=Byz+30;
      if (strk1>w/50) {
        strk1=w/50;
        Byz=255;
        parlakbelir=0;
      }
    } 

    if (parlakbelir==0) {
      Byz=Byz-10;
      strk1=strk1-har/3;
      if (strk1<strk) {
        strk1=strk;
        Byz=0;
      }
    }
    rect(x1, y1, zerbetimer, en);
  }
}

class AYARKARE {
  float x;
  float y;
  float rexx;
  float reyy;
  float rexx1;
  float reyy1;
  float strk1;
  float textX;
  float textY;
  float textXs;
  float textYs;
  float textXd;
  float textYd;
  float textwuz;
  float texthuz;
  float solX;
  float sagX;
  float y1;
  float ys;
  float yses;
  float ydil;
  float ymus;
  float yd;
  AYARKARE() { 
    x=w/2;
    y=h*0.5;
    y1=h*0.8;
    ys=h*0.66;
    yd = h*0.34;
    yses=h*0.6;
    ymus=h*0.44;
    ydil = h*0.28;
    rexx = w*0.9;
    reyy = h*0.8;
    rexx1 = w*0.9*0.95;
    reyy1 = h*0.8*0.96;
    strk1 = int(w/400);
    textX=w*0.5;
    textY=h*0.5;
    textXs=w*0.5;
    textYs=h*0.66;
    textXd=w*0.5;
    textYd=h*0.34;
    textwuz=w*0.7;
    texthuz=h*0.3;
    sagX = w*0.8;
    solX=w*0.2;
  }

  void display() {
    // music üçün
    if (optxtmus<254) {
      optxtmus=optxtmus+10;
    }
    if (optxtmus>240) {
      optxtmus=255;
    }
    // dil üçün
    if (optxt2<254) {
      optxt2=optxt2+10;
    }
    if (optxt2>250) {
      optxt2=255;
    }
    // ses üçün 
    if (optxt3<254) {
      optxt3=optxt3+10;
    }
    if (optxt3>250) {
      optxt3=255;
    }
    fill(0, 200, 230, 30);
    stroke(0, 250, 250);
    strokeWeight(strk1);
    rectMode(CENTER);
    rect(x, y, rexx, reyy);
    fill(0, 200, 230, 0);
    rect(x, y, rexx1, reyy1);

    fill(0, 255, 100);
    if (dilbelir ==0) {
      text("< SAVE AND RETURN ", x, y1);
    } else {
      text("< KAYDET VE GERİ DÖN ", x, y1);
    }

    //fill(0,255,100, optxt2);
    textSize(textolcu100);
    if (dilbelir ==0) {
      text("SETTINGS", x, y*0.4);
    } else {
      text("AYARLAR", x, y*0.4);
    }

    textSize(textolcu40);
    if (dilbelir ==0) {
      text("LANGUAGE", x, ydil);
    } else {
      text("DİL", x, ydil);
    }

    if (dilbelir ==0) {
      text("MUSIC", x, ymus);
    } else {
      text("MÜZİK", x, ymus);
    }

    if (dilbelir ==0) {
      text("SOUNDS", x, yses);
    } else {
      text("SESLER", x, yses);
    }

    textSize(textolcu100);
    text("<", solX, y);
    text(">", sagX, y);
    text("<", solX, ys);
    text(">", sagX, ys);
    text("<", solX, yd);
    text(">", sagX, yd);
  }

  void update() {
    menubelir=1;
    textSize(textolcu70);
    fill(0, 250, 100, optxt2); // dilüçün
    text(ilkyazi, textXd, textYd, textwuz, texthuz);
    fill(0, 250, 100, optxtmus); // müzik üçün
    text(ilkyazimus, textX, textY, textwuz, texthuz);
    fill(0, 250, 100, optxt3); // ses üçün
    text(ilkyazises, textXs, textYs, textwuz, texthuz);

    if (ilkyazibelir<0) {
      ilkyazibelir=1;
    } 
    // DİL ÜÇÜN
    if (ilkyazibelir==0) { 
      ilkyazi = " ENGLISH ";
      menubelir=1;
    } else if (ilkyazibelir==1) {    

      ilkyazi = " TÜRKÇE ";   

      menubelir =2;
    } else if (ilkyazibelir==2) {
      ilkyazibelir=0;
    } 
    // SES ÜÇÜN
    if (ilkyazibelirses<0) {
      ilkyazibelirses=1;
    } 
    if (ilkyazibelirses==0) { 
      ilkyazises = " ON ";
      menubelirses=1;
    } else if (ilkyazibelirses==1) {    

      ilkyazises = " OFF ";   

      menubelirses =2;
    } else if (ilkyazibelirses==2) {
      ilkyazibelirses=0;
    } 

    // MUSIC ÜÇÜN
    if (ilkyazibelirmus<0) {
      ilkyazibelirmus=1;
    } 
    if (ilkyazibelirmus==0) { 
      ilkyazimus = " ON ";
      menubelirmus=1;
    } else if (ilkyazibelirmus==1) {    

      ilkyazimus = " OFF ";   

      menubelirmus =2;
    } else if (ilkyazibelirmus==2) {
      ilkyazibelirmus=0;
    }
  }
}

class DUSKAHRO {
  float x1;
  float x2;
  float y1;
  float y2;
  float y3;
  float y4;

  float x;
  float y;
  float yreturn;
  float rexx;
  float reyy;
  float rexx1;
  float reyy1;
  float rex;
  float rey;
  float strkheros;
  float strk1;
  float textX;
  float textY;
  float textwuz;
  float texthuz;
  float solX;
  float sagX;
  float hllpse1;
  float hllpse2;
  float hllpse3;
  float hllpse4;
  int opsayi;
  int opsayix;
  DUSKAHRO() { 
    x1=w*0.65;
    x2=w*0.5;
    y1=4*h/10;
    y2=y1+h/10; // +h/15;
    y3=y2+h/10;
    y4=y3+h/10;
    rex=w/10;
    rey=w/10;
    x=w*0.5;
    y=h*0.5;
    yreturn=h*0.8;
    hllpse1=h*0.7;
    hllpse2=h*0.7;
    hllpse3=h*0.7;
    hllpse4=h*0.7;
    rexx = w*0.9;
    reyy = h*0.8;
    rexx1 = w*0.9*0.95;
    reyy1 = h*0.8*0.96;
    strk1 = int(w/400);
    strkheros=int(w/120);
    textX=w*0.5;
    textY=h*0.5;
    textwuz=w*0.7;
    texthuz=h*0.3;
    sagX = w*0.8;
    solX=w*0.2;
    opsayi=int(w/12);
    opsayix=int(w/30);
  }

  void display() {

    fill(0, 200, 230, 30);
    stroke(0, 250, 250);
    strokeWeight(strk1);
    rectMode(CENTER);
    rect(x, y, rexx, reyy);
    fill(0, 200, 230, 0);
    rect(x, y, rexx1, reyy1);

    noFill();
    strokeWeight(strkheros);   
   
    stroke(255, 50, 255);
    ellipse(w*0.3, y1, rex, rey);
    stroke(50, 255, 50);
    ellipse(w*0.3, y2, rex, rey);
    stroke(255, 50, 50, 255);
    ellipse(w*0.3, y3, rex, rey);
    stroke(255, 255, 255);
    ellipse(w*0.3, y4, rex, rey);
   
    fill (0, 255, 100);
    if (dilbelir ==0) {
      text("< RETURN ", x, yreturn);
    } else { 
      text("< GERİ ", x, yreturn);
    }
    if (dilbelir ==0) {
      text("CHOOSE YOUR OPPONENT", x2, y*0.4, w/2, h/2);
    } else {
      text("RAKİBİNİ SEÇ", x2, y*0.4, w/2, h/2);
    }
    if (optxt2<254) {
      optxt2=optxt2+10;
    }
    if (optxt2>250) {
      optxt2=255;
    }

    fill(0, 255, 100, optxt2);
    if (dilbelir ==1) {
      text(" MOR GÜÇ ", x1, y1);
      text(" YEŞİL GÜÇ ", x1, y2);
      text(" KIRMIZI GÜÇ ", x1, y3);
      text(" BEYAZ GÜÇ ", x1, y4);
    } else {  
      text(" PURPLE FORCE ", x1, y1);
      text(" GREEN FORCE ", x1, y2);
      text(" RED FORCE ", x1, y3);
      text(" WHITE FORCE ", x1, y4);
    }
  }

}