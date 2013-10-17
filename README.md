D Pad (Drum Pad)
================
   
   D Pad is a Drumming App built with Processing (www.processing.org), for Android/iOS Devices.
  
   Designing and Programming by - Arun Michael Dsouza (amdsouza92@gmail.com).
   
   D Pad was the final project for the Creative Programming MOOC I participated in at Coursera.
   Find out more here - 
   https://www.coursera.org/course/digitalmedia

   
Description
===========
   
   The app uses the native device's touchscreen interface to interact with the user.
   D Pad equips a pretty simple home screen with usable buttons providing easy user interaction. 
   
   The "Start" button takes the user to the main user interface where he/she interacts with a standard 
   5-piece drum kit (with 4 cymbals) using a mouse click (on desktops/laptops) or a finger tap 
   (in case of mobile devices).
   
   It is an ideal drumming app for mobile devices.
   D Pad works quite fluently with finger taps on mobile devices. On a desktop its rather difficult to 
   use a mouse for such an app. So desktops/laptops can be used to just test the app out.
   
   The user interface points out clickable / tapable parts of the drums / cymbals using a large 'circle'.
   When the user clicks or taps on the circle or somewhere around it, the corresponding sound of the drum kit is played. 
   E.g. If the user clicks on the circle imprinted on the snare drum then the snare sound would be played.

   A second button, "Credits" shows the details and refernces about the media used in the project. Tools used 
   for audio, graphics etc.
   
   The Credits page has the "Start" button as "always active" for interaction (never hidden) so as the user 
   can quickly switch back to the user interface from the Credits page. Similarly, the user interface has 
   the "Credits" button as "always active" for quick interaction (never hidden) so as the user can view the 
   credits anytime.
   
   
   
About Processing
================

   Processing is an open source programming language and integrated development environment built for electronic 
   arts and digital media. It is a java-based language built to teach computer programming in a visual 
   context.
   Processing can be used to build highly audio/video interactive apps, creative digital media, electronic art etc.
   In Processing, all coded programs are known as sketches.
   
   http://www.processing.org/
   
   http://en.wikipedia.org/wiki/Processing_(programming_language)
   
   
   
Compiling Instructions
======================

   The Processing integrated development environment (IDE) is required to compile the sketch.
   It can be downloaded from - http://www.processing.org/
   
   Setup your IDE by downloading Android and Javascript modes, for running the app on Android/iOS devices.
   Download the modes from this link - 
   http://www.blurrypaths.com/post/52573899794/processing-2-0-modes-download-links
   
   Put these modes under Documents\Processing\modes\
   (Assuming a windows machine)
   
   Create a new folder and name it "D_PAD" (This is necessary). Add all D_PAD repo contents into this folder. 
   Simply click "Download Zip" from the 
   panel on the right from this link - 
   https://github.com/ArunMichaelDsouza/D_Pad
   
   Once the IDE has been downloaded, open processing, goto file -> open. Now browse to the D_PAD folder
   and open D_PAD.pde.
   Click on the "run/play" button to execute the sketch.
   
   A new window will pop up which will be the application window.
   
   NOTE : Make sure the "data" folder, the "MaximJava_api.pde" and "GUI.pde" files are present in the same
          folder where D_PAD.pde file is present. Also make sure that "Java" mode is enabled on the top right
          panel present on the Processing IDE window. This will launch the app on the local computer.
          
   FOR ANDROID DEVICES - 
   Select "Android Mode" from the top right panel in the Processing IDE. Before that you might need to setup your
   android environment. You need to download the Android SDK.
   
   The following links will help - 
   
   http://wiki.processing.org/w/Android
   
   http://processing.org/tutorials/android/
   
   After complete setup, connect your phone to the computer, enable USB debugging under "Developer Settings" menu and
   run the script.
   
   FOR iOS DEVICES - 
   Select "Javascript Mode" from the top right panel in the Processing IDE.
   Now click the run button, the app will be launched in the web browser. 
   Make sure you are on the same wireless network on the computer and the mobile device.
   
   Now,Open Safari on your mobile device.
   In the address bar type in the ip address of your computer followed by a colon and the port number that the 
   web browser (running the processing sketch) on the computer will show. And hit enter.
   
   In Safari , the address bar should have a link that looks something like this - 
   " http://192.168.0.108:23454 "
   where 23454 is the port number.
   To get the ip address on MAC use ifconfig on the terminal. On windows use ipconfig at command prompt.
   
   
   
          


=================





Send a pull request......feel free to contribute!
Or just fork it! have fun exploring!!

If any problem persists, feel free to post an issue or drop an email.



Arun Michael Dsouza.
amdsouza92@gmail.com



   
   


