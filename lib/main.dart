import 'package:demodesign/helper/iconhelper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashPage(duration: 3 ,gotoPage: WelcomePage(),),
  ));
}
class WelcomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(alignment: Alignment.center, child: Text('Hello World'),),
    );
  }
}

class SplashPage extends StatelessWidget {
  int duration = 0;
  Widget gotoPage;
  SplashPage({required this.gotoPage, required this.duration});
  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: this.duration), () {
      Navigator.push(
        context, 
        MaterialPageRoute(builder: (context) => this.gotoPage)
        );
    });
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Color(0xFF80C038),
        child: IconFont(
          color: Colors.white,
          iconName: IconFontHelper.LOGO,
          size: 100,
        ),
      ),
    );
  }
}
class IconFont extends StatelessWidget {
  Color color;
  double size;
  String iconName;

  IconFont({required this.color, required this.size, required this.iconName});
  @override
  Widget build(BuildContext context){
    return Text(this.iconName,
      style: TextStyle(
        color: this.color,
        fontSize: this.size,
        fontFamily: 'untitled-font-1',
      ),
    );
  }
}



