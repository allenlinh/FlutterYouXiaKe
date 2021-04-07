import 'package:flutter/material.dart';
import 'package:yyxiake_flutter/pages/community/community_page.dart';
import 'package:yyxiake_flutter/pages/home/home_page.dart';
import 'package:yyxiake_flutter/pages/location/location_page.dart';
import 'package:yyxiake_flutter/pages/me/me_page.dart';
import 'package:yyxiake_flutter/pages/meet/meet_page.dart';

class containerPage extends StatefulWidget {
  @override
  _containerPageState createState() => _containerPageState();
}

class _Item {
  String name, activeIcon, normalIcon;
  Widget page;
  _Item(this.name, this.activeIcon, this.normalIcon, this.page);
}

class _containerPageState extends State<containerPage> {
  final items = [
    _Item('首页', 'assets/images/tabbarItem_first_selected.png',
        'assets/images/tabbarItem_first_normal.png', HomePage()),
    _Item('杭州', 'assets/images/tabbarItem_second_selected.png',
        'assets/images/tabbarItem_second_normal.png', Home()),
    _Item('遇见', 'assets/images/tabbarItem_third_selected.png',
        'assets/images/tabbarItem_third_normal.png', MeetPage()),
    _Item('社区', 'assets/images/tabbarItem_fourth_selected.png',
        'assets/images/tabbarItem_fourth_normal.png', CommunityPage()),
    _Item('我的', 'assets/images/tabbarItem_five_selected.png',
        'assets/images/tabbarItem_five_normal.png', MePage())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:
            items.asMap().keys.map((index) => _getPagesWidget(index)).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: items
            .map((item) => BottomNavigationBarItem(
                icon: Image.asset(
                  item.normalIcon,
                  width: 30,
                  height: 30,
                ),
                activeIcon: Image.asset(
                  item.activeIcon,
                  width: 30,
                  height: 30,
                ),
                label: item.name))
            .toList(),
        onTap: (int index) {
          setState(() {
            _selectIndex = index;
          });
        },
        selectedFontSize: 12.0,
        currentIndex: _selectIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black, //字体颜色
      ),
    );
  }

  int _selectIndex = 1;
  Widget _getPagesWidget(int index) {
    return Offstage(
      offstage: _selectIndex != index,
      child: TickerMode(
        enabled: _selectIndex == index,
        child: items[index].page,
      ),
    );
  }
}
