void mousePressed() {
  if (sesonoff==0) {
    if (pages ==4) {
  sndsruek.reset();
    sndssat.reset();
  } else {
    sndtns.reset();
    sndsec.reset();  
    }
     
 try {
   if (pages==4) {
     sndsruek.setDataSource(sruek.getFileDescriptor(),sruek.getStartOffset(), sruek.getLength());
     sndssat.setDataSource(ssat.getFileDescriptor(),ssat.getStartOffset(), ssat.getLength());
     } else {
       sndtns.setDataSource(tns.getFileDescriptor(),tns.getStartOffset(), tns.getLength());
        sndsec.setDataSource(sec.getFileDescriptor(),sec.getStartOffset(), sec.getLength()); 
       
     }
              
      
    }
    
        catch (IllegalArgumentException e) {
       
    }
    catch (IllegalStateException e) {
  
    } 
    catch (IOException e) { 
    } 
    
  }
  oprct=0;
  if (pages==0) {
    ilkyazibelir=ilkyazibelir+1;
    optxt=0;
    //-------------------------PAGES 1
  } else if (pages==1) {  
    noFill();
    stroke(0, 250, 100);
    strokeWeight(stroketik);
    optxt2=0;
    if (mouseY < h*0.58 && mouseY> h*0.42) { 
          //sndtns.release();         
      if (mouseX>w*0.7) {
        if (sesonoff==0) {         
       try {   
      sndtns.prepare();
      sndtns.start();    
    }
    catch (IllegalArgumentException e) {
    }
    catch (IllegalStateException e) {
    } 
    catch (IOException e) { 
    }
         // tinses.loop(0);       
        }
        ilkyazibelir=ilkyazibelir+1;
      } else if (mouseX<w*0.3) {
        if (sesonoff==0) {               
          try {      
      sndtns.prepare();
      sndtns.start();    
    }
    catch (IllegalArgumentException e) {
    }
    catch (IllegalStateException e) {  
    } 
    catch (IOException e) {
    }    
         // tinses.loop(0);
        }
        ilkyazibelir=ilkyazibelir-1;
      }
    }
    if (pausedurum==0) {
      if (mouseY < h*0.58 && mouseY> h*0.42) {
        if (mouseX > w*0.7) {
          rect(w*0.8, h*0.5, w/8, h/10);
        } else if (mouseX<w*0.3) {
          rect( w*0.2, h*0.5, w/8, h/10);
        } else {
          if (sesonoff==0) {
            try {
      sndsec.prepare();
      sndsec.start();    
    }
    catch (IllegalArgumentException e) {    
    }
    catch (IllegalStateException e) {   
    } 
    catch (IOException e) {    
    }
           // sessec.loop(0);
          }
          rect( w*0.5, h*0.5, w/2, h/10);
          if (menubelir==1) {  
            durum1=-1;
            durum=-1;
            sonuc1=0;
            sonuc=0;
            bencan =w/3;
            duscan =w/3;
            zerbetimer=w/3;
            zerbetimer1=w/3;
            canxx[1] = w*0.62;
            canx[1] =w*0.05;
            shoottimer1=0;
            shoottimer=0;
            mermiX1=-50;
            mermiY1=-50;
            mermiX=-50;
            mermiY=-50;
            
            timer=0;
            pages=2;
          } else if (menubelir==2) {  
            if (dilbelir ==0) {  
              ilkyazibelir=0;
            } else {
              ilkyazibelir=1;
            }    
            optxtmus=0;
            optxt3=0;
            pages=3;
          } else if (menubelir==3) {
            ilkyazibelir=0;
            pages=9;
          } else if (menubelir==4) {
            bencan =w/3;
            duscan =w/3;
            zerbetimer=w/3;
            zerbetimer1=w/3;
            fakeX = w/2;
            fakeY= h/3;
            bencanen = h/50;
            duscanen=h/50;
            mermiw=w/40;
            mermih=w/40; 
            shoottimer1=0;
            shoottimer=0;
            zerbebosan=w/1600;
            zerbedolan=w/800;
            zerbebosan1=w/1600;
            zerbedolan1=w/800;
            canxx[1] = w*0.62;
            canyy[1] = h*0.02;
            canx[1] = w*0.05;
            cany[1] = h*0.02;
            ucikibir=0;
            duszerbex=w*0.62;
            duszerbey=h*0.04;
            if (cikis==false) {
            cikis = true;
            }
           // noLoop();
            //mainmusic.close);
          }
        }
      }
    } else if (pausedurum==1) {

      if (mouseY < h*0.58 && mouseY> h*0.42) {
        if (mouseX > w*0.7) {
          rect(w*0.8, h*0.5, w/8, h/10);
        } else if (mouseX<w*0.3) {
          rect( w*0.2, h*0.5, w/8, h/10);
        } else {
          if (sesonoff==0) {
            try {
      sndsec.prepare();
      sndsec.start();    
    }
    catch (IllegalArgumentException e) {    
    }
    catch (IllegalStateException e) {    
    } 
    catch (IOException e) {  
    }
          //  sessec.loop(0);
          }
          rect( w*0.5, h*0.5, w/2, h/10); 
          if (menubelir==1) {
            durum1=-1;
            durum=-1;
            sonuc1=0;
            sonuc=0;
            bencan =w/3;
            duscan =w/3;
            zerbetimer=w/3;
            zerbetimer1=w/3;
            canxx[1] = w*0.62;
            canx[1] =w*0.05;
            shoottimer1=0;
            shoottimer=0;
            mermiX1=-50;
            mermiY1=-50;
            mermiX=-50;
            mermiY=-50;           
            timer=0;
            pages=2; // zorluk
          } else if (menubelir==2) {  
            if (dilbelir ==0) { 
              ilkyazibelir=0;
            } else {
              ilkyazibelir=1;
            }  
            optxtmus=0;
            optxt3=0;
            pages=3;
          } else if (menubelir==3) {
            ilkyazibelir=0;
            pages=9;
          } else if (menubelir==4) {
            bencan =w/3;
            duscan =w/3;
            zerbetimer=w/3;
            zerbetimer1=w/3;
            fakeX = w/2;
            fakeY= h/3;
            bencanen = h/50;
            duscanen=h/50;
            mermiw=w/40;
            mermih=w/40; // h kullanılmadı DİKKAT !!!
            zerbebosan=w/1600;
            zerbedolan=w/800;
            zerbebosan1=w/1600;
            zerbedolan1=w/800;
            canxx[1] = w*0.62;
            canyy[1] = h*0.02;
            canx[1] = w*0.05;
            cany[1] = h*0.02;
            ucikibir=0;
            duszerbex=w*0.62;
            duszerbey=h*0.04;
           if (cikis == false) {
           cikis =true;
           }
          // System.exit(0);        
          } else if (menubelir==5) {
           // mainmusic.pause();        
            durum=-1;
            durum1=-1;
            pausedurum=0;
            ucikibir=0;
            pages=4;
          }
        }
      }
    }
    //----------PAGES 2
  } else if (pages==9) {
    noFill();
    stroke(0, 250, 100);
    strokeWeight(stroketik);
    optxt=0;
    // noFill();
    if (mouseX < w*0.7 && mouseX>w*0.3 && mouseY > h*0.75 ) {  
      if (sesonoff==0) {    
        try {
      sndsec.prepare();
      sndsec.start();    
    }
    catch (IllegalArgumentException e) {    
    }
    catch (IllegalStateException e) {    
    } 
    catch (IOException e) {    
    }
       // sessec.loop(0);
      }
      rect(w*0.5, h*0.8, w/2, h/10); 
      optxt2=0;
      pages=1;
    } 
    if (mouseY < h*0.58 && mouseY> h*0.42) {
      if (mouseX>w*0.8) {
        rect(w*0.85, h*0.5, w/8, h/10); 
        if (sesonoff==0) {
          try {
      sndtns.prepare();
      sndtns.start();    
    }
    catch (IllegalArgumentException e) {     
    }
    catch (IllegalStateException e) {    
    } 
    catch (IOException e) {    
    }
        //  tinses.loop(0);
        }
        ilkyazibelir=ilkyazibelir+1;
      } else if (mouseX<w*0.2) {
        rect(w*0.15, h*0.5, w/8, h/10); 
        if (sesonoff==0) {
          try {
      sndtns.prepare();
      sndtns.start();    
    }
    catch (IllegalArgumentException e) {     
    }
    catch (IllegalStateException e) {    
    } 
    catch (IOException e) {    
    }
         // tinses.loop(0);
        }
        ilkyazibelir=ilkyazibelir-1;
      }
    }
  } else if (pages==2) {
    noFill();
    stroke(0, 250, 100);
    strokeWeight(stroketik);
    optxt2=0;
    if (mouseY < h*0.58 && mouseY> h*0.42) {
      if (mouseX>w*0.7) {
        if (sesonoff==0) {
          try {
      sndtns.prepare();
      sndtns.start();    
    }
    catch (IllegalArgumentException e) {    
    }
    catch (IllegalStateException e) {    
    } 
    catch (IOException e) {    
    }
        //  tinses.loop(0);
        }
        ilkyazibelir=ilkyazibelir+1;
      } else if (mouseX<w*0.3) {
        if (sesonoff==0) {
          try {
      sndtns.prepare();
      sndtns.start();
    }
    catch (IllegalArgumentException e) {    
    }
    catch (IllegalStateException e) {    
    } 
    catch (IOException e) {    
    }
        //  tinses.loop(0);
        }
        ilkyazibelir=ilkyazibelir-1;
      }
    }
    if (mouseY < h*0.58 && mouseY> h*0.42) {
      if (mouseX > w*0.7) {
        rect(w*0.8, h*0.5, w/8, h/10);
      } else if (mouseX<w*0.3) {
        rect( w*0.2, h*0.5, w/8, h/10);
      } else { 
        if (sesonoff==0) {
          try {
      sndsec.prepare();
      sndsec.start();    
    }
    catch (IllegalArgumentException e) {    
    }
    catch (IllegalStateException e) {    
    } 
    catch (IOException e) {    
    }
         // sessec.loop(0);
        }
        rect( w*0.5, h*0.5, w/2, h/10); 
        if (menubelir==1) {  
          zorlukbelir=1;
          pages=5;
          ucikibir=0;
        } else if (menubelir==2) {  
          zorlukbelir=2;
          pages=5;
          ucikibir=0;
        } else if (menubelir==3) {
          zorlukbelir=3;
          pages=5;
          ucikibir=0;
        }
      }
    } 
    if (mouseX < w*0.7 && mouseX>w*0.3 && mouseY > h*0.6 ) {
      if (sesonoff==0) {    
        try {
      sndsec.prepare();
      sndsec.start();    
    }
    catch (IllegalArgumentException e) {     
    }
    catch (IllegalStateException e) {    
    } 
    catch (IOException e) {   
    }
      //  sessec.loop(0);
      }
      rect(w*0.5, h*0.8, w/2, h/10); 
      optxt2=0;
      menubelir=1;
      pages=1;
    }
    // dil ucun
  } else if (pages==3) {  
    noFill();
    stroke(0, 250, 100);
    strokeWeight(stroketik);
    if (mouseY < h*0.42 && mouseY> h*0.26) {
      optxt2=0;
      if (mouseX>w*0.7) {
        if (sesonoff==0) {
          try {
      sndtns.prepare();
      sndtns.start();    
    }
    catch (IllegalArgumentException e) {     
    }
    catch (IllegalStateException e) {     
    } 
    catch (IOException e) {   
    }
        //  tinses.loop(0);
        }
        ilkyazibelir=ilkyazibelir+1;
      } else if (mouseX<w*0.3) {
        if (sesonoff==0) {
          try {
      sndtns.prepare();
      sndtns.start();    
    }
    catch (IllegalArgumentException e) {    
    }
    catch (IllegalStateException e) {    
    } 
    catch (IOException e) {  
    }
         // tinses.loop(0);
        }
        ilkyazibelir=ilkyazibelir-1;
      }
    }
    // music ucun
    if (mouseY < h*0.58 && mouseY> h*0.42) {
      optxtmus=0;
      if (mouseX>w*0.7) {
        if (sesonoff==0) {
          try {
      sndtns.prepare();
      sndtns.start();    
    }
    catch (IllegalArgumentException e) {
    }
    catch (IllegalStateException e) {   
    } 
    catch (IOException e) {     
    }
         // tinses.loop(0);
        }
        ilkyazibelirmus=ilkyazibelirmus+1;
      } else if (mouseX<w*0.3) {
        if (sesonoff==0) {
          try {
      sndtns.prepare();
      sndtns.start();    
    }
    catch (IllegalArgumentException e) {     
    }
    catch (IllegalStateException e) {     
    } 
    catch (IOException e) {   
    }
         // tinses.loop(0);
        }
        ilkyazibelirmus=ilkyazibelirmus-1;
      }
    }
    //ses ucun
    if (mouseY < h*0.74 && mouseY> h*0.58) {
      optxt3=0;
      if (mouseX>w*0.7) {
        if (sesonoff==0) {
          try {
      sndtns.prepare();
      sndtns.start();    
    }
    catch (IllegalArgumentException e) {    
    }
    catch (IllegalStateException e) {    
    } 
    catch (IOException e) {    
    }
        //  tinses.loop(0);
        }
        ilkyazibelirses=ilkyazibelirses+1;
      } else if (mouseX<w*0.3) {
        if (sesonoff==0) {
          try {
      sndtns.prepare();
      sndtns.start();     
    }
    catch (IllegalArgumentException e) {     
    }
    catch (IllegalStateException e) {    
    } 
    catch (IOException e) {    
    }
         // tinses.loop(0);
        }
        ilkyazibelirses=ilkyazibelirses-1;
      }
    }
    // DİL ucuN
    if (mouseY < h*0.42 && mouseY> h*0.26) {
      if (mouseX > w*0.7) {
        if (sesonoff==0) {
          try {
      sndtns.prepare();
      sndtns.start();    
    }
    catch (IllegalArgumentException e) {     
    }
    catch (IllegalStateException e) {    
    } 
    catch (IOException e) {    
    }
        //  tinses.loop(0);
        }
        rect(w*0.8, h*0.34, w/8, h/10);
      } else if (mouseX<w*0.3) {
        if (sesonoff==0) {
          try {
      sndtns.prepare();
      sndtns.start();    
    }
    catch (IllegalArgumentException e) {     
    }
    catch (IllegalStateException e) {    
    } 
    catch (IOException e) {    
    }
         // tinses.loop(0);
        }
        rect( w*0.2, h*0.34, w/8, h/10);
      }
    } 
    // music ucun  
    if (mouseY < h*0.58 && mouseY> h*0.42) {
      if (mouseX > w*0.7) {
        if (sesonoff==0) {
          try {
      sndtns.prepare();
      sndtns.start();    
    }
    catch (IllegalArgumentException e) {    
    }
    catch (IllegalStateException e) {    
    } 
    catch (IOException e) {    
    }
         // tinses.loop(0);
        }
        rect(w*0.8, h*0.5, w/8, h/10);
      } else if (mouseX<w*0.3) {
        if (sesonoff==0) {
          try {
      sndtns.prepare();
      sndtns.start();    
    }
    catch (IllegalArgumentException e) {   
    }
    catch (IllegalStateException e) {    
    } 
    catch (IOException e) {    
    }
         // tinses.loop(0);
        }
        rect( w*0.2, h*0.5, w/8, h/10);
      }
    } 
    // SES ucuN   
    if (mouseY < h*0.74 && mouseY> h*0.58) {
      if (mouseX > w*0.7) {
        if (sesonoff==0) {
          try {
      sndtns.prepare();
      sndtns.start();     
    }
    catch (IllegalArgumentException e) {    
    }
    catch (IllegalStateException e) {    
    } 
    catch (IOException e) {    
    }
        //  tinses.loop(0);
        }
        rect(w*0.8, h*0.66, w/8, h/10);
      } else if (mouseX<w*0.3) {
        if (sesonoff==0) {
          try {
      sndtns.prepare();
      sndtns.start();    
    }
    catch (IllegalArgumentException e) {    
    }
    catch (IllegalStateException e) {   
    } 
    catch (IOException e) {    
    }
         // tinses.loop(0);
        }
        rect( w*0.2, h*0.66, w/8, h/10);
      }
    } 
    if (mouseX < w*0.7 && mouseX>w*0.3 && mouseY > h*0.74 ) {
      rect(w*0.5, h*0.8, w*0.65, h/10); 
      if (menubelir==1) {
        dilbelir=0;
      } else if (menubelir==2) {
        dilbelir=1;
      }
      if (menubelirses==1) {        
        sesonoff=0;
        try {
        sndtns.setDataSource(tns.getFileDescriptor(),tns.getStartOffset(), tns.getLength());
        }
        catch (IllegalArgumentException e) {
  }
  catch (IllegalStateException e) {  
  } 
  catch (IOException e) {  
  }
      } else if (menubelirses==2) {
        sndtns.reset();
        sesonoff=1;
      }  
      if (menubelirmus==1) {
        musonoff=0;
        try {
        sndmm.setDataSource(mm.getFileDescriptor(),mm.getStartOffset(), mm.getLength());
        }
        catch (IllegalArgumentException e) {
    
  }
  catch (IllegalStateException e) {
  } 
  catch (IOException e) { 
  }
       // mainmusic.pause();
        musbelir=0;
      } else if (menubelirmus==2) {       
       try {
        sndmm.reset();
       }
       catch (IllegalArgumentException e) { 
  }
  catch (IllegalStateException e) {  
  } 
  catch (Exception e) {
  }         
   // mainmusic.pause();
        musonoff=1;
        musbelir=1;
      }
      if (sesonoff==0) {    
        try {
      sndsec.prepare();
      sndsec.start();    
    }
    catch (IllegalArgumentException e) {
    }
    catch (IllegalStateException e) {    
    } 
    catch (IOException e) {
    }
      //  sessec.loop(0);
      }
      optxt2=0;
      pages=1;
    }
  } else if (pages==6) {
    ilkyazibelir=0;
    if (optxt2>250) {
      loadreq=0;
      try {     
       pages=8;
        }
     catch (IllegalArgumentException e) {
      e.printStackTrace();
    }
    catch (IllegalStateException e) {
      e.printStackTrace();
    } 
  catch (Exception e) {
    e.printStackTrace();
  // e.printStackTrace();
  }    
      
    }
  } else if (pages==5) {
    noFill();
    stroke(0, 250, 100);
    strokeWeight(stroketik);
    if (pausedurum==0) {
      optxt2=0;
      if (mouseX < w*0.7 && mouseX > w*0.3) {
        
       if (sesonoff==0) {    
        try {
      sndsec.prepare();
      sndsec.start();    
    }
    catch (IllegalArgumentException e) {    
    }
    catch (IllegalStateException e) {    
    } 
    catch (IOException e) {   
    }
    }
        if (mouseY < 4*h/10 + h/20 && mouseY>4*h/10-h/20) {
          dusman=1;
          if (oyaktiv==false) {
            oyaktiv=true;
          }
          rect(w*0.65, 4*h/10, w*0.5, h/10); 
          if (musonoff==0) {
            sndmm.reset();
            }
        //  pages=4;  // loadinge yönlendirme
        } else if (mouseY < 5*h/10+h/20) {
          if (oyaktiv==false) {
            oyaktiv=true;
          }
          if (musonoff==0) {
            sndmm.reset();
            }
          dusman=2;  // loadinge yönlendirme
          rect(w*0.65, 5*h/10, w*0.5, h/10); 
        //  pages=4;
        } else if (mouseY < 6*h/10+h/20) {
          if (oyaktiv==false) {
            oyaktiv=true;
          }
          if (musonoff==0) {
            sndmm.reset();
            }
          dusman=3;
          rect(w*0.65, 6*h/10, w*0.5, h/10); 
        //  pages=4;
        } else if (mouseY < 7*h/10+h/20) {
          if (oyaktiv==false) {
            oyaktiv=true;
          }
          if (musonoff==0) {
            sndmm.reset();
            }
          dusman=4;
          rect(w*0.65, 7*h/10, w*0.5, h/10); 
        //  pages=4;
        }
            
      }
    } else if (pausedurum==1) {
      optxt2=0;
      if (mouseX < w*0.7 && mouseX > w*0.3) {
              if (sesonoff==0) {    
        try {
      sndsec.prepare();
      sndsec.start();    
    }
    catch (IllegalArgumentException e) {
      
    }
    catch (IllegalStateException e) {
      
    } 
    catch (IOException e) {
      
    }
    }
        
        if (mouseY < 4*h/10 + h/20) {
          if (oyaktiv==false) {
            oyaktiv=true;
          }
          if (musonoff==0) {
            sndmm.reset();
            }
          dusman=1;
          rect(w*0.65, 4*h/10, w*0.5, h/10); 
        //  pages=4;
        } else if (mouseY < 5*h/10+h/20) {
          if (oyaktiv==false) {
            oyaktiv=true;
          }
          if (musonoff==0) {
            sndmm.reset();
            }
          dusman=2;
          rect(w*0.65, 5*h/10, w*0.5, h/10); 
        //  pages=4;
        } else if (mouseY < 6*h/10+h/20) {
          if (oyaktiv==false) {
            oyaktiv=true;
          }
          if (musonoff==0) {
            sndmm.reset();
            }
          dusman=3;
          rect(w*0.65, 6*h/10, w*0.5, h/10); 
         // pages=4;
        } else if (mouseY < 7*h/10+h/20 ) {
          if (oyaktiv==false) {
            oyaktiv=true;
          }
          if (musonoff==0) {
            sndmm.reset();
            }
          dusman=4;
          rect(w*0.65, 7*h/10, w*0.5, h/10); 
        //  pages=4;
        }
        
      }
      
    }     
    if (mouseX < w*0.7 && mouseX>w*0.3 && mouseY > h*0.75 ) {
      if (musonoff==0) {      
       // mainmusic.play();
      }
      if (sesonoff==0) {    
        try {
      sndsec.prepare();
      sndsec.start();    
    }
    catch (IllegalArgumentException e) {
      
    }
    catch (IllegalStateException e) {
      
    } 
    catch (IOException e) {
      
    }
       // sessec.loop(0);
      }
      optxt2=0;
      rect(w*0.5, h*0.8, w/2, h/10); 
    //  menubelir=1;
      pages=2;
    }
  } else if (pages==4) {
    noFill();
    stroke(0, 250, 100);
    strokeWeight(stroketik);
    rectMode(CENTER);
    if (mouseX < w*0.55 && mouseX>w*0.45 && mouseY > h*0.95 ) {  
      if (sesonoff==0) {
        try {
      sndsec.prepare();
      sndsec.start();     
    }
    catch (IllegalArgumentException e) {
      
    }
    catch (IllegalStateException e) {
      
    } 
    catch (IOException e) {
      
    }
       // sessec.loop(0);
      }
      rect(w*0.5, h*0.97, w/20, h*0.04); 
      durum=-1;
      durum1=-1;
      ilkyazibelir=4;
      pausedurum=1;     
      menubelir=4;
      musbelir=0;
      pages=1;
    }
    if (durum==0) {
      ezerbetimer=zerbetimer;
      //  noFill();
      //fill(255,255,255, oprct);
      stroke(0, 250, 250);
      strokeWeight(stroke2);
      if (mouseX<w*0.4 && mouseY<h*0.4 && mouseY>h*0.2) {
        cevapsec =A1;
        rect(w*0.3, h*0.3, w*0.2, h*0.08);
      } else if (mouseX>w*0.4 && mouseX<w*0.6 && mouseY<h*0.4 && mouseY>h*0.2) {
        cevapsec = B1;
        rect(w*0.5, h*0.3, w*0.2, h*0.08);
      } else if (mouseX>w*0.6 && mouseY<h*0.4 && mouseY>h*0.2) {
        cevapsec = C1;
        rect(w*0.7, h*0.3, w*0.2, h*0.08);
      } else if (mouseX<w*0.4 && mouseY<h*0.7 && mouseY>h*0.5) {
        cevapsec =A2;
        rect(w*0.3, h*0.6, w*0.2, h*0.08);
      } else if (mouseX>w*0.4 && mouseX<w*0.6 && mouseY<h*0.7 && mouseY>h*0.5) {
        cevapsec = B2;
        rect(w*0.5, h*0.6, w*0.2, h*0.08);
      } else if (mouseX>w*0.6 && mouseY<h*0.7 && mouseY > h*0.5) {
        cevapsec = C2;
        rect(w*0.7, h*0.6, w*0.2, h*0.08);
      } else if (mouseX<w*0.4 && mouseY<h*0.95 && mouseY>h*0.8) {
        cevapsec =A3;
        rect(w*0.3, h*0.9, w*0.2, h*0.08);
      } else if (mouseX>w*0.4 && mouseX<w*0.6 && mouseY<h*0.95 && mouseY>h*0.8) {
        cevapsec = B3;
        rect(w*0.5, h*0.9, w*0.2, h*0.08);
      } else if (mouseX>w*0.6 && mouseY<h*0.95 && mouseY>h*0.8) {
        cevapsec = C3;
        rect(w*0.7, h*0.9, w*0.2, h*0.08);
      } else if (mouseY<h*0.95) {
        cevapsec=0;
      }
      if (cevapsec==sual1+sual11) {
        if (sesonoff==0) {
          try {
      sndssat.prepare();
      sndssat.start();    
    }
    catch (IllegalArgumentException e) {
      
    }
    catch (IllegalStateException e) {
      
    } 
    catch (IOException e) {
      
    }
        //  sesatesh.loop(0);
        }
        sonuc=1;
        durum=1;
      } else if (zorlukbelir ==1 && cevapsec==sual2+sual22 ) {
        if (sesonoff==0) {
          try {
      sndssat.prepare();
      sndssat.start();     
    }
    catch (IllegalArgumentException e) {
      
    }
    catch (IllegalStateException e) {
      
    } 
    catch (IOException e) {
      
    }
          //sesatesh.loop(0);
        }
        sonuc=2;
        durum=1;
      } else if (zorlukbelir==1 && sual3-sual33>20 && cevapsec==sual3-sual33 ) {
        if (sesonoff==0) {
          try {
      sndssat.prepare();
      sndssat.start();    
    }
    catch (IllegalArgumentException e) {
      
    }
    catch (IllegalStateException e) {
      
    } 
    catch (IOException e) {
      
    }
        //  sesatesh.loop(0);
        }
        sonuc=3;
        durum=1;
      } else if (zorlukbelir == 1 && cevapsec==sual3+sual33) {
        if (sesonoff==0) {
          try {
      sndssat.prepare();
      sndssat.start();    
    }
    catch (IllegalArgumentException e) {
      
    }
    catch (IllegalStateException e) {
      
    } 
    catch (IOException e) {
      
    }
        //  sesatesh.loop(0);
        }
        sonuc=3;
        durum=1;
      } else if (zorlukbelir ==2 && cevapsec==sual2*sual22 ) {
        if (sesonoff==0) {
          try {
      sndssat.prepare();
      sndssat.start();  
    }
    catch (IllegalArgumentException e) {
      
    }
    catch (IllegalStateException e) {
      
    } 
    catch (IOException e) {
      
    }
        //  sesatesh.loop(0);
        }
        sonuc=2;
        durum=1;
      } else  if (zorlukbelir==2 && sual3-sual33>2 && cevapsec ==(sual3-sual33)*randsayi1 ) {
        if (sesonoff==0) {
          try {
      sndssat.prepare();
      sndssat.start();    
    }
    catch (IllegalArgumentException e) {
      
    }
    catch (IllegalStateException e) {
      
    } 
    catch (IOException e) {
      
    }
        //  sesatesh.loop(0);
        }
        sonuc=3;
        durum=1;
      } else if ( zorlukbelir==2 && sual33-sual3>2 &&   cevapsec == sual3+sual33*randsayi1) {
        if (sesonoff==0) {
          try {
      sndssat.prepare();
      sndssat.start();    
    }
    catch (IllegalArgumentException e) {
      
    }
    catch (IllegalStateException e) {
      
    } 
    catch (IOException e) {
      
    }
         // sesatesh.loop(0);
        }
        sonuc=3;
        durum=1;
      } else if ( zorlukbelir==2 && cevapsec == (sual3+sual33)*randsayi1) {
        if (sesonoff==0) {
          try {
      sndssat.prepare();
      sndssat.start();    
    }
    catch (IllegalArgumentException e) {
      
    }
    catch (IllegalStateException e) {
      
    } 
    catch (IOException e) {
      
    }
         // sesatesh.loop(0);
        }  
        sonuc=3;
        durum=1;
      } else if ( zorlukbelir==3 && cevapsec == sual2*sual22*randsayi3) {
        if (sesonoff==0) {
          try {
      sndssat.prepare();
      sndssat.start();   
    }
    catch (IllegalArgumentException e) {
      
    }
    catch (IllegalStateException e) {
      
    } 
    catch (IOException e) {
      
    }
         // sesatesh.loop(0);
        }   
        sonuc=2;
        durum=1;
      } else if ( zorlukbelir==3 && sual3-sual33>2 && cevapsec == (sual3-sual33)*randsayi1+randsayi2*(sual3x+sual33x)+2*sual3) {
        if (sesonoff==0) {
          try {
      sndssat.prepare();
      sndssat.start();    
    }
    catch (IllegalArgumentException e) {
      
    }
    catch (IllegalStateException e) {
      
    } 
    catch (IOException e) {
      
    }
        //  sesatesh.loop(0);
        }   
        sonuc=3;
        durum=1;
      } else if ( zorlukbelir==3 && cevapsec == (sual3+sual33)*randsayi1+randsayi2*(sual3x+sual33x)+2*sual3) {
        if (sesonoff==0) {
          try {
      sndssat.prepare();
      sndssat.start();   
    }
    catch (IllegalArgumentException e) {
      
    }
    catch (IllegalStateException e) {
      
    } 
    catch (IOException e) {
      
    }
         // sesatesh.loop(0);
        } 
        sonuc=3;
        durum=1;
      } else if (mouseY<h*0.95) {
        // hatalı seçim
        if (sesonoff==0) {
          try {
      sndhts.prepare();
      sndhts.start();   
    }
    catch (IllegalArgumentException e) {
      
    }
    catch (IllegalStateException e) {
      
    } 
    catch (IOException e) {
      
    }
         // hatases.loop(0);
        }
        zerbetimer=0;
      }
    }
    if (durum !=0 && mouseY<h/2 && zerbetimer==w/3 && ucikibir==210) {
      mouseXX=mouseX;
      mouseYY=mouseY;
      if (sesonoff==0) {
        try {
      sndsruek.prepare();
      sndsruek.start();    
    }
    catch (IllegalArgumentException e) {
      
    }
    catch (IllegalStateException e) {
      
    } 
    catch (IOException e) {
      
    }
       // soruekranses.loop(0);
      }
      
      belir=1;
      durum=0;
    } 
    if (durum ==-1 && mouseY<h/2 && zerbetimer<w/3 && ucikibir==210 && sonuc==0) {
      rectMode(CORNER);
      fill(255,50,50);
      noStroke();
      rect(w*0.05, h*0.03, w/3, bencanen);
      noFill();
    }
  }
   
}