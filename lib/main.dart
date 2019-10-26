import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final players = AudioCache();
    players.play('note$soundNumber.wav');
  }

  Expanded biludKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              biludKey(color: Colors.red, soundNumber: 1),
              biludKey(color: Colors.orange, soundNumber: 2),
              biludKey(color: Colors.yellow, soundNumber: 3),
              biludKey(color: Colors.green, soundNumber: 4),
              biludKey(color: Colors.teal, soundNumber: 5),
              biludKey(color: Colors.blue, soundNumber: 6),
              biludKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
