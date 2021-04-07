import 'package:flutter/material.dart';
import 'package:yyxiake_flutter/models/meet_colums_entity.dart';
import 'package:yyxiake_flutter/pages/meet/widgets/special_colum_item_widget.dart';

class SpecialColumWidget extends StatefulWidget {
  final MeetColumsDataColumn item;
  SpecialColumWidget({Key key, this.item}) : super(key: key);

  @override
  _SpecialColumWidgetState createState() => _SpecialColumWidgetState();
}

class _SpecialColumWidgetState extends State<SpecialColumWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            height: 50,
            child: Row(
              children: [
                Text(widget.item.title),
                Expanded(child: SizedBox()),
                Text('查看全部 >')
              ],
            ),
          ),
          Container(
            height: 280,
            child: ListView(
              children: widget.item.discovers
                  .map((e) => SpecailColumItemWidget(discover: e))
                  .toList(),
              scrollDirection: Axis.horizontal,
            ),
          )
        ],
      ),
    );
  }
}
