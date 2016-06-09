void loopfunction_A() {
  a_prev = a;
  a = 0; 
  songsplayed ++;
  songsnotplayed = 5 - songsplayed;
  ratio = a_prev/songsnotplayed;
  ratiolist.append(ratio);

  if (a > 0) {
    a = a_base + ratiolist.sum();
    round(a);
    a_prev = a;
  }
  if (b > 0) {
    b = b_base + ratiolist.sum();
    round(b);
    b_prev = b;
  }
  if (c > 0) {
    c = c_base + ratiolist.sum();
    round(c);
    c_prev = c;
  }
  if (d > 0) {
    d = d_base + ratiolist.sum();
    round(d);
    d_prev = d;
  }
  if (e > 0) {
    e = e_base + ratiolist.sum();
    round(e);
    e_prev = e;
  }
  random();
}

void loopfunction_B() {
  b_prev = b;
  b = 0; 
  songsplayed ++;
  songsnotplayed = 5 - songsplayed;
  ratio = b_prev/songsnotplayed;
  ratiolist.append(ratio);

  if (a > 0) {
    a = a_base + ratiolist.sum();
    round(a);
    a_prev = a;
  }
  if (b > 0) {
    b = b_base + ratiolist.sum();
    round(b);
    b_prev = b;
  }
  if (c > 0) {
    c = c_base + ratiolist.sum();
    round(c);
    c_prev = c;
  }
  if (d > 0) {
    d = d_base + ratiolist.sum();
    round(d);
    d_prev = d;
  }
  if (e > 0) {
    e = e_base + ratiolist.sum();
    round(e);
    e_prev = e;
  }
  random();
}

void loopfunction_C() {
  c_prev = c;
  c = 0; 
  songsplayed ++;
  songsnotplayed = 5 - songsplayed;
  ratio = c_prev/songsnotplayed;
  ratiolist.append(ratio);

  if (a > 0) {
    a = a_base + ratiolist.sum();
    round(a);
    a_prev = a;
  }
  if (b > 0) {
    b = b_base + ratiolist.sum();
    round(b);
    b_prev = b;
  }
  if (c > 0) {
    c = c_base + ratiolist.sum();
    round(c);
    c_prev = c;
  }
  if (d > 0) {
    d = d_base + ratiolist.sum();
    round(d);
    d_prev = d;
  }
  if (e > 0) {
    e = e_base + ratiolist.sum();
    round(e);
    e_prev = e;
  }
  random();
}

void loopfunction_D() {
  d_prev = d;
  d = 0; 
  songsplayed ++;
  songsnotplayed = 5 - songsplayed;
  ratio = d_prev/songsnotplayed;
  ratiolist.append(ratio);

  if (a > 0) {
    a = a_base + ratiolist.sum();
    round(a);
    a_prev = a;
  }
  if (b > 0) {
    b = b_base + ratiolist.sum();
    round(b);
    b_prev = b;
  }
  if (c > 0) {
    c = c_base + ratiolist.sum();
    round(c);
    c_prev = c;
  }
  if (d > 0) {
    d = d_base + ratiolist.sum();
    round(d);
    d_prev = d;
  }
  if (e > 0) {
    e = e_base + ratiolist.sum();
    round(e);
    e_prev = e;
  }
  random();
}

void loopfunction_E() {
  e_prev = e;
  e = 0; 
  songsplayed ++;
  songsnotplayed = 5 - songsplayed;
  ratio = e_prev/songsnotplayed;
  ratiolist.append(ratio);

  if (a > 0) {
    a = a_base + ratiolist.sum();
    round(a);
    a_prev = a;
  }
  if (b > 0) {
    b = b_base + ratiolist.sum();
    round(b);
    b_prev = b;
  }
  if (c > 0) {
    c = c_base + ratiolist.sum();
    round(c);
    c_prev = c;
  }
  if (d > 0) {
    d = d_base + ratiolist.sum();
    round(d);
    d_prev = d;
  }
  if (e > 0) {
    e = e_base + ratiolist.sum();
    round(e);
    e_prev = e;
  }
  random();
}
