import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playsound(int x){
    final player = AudioCache();
    player.play('note$x.wav');
  }

  Expanded buidkey(Color color, int x){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(x);
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
              buidkey(Colors.red,1),
              buidkey(Colors.orange, 2),
              buidkey(Colors.yellow,3),
              buidkey(Colors.green, 4),
              buidkey(Colors.teal,5),
              buidkey(Colors.blue,6),
              buidkey(Colors.purple,7),

            ],
          ),
        ),
      ),
    );
  }
}
