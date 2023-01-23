import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_school_rim/constants.dart';
import 'package:my_school_rim/ikhtibar.dart';
import 'package:my_school_rim/naghmat.dart';
import 'package:my_school_rim/store.dart';
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
      theme: ThemeData(
        textTheme: GoogleFonts.amiriTextTheme(Theme.of(context).textTheme),
        primaryColor: kPrimaryColor,
      ),
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
  List<Widget> pages = [Tataboq(), Naghmat(), Ekhtibar(), Store()];
  int indexPage = 0;
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
        backgroundColor: Colors.blue[900],
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
          BottomNavigationBarItem(
            icon: Icon(Icons.expand_circle_down),
            label: 'تطابق',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.music_note), label: 'نغمات'),
          BottomNavigationBarItem(
              icon: Icon(Icons.temple_buddhist), label: 'اختبار'),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'المتجر',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: indexPage,
        onTap: (value) {
          setState(() {
            indexPage = value;
          });
          Navigator.of(context)
              .push(MaterialPageRoute(builder: ((context) => pages[value])));
        },
      ),
    );
  }
}
