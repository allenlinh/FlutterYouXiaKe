import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:yyxiake_flutter/contants/colors.dart';
import 'package:yyxiake_flutter/models/home_result_entity.dart';
import 'package:yyxiake_flutter/share_widgets/ListView_progress_indicator.dart';

class HomeHeaderWidget extends StatefulWidget {
  final HomeResultData data;
  const HomeHeaderWidget({Key key, this.data}) : super(key: key);

  @override
  _HomeHeaderWidgetState createState() => _HomeHeaderWidgetState();
}

class _HomeHeaderWidgetState extends State<HomeHeaderWidget> {
  double value = .0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 1.sw,
              height: 0.4.sw,
              color: AppColors.themeColor,
            ),
            Container(
              width: 1.sw,
              height: 300.r + 0.1.sw,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
            ),
          ],
        ),
        Column(
          children: [
            searchListWidget(context),
            swiperWidget(context),
            firstNavWidget(context),
            secondNavWidget(context),
          ],
        )
      ],
    );
  }

  Widget searchListWidget(BuildContext context) {
    List<Widget> searchList = [];
    searchList.add(
      Text(
        '热搜',
        style: TextStyle(fontSize: 12),
      ),
    );

    widget.data.hotSearchList.forEach((element) {
      searchList.add(FlatButton(
        onPressed: () {
          print('点击搜索' + element.title);
        },
        color: Color(0xFFFAE98E),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
        child: Text(
          element.title,
          style: TextStyle(fontSize: 11),
        ),
      ));
    });

    return Container(
      height: 22.r,
      margin: EdgeInsets.only(top: 3.r, left: 10.r, right: 10.r),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: searchList,
      ),
    );
  }

  Widget swiperWidget(BuildContext context) {
    return Container(
      height: 0.5.sw,
      padding: EdgeInsets.only(left: 10, right: 10),
      margin: EdgeInsets.only(top: 10.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
      ),
      clipBehavior: Clip.hardEdge,
      child: Swiper(
        autoplay: true,
        loop: true,
        itemCount: widget.data.flashImageList.length,
        pagination: SwiperPagination(),
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            widget.data.flashImageList[index].image,
            fit: BoxFit.cover,
          );
        },
        onTap: (index) {},
      ),
    );
  }

  Widget firstNavWidget(BuildContext context) {
    List<Widget> items = [];

    widget.data.firstNav.forEach((element) {
      items.add(
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              element.image,
              fit: BoxFit.contain,
              width: 40.r,
              height: 40.r,
            ),
            Text(
              element.title,
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
      );
    });
    return Container(
        margin: EdgeInsets.only(top: 10.r, left: 10.r, right: 10.r),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: items,
        ));
  }

  Widget secondNavWidget(BuildContext content) {
    List<Widget> list = [];
    List<Widget> list2 = [];

    widget.data.secondNav.forEach((element) {
      list.add(Container(
        decoration: BoxDecoration(
          color: Colors.white,
          // border: new Border.all(color: Colors.black12, width: 0.5.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              element.title,
              style: TextStyle(fontSize: 15),
            ),
            Text(
              element.subTitle,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            )
          ],
        ),
      ));
    });

    widget.data.userCenterNav.forEach((element) {
      list2.add(Container(
        child: Row(
          children: [
            Image.network(
              element.thumb,
              width: 20.r,
              height: 20.r,
              fit: BoxFit.fill,
            ),
            Text(element.title)
          ],
        ),
      ));
    });

    return NotificationListener(
      onNotification: (ScrollNotification notification) {
        if (notification is ScrollUpdateNotification) {
          // 更新滚动
          value = notification.metrics.pixels /
              notification.metrics.maxScrollExtent;
          setState(() {});
        }
        // 返回值是防止冒泡， false是可以冒泡
        return true;
      },
      child: Column(
        children: [
          Container(
            // padding: EdgeInsets.only(left: 10, right: 10),
            margin: EdgeInsets.all(10.r),
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              border: Border.all(width: 0.5, color: Colors.black12),
              borderRadius: BorderRadius.circular(10.r),
            ),
            height: 150.r,
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.black12,
                  child: GridView.extent(
                      childAspectRatio: 55.r / (1.sw - 20.r + 3.r) * 4,
                      scrollDirection: Axis.horizontal,
                      maxCrossAxisExtent: 55.r,
                      mainAxisSpacing: 0.5,
                      crossAxisSpacing: 0.5,
                      children: list),
                )),
                Container(
                  color: Colors.yellow,
                  height: 40.r,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: list2,
                  ),
                )
              ],
            ),
          ),
          ListViewProgressIndicator(
            value: value,
          )
        ],
      ),
    );
  }
}
