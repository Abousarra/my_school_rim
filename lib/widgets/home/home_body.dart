import 'package:flutter/material.dart';
import 'package:my_school_rim/constants.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: kDefaulPadding / 2,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      )),
                ),
                ProductCard()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
  }) : super(key: key);

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
                'images/1.png',
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
                children: [
                  Text('القلعة',style: Theme.of(context).textTheme.bodyText1,),
                  Text('القلعة',style: Theme.of(context).textTheme.caption,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
