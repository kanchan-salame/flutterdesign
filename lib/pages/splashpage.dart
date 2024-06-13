import 'package:demodesign/helper/appcolors.dart';
import 'package:demodesign/helper/iconhelper.dart';
import 'package:demodesign/widgets/iconfont.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  int duration = 0;
  Widget gotoPage;
  SplashPage({required this.gotoPage, required this.duration});
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => this.gotoPage));
    });
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: AppColors.MAIN_COLOR,
        child: IconFont(
          color: Colors.white,
          iconName: IconFontHelper.LOGO,
          size: 100,
        ),
      ),
    );
  }
}