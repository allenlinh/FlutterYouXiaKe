import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class _ServiceItem {
  final image;
  final text;

  _ServiceItem(this.image, this.text);
}

class ServiceList extends StatelessWidget {
  ServiceList({
    Key key,
  }) : super(key: key);

  final items = [
    _ServiceItem('assets/images/me_visaOrder.png', '签证订单'),
    _ServiceItem('assets/images/me_mallOrder.png', '集市订单'),
    _ServiceItem('assets/images/me_shopCar.png', '集市购物车'),
    _ServiceItem('assets/images/me_concats.png', '常用信息'),
    _ServiceItem('assets/images/me_masterCertify.png', '达人认证'),
    _ServiceItem('assets/images/me_share.png', '分享APP'),
    _ServiceItem('assets/images/me_customService.png', '在线客服'),
    _ServiceItem('assets/images/me_suggest.png', '意见建议'),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: 1.sw - 20,
        margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child:
                  Align(alignment: Alignment.centerLeft, child: Text('我的服务')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: items
                        .getRange(0, 4)
                        .map((e) => Column(
                              children: [
                                Image.asset(
                                  e.image,
                                  width: 30,
                                  height: 30,
                                ),
                                Text(e.text)
                              ],
                            ))
                        .toList(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: items
                        .getRange(4, 8)
                        .map((e) => Column(
                              children: [
                                Image.asset(
                                  e.image,
                                  width: 30,
                                  height: 30,
                                ),
                                Text(e.text)
                              ],
                            ))
                        .toList(),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
