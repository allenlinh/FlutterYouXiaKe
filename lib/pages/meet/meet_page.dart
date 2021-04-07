import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:yyxiake_flutter/contants/colors.dart';
import 'package:yyxiake_flutter/pages/home/home_page.dart';
import 'package:yyxiake_flutter/pages/meet/widgets/discover_widget.dart';
import 'package:yyxiake_flutter/pages/meet/widgets/special_widget.dart';
import 'package:yyxiake_flutter/share_widgets/search_widget.dart';
import 'package:yyxiake_flutter/share_widgets/sliver_header_delegate.dart';

class MeetPage extends StatefulWidget {
  @override
  _MeetPageState createState() => _MeetPageState();
}

class _MeetPageState extends State<MeetPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  SwiperController swipeControl = new SwiperController();
  List tabs = ["专栏", "发现"];
  List<Widget> pages = [SpecialWidget(), DiscoverWidget()];

  @override
  void initState() {
    _tabController = TabController(length: tabs.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          titleSpacing: 10.0, //title widget两边不留间隙
          title: SearchWidget(
            hinttext: '春色播报',
            backgroundColor: Colors.grey.shade100,
          ),
          actions: [
            IconButton(
                icon: Image.asset(
                  'assets/images/meet_icon_topic.png',
                  width: 30,
                  height: 30,
                ),
                onPressed: () {}),
            IconButton(
                icon: Image.asset(
                  'assets/images/meet_icon_topicPK.png',
                  width: 30,
                  height: 30,
                ),
                onPressed: () {}),
            IconButton(
                icon: Image.asset(
                  'assets/images/myHeaderImage.png',
                  width: 30,
                  height: 30,
                ),
                onPressed: () {})
          ],
          bottom: TabBar(
            indicatorColor: AppColors.themeColor,
            indicatorWeight: 6,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: tabs
                .map((e) => Text(
                      e,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ))
                .toList(),
            controller: _tabController,
          ),
        ),
        body: TabBarView(
          children: pages,
          controller: _tabController,
        ));
  }
}
