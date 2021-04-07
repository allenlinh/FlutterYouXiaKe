import 'package:flutter/material.dart';
import 'package:yyxiake_flutter/contants/colors.dart';
import 'package:yyxiake_flutter/contants/global.dart';
import 'package:yyxiake_flutter/dao/home_dao.dart';
import 'package:yyxiake_flutter/models/community_result_entity.dart';
import 'package:yyxiake_flutter/pages/community/widgets/community_common_item.dart';
import 'package:yyxiake_flutter/pages/community/widgets/community_header_view.dart';
import 'package:yyxiake_flutter/share_widgets/search_widget.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

class CommunityPage extends StatefulWidget {
  @override
  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  int page = 1;
  List<CommunityResultDataBanner> bannerList = [];
  List<CommunityResultDataCommon> commonList = [];
  ScrollController _controller = ScrollController();
  EasyRefreshController _easyRefreshController = EasyRefreshController();
  bool _canTabVisible = false;

  Future<Null> _fetchData({int page}) async {
    try {
      CommunityResultData data = await HomeDao.fetchCommunity(page: page);
      commonList = data.common.where((element) => (element.type == 4)).toList();
      bannerList = data.banner;
      setState(() {});
    } catch (e) {
      print(e);
      setState(() {});
    }
    return null;
  }

  @override
  void initState() {
    _fetchData(page: page);
    _controller.addListener(() {
      if (_controller.offset > 280) {
        _canTabVisible = true;
      } else {
        _canTabVisible = false;
      }
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: AppColors.themeColor,
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
        body: Stack(
          children: [
            EasyRefresh(
              child: ListView(
                controller: _controller,
                padding: EdgeInsets.only(top: 0),
                children: [
                  CommunityHeaderView(bannerList: bannerList),
                  ListView.builder(
                    padding: EdgeInsets.zero,
                    primary: false,
                    itemCount: commonList.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      CommunityResultDataCommon item = commonList[index];
                      return CommunityCommonItem(item: item);
                    },
                  ),
                ],
              ),
              controller: _easyRefreshController,
              onLoad: () async {
                CommunityResultData data =
                    await HomeDao.fetchCommunity(page: page);
                List<CommunityResultDataCommon> items = data.common
                    .where((element) => (element.type == 4))
                    .toList();
                if (items.length > 0) {
                  commonList.addAll(items);
                  _easyRefreshController.finishLoad(
                      success: true, noMore: false);
                } else {
                  _easyRefreshController.finishLoad(
                      success: true, noMore: true);
                }
                setState(() {});
              },
            ),
            buildHiddenTab()
          ],
        ));
  }

  AnimatedOpacity buildHiddenTab() {
    return AnimatedOpacity(
      duration: Duration(milliseconds: 200),
      opacity: _canTabVisible ? 1 : 0,
      child: Container(
        height: 90,
        color: AppColors.backgroudColor,
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 150,
                child: SearchWidget(
                  hinttext: '搜索',
                  backgroundColor: Colors.white,
                ),
              ),
              Expanded(child: SizedBox()),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Image.asset(
                  'assets/images/community_home_place.png',
                  width: 20,
                  height: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Image.asset(
                  'assets/images/community_home_trave.png',
                  width: 20,
                  height: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Image.asset(
                  'assets/images/community_home_strategy.png',
                  width: 20,
                  height: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Image.asset(
                  'assets/images/community_home_photo.png',
                  width: 20,
                  height: 20,
                ),
              ),
              Image.asset(
                'assets/images/community_home_film.png',
                width: 20,
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
