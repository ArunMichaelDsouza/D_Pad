/* D Pad (Drum Pad)
   Drumming App for desktop and handheld devices.
   
   Works with Windows, Linux and Mac OSes for desktops/laptops.
   Also works with the Android OS and the iOS for handheld devices.
  
   Designing and Programming by - Arun Michael Dsouza.
   
   Date : July 28, 2013 */


// Global Declarations.

boolean showGUI=false;

RadioButtons b;

PImage crash;
PImage floortom;
PImage hihat;
PImage ride;
PImage snare;
PImage tom;
PImage kick;
PImage credits;
PImage open;
PImage UI;
PImage crash2;
PImage floortom2;

int snarex, snarey;
int crashx, crashy;
int crash2x, crash2y;
int ridex,ridey;
int hihatx,hihaty;
int tomx,tomy;
int floortomx, floortomy;
int floortom2x, floortom2y;
int kickx, kicky;


// Declaration of Audio Environment.

Maxim m;

AudioPlayer snareplayer;
AudioPlayer crashplayer;
AudioPlayer floortomplayer;
AudioPlayer hihatplayer;
AudioPlayer rideplayer;
AudioPlayer tomplayer;
AudioPlayer kickplayer;
AudioPlayer crash2player;
AudioPlayer floortom2player;


/* The setup() method starts here, sets up the basic properties about the application.
   Also loads in the necessary media files required by the app. */

void setup()
{
  size(477,336);
  background(0);
  
  String [] radioNames = {"Start", "Credits"};
  b = new RadioButtons(2, 20, 300, 50, 30, HORIZONTAL);
  b.setNames(radioNames);
  
  m = new Maxim(this);
  
// Loading all sounds required.

  snareplayer = m.loadFile("snare.wav");
  snareplayer.setLooping(false);
  crashplayer = m.loadFile("crash2.wav");
  crashplayer.setLooping(false);
  crash2player = m.loadFile("crash.wav");
  crash2player.setLooping(false);
  rideplayer = m.loadFile("ride.wav");
  rideplayer.setLooping(false);
  hihatplayer = m.loadFile("hihat.wav");
  hihatplayer.setLooping(false);
  tomplayer = m.loadFile("tom.wav");
  tomplayer.setLooping(false);
  floortomplayer = m.loadFile("floortom.wav");
  floortomplayer.setLooping(false);
  floortom2player = m.loadFile("floortom2.wav");
  floortom2player.setLooping(false);
  kickplayer = m.loadFile("kick.wav");
  kickplayer.setLooping(false);
  
// Loading all images required.
  
  crash = loadImage("crash.jpg");
  floortom = loadImage("floortom.jpg");
  hihat = loadImage("hihat.jpg");
  ride = loadImage("ride.jpg");
  snare = loadImage("snare.jpg");
  tom = loadImage("tom.jpg");
  kick = loadImage("kick.jpg");
  credits = loadImage("Credits.jpg");
  open = loadImage("open.jpg");
  UI = loadImage("UI.jpg");
  crash2 = loadImage("crash.jpg");
  floortom2 = loadImage("floortom.jpg");
  
// Defining centre points for individual parts.
  
  snarex = 140;
  snarey = 220;
  
  crashx = 420;
  crashy = 88;
  
  crash2x = 60;
  crash2y = 88;
  
  ridex = 320;
  ridey = 60;
  
  hihatx = 60;
  hihaty = 165;
  
  tomx = 135;
  tomy = 120;
  
  floortomx = 310;
  floortomy = 220;
  
  floortom2x = 420;
  floortom2y = 280;
  
  kickx = 215;
  kicky = 220;
  
}


/* The draw() method starts here.
   It defines the User Interface and Interaction. */
   
void draw()
{
  if(showGUI==false)
  {
    image(open,0,0);
  }
  if(b.get()==0)
  {
    GUI();
  }
  if(b.get()==1)
  {
    Credits();
  }
  
  b.display();
  
}


// Defines the functionality of the 'mouse click' or 'finger tap' event.

void mouseReleased()
{
  b.mouseReleased();
  
  if(dist(mouseX, mouseY, snarex, snarey)<snare.width/2)
  {
    snareplayer.cue(0);
    snareplayer.play();
  }
  
  if(dist(mouseX, mouseY, crashx, crashy)<crash.width/2)
  {
    crashplayer.cue(0);
    crashplayer.play();
  } 
  
   if(dist(mouseX, mouseY, hihatx, hihaty)<hihat.width/2)
  {
    hihatplayer.cue(0);
    hihatplayer.play();
  } 
  
  if(dist(mouseX, mouseY, ridex, ridey)<ride.width/2)
  {
    rideplayer.cue(0);
    rideplayer.play();
  } 
  
  if(dist(mouseX, mouseY, tomx, tomy)<tom.width/2)
  {
    tomplayer.cue(0);
    tomplayer.play();
  } 
  
  if(dist(mouseX, mouseY, floortomx, floortomy)<floortom.width/2)
  {
    floortomplayer.cue(0);
    floortomplayer.play();
  }
  
   if(dist(mouseX, mouseY, kickx, kicky)<kick.width/2)
  {
    kickplayer.cue(0);
    kickplayer.play();
  }
  
  if(dist(mouseX, mouseY, crash2x, crash2y)<crash2.width/2)
  {
    crash2player.cue(0);
    crash2player.play();
  }
  
  if(dist(mouseX, mouseY, floortom2x, floortom2y)<floortom2.width/2)
  {
    floortom2player.cue(0);
    floortom2player.play();
  }
  
}


// Graphical User Interface setup.

void GUI()
{
  showGUI=true;
  setup();
  
// Hidden individual parts, but they provide the actual functionality.

  image(snare,110,190,90,90);
  image(floortom,250,170,floortom.width+10,110);
  image(hihat,10,165,90,90);
  image(ride,250,0,120,150);
  image(tom,105,80,tom.width-50,tom.height-30);
  image(crash,5,55,crash.width-20,crash.height);
  image(kick,210,180,30,70);  
  image(crash2,350,40,crash.width+20,crash.height+20);
  image(floortom2,350,220,floortom.width+40,110);

// Top layer User Interface, hides individual parts.

  image(UI,0,0);
  
}


// The method shows details about the app.

void Credits()
{

// Stopping all audio players.

  snareplayer.stop();
  crashplayer.stop();
  rideplayer.stop();
  tomplayer.stop();
  floortomplayer.stop();
  kickplayer.stop();

// Displaying image showing details.

  image(credits,0,0);
  
}
  






