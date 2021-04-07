import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:yyxiake_flutter/models/community_result_entity.dart';
import 'package:yyxiake_flutter/share_widgets/search_widget.dart';

import 'community_nav_item.dart';

class CommunityHeaderView extends StatefulWidget {
  CommunityHeaderView({
    Key key,
    @required this.bannerList,
  }) : super(key: key);

  final List<CommunityResultDataBanner> bannerList;

  @override
  _CommunityHeaderViewState createState() => _CommunityHeaderViewState();
}

class _CommunityHeaderViewState extends State<CommunityHeaderView> {
  Color tabBarColor = Colors.white;

  final items = [
    NavItem('assets/images/community_home_place.png', '目的地'),
    NavItem('assets/images/community_home_trave.png', '游记'),
    NavItem('assets/images/community_home_strategy.png', '攻略'),
    NavItem('assets/images/community_home_photo.png', '摄影'),
    NavItem('assets/images/community_home_film.png', '视频'),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          children: [
            Container(
              color: tabBarColor,
              padding:
                  EdgeInsets.only(right: 20, left: 20, bottom: 10, top: 50),
              child: SearchWidget(
                hinttext: '搜索目的地/攻略/摄影作品等',
                backgroundColor: Colors.white,
              ),
            ),
            widget.bannerList.length != 0
                ? Container(
                    height: 150,
                    child: Swiper(
                      itemWidth: MediaQuery.of(context).size.width,
                      layout: SwiperLayout.STACK,
                      autoplay: true,
                      loop: true,
                      itemCount: widget.bannerList.length,
                      pagination: SwiperPagination(),
                      itemBuilder: (BuildContext context, int index) {
                        return Image.network(
                          widget.bannerList[index].thumb,
                          fit: BoxFit.cover,
                        );
                      },
                      onIndexChanged: (index) {
                        CommunityResultDataBanner banner =
                            widget.bannerList[index];
                        String colorStr = banner.color;
                        setState(() {
                          tabBarColor =
                              Color(int.parse(colorStr.substring(1), radix: 16))
                                  .withAlpha(255);
                        });
                      },
                      onTap: (index) {},
                    ),
                  )
                : SizedBox(
                    height: 150,
                  ),
            SizedBox(height: 80),
          ],
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 86,
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              clipBehavior: Clip.hardEdge,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: items.map((e) => CommunityNavItem(item: e)).toList(),
              ),
            ))
      ],
    );
  }
}

class NavItem {
  final image;
  final text;
  NavItem(this.image, this.text);
}
