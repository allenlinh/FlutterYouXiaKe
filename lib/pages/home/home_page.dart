import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yyxiake_flutter/contants/colors.dart';
import 'package:yyxiake_flutter/dao/home_dao.dart';
import 'package:yyxiake_flutter/models/home_result_entity.dart';
import 'package:yyxiake_flutter/models/recommend_result_entity.dart';
import 'package:yyxiake_flutter/pages/home/widgets/home_app_bar.dart';
import 'package:yyxiake_flutter/pages/home/widgets/recommend_item.dart';
import 'package:yyxiake_flutter/share_widgets/loading_container.dart';
import 'package:yyxiake_flutter/share_widgets/sliver_header_delegate.dart';

import 'widgets/header_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _loading = true;
  HomeResultData data;
  Color themeColor;
  List<RecommandResultDataList> xList = [];
  List<HomeResultDataFlowTabList> flowTabList = [];
  EasyRefreshController _controller;
  int type = 1;
  int page = 1;

  @override
  void initState() {
    super.initState();
    _controller = EasyRefreshController();
    _handleRefresh();
    _fetchData();
  }

  //加载首页数据
  Future<Null> _handleRefresh() async {
    try {
      data = await HomeDao.fetch();
      flowTabList = data.flowTabList;
      setState(() {
        _loading = false;
      });
    } catch (e) {
      print(e);
      setState(() {
        _loading = false;
      });
    }
    return null;
  }

  //加载gridview数据
  Future<Null> _fetchData({int page, int type}) async {
    try {
      RecommendResultData data =
          await HomeDao.fetchRecommend(page: page, type: type);
      List<RecommandResultDataList> items =
          data.xList.where((element) => element.type == 1).toList();
      if (items.length > 0) {
        xList.addAll(items);
        _controller.finishLoad(success: true, noMore: false);
      } else {
        _controller.finishLoad(success: true, noMore: true);
      }

      setState(() {});
    } catch (e) {
      print(e);
      setState(() {});
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    themeColor = Theme.of(context).primaryColor;
    return LoadingContainer(
      isLoading: _loading,
      child: Scaffold(
        appBar: HomeAppBar(),
        body: EasyRefresh.builder(
          builder: (context, physics, header, footer) {
            return Container(
              color: AppColors.backgroudColor,
              child: CustomScrollView(
                physics: physics,
                slivers: [
                  SliverToBoxAdapter(
                    child: HomeHeaderWidget(data: data),
                  ),
                  SliverPersistentHeader(
                      floating: true,
                      pinned: true,
                      delegate: MySliverPersistentHeaderDelegate(
                        height: 70,
                        child: new DefaultTabController(
                          length: flowTabList.length,
                          child: Container(
                            height: 70.r,
                            color: AppColors.backgroudColor,
                            child: TabBar(
                              tabs: flowTabList
                                  .map((e) => Tab(
                                        text: e.typeName,
                                        icon: Image.network(
                                          e.image,
                                          width: 25,
                                          height: 25,
                                        ),
                                        iconMargin: EdgeInsets.only(top: 10),
                                      ))
                                  .toList(),
                              isScrollable: true,
                              indicatorSize: TabBarIndicatorSize.label,
                              indicatorColor: Theme.of(context).primaryColor,
                              indicatorWeight: 6.r,
                              indicatorPadding: EdgeInsets.only(bottom: 5.r),
                              labelStyle: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700),
                              unselectedLabelStyle: (TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w300)),
                              onTap: (int index) {
                                setState(() {
                                  type = flowTabList[index].type;
                                  page = 1;
                                  _fetchData(type: type, page: page);
                                });
                              },
                            ),
                          ),
                        ),
                      )),
                  SliverPadding(
                    padding: const EdgeInsets.all(8.0),
                    sliver: SliverGrid(
                      //Grid
                      gridDelegate:
                          new SliverGridDelegateWithFixedCrossAxisCount(
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
                  footer,
                ],
              ),
            );
          },
          controller: _controller,
          onLoad: () async {
            _fetchData(type: type, page: page++);
          },
          enableControlFinishLoad: true,
        ),
      ),
    );
  }
}
