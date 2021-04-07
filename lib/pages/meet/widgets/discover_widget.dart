import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:yyxiake_flutter/contants/colors.dart';
import 'package:yyxiake_flutter/dao/meet_dao.dart';
import 'package:yyxiake_flutter/models/meet_topic_entity.dart';
import 'package:yyxiake_flutter/pages/meet/widgets/discover_topic_item.dart';
import 'package:yyxiake_flutter/share_widgets/sample_list_item.dart';

class DiscoverWidget extends StatefulWidget {
  const DiscoverWidget({Key key}) : super(key: key);

  @override
  _DiscoverWidgetState createState() => _DiscoverWidgetState();
}

class _DiscoverWidgetState extends State<DiscoverWidget>
    with AutomaticKeepAliveClientMixin {
  List<MeetTopicDataTopic> topicList = [];

  Future<Null> _fetchTopic() async {
    try {
      MeetTopicData data = await MeetDao.fetchTopic();
      topicList = data.topic;
      setState(() {});
    } catch (e) {
      print(e);
      setState(() {});
    }
    return null;
  }

  @override
  void initState() {
    super.initState();
    _fetchTopic();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return CustomScrollView(
      slivers: <Widget>[
        SliverPadding(padding: EdgeInsets.all(10)),
        topicList.length != 0
            ? SliverToBoxAdapter(
                child: Container(
                  height: 250.0,
                  child: ScrollNotificationInterceptor(
                    child: Swiper(
                      itemBuilder: (BuildContext context, int index) {
                        MeetTopicDataTopic item = topicList[index];
                        return DiscoverTopicWidget(
                          item: item,
                        );
                      },
                      itemCount: topicList.length,
                      viewportFraction: 0.6,
                      scale: 0.7,
                      loop: false,
                    ),
                  ),
                ),
              )
            : SliverToBoxAdapter(
                child: SizedBox(
                  height: 210,
                ),
              ),
        SliverPadding(
          padding: EdgeInsets.only(top: 10),
        ),
        SliverToBoxAdapter(
          child: buildMiddleTabBar(),
        ),
        SliverPadding(padding: EdgeInsets.only(top: 10)),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            return SampleListItem();
          }, childCount: 50),
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;

  int _selectedType = 1;

  Widget buildMiddleTabBar() {
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: 170,
          // color: Colors.yellow,
          decoration: BoxDecoration(
              color: Colors.grey[300], borderRadius: BorderRadius.circular(20)),
          padding: EdgeInsets.all(2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ChoiceChip(
                selectedColor: Colors.white,
                selected: _selectedType == 1,
                label: const Text(
                  '精选',
                  style: TextStyle(color: Colors.black),
                ),
                onSelected: (selected) {
                  setState(() => _selectedType = 1);
                },
              ),
              ChoiceChip(
                selectedColor: Colors.white,
                selected: _selectedType == 2,
                label: const Text(
                  '热门',
                  style: TextStyle(color: Colors.black),
                ),
                onSelected: (selected) {
                  setState(() => _selectedType = 2);
                },
              ),
              ChoiceChip(
                selectedColor: Colors.white,
                selected: _selectedType == 3,
                label: const Text(
                  '最新',
                  style: TextStyle(color: Colors.black),
                ),
                onSelected: (selected) {
                  setState(() => _selectedType = 3);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
