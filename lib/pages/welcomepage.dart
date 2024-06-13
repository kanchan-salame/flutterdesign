import 'package:demodesign/helper/appcolors.dart';
import 'package:demodesign/helper/iconhelper.dart';
import 'package:demodesign/pages/categorylistpage.dart';
import 'package:demodesign/widgets/iconfont.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                opacity: 0.3,
                child: Image.asset(
                  'assets/imgs/of_main_bg.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: ClipOval(
                      child: Container(
                        width: 180,
                        height: 180,
                        color: AppColors.MAIN_COLOR,
                        alignment: Alignment.center,
                        child: IconFont(
                          iconName: IconFontHelper.MAIN_LOGO,
                          color: Colors.white,
                          size: 130,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Test Text',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Product Categories',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          // side: BorderSide(color: Colors.yellow, width: 5),
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontStyle: FontStyle.normal),
                          shape: BeveledRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                        ),
                        child: Text(
                          'Click Here',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      bottom: 20,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, 
                                MaterialPageRoute(builder: (context) => CategoryListPage())
                              );
                            },
                            splashColor: AppColors.MAIN_COLOR.withOpacity(0.2),
                            highlightColor: AppColors.MAIN_COLOR.withOpacity(0.2),
                            child: Container(
                              padding: EdgeInsets.all(20),
                              child: Text(
                                'Login here',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.MAIN_COLOR,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.transparent,
                                  border: Border.all(
                                      color: AppColors.MAIN_COLOR, width: 4)),
                            ),
                          )),
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