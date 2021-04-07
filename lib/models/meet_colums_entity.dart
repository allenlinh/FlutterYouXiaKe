import 'package:yyxiake_flutter/generated/json/base/json_convert_content.dart';

class MeetColumsEntity with JsonConvert<MeetColumsEntity> {
	int code;
	String msg;
	MeetColumsData data;
}

class MeetColumsData with JsonConvert<MeetColumsData> {
	List<MeetColumsDataColumn> columns;
	int totalPage;
}

class MeetColumsDataColumn with JsonConvert<MeetColumsDataColumn> {
	int columnId;
	String title;
	List<MeetColumsDataColumnsDiscover> discovers;
}

class MeetColumsDataColumnsDiscover with JsonConvert<MeetColumsDataColumnsDiscover> {
	int quoteId;
	String cover;
	String content;
	int type;
}
