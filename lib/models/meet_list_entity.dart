import 'package:yyxiake_flutter/generated/json/base/json_convert_content.dart';
import 'package:yyxiake_flutter/generated/json/base/json_field.dart';

class MeetListEntity with JsonConvert<MeetListEntity> {
	int code;
	String msg;
	MeetListData data;
}

class MeetListData with JsonConvert<MeetListData> {
	@JSONField(name: "list")
	List<MeetListDataList> xList;
	int totalPage;
	int recordCount;
}

class MeetListDataList with JsonConvert<MeetListDataList> {
	int quoteId;
	String content;
	String video;
	String discuss;
	int featured;
	int activityType;
	String address;
	String cover;
	MeetListDataListFirstImg firstImg;
	int prise;
	int uid;
	String username;
	String avatar;
	bool prised;
	bool isTalent;
	int panoramaStatus;
	String panoramaPercent;
	int recordingDuration;
	int uitype;
}

class MeetListDataListFirstImg with JsonConvert<MeetListDataListFirstImg> {
	int width;
	int height;
	String url;
	String shareUrl;
	@JSONField(name: "url_xl")
	String urlXl;
	@JSONField(name: "url_l")
	String urlL;
	@JSONField(name: "url_m")
	String urlM;
	@JSONField(name: "labels_info")
	List<dynamic> labelsInfo;
}
