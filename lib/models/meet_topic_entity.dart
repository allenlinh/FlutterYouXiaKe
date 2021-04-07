import 'package:yyxiake_flutter/generated/json/base/json_convert_content.dart';
import 'package:yyxiake_flutter/generated/json/base/json_field.dart';

class MeetTopicEntity with JsonConvert<MeetTopicEntity> {
	int code;
	String msg;
	MeetTopicData data;
}

class MeetTopicData with JsonConvert<MeetTopicData> {
	List<MeetTopicDataTopic> topic;
}

class MeetTopicDataTopic with JsonConvert<MeetTopicDataTopic> {
	int did;
	String title;
	int type;
	String discoverCount;
	String handler;
	String detailTargetUrl;
	String detailHandler;
	String img;
	String bigimg;
	int bigimgType;
	String views;
	int reward;
	int hot;
	String joinNum;
	String followNum;
	String desc;
	int followed;
	List<dynamic> rewardBanners;
	String detail;
	@JSONField(name: "discu_id")
	int discuId;
	@JSONField(name: "target_url")
	String targetUrl;
}
