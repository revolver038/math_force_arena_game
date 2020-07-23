void draw () {
  if (cikis == true) {
    cikistimer=cikistimer+1;
    if (cikistimer>20) {
      cikistimer=0;
      noLoop();
      System.exit(0);
    }
  }
  
  if (oyaktiv==true) {
    oyaktivtimer = oyaktivtimer+1;
    if (oyaktivtimer>20) {
      oyaktivtimer=0;
      optxt2=0;
      pages=4;
      oyaktiv=false;
    }
  }
  if (pages==0) {
    girisimage.display();
    giriskare.display();
    giriskare.update();
    if (musbelir==0) {
      if (musonoff==0) {
        try {
      sndmm.prepare();
      sndmm.start();    
    }
    catch (IllegalArgumentException e) {
      
    }
    catch (IllegalStateException e) {
      
    } 
    catch (IOException e) {
      
    }
       // mainmusic.loop(5);
      }
      musbelir=1; 
    } 
  } else if (pages==1) {
    if (musbelir==0) {
      if (musonoff==0) {
          try {
      sndmm.prepare();
      sndmm.start();    
    }
    catch (IllegalArgumentException e) {
      
    }
    catch (IllegalStateException e) {
      
    } 
    catch (IOException e) {
      
    }
        //mainmusic.loop(5);
      }
      musbelir=1;
    } 

    girisimage.display();
    menukare.display();
    menukare.update();
  } else if (pages==2) {

    girisimage.display();
    zorkare.display();
    zorkare.update();
  } else if (pages==3) {   
    girisimage.display();
    ayarkare.display(); 
    ayarkare.update();
  } else if (pages==5) {
    girisimage.display();
    duskahro.display();
  } else if (pages==6) {     
    gameover.update();
    gameover.display();

  if (winsound==true && sesonoff==0) {
      try {
      sndwinses.prepare();
      sndwinses.start();    
    }
    catch (IllegalArgumentException e) {
      
    }
    catch (IllegalStateException e) {
      
    } 
    catch (IOException e) {
      
    }
 
    //  winmusic.loop(0);
      winsound=false;
    }
    
 if (losesound==true && sesonoff==0) {
      try {
      sndloses.prepare();
      sndloses.start();     
    }
    catch (IllegalArgumentException e) {
      
    }
    catch (IllegalStateException e) {
      
    } 
    catch (IOException e) {
      
    }  
     // losemusic.loop(0);
      losesound=false;
    }
  } else if (pages==9) { // hakkında
    girisimage.display();
    hakkinda.display();
    hakkinda.update();
    
  } else if (pages==7) { 
    ilkgiris.display();
    stroke(0, 250, 100);
    strokeWeight(w/400);
    fill(0, 250, 100);
    textSize(textolcu60);
    text(loadreq + "%", w/2, h*0.62);
    if (loadtimer<500) {    
      if (dilbelir==0) {
        text(" LOADING ", w/2, h*0.55);
      } else { 
        text(" YÜKLENİYOR ", w/2, h*0.55);
      }    
      textSize(textolcu40);
      text("Developed by Tural Alizada, v1.0", w/2, h*0.9);
      loadtimer=loadtimer+1;
    }
    if (loadtimer==1) {
      loadrnd=int(random(40, 70));
    }     
    if (loadtimer<loadrnd/3) {
      loadreq=loadreq+1;
    } 
    if (loadtimer>=loadrnd && loadtimer < loadrnd+loadrnd/2) {
      loadreq=loadreq+1;
    } else if (loadtimer>130) {
      loadreq=loadreq+1;
    }

    if (loadreq>99) {
      loadreq=100;
      if (loadtimer>=230) {
        ilkyazibelir=0;
        pages=0;
        loadtimer=0;
        loadreq=0;
      }
    }
    
  } else if (pages==8) {      
    background(0);
    fill(0, 150, 150, 30);
    stroke(0, 150, 150, 50);
    ellipse(w/2, h*0.5, w/2, w/2);
    // ilkgiris.display();
    stroke(0, 250, 100);
    strokeWeight(w/200);
    fill(0, 250, 100);
    textSize(textolcu60);
    text(loadreq + "%", w/2, h*0.52);
    if (loadtimer<500) {
      if (dilbelir==0) {
        text(" LOADING ", w/2, h*0.45);
      } else { 
        text(" YÜKLENİYOR ", w/2, h*0.45);
      }    
      loadtimer=loadtimer+1;     
    }
    
    if (loadtimer==1) { 
            
       
      loadrnd=int(random(40, 70));
    }   
    if (loadtimer<loadrnd/3) {
      loadreq=loadreq+1;
    } 
    if (loadtimer>=loadrnd && loadtimer < loadrnd+loadrnd/2) {
      loadreq=loadreq+1;
    } else if (loadtimer>130) {
      loadreq=loadreq+1;
    }

    if (loadreq>99) {
      loadreq=100;
      sndmm.reset();
            
    try {     
      sndmm.setDataSource(mm.getFileDescriptor(),mm.getStartOffset(), mm.getLength());           
        }
        catch (IllegalArgumentException e) {
    
  }
  catch (IllegalStateException e) {
    
  } 
  catch (IOException e) {
    
  }    
    
      if (loadtimer>=230) {
        ilkyazibelir=0;   
         
          if (musonoff==0) {
            musbelir=0;
          } else {
            musbelir=1;
          }
        musbelir=0;
        optxt2=0;
        pages=1;
        loadtimer=0;
        loadreq=0;
      }
    }
  } else if (pages==4) {
     if (mousePressed && mouseY>h/2 && durum !=0) {
    emouseX = mouseX;
    emouseY= mouseY;
  }
    rectangle.display();
    fill(0, 255, 100);
    textSize(textolcu200);
 
    if (ucikibir<209) {
      ucikibir=ucikibir+1;  
      if (ucikibir==1) {
    
    snducbir.reset();
    sndgoses.reset();
    sndwinses.reset();
    sndloses.reset();
    sndsec.reset();
    try {       
        snducbir.setDataSource(ucbir.getFileDescriptor(),ucbir.getStartOffset(), ucbir.getLength());
        sndgoses.setDataSource(goses.getFileDescriptor(),goses.getStartOffset(), goses.getLength());
        sndwinses.setDataSource(winses.getFileDescriptor(),winses.getStartOffset(), winses.getLength());
        sndloses.setDataSource(loses.getFileDescriptor(),loses.getStartOffset(), loses.getLength());
        sndsec.setDataSource(sec.getFileDescriptor(),sec.getStartOffset(), sec.getLength());
        }
        catch (IllegalArgumentException e) {
  }
  catch (IllegalStateException e)  {
  } 
  catch (IOException e) {
    
  }    
  
 } else if (ucikibir==2) {
   
        if (sesonoff==0) {
    try {
      snducbir.prepare();
      snducbir.start();
      
    }
    catch (IllegalArgumentException e) {    
    }
    catch (IllegalStateException e) {    
    } 
    catch (IOException e) {    
    }
        //  ucikibirses.loop(0);
        }     
    } else if (ucikibir==60) {    
      snducbir.reset(); 
    try {       
        snducbir.setDataSource(ucbir.getFileDescriptor(),ucbir.getStartOffset(), ucbir.getLength());
        }
        catch (IllegalArgumentException e) {
    
  }
  catch (IllegalStateException e) {
    
  } 
  catch (IOException e) {
    
  }     
      } else  if (ucikibir==61) {
        
        if (sesonoff==0) {
        
          try {
      snducbir.prepare();
      snducbir.start();
    }
    catch (IllegalArgumentException e) {
      
    }
    catch (IllegalStateException e) {
      
    } 
    catch (IOException e) {
      
    }
    
        //  ucikibirses.loop(0);
        }
        
        
        } else if (ucikibir==120) {    
      snducbir.reset();
    
    try {       
        snducbir.setDataSource(ucbir.getFileDescriptor(),ucbir.getStartOffset(), ucbir.getLength());
        }
        catch (IllegalArgumentException e) {
    
  }
  catch (IllegalStateException e) {
    
  } 
  catch (IOException e) {
    
  }    
               
      } else  if (ucikibir==121) {
        if (sesonoff==0) {
          try {
      snducbir.prepare();
      snducbir.start();
      
    }
    catch (IllegalArgumentException e) {
      
    }
    catch (IllegalStateException e) {
      
    } 
    catch (IOException e) {
      
    }
        //  ucikibirses.loop(0);
        }
      } else  if (ucikibir==181) {      
        if (sesonoff==0) {
          try {
      sndgoses.prepare();
      sndgoses.start();
      
    }
    catch (IllegalArgumentException e) {
      
    }
    catch (IllegalStateException e) {
      
    } 
    catch (IOException e) {
      
    }
        //  GOses.loop(0);
        }         
            
      }
   } 
   
   
    if (ucikibir>0 && ucikibir<60 ) {
      text(" 3 ", w/2, h/2);
    } else if (ucikibir<120) {
      text(" 2 ", w/2, h/2);
    } else if (ucikibir<180) {
      text(" 1 ", w/2, h/2);
    } else if (ucikibir<208) {
      
      fakeX=int(w/2);
        fakeY=int(h*0.25);
        mouseX=int(w/2);
        mouseY=int(h*0.75);
        emouseX=int(w/2);
        emouseY=int(h*0.75);
        fakeX=int(w/2);
        fakeY=int(h*0.25);
      text(" GO! ", w/2, h/2);
    } else if (ucikibir>=208) {   
      ucikibir=210;
    }

    if (ucikibir>180) {       
      rectangle.update();
      xett.display();
    }
    
  
    
    if (ucikibir ==210) {     
      kahro.update();
     if (mouseX>int(w*0.85)) {
      emouseX=int(w*0.85);
    } else if (mouseX < int(0.15*w)) {
      emouseX = int(w*0.15);
    }


    if (mouseY>int(h*0.89)) {
      emouseY=int(h*0.89);
    } else if (mouseY<int(h*0.55)) {
      emouseY=int(h*0.55);
    }

    }

    noStroke();

    //-------------------------------------------------------
   
    

    if (durum==-1) {
      //xett.display();
      opabelir=0;
      oprctAz=0;
      zerbetimer=zerbetimer+zerbedolan;
    }

    if (zerbetimer>w/3) {
      zerbetimer = w/3;
    }

    dusmandurum();

    if (mousePressed && durum !=0) {
      fill(0, 230, 250, 30);
      stroke(0, 230, 250, 40);

      ellipse(mouseX, mouseY, h*0.1, h*0.1);
      ellipse(mouseX, mouseY, h*0.2, h*0.2);

    }

    //------------------RANDOM ÇALIŞTIRICI
    if (belir==1) {

      //ILKOKUL
      if (zorlukbelir==1) {
        sual1=int(random(1, 9));
        sual11=int(random(1, 9));

        sual2=int(random(9, 15));
        sual22=int(random(9, 15));

        sual3=int(random(15, 25));
        sual33=int(random(15, 25));

        randsayi1= int(random(1, 5));
        randsayi2= int(random(1, 5));


        // ORTAOKUL ILK
      } else if (zorlukbelir==2) {

        sual1=int(random(11, 29));
        sual11=int(random(11, 29));

        sual2=int(random(5, 9));
        sual22=int(random(9, 17));

        sual3=int(random(1, 9));
        sual33=int(random(1, 9));
        randsayi1= int(random(11, 19));
        //  randsayi2= int(random(1, 9));

        //ORTAOKUL UST
      } else {

        sual1=int(random(11, 39));
        sual11=int(random(11, 39));

        sual2=int(random(2, 8));
        sual22=int(random(2, 8));

        sual3=int(random(0, 3));
        sual33=int(random(0, 3));

        sual3x=int(random(0, 3));
        sual33x=int(random(0, 3));
        randsayi1= int(random(0, 3));
        randsayi2= int(random(0, 3));
      }

      randsayi3= int(random(2, 7));
      randsayi4= int(random(1, 9));
      varrandom1 = int(random(2, 10));
      varrandom2 = int(random(2, 10));
      varrandom3 = int(random(2, 10));

      randa1=int(random(2, 7));

      randb1=int(random(2, 7));

      randc1=int(random(2, 7));

      if (randa1==2) {
        a1=1;     
        a2=-1;
      } else if (randa1==3) {
        a1=-1;

        a2=1;
      } else if (randa1==4) {
        a1=2;
        a2=1;
      } else if (randa1==5) {
        a1=-2;
        a2=-1;
      } else if (randa1==6) {
        a1=1;
        a2=2;
      } else if (randa1==7) {
        a1=-1;
        a2=-2;
      }



      if (randb1==2) {
        b1=1;     
        b2=-1;
      } else if (randb1==3) {
        b1=-1;

        b2=1;
      } else if (randb1==4) {
        b1=2;
        b2=1;
      } else if (randb1==5) {
        b1=-2;
        b2=-1;
      } else if (randb1==6) {
        b1=1;
        b2=2;
      } else if (randb1==7) {
        b1=-1;
        b2=-2;
      }



      if (randc1==2) {
        c1=1;     
        c2=-1;
      } else if (randa1==3) {
        c1=-1;

        c2=1;
      } else if (randa1==4) {
        c1=2;
        c2=1;
      } else if (randa1==5) {
        c1=-2;
        c2=-1;
      } else if (randa1==6) {
        c1=1;
        c2=2;
      } else if (randa1==7) {
        c1=-1;
        c2=-2;
      }   
     
     
     
     if (sesonoff==0) {
   
    sndhts.reset();
 try {
     sndhts.setDataSource(hts.getFileDescriptor(),hts.getStartOffset(), hts.getLength());
    }
    
        catch (IllegalArgumentException e) {     
    }
    catch (IllegalStateException e) {
    } 
    catch (IOException e) { 
    } 
  }
 
      belir=0;
    }
    bendurum();
    kahrohar();
    shoot();
    eshoot();
    ellipses();

    mermi.update();
  }
}


void kahrohar() {
  if (dist(emouseX, emouseY, rx[1], ry[1])<kardur && ucikibir==210) {
    emouseX=rx[1];
    emouseY=ry[1];
  }

  if ( emouseY > h/2 && durum !=0) {
    runx =(emouseX-rx[1])/hizz;
    runy = (emouseY-ry[1])/hizz;

    if (emouseX>rx[1]) {
      rx[1] = rx[1] +runx;
      
    } else {
      rx[1] = rx[1] +runx ;    
    }

    if (emouseY>ry[1] ) {
      ry[1] = ry[1] +runy ;
      
    } else {

      ry[1] = ry[1]+ runy;
      
    }
  }
}

//-----------------------------ELLIPSES-------------------------------

void ellipses() {
  if (dist(fakeX, fakeY, cx[1], cy[1])<kardur*1.5) {
    fakeX=cx[1];
    fakeY=cy[1];
  }

  runxx =(fakeX-cx[1])/hizz;
  runyy = (fakeY-cy[1])/hizz;

  if (fakeX>cx[1]) {
    cx[1] = cx[1] +runxx;
  } else {
    cx[1] = cx[1] +runxx ;
  }
  if (fakeY>cy[1] ) {
    cy[1] = cy[1] +runyy ;
  } else {
    cy[1] = cy[1]+ runyy;
  }
}