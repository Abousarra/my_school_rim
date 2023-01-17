import 'package:flutter/material.dart';
import 'package:my_school_rim/page.dart';

void main() {
  runApp(Start());
}

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        //appBar: AppBar(title: Text('data'),),
        body: Column(
          children: [
            Text('data'),
            Expanded(child: Image.asset('images/appstore.png')),
          TextButton(onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: ((v) => MyApp()),
            ));
          }, child: Icon(Icons.beach_access))
          ],
        ),
        
      ),
    );
  }
}
