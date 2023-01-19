import 'package:flutter/material.dart';
import 'package:my_school_rim/page.dart';

void main() {
  runApp(Luanch());
}

class Luanch extends StatelessWidget {
  const Luanch({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: First(),
    );
  }
}

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  child: Image(image: AssetImage('images/appstore.png')),
                  radius: 50,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('images/1234.png'),
                  //child: Image(image: AssetImage('images/1234.png')),
                  radius: 90,
                )
              ],
            ),
          ],
          //backgroundImage: AssetImage('images/appstore.png'),
        ),
      ),
      appBar: AppBar(
        title: Text('data'),
      ),
      body: Column(
        children: [
          Text('data'),
          Expanded(child: Image.asset('images/appstore.png')),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: ((v) => Second()),
                ));
              },
              child: Icon(Icons.beach_access))
        ],
      ),
    );
  }
}
