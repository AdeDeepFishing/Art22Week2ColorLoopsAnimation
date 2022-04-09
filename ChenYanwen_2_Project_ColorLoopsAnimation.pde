/*
 * Course: ART 22  - Computer Programming for the Arts
 * Assignment: Week 2 Project ColorLoopsAnimation
 *
 * by Yanwen Chen
 *
 * Initiated: 2022/04/08
 * Last updated: 2022/04/09
 *
 * CITATIONS:
 * https://processing.org/examples/mouse2d.html
 *
 * NOTE: This is where you write any notes you would like
 * to leave yourself or others using your code.
 *
 * */

boolean makeItRed=false;
boolean makeItBlue=false;
boolean makeItYellow=false;


void setup() {
  size(720, 720);
  noStroke();
}

void draw() {
  background(#E5E7EF);

  if (mouseX<width/2 && mouseY<height/2) {
    //test if the cursor is in the left area
    makeItRed=true;
    makeItBlue=false;
    makeItYellow=false;
  }
  if (mouseX>=width/2 && mouseY<height/2) {
    //test if the cursor is in the right area
    makeItBlue=true;
    makeItRed=false;
    makeItYellow=false;
  }

  if (mouseY>=height/2) {
    makeItYellow=true;
    makeItRed=false;
    makeItBlue=false;
  }


  if (keyCode=='C' || keyCode=='c') {
    //while clean the board, it will change to the original image

    //left red triangle
    fill(#ec5945);
    triangle(20, 20, 360, 20, 20, 700);

    //right blue triangle
    fill(#0b2ecc);
    triangle(360, 20, 700, 20, 700, 700);

    //middle yellow triangle
    fill(#d69a1f);
    triangle(360, 20, 20, 700, 700, 700);

    //middle up white triangle
    fill(255);
    triangle(360, 20, 280, 180, 440, 180);

    //left up black square
    fill(#1f141e);
    square(60, 80, 160);

    //right up black circle
    fill(#191826);
    circle(580, 160, 160);

    //middle black stand rectangle
    fill(#181214);
    rect(280, 180, 160, 480);

    //middle black lay rectangle
    rect(120, 340, 480, 160);
  } else if (makeItRed) {
    //when the cursor is in the left up area, make it all red
    fill(#ec5945);
    square(20, 20, 680);

    //middle up white triangle
    fill(255);
    triangle(360, 20, mouseX, 180+mouseY, 680-mouseX, 180+mouseY);

    //moving left up black square
    fill(#1f141e);
    square(mouseY-580, mouseX-200, 160);

    //right up black circle
    fill(#191826);
    circle(mouseY-60, mouseX-160, 160);

    //middle black stand rectangle
    fill(#181214);
    rect(280, mouseX-130, 160, 480);

    //middle black lay rectangle
    rect(-mouseY+490, 340, 480, 160);
  } else if (makeItBlue) {
    //when the cursor is in the right up area, make it all blue
    fill(#0b2ecc);
    square(20, 20, 680);

    //middle up white triangle
    fill(255);
    triangle(360, 20, mouseX, 180+mouseY, 680-mouseX, 180+mouseY);

    //moving left up black square
    fill(#1f141e);
    square(mouseY-580, mouseX-200, 160);

    //right up black circle
    fill(#191826);
    circle(mouseY-60, mouseX-160, 160);

    //middle black stand rectangle
    fill(#181214);
    rect(280, mouseX-130, 160, 480);

    //middle black lay rectangle
    rect(-mouseY+490, 340, 480, 160);
  } else if (makeItYellow) {
    //when the cursor is in the down area, make it all yellow
    fill(#d69a1f);
    square(20, 20, 680);

    //middle up white triangle
    fill(255);
    triangle(360, 20, mouseX, 180+mouseY, 680-mouseX, 180+mouseY);

    //moving left up black square
    fill(#1f141e);
    square(mouseY-580, mouseX-200, 160);

    //right up black circle
    fill(#191826);
    circle(mouseY-60, mouseX-160, 160);

    //middle black stand rectangle
    fill(#181214);
    rect(280, mouseX-130, 160, 480);

    //middle black lay rectangle
    rect(-mouseY+490, 340, 480, 160);
  } else {
    //change the image with the movement of mouse position

    //left red triangle
    fill(#ec5945);
    triangle(20, 20, 360, 20, 20, 700);

    //right blue triangle
    fill(#0b2ecc);
    triangle(360, 20, 700, 20, 700, 700);

    //middle yellow triangle
    fill(#d69a1f);
    triangle(360, 20, 20, 700, 700, 700);

    //middle up white triangle
    fill(255);
    triangle(360, 20, mouseX, 180+mouseY, 680-mouseX, 180+mouseY);

    //moving left up black square
    fill(#1f141e);
    square(mouseY-580, mouseX-200, 160);

    //right up black circle
    fill(#191826);
    circle(mouseY-60, mouseX-160, 160);

    //middle black stand rectangle
    fill(#181214);
    rect(280, mouseX-130, 160, 480);

    //middle black lay rectangle
    rect(-mouseY+490, 340, 480, 160);
  }
}
