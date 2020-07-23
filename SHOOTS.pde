void eshoot() {
  //noStroke();
  //fill(250,0,0);
  if (bencan <=0 ) {
    bencan =0;
    durum1=-1;
    zerbetimer=0;
    optxt2=0;
    shoottimer1=0;
    sonuc1=0;
    timer=0;
    durum=-1;
    mermiX1=-50;
    mermiY1=50;
    losesound=true;
    pages=6;
  }



  if (durum1==1) {

    if (zerbetimer1<0) {
      zerbetimer1=0;
    } 
    if (zerbetimer1>w/3) {
      zerbetimer1=w/3;
    }


    zerbetimer1=ezerbetimer1;
  }


  if (sonuc1 >0 && ucikibir==210) {
    shoottimer1=shoottimer1+1;

    if (shoottimer1 ==2) {

      mousezerbe11x = cx[1];
      mousezerbe11y = cy[1];
      mousezerbe22x = mouseXX1;
      mousezerbe22y = mouseYY1;

      if (mousezerbe11x>=mousezerbe22x) {
        mermihiz1=-1;
      } else {
        mermihiz1=1;
      }
      runmermix1 = HIZ*mermihiz1*dist(mousezerbe11x, 0, mousezerbe22x, 0)/dist(mousezerbe11x, mousezerbe11y, mousezerbe22x, mousezerbe22y);
      runmermiy1 = HIZ*dist(0, mousezerbe11y, 0, mousezerbe22y)/dist(mousezerbe11x, mousezerbe11y, mousezerbe22x, mousezerbe22y);
      mermiX1=mousezerbe11x;
      mermiY1=mousezerbe11y;
   
    sndssonc2.reset();
 
    try {     
        sndssonc2.setDataSource(ssonc2.getFileDescriptor(),ssonc2.getStartOffset(), ssonc2.getLength());     
        }
        catch (IllegalArgumentException e) {  
  }
  catch (IllegalStateException e) { 
  } 
  catch (IOException e) {  
  }    
      
      
      
    } else if (shoottimer1 >2) {

      // zerbetimer=ezerbetimer;
      mermiX1= mermiX1+runmermix1;
      mermiY1=mermiY1+runmermiy1;

      if (dist(mermiX1, mermiY1, rx[1], ry[1])<w/16 && zerbetimer1>0) {
        if (sesonoff==0) {
          
          try {      
      sndssonc2.prepare();
      sndssonc2.start();      
    }
    catch (IllegalArgumentException e) {
      
    }
    catch (IllegalStateException e) {
      
    } 
    catch (IOException e) {
      
    }
          noFill();
          stroke(255,0,0);
          rectMode(CENTER);
          rect(w/2, h*0.725, w*0.82, h*0.42);
          
       
          
          //sesatsonuc.loop(0);
        }
        patlama.patlama1();
        bencan = bencan - zerbe1;
        // canx[1] = canx[1]+zerbe;

        zerbetimer1=ezerbetimer1;
        shoottimer1=0;
        sonuc1=0;
        timer=0;
        durum1=-1;
        mermiX1=-50;
        mermiY1=-50;
      }

      // ELLIPSE RADIUS YOX DIAMETERLE ÇEKİLİR

      if (dist(mermiX1, mermiY1, mousezerbe22x, mousezerbe22y) <h/49 && zerbetimer1>0) {
        patlama.patlama2();
        //  ellipse(mousezerbe22x, mousezerbe22y, w/3, w/3);
        if (dist(mousezerbe22x, mousezerbe22y, rx[1], ry[1])<13*w/60) { //yeni w/10 + w/20 
          if (sesonoff==0) {
            
            try {
       
      sndssonc2.prepare();
      sndssonc2.start();
      
    }
    catch (IllegalArgumentException e) {
      
    }
    catch (IllegalStateException e) {
      
    } 
    catch (IOException e) {
      
    }
    noFill();
            stroke(255,0,0);
            rectMode(CENTER);
          rect(w/2, h*0.725, w*0.82, h*0.42);
          
            
            //sesatsonuc.loop(0);
          }
          bencan = bencan - 0.5*zerbe1; 
          // canxx[1] = canxx[1]+zerbe/2;
        } 

        zerbetimer1=ezerbetimer1;
        shoottimer1=0;
        sonuc1=0;
        timer=0;
        durum1=-1;
        mermiX1=-50;
        mermiY1=-50;
      }

      if (zerbetimer<0) {
        zerbetimer=0;
      }
    }
  } else {      
    //do nothing.
  }
}







void shoot() {
  //noStroke();
  //fill(250,0,0);
  if (duscan <=0 ) {
    duscan =0;
    optxt2=0;
    durum=-1;
    zerbetimer=0;
    shoottimer=0;
    sonuc=0;
    sonuc1=0;
    durum1=-1;
    mermiX=-50;
    mermiY=-50;
    winsound=true;
    timer=0;
    ucikibir=0;
    zerbetimer=w/3;
    zerbetimer1=w/3;
    fakeX = w/2;
    fakeY= h/3;
    pages=6;
  }

  if (durum==1) {
    opabelir=0;
    if (zerbetimer<0) {
      zerbetimer=0;
    } 
    if (zerbetimer>w/3) {
      zerbetimer=w/3;
    }

  //  emouseX=rx[1];
   // emouseY=ry[1];

    if (sonuc ==1) {
      zerbe = w*0.012;
    } else if (sonuc ==2) { 
      zerbe = w*0.024;
    } else if (sonuc ==3) {    
      zerbe = w*0.048;
    }

    zerbetimer=ezerbetimer;
  }


  if (sonuc >0 && ucikibir>209) {
    shoottimer=shoottimer+1;

    if (shoottimer ==2) {

      mousezerbe1x = rx[1];
      mousezerbe1y = ry[1];
      mousezerbe2x = mouseXX;
      mousezerbe2y = mouseYY;

      if (mousezerbe1x>=mousezerbe2x) {
        mermihiz=-1;
      } else {
        mermihiz=1;
      }
      runmermix = HIZ*mermihiz*dist(mousezerbe1x, 0, mousezerbe2x, 0)/dist(mousezerbe1x, mousezerbe1y, mousezerbe2x, mousezerbe2y);
      runmermiy = HIZ*dist(0, mousezerbe1y, 0, mousezerbe2y)/dist(mousezerbe1x, mousezerbe1y, mousezerbe2x, mousezerbe2y);
      mermiX=mousezerbe1x;
      mermiY=mousezerbe1y;
    
    sndssonc.reset();
  
    try {          
     sndssonc.setDataSource(ssonc.getFileDescriptor(),ssonc.getStartOffset(), ssonc.getLength());
                
        }
        catch (IllegalArgumentException e) {
    
  }
  catch (IllegalStateException e) {
    
  } 
  catch (IOException e) {
    
  }    
      
      
      
    } else if (shoottimer >2) {

      // zerbetimer=ezerbetimer;
      mermiX= mermiX+runmermix;
      mermiY=mermiY-runmermiy;


      noFill();
      strokeWeight(stroke5);
      stroke(0, 250, 250);

      if (dist(mermiX, mermiY, cx[1], cy[1])<w/16 && zerbetimer>0) {
        ellipse(mermiX, mermiY, w/3, w/3);
        if (sesonoff==0) {
          
          try {
       
      sndssonc.prepare();
      sndssonc.start();
      
    }
    catch (IllegalArgumentException e) {
      
    }
    catch (IllegalStateException e) {
      
    } 
    catch (IOException e) {
      
    }
    noFill();
          stroke(255,0,0);
          rectMode(CENTER);
      rect(w/2, h*0.275, w*0.82, h*0.42);
          
        //  sesatsonuc.loop(0);
        }
        duscan = duscan - zerbe;
        canxx[1] = canxx[1]+zerbe;

        //runmermix=0;
        //runmermiy=0;
        zerbetimer=ezerbetimer;
        shoottimer=0;
        sonuc=0;
        durum=-1;
        mermiX=-50;
        mermiY=-50;
      }
      // ELLIPSE RADIUS YOX DIAMETERLE ÇEKİLİR

      if (dist(mermiX, mermiY, mousezerbe2x, mousezerbe2y) <h/49 && zerbetimer>0) {
        ellipse(mousezerbe2x, mousezerbe2y, w/3, w/3);
        if (dist(mousezerbe2x, mousezerbe2y, cx[1], cy[1])<13*w/60) { //yeni w/10 + w/20 
          if (sesonoff==0) {         
            try {     
      sndssonc.prepare();
      sndssonc.start();
      
    }
    catch (IllegalArgumentException e) {
      
    }
    catch (IllegalStateException e) {
      
    } 
    catch (IOException e) {
      
    }
    noFill();
    stroke(255,0,0);
    rectMode(CENTER);
       rect(w/2, h*0.275, w*0.82, h*0.42);
          
           // sesatsonuc.loop(0);
          }
          duscan = duscan - zerbe/2; 
          canxx[1] = canxx[1]+zerbe/2;
        } 
        //runmermix=0;
        //runmermiy=0;
        zerbetimer=ezerbetimer;
        shoottimer=0;
        sonuc=0;
        durum=-1;
        mermiX=-50;
        mermiY=-50;
      }
      if (zerbetimer1<0) {
        zerbetimer1=0;
      }
    }
  } else {      
    //do nothing.
  }
}