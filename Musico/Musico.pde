// Copyright Petek Tezcan
// Code for Final Bachelor Project
// University of Technology Eindhoven

import processing.serial.*;
import ddf.minim.*; 

Serial myPort;  // The serial port
AudioPlayer[] player = new AudioPlayer[11];
Minim minim; 
PImage img;

FloatList previoussongs;
FloatList ratiolist;
PFont f;
String myString = null;

float a = 20;       
float b = 20;       
float c = 20;       
float d = 20;       
float e = 20;
float a_new = 20;   
float b_new = 20;   
float c_new = 20;   
float d_new = 20;   
float e_new = 20;
float a_base = 20;  
float b_base = 20;  
float c_base = 20;  
float d_base = 20;  
float e_base = 20; 
float a_prev = 0;   
float b_prev = 0;   
float c_prev = 0;   
float d_prev = 0;   
float e_prev = 0;

float a2 = 20;      
float b2 = 20;      
float c2 = 20;      
float d2 = 20;      
float e2 = 20;
float a2_new = 20;  
float b2_new = 20;  
float c2_new = 20;  
float d2_new = 20;  
float e2_new = 20;
float a2_base = 20; 
float b2_base = 20; 
float c2_base = 20; 
float d2_base = 20; 
float e2_base = 20;
float a2_prev;      
float b2_prev;      
float c2_prev;      
float d2_prev;      
float e2_prev;

float r_previous;
float val;
float ratio;
float sum;
float valr;

int previousSong;
int prevposition;
int currentSong =0;
int state = 0;
int state_playlist = 0;
int state_prev = 0;
int dpressed = 0;
int prev;
int sensor = 0;
int volume;
int vol;
int read;
int state_rfid = 0;
int r = 0;   //random number for the percentage
int position;
int serial;
int lf = 10;    // Linefeed in ASCII
int songsplayed = 0;
int songsnotplayed = 0;

void setup() { 
  fullScreen();
  noStroke();
  f = createFont("Source Sans Pro Bold", 25, true); // STEP 2 Create Font
  fill(255);
  rect(0, 0, 640, 800);
  fill(0);
  img = loadImage("Musico_logo_shadow.png");
  image(img, 120, 200);
  img = loadImage("Startpage.jpg");
  image(img, 640, 0);
  smooth();
  println(Serial.list());
  myPort = new Serial(this, Serial.list()[3], 9600);

  myString = myPort.readStringUntil(lf);
  myString = null;

  minim = new Minim(this); 
  player[0] = minim.loadFile("1.mp3"); 
  player[1] = minim.loadFile("2.mp3"); 
  player[2] = minim.loadFile("3.mp3"); 
  player[3] = minim.loadFile("4.mp3"); 
  player[4] = minim.loadFile("5.mp3"); 

  player[5] = minim.loadFile("6.mp3"); 
  player[6] = minim.loadFile("7.mp3"); 
  player[7] = minim.loadFile("8.mp3"); 
  player[8] = minim.loadFile("9.mp3"); 
  player[9] = minim.loadFile("10.mp3"); 

  player[10] = minim.loadFile("Blooper - Beep.mp3");
  previoussongs = new FloatList();
  ratiolist = new FloatList();

  random();
} 

void draw() 
{ 
  while (myPort.available() > 0) {
    myString = myPort.readStringUntil(lf);
    if (myString != null) {
      myString = trim(myString);
      serial = int(myString);
      println(serial);
    }
  }

  if (state_playlist <= 2 && serial == 200) {
    if (state_playlist >= 1) {
      state_playlist = 0;
    } else {
      player[currentSong].pause();
      player[currentSong].rewind();
      state_playlist = 1;
      delay(200);
    }
  } 

  if (state_playlist <= 2 && serial == 600) {
    if (state_playlist >= 2) {
      state_playlist = 0;
    } else {
      player[currentSong].pause();
      player[currentSong].rewind();
      state_playlist = 2;
      delay(200);
    }
  } 
  
  if (state_playlist == 1) {
    Playlist_1();
  } else if (state_playlist == 2) {
    Playlist_2();
  }

  if (serial > 5000 && state == 0) {
    state = 1;
    prevposition = player[currentSong].position();        //remember the position that p is being pressed
    println(prevposition);
    player[currentSong].mute();
    if (position == 993) {
      position = 0;
    }
  }
  if (serial <= 5000 && state == 1) {  
    position = prevposition;                              //when pressing o the remember position is becoming the new position
    state = 0;
    player[currentSong].cue((position));
    //   println(position);
    player[currentSong].unmute();
  } 

  //  println("d:"  +dpressed);
  //println(state_playlist);
}

void function() {
  if (state_playlist == 1) { 
    float total = a+b+c+d+e;

    a = (a/(total))* 100;
    b = (b/(total))* 100;
    c = (c/(total))* 100;
    d = (d/(total))* 100;
    e = (e/(total))* 100;
  } else if (state_playlist == 2) {
    float total = a2+b2+c2+d2+e2;

    a2 = (a2/(total))* 100;
    b2 = (b2/(total))* 100;
    c2 = (c2/(total))* 100;
    d2 = (d2/(total))* 100;
    e2 = (e2/(total))* 100;
  }
}
void random() {
  r = (int) random(0, 99);
  dpressed = 0;
}

void ratiolists() {
  for (int i=0; i<ratiolist.size(); i++) {
    //  println(i);
    valr = ratiolist.get(i);
    if (i == 4) {
      ratiolist.clear();
    }
  }
}

void previoussong() {                                    // array for previoussongs
  fill(0);
  // text("previoussongs " + previoussongs, 50, 280);
  for (int i=0; i<previoussongs.size(); i++) {
    //  println(i);
    val = previoussongs.get(i);
    if (i == 4) {
      previoussongs.clear();
    }
  }
  if (serial >= 2 && state_prev == 1) {
    state_prev = 0;
    if (dpressed >= 0 && dpressed < 4) {
      dpressed += 1;
      player[currentSong].pause();
      player[currentSong].rewind();
      prev = int(previoussongs.size()) - dpressed;
      currentSong = int(previoussongs.get(prev));
      r = 110;                                              
    } else if (dpressed == 0) {
      player[currentSong].pause();
      player[currentSong].rewind();
      player[10].play();
    }
  } else if (serial == 2 && state_prev == 0) {              
    state_prev = 1;
    player[currentSong].rewind();
    println("repeat");
  }
}

void nextarray() {  // function for next songs in the array
  if (serial == 1 && dpressed > 1) {
    dpressed -= 1;
    player[currentSong].pause();
    player[currentSong].rewind();
    prev = int(previoussongs.size()) - dpressed;
    currentSong = int(previoussongs.get(prev));
    r = 111;
    println("doet die iets?");
  } else if (serial == 1 && dpressed == 1) {
    player[currentSong].pause();
    player[currentSong].rewind();
    prev = int(previoussongs.size()) - dpressed;
    currentSong = int(previoussongs.get(prev));
    r = 111;
    dpressed = 0;
  } else if (serial == 1 && dpressed < 1) {         
    player[currentSong].pause();
    player[currentSong].rewind();
    dpressed = 0;
    random();
  }
}

void nextposition() {
  if (dpressed > 1) {
    dpressed -= 1;
    player[currentSong].pause();
    player[currentSong].rewind();
    prev = int(previoussongs.size()) - dpressed;
    currentSong = int(previoussongs.get(prev));
    r = 111;
    println("doet die iets?");
  } else if (dpressed == 1) {
    player[currentSong].pause();
    player[currentSong].rewind();
    prev = int(previoussongs.size()) - dpressed;
    currentSong = int(previoussongs.get(prev));
    r = 111;
    dpressed = 0;
  } else if (dpressed < 1) {         
    player[currentSong].pause();
    player[currentSong].rewind();
    dpressed = 0;
    random();
  }
}


void volume() {
  vol = constrain(serial, 300, 1323);
  float volume = map(vol, 300, 1323, -70, 20);
  //  println(volume);
  player[currentSong].setGain(volume); 
  delay(100);
}

void mousePressed()
{
  // choose a position to cue to based on where the user clicked.
  // the length() method returns the length of recording in milliseconds.
  int position = int( map( mouseX, 0, width, 0, player[currentSong].length() ) );
  player[currentSong].cue( position );
}
