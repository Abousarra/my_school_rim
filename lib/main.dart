import 'package:flutter/material.dart';
import 'package:my_school_rim/naghmat.dart';
import 'package:my_school_rim/tataboq.dart';

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
  List<Widget> pages = [Tataboq(),Naghmat()];
  int indexPage=0;
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
        title: Text(
          'تطبيقي',
          style: TextStyle(
            fontFamily: 'Amiri',
          ),
        ),
      ),
      body: Column(
        children: [
          Text(
            'مرحبا بكم',
            style: TextStyle(fontFamily: 'Amiri', fontSize: 22),
          ),
          Expanded(
            child: Image.asset('images/appstore.png'),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_max), label: 'تطابق'),
          BottomNavigationBarItem(icon: Icon(Icons.home_max), label: 'نغمات')
        ],
        currentIndex: indexPage,
        onTap: (value) {
          setState(() {
            indexPage =value;
          });
          Navigator.of(context)
              .push(MaterialPageRoute(builder: ((context) => pages[value])));
        },
      ),
    );
  }
}
