import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
// Here I declared the ScrollController for the CustomScrollView
  ScrollController _controller;

// And here is a boolean to check when the user scrolls up or down the view
  bool sliverPersistentHeader = false;

  @override
  void initState() {
    super.initState();
// The ScrollController is initialized in the initState and listens for when the user starts scrolling up and changes the boolean value accordingly
    _controller = ScrollController();
    _controller.addListener(() {
      if (_controller.position.userScrollDirection == ScrollDirection.reverse) {
        setState(() {
          sliverPersistentHeader = false;
        });
      } else {
        setState(() {
          sliverPersistentHeader = true;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  Widget redBox = DecoratedBox(
    decoration: BoxDecoration(color: Colors.red),
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: FittedBox(
        child: Text('Some Example Text.'),
      ),
    );
  }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         controller: _controller,
//         slivers: <Widget>[
//           SliverAppBar(
//             floating: true,
//             pinned: true,
//             expandedHeight: 200.0,
//             flexibleSpace: FlexibleSpaceBar(
//               centerTitle: true,
//               title: Text('App Title'),
//             ),
//           ),
//           SliverPersistentHeader(
// // The SliverPersisitentHeader checks the boolean value and either pins or unpins the the Header
//             pinned: sliverPersistentHeader ? true : false,
//             delegate: CustomSliver(
//               expandedHeight: 150.0,
//             ),
//           ),
//           SliverList(
//             delegate: SliverChildBuilderDelegate(
//               (_, index) => Padding(
//                 padding: EdgeInsets.symmetric(vertical: 10.0),
//                 child: Container(
//                   height: 50.0,
//                   color: Colors.amber,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             title: Text('Tab1'),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             title: Text('Tab2'),
//           ),
//           BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Tab3'))
//         ],
//         currentIndex: 0,
//       ),
//     );
//   }
}

class CustomSliver extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  CustomSliver({@required this.expandedHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Scrollbar(
      child: Container(
          color: Theme.of(context).canvasColor,
          padding: EdgeInsets.fromLTRB(10.0, 15.0, 0, 5.0),
          child: ListView.separated(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(right: 10.0, top: 10.0, bottom: 10.0),
                child: Container(
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.16),
                            offset: Offset(0, 3.0),
                            blurRadius: 6.0),
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.navigation),
                      Text(
                        'Category',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(width: 5.0);
            },
          )),
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => 150.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
