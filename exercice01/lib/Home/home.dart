import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
const HomePage({ Key? key, required String title }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get mainAxisAlignment => null;
  int counter = 0;
  bool isPressed = true;

  Widget textDisplay() {
    const textStyle = TextStyle(
      color: Colors.white,
      fontSize: 24,
    );
    return Text(
      isPressed
          ? 'Initial text : Button pressed $counter times.'
          : 'Hello World',
      style: textStyle,
    );
  }

  @override
  Widget build(BuildContext context){
    void incrementCounter() {
      
      setState(() {
        isPressed = !isPressed;
        counter++;
        if (kDebugMode) {
          print('Button pressed');
        }
      });
    }
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 198, 198, 198),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        
          Container(
            color: Colors.green,
            child: Center(
              child: textDisplay(),
            ),
          ), // Container_1
           // Container_1

          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                Colors.white,
              ),
            ),
            onPressed: () {
              incrementCounter();
            }, 
            child: const Text('PUSH ME'),
            ),

        ] // children
        )
    );
  }
}



