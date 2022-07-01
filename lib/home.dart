//This is the HomePage of our Piss Simulator App
import 'package:flutter/material.dart';

//import the package -->audio players you downloaded earlier--
import 'package:audioplayers/audioplayers.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context)
        .size; // this line makes the size the size of the device it is in.

    return SafeArea(
      child: Scaffold(
        body: Container(
          //we are wrapping the body in a container widget
          width: size
              .width, // we are basically say that take the shape of whatever device you are in

          decoration: const BoxDecoration(
              //applied decorations to container
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.yellow,
              Colors.orange,
              Colors.red,
            ],
          )),

          //write up in th container
          child: Column(
              mainAxisAlignment: MainAxisAlignment
                  .center, //To bring the whole elements in the widget
              children: [
                //next we used a specified that we want to use a column, since our app has stuffs stacked on each other
                //Element 1
                const Text(
                  "Let's Pee",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold),
                ), //text of the container with styles

                //we want an invisible box that we'll add heights to
                const SizedBox(
                  height: 10,
                ),

                //Element 2
                const Text(
                  "Save yourself from \nAwkward situations",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),

                //Element 3 --> this is element is an image
                const Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Image(image: AssetImage("assets/Funny.PNG")),
                ),

                //an invisible space added with size box
                const SizedBox(
                  height: 70,
                ),

                // ELEMENTS 4
                // ------ buttons------
                // ------- 2 ------- required

                Column(
                  children: [
                    // Elevated button 1
                    ElevatedButton(
                        onPressed: () {
                          /*
                      To use the package we just installed, we will do the following
                          a. create an object of that class.
                          b. pass the name of document you want to play as the argument of that object.
                      */
                          final player = AudioCache();
                          player.play("piss.mp3");
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ), //we added rounded edges to the button

                            primary: Colors.orange,
                            elevation: 5),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Play",
                            style: TextStyle(fontSize: 30),
                          ),
                        )),

                    // to give space in between the buttons
                    const SizedBox(
                      height: 10,
                    ),

                    // Elevated button 2
                    ElevatedButton(
                        onPressed: () {
                          /*
                      To use the package we just installed, we will do the following
                          a. create an object of that class.
                          b. pass the name of document you want to play as the argument of that object.
                      */
                          final player = AudioCache();
                          player.clearAll();
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ), //we added rounded edges to the button

                            primary: Colors.orange,
                            elevation: 5),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Stop",
                            style: TextStyle(fontSize: 30),
                          ),
                        ))
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
