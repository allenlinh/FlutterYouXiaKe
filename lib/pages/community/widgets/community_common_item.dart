import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:yyxiake_flutter/models/community_result_entity.dart';

class CommunityCommonItem extends StatelessWidget {
  final CommunityResultDataCommon item;

  const CommunityCommonItem({
    Key key,
    this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Stack(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      textWidthBasis: TextWidthBasis.parent,
                      maxLines: 3,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      item.summary,
                      textWidthBasis: TextWidthBasis.parent,
                      style: TextStyle(fontSize: 12),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 10,
                          backgroundImage: NetworkImage(item.pic),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          item.authorName,
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          item.mddName,
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 180,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        item.url,
                        width: 180,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/destination_see.png',
                                width: 20,
                                height: 20,
                              ),
                              SizedBox(width: 5),
                              Text(item.views)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                'assets/images/destination_commit.png',
                                width: 20,
                                height: 20,
                              ),
                              SizedBox(width: 5),
                              Text(item.replies)
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
              bottom: 1,
              left: 10,
              right: 10,
              child: Container(
                color: Colors.grey[300],
                height: 1,
              ))
        ],
      ),
    );
  }
}
