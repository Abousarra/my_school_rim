import 'package:flutter/material.dart';
import 'dart:math';

class Tataboq extends StatefulWidget {
  const Tataboq({super.key});

  @override
  State<Tataboq> createState() => _TataboqState();
}

class _TataboqState extends State<Tataboq> {
  int right = 1;
  int left = 2;

  randomImage() {
    setState(() {
      right = Random().nextInt(4) + 1;
      left = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text(
          'بطاقتي',
          style: TextStyle(
            fontFamily: 'Amiri',
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('images/1234.png'),
            radius: 70,
          ),
          const Text(
            'أبوبكر أحمدو الغزالي',
            style: TextStyle(
                fontFamily: 'Amiri', fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                Icons.whatsapp_sharp,
                color: Colors.green[600],
              ),
              title: Text(
                '33440920',
                style: TextStyle(
                  color: Colors.green[600],
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('Whatsapp'),
              trailing: Icon(Icons.desktop_access_disabled),
              onTap: () {},
            ),
          ),
          Text(
            left == right ? 'مبروك لقد فزت' : 'حاول مرة أخرى',
            style: TextStyle(
                fontFamily: 'Amiri', fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextButton(
                      onPressed: () {
                        randomImage();
                      },
                      child: Image.asset('images/$left.png')),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextButton(
                      onPressed: () {
                        randomImage();
                      },
                      child: Image.asset('images/$right.png')),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
