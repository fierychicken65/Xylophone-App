import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  void playSound(int num) {
    final player = AudioPlayer();
    player.play(AssetSource('note$num.wav'));
  }

  Expanded buildkey(Color color, int num) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: color,
          onPressed: () {
            playSound(num);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title:const Center(
            child:  Text(
              'XYLOPHONE',
              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Center(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildkey(Colors.red, 1),
                buildkey(Colors.orange, 2),
                buildkey(Colors.yellow, 3),
                buildkey(Colors.green, 4),
                buildkey(Colors.blue, 5),
                buildkey(Colors.blueGrey, 6),
                buildkey(Colors.purple, 7)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
