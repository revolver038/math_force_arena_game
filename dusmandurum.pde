void dusmandurum() {
  if (durum1==-1 && ucikibir==210) {
    //xett.display();

    zerbetimer1=zerbetimer1+zerbedolan1;
    duszerbex=duszerbex-zerbedolan1;

    if (duszerbex<0.62*w) {

      duszerbex=0.62*w;
    }
    timer =timer +1;
    if (timer == 10) {
      
      dusHarnd= int(random(1, 3));
      if (zerbetimer<w/6) {
        dushartime=int (random(10, 30));
        dusdusuntime=int(random(10, 30));
      } else {
        dushartime=int (random(20, 60));
        dusdusuntime=int(random(20, 60));
      }
      // zerbe atmadan evvel düşünme zamanı

      if (dusman==1) {
        dusdusuntime2=int(random(10, 180));
      } else if (dusman==2) {
        dusdusuntime2=int(random(10, 140));
      } else if (dusman==3) {
        dusdusuntime2=int(random(10, 100));
      } else if (dusman==4) {
        if (zerbetimer<w/6) {
          dusdusuntime2=int(random(5, 30));
        } else {
          if (zorlukbelir==1) {
            dusdusuntime2=int(random(10, 90));
          } else if (zorlukbelir==2) {
            dusdusuntime2=int(random(10, 80));
          } else if (zorlukbelir==3) {
            dusdusuntime2=int(random(10, 70));
          }
        }
      }
    }
    if (dusHarnd==1) {
      if (timer ==dushartime/2) {
        fakeX = int(random(w*0.15, w*0.85));
        fakeY = int(random(h*0.11, h*0.44));
      }
    } else if (dusHarnd==2) {
      if (timer ==dushartime/3) {
        fakeRandom = int(random(0, 10));
        fakeX = int(random(w*0.15, w*0.85));
        fakeY = int(random(h*0.11, h*0.44));

        fakeXs = int(random(w*0.15, w*0.85));
        fakeYs = int(random(h*0.56, h*0.95));
      } else if (timer ==dushartime/2) {
        fakeX = int(random(w*0.15, w*0.85));
        fakeY = int(random(h*0.11, h*0.44));
      }
    } else {

      if (timer ==dushartime/3) {
        fakeRandom = int(random(0, 10));
        fakeX = int(random(w*0.15, w*0.85));
        fakeY = int(random(h*0.11, h*0.44));

        fakeXs = int(random(w*0.15, w*0.85));
        fakeYs = int(random(h*0.56, h*0.95));
      } else if (timer ==dushartime/2) {
        fakeX = int(random(w*0.15, w*0.85));
        fakeY = int(random(h*0.11, h*0.44));
      } else if (timer ==dushartime) {
        fakeX = int(random(w*0.15, w*0.85));
        fakeY = int(random(h*0.11, h*0.44));
      }
    }
    
    if (timer ==dushartime+dusdusuntime) {
      
 sndssat2.reset(); 

    try {     
        sndssat2.setDataSource(ssat2.getFileDescriptor(),ssat2.getStartOffset(), ssat2.getLength());     
        }
        catch (IllegalArgumentException e) {
    e.printStackTrace();
  }
  catch (IllegalStateException e) {
    e.printStackTrace();
  } 
  catch (IOException e) {
    e.printStackTrace();
  }    
      mouseXX1=int(rx[1]);
      mouseYY1=int(ry[1]);
      durum1=0;
    }
  }

  if (zerbetimer1>w/3) {
    zerbetimer1 = w/3;
  }



  if (durum1==0) {

    timer =timer +1;


    zerbetimer1=zerbetimer1-zerbebosan1;
    duszerbex=duszerbex+zerbebosan1;


    if (zerbetimer1<0) {
      zerbetimer1=0;
    } 
    if (zerbetimer1>w/3) {
      zerbetimer1=w/3;
    }


    // bu sonradan random olacaq
    if (timer == dushartime+dusdusuntime+dusdusuntime2) {

      if (dusman==1) {
        if (dusdusuntime2 <140) {
          sonuc1=1;
          zerbe1 = w*0.012;
        } else if (dusdusuntime2 <170) {
          sonuc1=2;
          zerbe1 = w*0.024;
        } else if (dusdusuntime2 <181) {
          sonuc1=3;
          zerbe1 = w*0.048;
        }
      } else if (dusman==2) {

        if (dusdusuntime2 <110) {
          sonuc1=1;
          zerbe1 = w*0.012;
        } else if (dusdusuntime2 <130) {
          sonuc1=2;
          zerbe1 = w*0.024;
        } else if (dusdusuntime2 <141) {
          sonuc1=3;
          zerbe1 = w*0.048;
        }
      } else if (dusman==3) {

        if (dusdusuntime2 <50) {
          sonuc1=1;
          zerbe1 = w*0.012;
        } else if (dusdusuntime2 <90) {
          sonuc1=2;
          zerbe1 = w*0.024;
        } else if (dusdusuntime2 <101) {
          sonuc1=3;
          zerbe1 = w*0.048;
        }
      } else if (dusman==4) {
        if (zorlukbelir==3) {
          if (dusdusuntime2 <45) {
            sonuc1=1;
            zerbe1 = w*0.012;
          } else if (dusdusuntime2 <55) {
            sonuc1=2;
            zerbe1 = w*0.024;
          } else if (dusdusuntime2 <71) {
            sonuc1=3;
            zerbe1 = w*0.048;
          }
        } else if (zorlukbelir==2) {

          if (dusdusuntime2 <55) {
            sonuc1=1;
            zerbe1 = w*0.012;
          } else if (dusdusuntime2 <70) {
            sonuc1=2;
            zerbe1 = w*0.024;
          } else if (dusdusuntime2 <81) {
            sonuc1=3;
            zerbe1 = w*0.048;
          }
        } else if (zorlukbelir==1) {

          if (dusdusuntime2 <70) {
            sonuc1=1;
            zerbe1 = w*0.012;
          } else if (dusdusuntime2 <80) {
            sonuc1=2;
            zerbe1 = w*0.024;
          } else if (dusdusuntime2 <91) {
            sonuc1=3;
            zerbe1 = w*0.048;
          }
        }
      }


      if (sesonoff==0) {      
        try {      
      sndssat2.prepare();
      sndssat2.start();      
    }
    catch (IllegalArgumentException e) {
      e.printStackTrace();
    }
    catch (IllegalStateException e) {
      e.printStackTrace();
    } 
    catch (IOException e) {
      e.printStackTrace();
    }
        
        
       // sesatesh.loop(0);
      }
      if (timer >240 || zerbetimer1<w/6) {
  timer=0;
}
      durum1=1;
    }


    if (zerbetimer1==0) {
      durum1=-1;
      // zerbetimer=0;
    } 

    ezerbetimer1=zerbetimer1;
    // ezerbetimer1=duszerbex;
    

  }
 
if (timer >240) {
  timer=0;
}

  if (ry[1] - cy[1] < h/3 && fakeRandom>8) {
    fakeY = h*0.15;
  }
}