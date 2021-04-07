import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yyxiake_flutter/contants/colors.dart';

class _OrderItem {
  final image;
  final text;
  _OrderItem(this.image, this.text);
}

class OrderList extends StatelessWidget {
  OrderList({
    Key key,
  }) : super(key: key);

  final items = [
    _OrderItem('assets/images/me_notpaying.png', '待付款'),
    _OrderItem('assets/images/me_success.png', '报名成功'),
    _OrderItem('assets/images/me_substitute.png', '替补'),
    _OrderItem('assets/images/me_evaluation.png', '待评价'),
    _OrderItem('assets/images/me_refund.png', '退款/取消'),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.all(10),
        width: 1.sw - 20,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '出行订单',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    '查看全部>',
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
            Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: items
                      .map(
                        (e) => Column(
                          children: [
                            Image.asset(
                              e.image,
                              width: 30,
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(e.text),
                            )
                          ],
                        ),
                      )
                      .toList(),
                ))
          ],
        ),
      ),
    );
  }
}
