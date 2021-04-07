import 'package:flutter/material.dart';
import 'package:yyxiake_flutter/models/recommend_result_entity.dart';
import 'dart:math';

class RecommendItem extends StatelessWidget {
  const RecommendItem({
    Key key,
    @required this.dataDetail,
  }) : super(key: key);

  final RecommendResultDataListDataDetail dataDetail;

  @override
  Widget build(BuildContext context) {
    return new Container(
        alignment: Alignment.center,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ConstrainedBox(
                  constraints: BoxConstraints(
                      maxWidth: double.infinity, maxHeight: double.infinity),
                  child: Image.network(
                    dataDetail.image,
                    fit: BoxFit.cover,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                dataDetail.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 10),
              child: Text.rich(TextSpan(children: [
                TextSpan(
                    text: '¥',
                    style: TextStyle(color: Colors.red, fontSize: 13)),
                TextSpan(
                    text: dataDetail.priceLabel,
                    style: TextStyle(color: Colors.red, fontSize: 15)),
                TextSpan(
                    text: '起',
                    style: TextStyle(color: Colors.red, fontSize: 12)),
              ])),
            ),
          ],
        ));
  }
}
