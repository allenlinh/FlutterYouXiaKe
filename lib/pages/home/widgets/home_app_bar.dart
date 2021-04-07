import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yyxiake_flutter/contants/colors.dart';
import 'package:yyxiake_flutter/share_widgets/search_widget.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({Key key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(46.r);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.themeColor,
      elevation: 0,
      leading: Container(
        padding: EdgeInsets.only(left: 8.r, right: 0.r, top: 5.r, bottom: 5.r),
        child: Row(
          children: [
            Text(
              '杭州',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            Icon(
              Icons.expand_more,
              color: Colors.black,
              size: 13.r,
            )
          ],
        ),
      ),
      title: SearchWidget(
        hinttext: '搜索全球小众目的地和创意玩法',
        backgroundColor: Colors.white,
      ),
      actions: [
        Container(
            child: Padding(
          padding: EdgeInsets.only(top: 5.r, right: 5.r),
          child: Column(children: [
            Icon(
              Icons.qr_code_scanner,
              color: Colors.black,
            ),
            Text(
              '扫一扫',
              style: TextStyle(fontSize: 10, color: Colors.black),
            )
          ]),
        ))
      ],
    );
  }
}
