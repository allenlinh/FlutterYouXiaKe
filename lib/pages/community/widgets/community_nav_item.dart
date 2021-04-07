import 'package:flutter/material.dart';
import 'package:yyxiake_flutter/pages/community/community_page.dart';

import 'community_header_view.dart';

class CommunityNavItem extends StatelessWidget {
  final NavItem item;
  const CommunityNavItem({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(width: 2, color: Colors.grey[100]),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[400],
                offset: Offset(0.0, 0.6), //阴影y轴偏移量
                blurRadius: 0, //阴影模糊程度
                spreadRadius: 0 //阴影扩散程度
                )
          ]),
      width: 70,
      height: 70,
      child: Stack(
        children: [
          Center(
              child: Text(
            item.text,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )),
          Positioned(
            right: 5,
            bottom: 0,
            child: Image.asset(
              item.image,
              width: 25,
              height: 25,
            ),
          )
        ],
      ),
    );
  }
}
