import 'package:yyxiake_flutter/models/meet_topic_entity.dart';

meetTopicEntityFromJson(MeetTopicEntity data, Map<String, dynamic> json) {
	if (json['code'] != null) {
		data.code = json['code'] is String
				? int.tryParse(json['code'])
				: json['code'].toInt();
	}
	if (json['msg'] != null) {
		data.msg = json['msg'].toString();
	}
	if (json['data'] != null) {
		data.data = MeetTopicData().fromJson(json['data']);
	}
	return data;
}

Map<String, dynamic> meetTopicEntityToJson(MeetTopicEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	data['msg'] = entity.msg;
	data['data'] = entity.data?.toJson();
	return data;
}

meetTopicDataFromJson(MeetTopicData data, Map<String, dynamic> json) {
	if (json['topic'] != null) {
		data.topic = (json['topic'] as List).map((v) => MeetTopicDataTopic().fromJson(v)).toList();
	}
	return data;
}

Map<String, dynamic> meetTopicDataToJson(MeetTopicData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['topic'] =  entity.topic?.map((v) => v.toJson())?.toList();
	return data;
}

meetTopicDataTopicFromJson(MeetTopicDataTopic data, Map<String, dynamic> json) {
	if (json['did'] != null) {
		data.did = json['did'] is String
				? int.tryParse(json['did'])
				: json['did'].toInt();
	}
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['type'] != null) {
		data.type = json['type'] is String
				? int.tryParse(json['type'])
				: json['type'].toInt();
	}
	if (json['discoverCount'] != null) {
		data.discoverCount = json['discoverCount'].toString();
	}
	if (json['handler'] != null) {
		data.handler = json['handler'].toString();
	}
	if (json['detailTargetUrl'] != null) {
		data.detailTargetUrl = json['detailTargetUrl'].toString();
	}
	if (json['detailHandler'] != null) {
		data.detailHandler = json['detailHandler'].toString();
	}
	if (json['img'] != null) {
		data.img = json['img'].toString();
	}
	if (json['bigimg'] != null) {
		data.bigimg = json['bigimg'].toString();
	}
	if (json['bigimgType'] != null) {
		data.bigimgType = json['bigimgType'] is String
				? int.tryParse(json['bigimgType'])
				: json['bigimgType'].toInt();
	}
	if (json['views'] != null) {
		data.views = json['views'].toString();
	}
	if (json['reward'] != null) {
		data.reward = json['reward'] is String
				? int.tryParse(json['reward'])
				: json['reward'].toInt();
	}
	if (json['hot'] != null) {
		data.hot = json['hot'] is String
				? int.tryParse(json['hot'])
				: json['hot'].toInt();
	}
	if (json['joinNum'] != null) {
		data.joinNum = json['joinNum'].toString();
	}
	if (json['followNum'] != null) {
		data.followNum = json['followNum'].toString();
	}
	if (json['desc'] != null) {
		data.desc = json['desc'].toString();
	}
	if (json['followed'] != null) {
		data.followed = json['followed'] is String
				? int.tryParse(json['followed'])
				: json['followed'].toInt();
	}
	if (json['rewardBanners'] != null) {
		data.rewardBanners = (json['rewardBanners'] as List).map((v) => v).toList().cast<dynamic>();
	}
	if (json['detail'] != null) {
		data.detail = json['detail'].toString();
	}
	if (json['discu_id'] != null) {
		data.discuId = json['discu_id'] is String
				? int.tryParse(json['discu_id'])
				: json['discu_id'].toInt();
	}
	if (json['target_url'] != null) {
		data.targetUrl = json['target_url'].toString();
	}
	return data;
}

Map<String, dynamic> meetTopicDataTopicToJson(MeetTopicDataTopic entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['did'] = entity.did;
	data['title'] = entity.title;
	data['type'] = entity.type;
	data['discoverCount'] = entity.discoverCount;
	data['handler'] = entity.handler;
	data['detailTargetUrl'] = entity.detailTargetUrl;
	data['detailHandler'] = entity.detailHandler;
	data['img'] = entity.img;
	data['bigimg'] = entity.bigimg;
	data['bigimgType'] = entity.bigimgType;
	data['views'] = entity.views;
	data['reward'] = entity.reward;
	data['hot'] = entity.hot;
	data['joinNum'] = entity.joinNum;
	data['followNum'] = entity.followNum;
	data['desc'] = entity.desc;
	data['followed'] = entity.followed;
	data['rewardBanners'] = entity.rewardBanners;
	data['detail'] = entity.detail;
	data['discu_id'] = entity.discuId;
	data['target_url'] = entity.targetUrl;
	return data;
}