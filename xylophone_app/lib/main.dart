import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int audioNo){
    final player = AudioCache();
    player.play('note$audioNo.wav');
  }
  Expanded buildKey({Color color, int audioNo}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(audioNo);
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
              children: <Widget>[
                buildKey(color: Colors.red, audioNo: 1),
                buildKey(color: Colors.orange, audioNo: 2),
                buildKey(color: Colors.yellow, audioNo: 3),
                buildKey(color: Colors.green, audioNo: 4),
                buildKey(color: Colors.teal, audioNo: 5),
                buildKey(color: Colors.blue, audioNo: 6),
                buildKey(color: Colors.purple, audioNo: 7),
              ],
            ),
          ),
        ),
      );
  }
}
