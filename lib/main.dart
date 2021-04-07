import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yyxiake_flutter/container_page.dart';

import 'contants/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(414, 896),
        allowFontScaling: false,
        builder: () => MaterialApp(
              title: 'yyxiake',
              theme: ThemeData(
                  primaryColor: AppColors.themeColor,
                  textTheme: TextTheme(
                      subhead:
                          TextStyle(textBaseline: TextBaseline.alphabetic))),
              home: containerPage(),
            ));
  }
}
