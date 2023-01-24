
import 'package:flutter/material.dart';
import 'package:my_school_rim/constants.dart';
import 'package:my_school_rim/widgets/home/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: homeAppBar(),
      body: HomeBody(),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      title: Text('المتجر',),
      centerTitle: false,
      elevation: 0,
    );
  }
}