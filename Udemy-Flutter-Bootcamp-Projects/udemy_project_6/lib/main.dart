import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int soundNumber = 1;
  final player = AudioCache();

  void playSound(int soundNumber) {
    player.play('assets_note$soundNumber.wav');
  }

  Expanded SoundButton(Color c, int i) {
    return Expanded(
      child: Container(
        color: c,
        child: TextButton(
          onPressed: () {
            // final audioPlayer = AudioCache();
            // audioPlayer.play('assets_note$soundNumber.wav');
            playSound(i);
          },
          child: Text(''),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SoundButton(Color(0xFF90a4ae), 1),
              SoundButton(Color(0xFF78909c), 2),
              SoundButton(Color(0xFF607d8b), 3),
              SoundButton(Color(0xFF546e7a), 4),
              SoundButton(Color(0xFF455a64), 5),
              SoundButton(Color(0xFF37474f), 6),
              SoundButton(Color(0xFF263238), 7),
            ],
          ),
        ),
      ),
    );
  }
}
