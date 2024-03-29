import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylophoneScreen extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache(); 
    player.play("xylophone/note$soundNumber.wav");
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: MaterialButton(
        enableFeedback: false,
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(color: Colors.red, soundNumber: 1),
            buildKey(color: Colors.orange, soundNumber: 2),
            buildKey(color: Colors.yellow, soundNumber: 3),
            buildKey(color: Colors.green, soundNumber: 4),
            buildKey(color: Colors.teal, soundNumber: 5),
            buildKey(color: Colors.blue, soundNumber: 6),
            buildKey(color: Colors.purple, soundNumber: 7),
          ],
        ),
      ),
    );
  }
}
