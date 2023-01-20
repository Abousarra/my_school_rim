import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Naghmat extends StatefulWidget {
  const Naghmat({super.key});

  @override
  State<Naghmat> createState() => _NaghmatState();
}

//6422561867 - 8001785693 -
class _NaghmatState extends State<Naghmat> {
  final player = AudioPlayer();
  TextButton getButton({int numMusic = 1, String titleText = ''}) {
    return TextButton(
      onPressed: () async {
        await player.play(DeviceFileSource('assets/$numMusic.mp3'));
      },
      child: Text(
        titleText,
        style: TextStyle(
          fontSize: 20,
          fontFamily: 'Amiri',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  List<TextButton> bottuns = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('نغماتي'),
      ),
      body: Container(
        child: Column(
          children: bottuns,
        ),
      ),
    );
  }
}
