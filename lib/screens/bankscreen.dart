import 'package:flutter/material.dart';
import 'package:my_school_rim/models/products.dart';

import '../widgets/home/cardwidet.dart';

class Bank extends StatelessWidget {
  const Bank({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('البنك'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          //height: 190,
          child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) => MyCard(
              indexItem: index,
              product: products[index],
            ),
          ),
        ),
      ),
    );
  }
}
