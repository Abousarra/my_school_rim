import 'dart:math';

import 'package:flutter/material.dart';

class Ekhtibar extends StatefulWidget {
  const Ekhtibar({super.key});

  @override
  State<Ekhtibar> createState() => _EkhtibarState();
}

class _EkhtibarState extends State<Ekhtibar> {
  int totalTrue = 0, totalFalse = 0;
  List<Widget> icons = [];
  List<int> numImage = [1, 2, 3, 4, 5];
  List<String> nameImage = ['ملكة', 'جندي', 'فرس', 'قلعة', 'ملك'];
  int numRandom = Random().nextInt(5), namRandom = Random().nextInt(5);

  List<Widget> setIcon(bool bol) {
    setState(() {
      Color color = Colors.red;
      if (icons.length >= 10) {
        icons = [];
      }
      if (bol == true && numRandom == namRandom ||
          bol == false && numRandom != namRandom) {
        color = Colors.green;
        totalTrue += 1;
      } else {
        totalFalse += 1;
      }
      icons.add(Icon(
        Icons.star,
        color: color,
      ));
      numRandom = Random().nextInt(5);
      namRandom = Random().nextInt(5);
    });
    return icons;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          'اختباراتي',
          style: TextStyle(
            fontFamily: 'Amiri',
          ),
        ),
      ),
      //Body
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            //Expanded
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            '$totalTrue',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Row(
                            children: icons,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '$totalFalse',
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ]),
                  Image.asset('images/${numImage[numRandom]}.png'),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      nameImage[namRandom],
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Amiri',
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      style: ButtonStyle(
                          //alignment: Alignment.center,
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green[900])),
                      onPressed: () {
                        setIcon(true);
                      },
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Icon(Icons.thumb_up, color: Colors.white),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'صح',
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'Amiri',
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        style: ButtonStyle(
                            //alignment: Alignment.center,
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red[900])),
                        onPressed: () {
                          setIcon(false);
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child:
                                  Icon(Icons.thumb_down, color: Colors.white),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'خطأ',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'Amiri',
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
