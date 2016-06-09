void Playlist_2() {
  textAlign(CENTER);
  textFont(f, 18);                  // STEP 3 Specify font to be used
  fill(58, 57, 56);                         // STEP 4 Specify font color 
  background(255);
  text("Song", 170, 150);
  text("Chances", 470, 150);
  stroke(58, 57, 56);
  line(100, 160, 540, 160);
  //  line(320, 295, 320, 605);

  textFont(f, 12);
  textAlign(CENTER);
  text("Ed Sheeran - I see Fire", 170, 190);
  text("Antoine Dufour - Talk (Coldplay cover)", 170, 220);
  text("Coldplay - Sky Full of Stars", 170, 250);
  text("Demi Lovato - Stone Cold", 170, 280);
  text("Mr Probz - Waves", 170, 310);

  fill(58, 57, 56);
  stroke(255);
  rect(410, 170, (6*a2_new), 30);  // (x, y, w, h)  A
  rect(410, 200, (6*b2_new), 30); // (x, y, w, h)  B
  rect(410, 230, (6*c2_new), 30); // (x, y, w, h)  C
  rect(410, 260, (6*d2_new), 30); // (x, y, w, h)  D
  rect(410, 290, (6*e2_new), 30); // (x, y, w, h)  E
  fill(255);
  textFont(f, 10);                  // STEP 3 Specify font to be used
  textAlign(LEFT);
  text(a2_new, 420, 190);
  text(b2_new, 420, 220);
  text(c2_new, 420, 250);
  text(d2_new, 420, 280);
  text(e2_new, 420, 310);
  stroke(58, 57, 56);
  fill(58, 57, 56);  

  textFont(f, 12);                  // STEP 3 Specify font to be used
  textAlign(CENTER);
  text("Musico is a learning device and it learns what music you listen to in a particular context.", 320, 555); 
  text("The speaker uses an algorithm to learn what songs the user listens to in a context", 320, 570);
  text("On this side of the screen you see a part of the algorithm.", 320, 585);
  text("In this case there are five songs whereby every song has a 20% chance of showing up.", 320, 600); 
  text("Everytime the song is being skipped, the chance will become smaller and become 0%.", 320, 615); 
  text("To see how this work you can press the button once and you will see the ratios changing.", 320, 630); 

  img = loadImage("Musico_logo_shadow_small.jpg");
  image(img, 275, 650);
  fill(255);
  int position = int( map((player[currentSong].position()/100), 0, (player[currentSong].length()/1000), 0, 45));

  //println(position);


  if (r < a2) {                                            //play number 0
    player[5].play();
    currentSong = 5;
    repeat();
    img = loadImage("6.jpg");
    image(img, 640, 0); 
    ellipse((position+730), 572, 25, 25); // (x, y, w, h)
    if (position == 995 && dpressed == 0) {                               // loop songs
      player[currentSong].pause();
      player[currentSong].rewind();
      previousSong = 5;
      r_previous = (5);
      previoussongs.append(r_previous);
      loopfunction_A2();
    } 
    if (serial == 1) {    //skip song
      if (a2 > 4 && dpressed == 0) {
        skipping_A2();
        loopfunction_A2();
        player[5].pause();
        player[5].rewind();
        previousSong = 5;
        r_previous = (5);
        previoussongs.append(r_previous);
        delay(500);
        random();
      }
    }
  } else if (r >= a2 && r < (a2+b2)) {                         // play number 1
    player[6].play();
    currentSong = 6;
    repeat();
    img = loadImage("7.jpg");
    image(img, 640, 0); 
    ellipse((position+730), 572, 25, 25); // (x, y, w, h)
    if (position == 994 && dpressed == 0) {                                // loop songs
      previousSong = 6;       
      r_previous = (6);
      previoussongs.append(r_previous);
      player[currentSong].pause();
      player[currentSong].rewind();
      loopfunction_B2();
    } 
    if (serial == 1) {    //skip song
      if (b2 > 4 && dpressed == 0) {
        skipping_B2();
        loopfunction_B2();
        player[6].pause();
        player[6].rewind();
        previousSong = 6;
        r_previous = (6);
        previoussongs.append(r_previous);
        delay(500);
        random();
      } else {
        //       random();
      }
    }
  } else if (r >= (a2+b2) && r < (a2+b2+c2)) {                   // play number 2
    player[7].play();
    currentSong = 7;
    repeat();
    img = loadImage("8.jpg");
    image(img, 640, 0); 
    ellipse((position+730), 572, 25, 25); // (x, y, w, h)
    if (position == 990 && dpressed == 0) {                                // loop songs
      previousSong = 7;
      r_previous = (7);
      previoussongs.append(r_previous);
      player[currentSong].pause();
      player[currentSong].rewind();
      loopfunction_C2();
    } 
    if (serial == 1) {    //skip song
      if (c2 > 4 && dpressed == 0) {
        skipping_C2();
        loopfunction_C2();    
        player[7].pause();
        player[7].rewind();
        previousSong = 7;
        r_previous = (7);
        previoussongs.append(r_previous);
        delay(500);
        random();
      } else {
        //       random();
      }
    }
  } else if (r >= (a2+b2+c2) && r < (a2+b2+c2+d2)) {               //play number 3
    player[8].play();
    currentSong = 8;
    repeat();
    img = loadImage("9.jpg");
    image(img, 640, 0); 
    ellipse((position+730), 572, 25, 25); // (x, y, w, h)
    if (position == 1000 && dpressed == 0) {                                // loop songs
      previousSong = 8;
      r_previous = (8);
      previoussongs.append(r_previous);
      player[currentSong].pause();
      player[currentSong].rewind();
      loopfunction_D2();
    } 
    if (serial == 1) {    // skip song
      if (d2 > 4 && dpressed == 0) {
        skipping_D2();
        loopfunction_D2();    
        player[8].pause();
        player[8].rewind();
        previousSong = 8;
        r_previous = (8);
        previoussongs.append(r_previous);
        delay(500);
        random();
      } else {
        //       random();
      }
    }
  } else if (r >= (a2+b2+c2+d2) && r < (a2+b2+c2+d2+e2)) {            // play number 4
    player[9].play();
    currentSong = 9;
    repeat();
    img = loadImage("10.jpg");
    image(img, 640, 0); 
    ellipse((position+730), 572, 25, 25); // (x, y, w, h)
    if (position == 994 && dpressed == 0) {                                 // loop songs
      previousSong = 9;
      r_previous = (9);
      previoussongs.append(r_previous);
      player[currentSong].pause();
      player[currentSong].rewind();
      loopfunction_E2();
    } 

    if (serial == 1) {     // skip song
      if (e2 > 4 && dpressed == 0) {
        skipping_E2();
        loopfunction_E2();    
        player[9].pause();
        player[9].rewind();
        previousSong = 9;
        r_previous = (9);
        previoussongs.append(r_previous);
        delay(500);
        random();
      } else {
        //       random();
      }
    }
  } else if (r == 110) {
    player[currentSong].play();
    if (position >= 990) {
      nextposition();
    }
  } else if (r == 111) {
    player[currentSong].play();
    if (position >= 990) {
      nextposition();
    }
  }


  previoussong();
  nextarray();
  repeat();
  volume();
  ratiolists();

  if (a2 == 0 && b2 == 0 && c2 == 0 && d2 == 0 && e2 == 0) {
    a2 = a2_new;
    b2 = b2_new;
    c2 = c2_new;
    d2 = d2_new;
    e2 = e2_new;
    songsplayed = 0;
    a2_base = a2_new;
    b2_base = b2_new;
    c2_base = c2_new;
    d2_base = d2_new;
    e2_base = e2_new;
    random();
  }
}
