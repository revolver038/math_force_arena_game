void bendurum() {
  if (durum==0) { 
    opabelir=1;
    zerbetimer=zerbetimer-zerbebosan;
    if (zerbetimer<0) {
      zerbetimer=0;
    } 
    if (zerbetimer>w/3) {
      zerbetimer=w/3;
    }

    sorukare.display();
    xetler.display();

    textSize(textolcu60);
    fill(0, 250, 0);
    text(sual1 + " + " + sual11 + " = ?", w*0.5, h*0.2);

    if (zorlukbelir==1) {  
      text(sual2 + " + " + sual22 + " = ?", w*0.5, h*0.5);
      if (sual3-sual33>20) {
        text(sual3 + " - " + sual33 + " = ?", w*0.5, h*0.8);
      } else {
        text(sual3 + " + " + sual33 + " = ?", w*0.5, h*0.8);
      }
    } else if (zorlukbelir==2) {  
      text(sual2 + " × " + sual22 + " = ?", w*0.5, h*0.5);

      if (sual3 - sual33
        > 2) {
        text("(" + sual3 + " - " + sual33 + ")" + " × " + randsayi1 + " = ?", w*0.5, h*0.8);
      } else {
        text("(" + sual3 + " + " + sual33 + ")" + " × " + randsayi1 + " = ?", w*0.5, h*0.8);
      }
    } else if (zorlukbelir==3) { 
      text(sual2 + " × " + sual22 + " × " + randsayi3 + " = ?", w*0.5, h*0.5);

      if (sual3 - sual33
        > 2) {
        text("(" + sual3 + " - " + sual33 + ")" + " × " + randsayi1 + " + " + 
          randsayi2 + " × " + "(" + sual3x + " + " + sual33x + ")" + " + " + 2* sual3 + " = ?", w*0.5, h*0.8);
      } else {
        text("(" + sual3 + " + " + sual33 + ")" + " × " + randsayi1 + " + " + 
          randsayi2 + " × " + "(" + sual3x + " + " + sual33x + ")" + " + " + 2* sual3 + " = ?", w*0.5, h*0.8);
      }
    }


    if (zorlukbelir==1) {     
      if (varrandom1 <5) { // 6

        A1 = sual1+sual11;
        B1=sual1+sual11+a1;
        C1=sual1+sual11+a2;
      } else if (varrandom1 <8) { // 11

        B1 = sual1+sual11;
        A1=sual1+sual11+a1;
        C1=sual1+sual11+a2;
      } else { // 16

        C1 = sual1+sual11;
        B1=sual1+sual11+a1;
        A1=sual1+sual11+a2;
      }
    } else if (zorlukbelir==2) {     

      if (varrandom1 <5) { // 6

        A1 = sual1+sual11;
        B1=sual1+sual11+a1*10;
        C1=sual1+sual11+a2*10;
      } else if (varrandom1 <8) { // 11

        B1 = sual1+sual11;
        A1=sual1+sual11+a1*10;
        C1=sual1+sual11+a2*10;
      } else { // 16

        C1 = sual1+sual11;
        B1=sual1+sual11+a1*10;
        A1=sual1+sual11+a2*10;
      }
    } else if (zorlukbelir==3) {     

      if (varrandom1 <5) { // 6

        A1 = sual1+sual11;
        B1=sual1+sual11+a1*10;
        C1=sual1+sual11+a2*10;
      } else if (varrandom1 <8) { // 11

        B1 = sual1+sual11;
        A1=sual1+sual11+a1*10;
        C1=sual1+sual11+a2*10;
      } else { // 16

        C1 = sual1+sual11;
        B1=sual1+sual11+a1*10;
        A1=sual1+sual11+a2*10;
      }
    }



    if (zorlukbelir==1) {   
      if (varrandom2 <5) {  // DÜZGÜN CAVAB A

        A2 = sual2+sual22;
        B2=sual2+sual22+b1;
        C2=sual2+sual22+b2;
      } else if (varrandom2 <8) { // DÜZGÜN CAVAB B

        B2 = sual2+sual22;
        A2=sual2+sual22+b1;
        C2=sual2+sual22+b2;
      } else {   // DÜZGÜN CAVAB C

        C2 = sual2+sual22;
        B2= sual2+sual22+b1;
        A2= sual2+sual22+b2;
      }
    } else if (zorlukbelir==2) {   

      if (varrandom2 <5) {  // DÜZGÜN CAVAB A

        A2 = sual2*sual22;
        B2=sual2*sual22+b1*2;
        C2=sual2*sual22+b2*2;
      } else if (varrandom2 <8) { // DÜZGÜN CAVAB B

        B2 = sual2*sual22;
        A2=sual2*sual22+b1*2;
        C2=sual2*sual22+b2*2;
      } else {   // DÜZGÜN CAVAB C

        C2 = sual2*sual22;
        B2= sual2*sual22+b1*2;
        A2= sual2*sual22+b2*2;
      }
    } else if (zorlukbelir==3) {   

      if (varrandom2 <5) {  // DÜZGN CAVAB A

        A2 = sual2*sual22*randsayi3;
        if (A2>50) {
          B2=sual2*sual22*randsayi3+b1*10;
          C2=sual2*sual22*randsayi3+b2*10;
        } else {
          B2=sual2*sual22*randsayi3+b1*2;
          C2=sual2*sual22*randsayi3+b2*2;
        }
      } else if (varrandom2 <8) { // DÜZGN CAVAB B

        B2 = sual2*sual22*randsayi3;
        if (B2>50) {
          A2=sual2*sual22*randsayi3+b1*10;
          C2=sual2*sual22*randsayi3+b2*10;
        } else {
          A2=sual2*sual22*randsayi3+b1*2;
          C2=sual2*sual22*randsayi3+b2*2;
        }
      } else {   // DÜZGÜN CAVAB C
        C2 = sual2*sual22*randsayi3;
        if (C2>50) {
          B2= sual2*sual22*randsayi3+b1*10;
          A2= sual2*sual22*randsayi3+b2*10;
        } else {
          B2= sual2*sual22*randsayi3+b1*2;
          A2= sual2*sual22*randsayi3+b2*2;
        }
      }
    }


    // ILKOKUL 

    if (zorlukbelir==1) {
      if (varrandom3 <5) {
        if (sual3-sual33>20) {
          A3 = sual3-sual33;
          B3=sual3-sual33+c1*2;
          C3= sual3-sual33+c2*2;
        } else {
          A3 = sual3+sual33;
          if (A3>50) {
            B3=sual3+sual33+c1*10;
            C3= sual3+sual33+c2*10;
          } else {
            B3=sual3+sual33+c1*2;
            C3= sual3+sual33+c2*2;
          }
        }
      } else if (varrandom3 <8) {
        if (sual3-sual33>20) {
          B3 = sual3-sual33;
          A3= sual3-sual33+c1*2;
          C3=
            sual3-sual33+c2*2;
        } else {
          B3 = sual3+sual33;
          if (B3>50) {
            A3= sual3+sual33+c1*10;
            C3=
              sual3+sual33+c2*10;
          } else {
            A3= sual3+sual33+c1*2;
            C3=
              sual3+sual33+c2*2;
          }
        }
      } else {
        if (sual3-sual33>20) {
          C3 = sual3-sual33;
          B3= sual3-sual33+c1*2;
          A3=
            sual3-sual33+c2*2;
        } else {       
          C3 = sual3+sual33;
          if (C3>50) {
            B3= sual3+sual33+c1*10;
            A3=
              sual3+sual33+c2*10;
          } else {
            B3= sual3+sual33+c1*2;
            A3=
              sual3+sual33+c2*2;
          }
        }
      }






      // ORTAOKUL ILK SEVIYYESI
    } else if (zorlukbelir==2) { 

      if (varrandom3 <5) {
        if ( sual3-sual33>2) {
          A3 = (sual3-sual33)*randsayi1;
          if (A3 >40 ) {
            B3=(sual3-sual33)*randsayi1+ 10*c1;
            C3= (sual3-sual33)*randsayi1+10*c2;
          } else {
            B3=(sual3-sual33)*randsayi1+ c1;
            C3= (sual3-sual33)*randsayi1+ c2;
          }
        } else {
          A3 = (sual3+sual33)*randsayi1;
          if (A3 >40 ) {
            B3=(sual3+sual33)*randsayi1+ 10*c1;
            C3= (sual3+sual33)*randsayi1+10*c2;
          } else {
            B3=(sual3+sual33)*randsayi1+ c1;
            C3= (sual3+sual33)*randsayi1+c2;
          }
        }
      } else if (varrandom3 <8) {


        if ( sual3-sual33>2) {
          B3 = (sual3-sual33)*randsayi1;
          if (B3 >40 ) {
            A3= (sual3-sual33)*randsayi1+10*c1;
            C3=
              (sual3-sual33)*randsayi1+10*c2;
          } else {
            A3= (sual3-sual33)*randsayi1+c1;
            C3=
              (sual3-sual33)*randsayi1+c2;
          }
        } else {
          B3 = (sual3+sual33)*randsayi1;
          if (B3 >40 ) {
            A3= (sual3+sual33)*randsayi1+10*c1;
            C3=
              (sual3+sual33)*randsayi1+10*c2;
          } else {
            A3= (sual3+sual33)*randsayi1+c1;
            C3=
              (sual3+sual33)*randsayi1+c2;
          }
        }
      } else {



        if ( sual3-sual33>2) {
          C3 = (sual3-sual33)*randsayi1;
          if (C3>40) {
            B3= (sual3-sual33)*randsayi1+ 10*c1;
            A3=
              (sual3-sual33)*randsayi1+10*c2;
          } else {
            B3= (sual3-sual33)*randsayi1+ c1;
            A3=
              (sual3-sual33)*randsayi1+c2;
          }
        } else {
          C3 = (sual3+sual33)*randsayi1;
          if (C3>40) {
            B3= (sual3+sual33)*randsayi1+ 10*c1;
            A3=
              (sual3+sual33)*randsayi1+10*c2;
          } else {
            B3= (sual3+sual33)*randsayi1+ c1;
            A3=
              (sual3+sual33)*randsayi1+c2;
          }
        }
      }


      // ORTAOKUL UST
    } else if (zorlukbelir==3) { 

      if (varrandom3 <5) {
        if ( sual3-sual33>1) {
          A3 = (sual3- sual33)*randsayi1+randsayi2*(sual3x + sual33x) + 2*sual3;
          B3=(sual3+sual33)*randsayi1+ randsayi2*(sual3x + sual33x) + 2*sual3 +c1;
          C3= (sual3+sual33)*randsayi1+ randsayi2*(sual3x + sual33x) + 2*sual3 +c2;
        } else {
          A3 = (sual3+sual33)*randsayi1+randsayi2*(sual3x + sual33x) + 2*sual3;

          B3=(sual3+sual33)*randsayi1+ randsayi2*(sual3x + sual33x) + 2*sual3+c1;
          C3= (sual3+sual33)*randsayi1+ randsayi2*(sual3x + sual33x) + 2*sual3 +c2;
        }
      } else if (varrandom3 <8) {
        if ( sual3-sual33>1) {

          B3 = (sual3-sual33)*randsayi1+randsayi2 *(sual3x + sual33x) + 2*sual3;

          A3= (sual3-sual33)*randsayi1+ randsayi2 *(sual3x + sual33x) + 2*sual3+c1;
          C3=
            (sual3-sual33)*randsayi1+ randsayi2 *(sual3x + sual33x) + 2*sual3 +c2;
        } else {

          B3 = (sual3+sual33)*randsayi1+randsayi2 *(sual3x + sual33x) + 2*sual3;
          A3= (sual3+sual33)*randsayi1+ randsayi2 *(sual3x + sual33x) + 2*sual3 +c1;
          C3=
            (sual3+sual33)*randsayi1+ randsayi2 *(sual3x + sual33x) + 2*sual3 +c2;
        }
      } else {

        if ( sual3-sual33>1) {
          C3 = (sual3-sual33)*randsayi1+randsayi2 *(sual3x + sual33x) + 2*sual3;

          B3= (sual3-sual33)*randsayi1+ randsayi2 *(sual3x + sual33x) + 2*sual3+c1;
          A3=
            (sual3-sual33)*randsayi1+ randsayi2 *(sual3x + sual33x) + 2*sual3 +c2;
        } else {
          C3 = (sual3+sual33)*randsayi1+randsayi2 *(sual3x + sual33x) + 2*sual3;

          B3= (sual3+sual33)*randsayi1+ randsayi2 *(sual3x + sual33x) + 2*sual3+c1;
          A3=
            (sual3+sual33)*randsayi1+ randsayi2 *(sual3x + sual33x) + 2*sual3 +c2;
        }
      }
    }


    text("a) " + A1, w*0.3, h*0.3);
    text("b) " + B1, w*0.5, h*0.3);
    text("c) " + C1, w*0.7, h*0.3);

    text("a) " + A2, w*0.3, h*0.6);
    text("b) " + B2, w*0.5, h*0.6);
    text("c) " + C2, w*0.7, h*0.6);

    text("a) " + A3, w*0.3, h*0.9);
    text("b) " + B3, w*0.5, h*0.9);
    text("c) " + C3, w*0.7, h*0.9);



    if (zerbetimer==0) {
      durum=-1;
      // zerbetimer=0;
    }
  }
}  