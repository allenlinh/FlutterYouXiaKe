import 'package:flutter/material.dart';
import 'package:yyxiake_flutter/models/meet_topic_entity.dart';

class DiscoverTopicWidget extends StatefulWidget {
  final MeetTopicDataTopic item;
  DiscoverTopicWidget({Key key, this.item}) : super(key: key);

  @override
  _DiscoverTopicWidgetState createState() => _DiscoverTopicWidgetState();
}

class _DiscoverTopicWidgetState extends State<DiscoverTopicWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: NetworkImage(widget.item.img), fit: BoxFit.cover)),
      child: Stack(
        children: [
          Positioned(
            child: Text(widget.item.desc,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                textWidthBasis: TextWidthBasis.parent,
                maxLines: 1,
                textAlign: TextAlign.left),
            left: 20,
            right: 10,
            bottom: 10,
          ),
          Positioned(
            child: Text(
              widget.item.title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            left: 20,
            bottom: 40,
          ),
        ],
      ),
    );
  }
}
