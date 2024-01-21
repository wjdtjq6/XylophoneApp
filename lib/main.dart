import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:math';

import 'package:flutter/widgets.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void PlaySound(int soundNumber) {
    final player = AudioPlayer();
    var source = AssetSource('note$soundNumber.wav');
    player.play(source);
  }
  Expanded buildKey(int soundNumber, Color color,) {
    return Expanded(
      child: TextButton(
        onPressed: () async {
          PlaySound(soundNumber);
        },
        child: Container(color: color, height: 100, width: 1000.0),
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
            children: [
              buildKey(1,Colors.red),
              buildKey(2,Colors.orange),
              buildKey(3,Colors.yellow),
              buildKey(4,Colors.green),
              buildKey(5,Colors.blue),
              buildKey(6,Colors.indigo),
              buildKey(7,Colors.purple),

            ],
          ),

        ),
      ),
    );
  }
}
