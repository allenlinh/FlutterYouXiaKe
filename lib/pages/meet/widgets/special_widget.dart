import 'package:flutter/material.dart';
import 'package:yyxiake_flutter/dao/meet_dao.dart';
import 'package:yyxiake_flutter/models/meet_colums_entity.dart';
import 'package:yyxiake_flutter/pages/meet/widgets/special_colum_widget.dart';

class SpecialWidget extends StatefulWidget {
  const SpecialWidget({Key key}) : super(key: key);

  @override
  _SpecialWidgetState createState() => _SpecialWidgetState();
}

class _SpecialWidgetState extends State<SpecialWidget>
    with AutomaticKeepAliveClientMixin {
  List<MeetColumsDataColumn> columns = [];

  Future<Null> _fetchData() async {
    try {
      MeetColumsData data = await MeetDao.fetchSpecial();
      columns = data.columns;

      setState(() {});
    } catch (e) {
      print(e);
      setState(() {});
    }
    return null;
  }

  @override
  void initState() {
    _fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      child: ListView.builder(
        itemCount: columns.length,
        itemBuilder: (BuildContext context, int index) {
          return SpecialColumWidget(
            item: columns[index],
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
