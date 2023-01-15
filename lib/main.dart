import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[200],
        drawer: const Drawer(
          child: CircleAvatar(
            backgroundImage: AssetImage('images/123.png'),
            radius: 10,
          ),
        ),
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
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('images/1234.png'),
              radius: 70,
            ),
            const Text(
              'أبوبكر أحمدو الغزالي',
              style: TextStyle(
                  fontFamily: 'Amiri',
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
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
                trailing: Icon(Icons.desktop_access_disabled),
                onTap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
