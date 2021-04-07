import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yyxiake_flutter/contants/colors.dart';
import 'package:yyxiake_flutter/dao/home_dao.dart';
import 'package:yyxiake_flutter/models/recommend_result_entity.dart';
import 'package:yyxiake_flutter/pages/home/widgets/recommend_item.dart';
import 'package:yyxiake_flutter/pages/me/widgets/order_list_widget.dart';
import 'package:yyxiake_flutter/pages/me/widgets/service_list_widget.dart';

class MePage extends StatefulWidget {
  MePage({Key key}) : super(key: key);

  @override
  _MePageState createState() => _MePageState();
}

class _MePageState extends State<MePage> {
  ScrollController _controller = ScrollController();
  Color backgroundColor = Color(0xFFF4F4F4);
  var tabOpacity = .0;
  var iconOpacity = .0;
  var flagOpacity = .0;
  List<RecommandResultDataList> xList = [];

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      if (_controller.offset < 0 || _controller.offset > 149) return;
      tabOpacity = _controller.offset / 100;
      if (tabOpacity >= 1) {
        tabOpacity = 1;
      } else if (tabOpacity <= 0) {
        tabOpacity = 0;
      }
      if (_controller.offset > 80) {
        iconOpacity = 1;
        flagOpacity = 1;
      } else {
        iconOpacity = 0;
        flagOpacity = 0;
      }
      setState(() {});
    });

    _fetchData();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

//加载gridview数据
  Future<Null> _fetchData() async {
    try {
      RecommendResultData data = await HomeDao.fetchRecommend();
      xList = data.xList.where((element) => element.type == 1).toList();
      setState(() {});
    } catch (e) {
      print(e);
      setState(() {});
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: AppColors.backgroudColor,
          child: CustomScrollView(
            controller: _controller,
            slivers: [
              buildHeaderView(context),
              OrderList(),
              ServiceList(),
              SliverToBoxAdapter(
                child: Center(
                  child: Text(
                    '精选推荐',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.all(8.0),
                sliver: SliverGrid(
                  //Grid
                  gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, //Grid按两列显示
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    childAspectRatio: 0.8,
                  ),
                  delegate: new SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      RecommandResultDataList item = xList[index];
                      RecommendResultDataListDataDetail dataDetail =
                          item.dataDetail;
                      //创建子widget
                      return RecommendItem(dataDetail: dataDetail);
                    },
                    childCount: xList.length,
                  ),
                ),
              ),
            ],
          ),
        ),
        buildTabbar(context)
      ],
    );
  }

  SliverToBoxAdapter buildHeaderView(BuildContext context) {
    return SliverToBoxAdapter(
      child: Stack(
        children: [
          Container(
            color: AppColors.themeColor,
            child: Column(
              children: [
                Container(
                  // padding: EdgeInsets.only(bottom: 10),
                  height: 100,
                  margin: EdgeInsets.only(top: 50),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 10),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/myHeaderImagerectangle.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '点击登录/注册',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          height: 30,
                          decoration: BoxDecoration(
                              color: Color(0xFFFAEB5B),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15))),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/me_topsign.png',
                                width: 20,
                                height: 20,
                              ),
                              Text('每日签到')
                            ],
                          ))
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [Text('0'), Text('搜藏')],
                      ),
                      Column(
                        children: [Text('60'), Text('浏览')],
                      ),
                      Column(
                        children: [Text('0'), Text('作品')],
                      ),
                      Column(
                        children: [Text('0'), Text('勋章')],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  color: backgroundColor,
                )
              ],
            ),
          ),
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                      image: AssetImage('assets/images/noGet_rightsCard.png'),
                      fit: BoxFit.cover)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/images/me_notpaying.png'),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '2021畅玩会员',
                          style: TextStyle(
                            color: Color(0xFFFAEB5B),
                          ),
                        ),
                        Text('200+线路免费畅玩, 2021全新上线',
                            style: TextStyle(
                              color: Color(0xFFFAEB5B),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(minHeight: 100, minWidth: 100),
                    child: Container(
                        margin: EdgeInsets.only(
                            top: 10, bottom: 28, left: 10, right: 10),
                        alignment: Alignment.topCenter,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xFFFAEB5B),
                        ),
                        child: Center(
                          child: Text(
                            '立即开通',
                          ),
                        )),
                  ),
                ],
              ),
            ),
            // width: 1.sw - 20,
            left: 10,
            right: 10,
            top: 200,
            height: 60,
          )
        ],
      ),
    );
  }

  Container buildTabbar(BuildContext context) {
    return Container(
      height: 90,
      color: AppColors.themeColor.withOpacity(tabOpacity),
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Opacity(
                  opacity: iconOpacity,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/myHeaderImagerectangle.png',
                      width: 30,
                      height: 30,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Opacity(
                opacity: flagOpacity,
                child: Image.asset(
                  'assets/images/me_topsign.png',
                  width: 20,
                  height: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Image.asset(
                'assets/images/me_topsetting.png',
                width: 20,
                height: 20,
              ),
            ),
            Image.asset(
              'assets/images/me_topmsg.png',
              width: 20,
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
