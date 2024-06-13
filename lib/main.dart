import 'package:demodesign/helper/appcolors.dart';
import 'package:demodesign/helper/iconhelper.dart';
import 'package:demodesign/pages/categorylistpage.dart';
import 'package:demodesign/pages/splashpage.dart';
import 'package:demodesign/pages/welcomepage.dart';
import 'package:demodesign/widgets/iconfont.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: 'Raleway'
    ),
    debugShowCheckedModeBanner: false,
    home: CategoryListPage(),
  ));
}




