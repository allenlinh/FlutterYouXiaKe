import 'package:yyxiake_flutter/models/meet_list_entity.dart';

meetListEntityFromJson(MeetListEntity data, Map<String, dynamic> json) {
	if (json['code'] != null) {
		data.code = json['code'] is String
				? int.tryParse(json['code'])
				: json['code'].toInt();
	}
	if (json['msg'] != null) {
		data.msg = json['msg'].toString();
	}
	if (json['data'] != null) {
		data.data = MeetListData().fromJson(json['data']);
	}
	return data;
}

Map<String, dynamic> meetListEntityToJson(MeetListEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	data['msg'] = entity.msg;
	data['data'] = entity.data?.toJson();
	return data;
}

meetListDataFromJson(MeetListData data, Map<String, dynamic> json) {
	if (json['list'] != null) {
		data.xList = (json['list'] as List).map((v) => MeetListDataList().fromJson(v)).toList();
	}
	if (json['totalPage'] != null) {
		data.totalPage = json['totalPage'] is String
				? int.tryParse(json['totalPage'])
				: json['totalPage'].toInt();
	}
	if (json['recordCount'] != null) {
		data.recordCount = json['recordCount'] is String
				? int.tryParse(json['recordCount'])
				: json['recordCount'].toInt();
	}
	return data;
}

Map<String, dynamic> meetListDataToJson(MeetListData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['list'] =  entity.xList?.map((v) => v.toJson())?.toList();
	data['totalPage'] = entity.totalPage;
	data['recordCount'] = entity.recordCount;
	return data;
}

meetListDataListFromJson(MeetListDataList data, Map<String, dynamic> json) {
	if (json['quoteId'] != null) {
		data.quoteId = json['quoteId'] is String
				? int.tryParse(json['quoteId'])
				: json['quoteId'].toInt();
	}
	if (json['content'] != null) {
		data.content = json['content'].toString();
	}
	if (json['video'] != null) {
		data.video = json['video'].toString();
	}
	if (json['discuss'] != null) {
		data.discuss = json['discuss'].toString();
	}
	if (json['featured'] != null) {
		data.featured = json['featured'] is String
				? int.tryParse(json['featured'])
				: json['featured'].toInt();
	}
	if (json['activityType'] != null) {
		data.activityType = json['activityType'] is String
				? int.tryParse(json['activityType'])
				: json['activityType'].toInt();
	}
	if (json['address'] != null) {
		data.address = json['address'].toString();
	}
	if (json['cover'] != null) {
		data.cover = json['cover'].toString();
	}
	if (json['firstImg'] != null) {
		data.firstImg = MeetListDataListFirstImg().fromJson(json['firstImg']);
	}
	if (json['prise'] != null) {
		data.prise = json['prise'] is String
				? int.tryParse(json['prise'])
				: json['prise'].toInt();
	}
	if (json['uid'] != null) {
		data.uid = json['uid'] is String
				? int.tryParse(json['uid'])
				: json['uid'].toInt();
	}
	if (json['username'] != null) {
		data.username = json['username'].toString();
	}
	if (json['avatar'] != null) {
		data.avatar = json['avatar'].toString();
	}
	if (json['prised'] != null) {
		data.prised = json['prised'];
	}
	if (json['isTalent'] != null) {
		data.isTalent = json['isTalent'];
	}
	if (json['panoramaStatus'] != null) {
		data.panoramaStatus = json['panoramaStatus'] is String
				? int.tryParse(json['panoramaStatus'])
				: json['panoramaStatus'].toInt();
	}
	if (json['panoramaPercent'] != null) {
		data.panoramaPercent = json['panoramaPercent'].toString();
	}
	if (json['recordingDuration'] != null) {
		data.recordingDuration = json['recordingDuration'] is String
				? int.tryParse(json['recordingDuration'])
				: json['recordingDuration'].toInt();
	}
	if (json['uitype'] != null) {
		data.uitype = json['uitype'] is String
				? int.tryParse(json['uitype'])
				: json['uitype'].toInt();
	}
	return data;
}

Map<String, dynamic> meetListDataListToJson(MeetListDataList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['quoteId'] = entity.quoteId;
	data['content'] = entity.content;
	data['video'] = entity.video;
	data['discuss'] = entity.discuss;
	data['featured'] = entity.featured;
	data['activityType'] = entity.activityType;
	data['address'] = entity.address;
	data['cover'] = entity.cover;
	data['firstImg'] = entity.firstImg?.toJson();
	data['prise'] = entity.prise;
	data['uid'] = entity.uid;
	data['username'] = entity.username;
	data['avatar'] = entity.avatar;
	data['prised'] = entity.prised;
	data['isTalent'] = entity.isTalent;
	data['panoramaStatus'] = entity.panoramaStatus;
	data['panoramaPercent'] = entity.panoramaPercent;
	data['recordingDuration'] = entity.recordingDuration;
	data['uitype'] = entity.uitype;
	return data;
}

meetListDataListFirstImgFromJson(MeetListDataListFirstImg data, Map<String, dynamic> json) {
	if (json['width'] != null) {
		data.width = json['width'] is String
				? int.tryParse(json['width'])
				: json['width'].toInt();
	}
	if (json['height'] != null) {
		data.height = json['height'] is String
				? int.tryParse(json['height'])
				: json['height'].toInt();
	}
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['shareUrl'] != null) {
		data.shareUrl = json['shareUrl'].toString();
	}
	if (json['url_xl'] != null) {
		data.urlXl = json['url_xl'].toString();
	}
	if (json['url_l'] != null) {
		data.urlL = json['url_l'].toString();
	}
	if (json['url_m'] != null) {
		data.urlM = json['url_m'].toString();
	}
	if (json['labels_info'] != null) {
		data.labelsInfo = (json['labels_info'] as List).map((v) => v).toList().cast<dynamic>();
	}
	return data;
}

Map<String, dynamic> meetListDataListFirstImgToJson(MeetListDataListFirstImg entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['width'] = entity.width;
	data['height'] = entity.height;
	data['url'] = entity.url;
	data['shareUrl'] = entity.shareUrl;
	data['url_xl'] = entity.urlXl;
	data['url_l'] = entity.urlL;
	data['url_m'] = entity.urlM;
	data['labels_info'] = entity.labelsInfo;
	return data;
}