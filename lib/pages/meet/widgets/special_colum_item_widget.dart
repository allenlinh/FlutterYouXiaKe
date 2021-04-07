import 'package:flutter/material.dart';
import 'package:yyxiake_flutter/models/meet_colums_entity.dart';

class SpecailColumItemWidget extends StatefulWidget {
  final MeetColumsDataColumnsDiscover discover;
  SpecailColumItemWidget({Key key, this.discover}) : super(key: key);

  @override
  _SpecailColumItemWidgetState createState() => _SpecailColumItemWidgetState();
}

class _SpecailColumItemWidgetState extends State<SpecailColumItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 180,
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          Container(
            height: 200,
            width: 160,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            clipBehavior: Clip.hardEdge,
            child: Image.network(
              widget.discover.cover,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            widget.discover.content,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Expanded(
            child: SizedBox(
              height: 30,
            ),
          )
        ],
      ),
    );
  }
}
