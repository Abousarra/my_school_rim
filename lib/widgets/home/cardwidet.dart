import 'package:flutter/material.dart';
import 'package:my_school_rim/main.dart';
import 'package:my_school_rim/models/products.dart';

class MyCard extends StatelessWidget {
  int indexItem;
  Products product;

  MyCard({Key? key, required this.indexItem, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(product.image),
        title: Text(product.title),
        subtitle: Text(product.subTitle),
        trailing: Text('${product.price}'),
        onTap: () {
          showAboutDialog(context: context,children: [Text('data')]);
        },
      ),
    );
  }
}
