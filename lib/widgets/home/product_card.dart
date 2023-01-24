import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/products.dart';

class ProductCard extends StatelessWidget {
  ProductCard({
    Key? key,
    required this.itemIndex,
    required this.product,
  }) : super(key: key);

  int itemIndex;
  Products product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      //color: Colors.green,
      height: 190,
      margin: EdgeInsets.symmetric(
        horizontal: kDefaulPadding,
        vertical: kDefaulPadding / 2,
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 166,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 25,
                      color: Colors.black12)
                ]),
          ),
          Positioned(
            top: 24,
            left: 0,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: kDefaulPadding,
              ),
              height: 160,
              width: 200,
              //color: Colors.red,
              child: Image.asset(
                product.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 136,
              width: size.width - 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    product.title,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Text(
                    product.subTitle,
                    style: Theme.of(context).textTheme.caption,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: kDefaulPadding * 1.5,
                      vertical: kDefaulPadding / 5,
                    ),
                    decoration: BoxDecoration(
                      color: kSecobderyColor,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Text(
                      '${product.price}',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
