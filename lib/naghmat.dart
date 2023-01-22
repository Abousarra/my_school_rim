import 'package:flutter/material.dart';
//import 'package:audioplayers/audioplayers.dart';

class Naghmat extends StatefulWidget {
  const Naghmat({super.key});

  @override
  State<Naghmat> createState() => _NaghmatState();
}

//6422561867 - 8001785693 -
class _NaghmatState extends State<Naghmat> {
  //final player = AudioPlayer();
  Expanded getButton(
      {int numMusic = 1,
      String titleText = '',
      Color color = Colors.black,
      IconData icon = Icons.abc,
      int flex = 1}) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 3.0),
        child: TextButton(
          onPressed: () async {
            //await player.play(DeviceFileSource('assets/$numMusic.mp3'));
          },
          onHover: (value) {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(icon, color: color),
                SizedBox(
                  width: 20,
                ),
                Text(
                  titleText,
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Amiri',
                      fontWeight: FontWeight.bold,
                      color: color),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> bottuns = [];

  List<Widget> setButton() {
    bottuns.add(getButton(
        titleText: 'سامسونغ', color: Colors.green, icon: Icons.music_video,flex: 2));
    bottuns.add(getButton(
        titleText: 'آيفون', color: Colors.yellow, icon: Icons.music_note));
    bottuns.add(getButton(
        titleText: 'نوكيا', color: Colors.red, icon: Icons.music_off));
    return bottuns;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          'نغماتي',
          style: TextStyle(
            fontFamily: 'Amiri',
          ),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: setButton(),
        ),
      ),
    );
  }
}
