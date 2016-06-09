void Playlist_1() {
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
  text("Sia - Cheap Thrills", 170, 190);
  text("Kurt Vile - Pretty Pimpin", 170, 220);
  text("Twenty one pilots - Stressed out", 170, 250);
  text("DNCE - Cake by the Ocean", 170, 280);
  text("Alan Walker - Faded", 170, 310);

  fill(58, 57, 56);
  stroke(255);
  rect(410, 170, (6*a_new), 30);  // (x, y, w, h)  A
  rect(410, 200, (6*b_new), 30); // (x, y, w, h)  B
  rect(410, 230, (6*c_new), 30); // (x, y, w, h)  C
  rect(410, 260, (6*d_new), 30); // (x, y, w, h)  D
  rect(410, 290, (6*e_new), 30); // (x, y, w, h)  E
  fill(255);
  textFont(f, 10);                  // STEP 3 Specify font to be used
  textAlign(LEFT);
  text(a_new, 420, 190);
  text(b_new, 420, 220);
  text(c_new, 420, 250);
  text(d_new, 420, 280);
  text(e_new, 420, 310);
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

  println(position);

  if (r < a) {                                            //play number 0
    player[0].play();
    currentSong = 0;

    img = loadImage("1.jpg");
    image(img, 640, 0); 
    ellipse((position+730), 572, 25, 25); // (x, y, w, h)
    //    text("Sia - Cheap Thrills.", 50, 240);

    if (position == 1000 && dpressed == 0) {                               // loop songs
      player[currentSong].pause();
      player[currentSong].rewind();
      previousSong = 0;
      r_previous = (0);
      previoussongs.append(r_previous);
      loopfunction_A();
    }  
    if (position == 1000 && dpressed > 0) {
      r = 112;
    }
    if (serial == 1) {    //skip song
      if (a_new > 4 && dpressed == 0) { 
        skipping_A();
        loopfunction_A();
        player[0].pause();
        player[0].rewind();
        previousSong = 0;
        r_previous = (0);
        previoussongs.append(r_previous);
        delay(500);
        random();
      } else {
        //     random();
      }
    }
  } else if (r >= a && r < (a+b)) {                         // play number 1
    player[1].play();
    currentSong = 1;
    img = loadImage("2.jpg");
    image(img, 640, 0); 
    ellipse((position+730), 572, 25, 25); // (x, y, w, h)
    if (position == 996 && dpressed == 0) {                                // loop songs
      previousSong = 1;       
      r_previous = (1);
      previoussongs.append(r_previous);
      player[currentSong].pause();
      player[currentSong].rewind();
      loopfunction_B();
    } else if (position == 996 && dpressed > 0) {
      nextposition();
    }
    if (serial == 1) {    //skip song
      if (b > 4 && dpressed == 0) {
        skipping_B();
        loopfunction_B();
        player[1].pause();
        player[1].rewind();
        previousSong = 1;
        r_previous = (1);
        previoussongs.append(r_previous);
        delay(500);
        random();
      }
    } else {
      // random();
    }
  } else if (r >= (a+b) && r < (a+b+c)) {                   // play number 2
    player[2].play();
    currentSong = 2;

    img = loadImage("3.jpg");
    image(img, 640, 0); 
    ellipse((position+730), 572, 25, 25); // (x, y, w, h)

    if (position == 995 && dpressed == 0) {                                // loop songs
      previousSong = 2;
      r_previous = (2);
      previoussongs.append(r_previous);
      player[currentSong].pause();
      player[currentSong].rewind();  
      loopfunction_C();
    } else if (position == 995 && dpressed > 0) {
      nextposition();
    }
    if (serial == 1) {    //skip song
      if (c > 4 && dpressed == 0) {
        skipping_C();
        loopfunction_C();
        player[2].pause();
        player[2].rewind();
        previousSong = 2;
        r_previous = (2);
        previoussongs.append(r_previous);
        delay(500);
        random();
      } else {
        //  random();
      }
    }
  } else if (r >= (a+b+c) && r < (a+b+c+d)) {               //play number 3
    player[3].play();
    currentSong = 3;

    img = loadImage("4.jpg");
    image(img, 640, 0); 
    ellipse((position+730), 572, 25, 25); // (x, y, w, h)
    if (position == 996 && dpressed == 0) {                                // loop songs
      previousSong = 3;
      r_previous = (3);
      previoussongs.append(r_previous);
      player[currentSong].pause();
      player[currentSong].rewind();
      loopfunction_D();
    } else if (position == 996 && dpressed > 0) {
      nextposition();
    }
    if (serial == 1) {    // skip song
      if (d > 4 && dpressed == 0) {
        skipping_D();
        loopfunction_D();
        player[3].pause();
        player[3].rewind();
        previousSong = 3;
        r_previous = (3);
        previoussongs.append(r_previous);
        delay(500);
        random();
      } else {
        //    random();
      }
    }
  } else if (r >= (a+b+c+d) && r < (a+b+c+d+e)) {            // play number 4
    player[4].play();
    currentSong = 4;

    img = loadImage("5.jpg");
    image(img, 640, 0); 
    ellipse((position+730), 572, 25, 25); // (x, y, w, h)
    if (position == 996 && dpressed == 0) {                                 // loop songs
      previousSong = 4;
      r_previous = (4);
      previoussongs.append(r_previous);
      player[currentSong].pause();
      player[currentSong].rewind();
      loopfunction_E();
    } else if (position == 996 && dpressed > 0) {
      nextposition();
    }   
    if (serial == 1) {     // skip song
      if (e > 4 && dpressed == 0) { 
        skipping_E();
        loopfunction_E();
        player[4].pause();
        player[4].rewind();
        previousSong = 4;
        r_previous = (4);
        previoussongs.append(r_previous);
        delay(500);
        random();
      } else {
        //    random();
      }
    }
  } else if (r == 110) {
    player[currentSong].play();
    if (position >= 995) {
      nextposition();
    }
  } else if (r == 111) {
    player[currentSong].play();
    if (position >= 995) {
      nextposition();
    }
  }


  previoussong();
  nextarray();
  repeat();
  volume();
  ratiolists();

  if (a == 0 && b == 0 && c == 0 && d == 0 && e == 0) {
    a = a_new;
    b = b_new;
    c = c_new;
    d = d_new;
    e = e_new;
    songsplayed = 0;
    a_base = a_new;
    b_base = b_new;
    c_base = c_new;
    d_base = d_new;
    e_base = e_new;
    random();
  }
}
