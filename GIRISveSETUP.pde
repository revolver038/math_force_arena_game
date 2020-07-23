//Created and developed by Tural Alizada version 1.0 

import android.media.MediaPlayer;
import  android.content.res.Resources;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.content.Context;
import android.app.Activity;

MediaPlayer sndmm = new MediaPlayer();
MediaPlayer sndtns = new MediaPlayer();
MediaPlayer sndhts = new MediaPlayer();
MediaPlayer sndssat = new MediaPlayer();
MediaPlayer sndssat2 = new MediaPlayer();
MediaPlayer sndsruek = new MediaPlayer();
MediaPlayer sndssonc = new MediaPlayer();
MediaPlayer sndssonc2 = new MediaPlayer();
MediaPlayer snducbir = new MediaPlayer();
MediaPlayer sndgoses = new MediaPlayer();
MediaPlayer sndwinses = new MediaPlayer();
MediaPlayer sndloses = new MediaPlayer();
MediaPlayer sndsec = new MediaPlayer();

AssetFileDescriptor mm, tns, sec, hts, ssat, ssat2, sruek, ssonc, ssonc2, ucbir, goses, winses, loses;
Context context;

Activity act;
 
 int soundbelir=0;
 int sndcount=0;
int musbelir=0;
int pages=7;
float w, h;
float runx, runy, runxx, runyy, pausedurum, opabelir;
float opasondur=10;
float mermiw, mermih, runmermix, runmermiy, runmermix1, runmermiy1;
float [] rx = new float[3];
float [] ry = new float[3];
float [] canx = new float[3];
float [] cany = new float[3];
PImage imgoyun1, imggiris, igirisback;
PFont font1;
float [] cx = new float[3];
float [] cy = new float[3];
float [] canxx = new float[3];
float [] canyy = new float[3];

String rakams;
String ilkyazi="";
String ilkyazises="";
String ilkyazimus="";

String vurtoplacik="";

int ilkyazibelir, ilkyazibelirses, ilkyazibelirmus, menubelirses, menubelirmus;
int dusmansonuc1=0;

int a1, a2, a3, b1, b2, b3, c1, c2, c3;
int randb1, randb2, randb3;
int randa1, randa2, randa3;
int randc1, randc2, randc3;

int dushartime=0;
int dusdusuntime=0;
int dusdusuntime2=0;
int cikistimer=0;
boolean cikis= false;
int oyaktivtimer=0;
boolean oyaktiv=false;
int loadrnd;
int dilbelir=1;
int sesonoff=0;
int musonoff=0;  
int varrandom1=0;
int varrandom2=0;
int varrandom3=0;
int vurtopla=0;
int ucikibir=0;
float mermiX=0; 
float mermiY=0;
boolean winsound=false;
boolean losesound=false;

float duszerbex, duszerbey, mermiX1, mermiY1;
float bencan, duscan, bencanen, duscanen;
float zerbe=0;
float zerbe1=0;
float zerbetimer, ezerbetimer, zerbetimer1, ezerbetimer1;

int textolcu60;
int textolcu70;
int strokeolcu20;
int mtimer=0;
float fakeX, fakeY, fakeXs, fakeYs;
float zerbebosan, zerbedolan, zerbedolan1, zerbebosan1;
float emouseX, emouseY, emouseXX, emouseYY;
float mousezerbe1x, mousezerbe1y, mousezerbe11x, mousezerbe11y;
float mousezerbe2x, mousezerbe2y, mousezerbe22x, mousezerbe22y;
float mermihiz, mermihiz1;
int stroke2, stroketik;

int menubelir=0;
int stroke5;
int HIZ;
int A3, B3, C3, A1, B1, C1, A2, B2, C2;
int mouseXX=0;
int mouseYY=0;

int dusHarnd;
int mouseXX1=0;
int mouseYY1=0;
int mouseXXX, mouseYYY;
int sech = 0;
int animtimer=0;
int anim2timer=0;
int rakamsec;
int shoottimer=0; 
int shoottimer1=0;
int fakeRandom;
int cevapsec=0; 
int sonuc =0; 
int sonuc1 =0; 
int durum=-1; 
int durum1=-1;

float pageopac=255;
int optxt=0;
int optxt2=0;
int optxt3=0;
int optxtmus=0;

int oprct=0;
int oprctAz=0;
int optimer=0;
int dusman =0;
int sual1, sual11;
int sual2, sual22;
int sual3, sual33;
int sual3x, sual33x;

int ssual1, ssual11;
int ssual2, ssual22;
int ssual3, ssual33;
int hizz;
int loadreq=0;
float loadtimer=0;
int zorlukbelir=0;
int randsayi1, randsayi2, randsayi3, randsayi4;
int belir =1;
int kardur;
int textolcu40;
int textolcu50;
int textolcu100;
int textolcu200;
int boomtimer;
int timer=0; 
int randomX; 
int randomY; 
MEKAN1 rectangle; 
GIRISARKAPLAN girisimage;
XETLER xetler;
SORUEKRAN sorukare;
GIRISKARE giriskare;
MENUKARE menukare;
MERMI mermi;
KAHRO kahro;
XETT xett;
ZORKARE zorkare;
AYARKARE ayarkare;
DUSKAHRO duskahro;
GAMEOVER gameover;
PATLAMA patlama;
HAKKINDA hakkinda;
ILKGIRIS ilkgiris;
void settings() {
  size(displayWidth, displayHeight, OPENGL);
}
void setup() {
  background(0);
act = this.getActivity();
  context = act.getApplicationContext();
  try {
    mm = context.getAssets().openFd("music1.mp3");
    sndmm.setDataSource(mm.getFileDescriptor(),mm.getStartOffset(), mm.getLength());
    tns = context.getAssets().openFd("sesgec3X.mp3");
    sndtns.setDataSource(tns.getFileDescriptor(),tns.getStartOffset(), tns.getLength());
    sec = context.getAssets().openFd("sessec4X.mp3");
    sndsec.setDataSource(sec.getFileDescriptor(),sec.getStartOffset(), sec.getLength());
    hts = context.getAssets().openFd("hatases2X.mp3");
    sndhts.setDataSource(hts.getFileDescriptor(),hts.getStartOffset(), hts.getLength()); 
    ssat = context.getAssets().openFd("sesatesh2X.mp3");
    sndssat.setDataSource(ssat.getFileDescriptor(),ssat.getStartOffset(), ssat.getLength());
    ssat2 = context.getAssets().openFd("sesatesh2X.mp3");
    sndssat2.setDataSource(ssat2.getFileDescriptor(),ssat2.getStartOffset(), ssat2.getLength());  
    sruek = context.getAssets().openFd("soruekransesX.mp3");
    sndsruek.setDataSource(sruek.getFileDescriptor(),sruek.getStartOffset(), sruek.getLength());
    ssonc = context.getAssets().openFd("sesatsonuc2X.mp3");
    sndssonc.setDataSource(ssonc.getFileDescriptor(),ssonc.getStartOffset(), ssonc.getLength());
    ssonc2 = context.getAssets().openFd("sesatsonuc2X.mp3");
    sndssonc2.setDataSource(ssonc2.getFileDescriptor(),ssonc2.getStartOffset(), ssonc2.getLength());
    ucbir = context.getAssets().openFd("321sesX.mp3");
    snducbir.setDataSource(ucbir.getFileDescriptor(),ucbir.getStartOffset(), ucbir.getLength());
    goses = context.getAssets().openFd("GOsesX.mp3");
    sndgoses.setDataSource(goses.getFileDescriptor(),goses.getStartOffset(), goses.getLength());
    winses = context.getAssets().openFd("winmusic.mp3");
    sndwinses.setDataSource(winses.getFileDescriptor(),winses.getStartOffset(), winses.getLength());
    loses = context.getAssets().openFd("losemusic2X.mp3");
    sndloses.setDataSource(loses.getFileDescriptor(),loses.getStartOffset(), loses.getLength());
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

  w= width;
  h= height;
  rectangle = new MEKAN1();
  xetler = new XETLER();
  sorukare = new SORUEKRAN();
  girisimage= new GIRISARKAPLAN();
  giriskare= new GIRISKARE();
  menukare= new MENUKARE();
  mermi = new MERMI();
  kahro= new KAHRO();
  xett = new XETT();
  zorkare=new ZORKARE();
  ayarkare = new AYARKARE();
  duskahro = new DUSKAHRO();
  gameover = new GAMEOVER();
  patlama= new PATLAMA();
  hakkinda = new HAKKINDA();
  ilkgiris= new ILKGIRIS();
  
  smooth();
  rectMode(CENTER);
  ellipseMode(CENTER);
  imageMode(CENTER);
  textolcu60=int(h/20);
  textolcu70=int(h/18);
  textolcu40=int(h/30);
  textolcu50=int(h/25);
  textolcu100=int(w/6);
  textolcu200=int(w/4);
  strokeolcu20=int(w/40);
  kardur = int(w/80);
  //mermihiz=w/400;
  HIZ=int(h/50);
  stroke5=int(w/150);
  stroke2=int(w/200);
  stroketik=int(w/160);
  ucikibir=0;
  fill(0);
  orientation(PORTRAIT);
  imgoyun1 = loadImage("oyunarxaplan1.jpg");
  imggiris = loadImage("girisarxaplan2.jpg");
  igirisback= loadImage("girisback6.png");
  font1 = createFont("orange kid.ttf", 128);
  textFont(font1);
  textAlign(CENTER, CENTER);
  pages=7;
  bencan =w/3;
  duscan =w/3;
  zerbetimer=w/3;
  zerbetimer1=w/3;
  fakeX = w/2;
  fakeY= h*0.25;
  bencanen = h/50;
  duscanen=h/50;
  mermiw=w/40;
  mermih=w/40; 
  mermiX=-50;
  mermiY=-50;
  mermiX1=-50;
  mermiY1=-50;
  zerbebosan=w/1600;
  zerbedolan=w/700;
  zerbebosan1=w/1600;
  zerbedolan1=w/700;
  canxx[1] = w*0.61;
  canyy[1] = h*0.02;
  canx[1] = w*0.05;
  cany[1] = h*0.02;
  cikis = false;
  rx[1] = w*0.5; 
  ry[1] = h*0.75; 
  cx[1] = w*0.5;
  cy[1] = h*0.25;
  
  ilkyazibelir=0;
  ilkyazibelirses=0;
  ilkyazibelirmus=0;
  menubelirses=0;
  menubelirmus=0;
  dusmansonuc1=0;

  runx=0;
  runy=0;
  pausedurum=0;
  runxx=0;
  runyy=0;  
  opabelir=0;
  ucikibir=0;
  duszerbex=w*0.61;
  duszerbey=h*0.04;
sesonoff=0;

  runmermix=0;
  runmermiy=0;
  runmermix1=0;
  runmermiy1=0;
  hizz=int(w/25);
}