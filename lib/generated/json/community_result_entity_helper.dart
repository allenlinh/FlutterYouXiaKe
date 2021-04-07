import 'package:yyxiake_flutter/models/community_result_entity.dart';

communityResultEntityFromJson(CommunityResultEntity data, Map<String, dynamic> json) {
	if (json['code'] != null) {
		data.code = json['code'] is String
				? int.tryParse(json['code'])
				: json['code'].toInt();
	}
	if (json['msg'] != null) {
		data.msg = json['msg'].toString();
	}
	if (json['data'] != null) {
		data.data = CommunityResultData().fromJson(json['data']);
	}
	return data;
}

Map<String, dynamic> communityResultEntityToJson(CommunityResultEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	data['msg'] = entity.msg;
	data['data'] = entity.data?.toJson();
	return data;
}

communityResultDataFromJson(CommunityResultData data, Map<String, dynamic> json) {
	if (json['banner'] != null) {
		data.banner = (json['banner'] as List).map((v) => CommunityResultDataBanner().fromJson(v)).toList();
	}
	if (json['weekTop'] != null) {
		data.weekTop = (json['weekTop'] as List).map((v) => CommunityResultDataWeekTop().fromJson(v)).toList();
	}
	if (json['common'] != null) {
		data.common = (json['common'] as List).map((v) => CommunityResultDataCommon().fromJson(v)).toList();
	}
	if (json['totalPage'] != null) {
		data.totalPage = json['totalPage'] is String
				? int.tryParse(json['totalPage'])
				: json['totalPage'].toInt();
	}
	return data;
}

Map<String, dynamic> communityResultDataToJson(CommunityResultData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['banner'] =  entity.banner?.map((v) => v.toJson())?.toList();
	data['weekTop'] =  entity.weekTop?.map((v) => v.toJson())?.toList();
	data['common'] =  entity.common?.map((v) => v.toJson())?.toList();
	data['totalPage'] = entity.totalPage;
	return data;
}

communityResultDataBannerFromJson(CommunityResultDataBanner data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['color'] != null) {
		data.color = json['color'].toString();
	}
	if (json['thumb'] != null) {
		data.thumb = json['thumb'].toString();
	}
	if (json['handler'] != null) {
		data.handler = json['handler'].toString();
	}
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	return data;
}

Map<String, dynamic> communityResultDataBannerToJson(CommunityResultDataBanner entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['color'] = entity.color;
	data['thumb'] = entity.thumb;
	data['handler'] = entity.handler;
	data['url'] = entity.url;
	return data;
}

communityResultDataWeekTopFromJson(CommunityResultDataWeekTop data, Map<String, dynamic> json) {
	if (json['type'] != null) {
		data.type = json['type'] is String
				? int.tryParse(json['type'])
				: json['type'].toInt();
	}
	if (json['tid'] != null) {
		data.tid = json['tid'] is String
				? int.tryParse(json['tid'])
				: json['tid'].toInt();
	}
	if (json['authorid'] != null) {
		data.authorid = json['authorid'] is String
				? int.tryParse(json['authorid'])
				: json['authorid'].toInt();
	}
	if (json['yxkid'] != null) {
		data.yxkid = json['yxkid'].toString();
	}
	if (json['authorName'] != null) {
		data.authorName = json['authorName'].toString();
	}
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['summary'] != null) {
		data.summary = json['summary'].toString();
	}
	if (json['views'] != null) {
		data.views = json['views'].toString();
	}
	if (json['replies'] != null) {
		data.replies = json['replies'].toString();
	}
	if (json['fid'] != null) {
		data.fid = json['fid'].toString();
	}
	if (json['mddName'] != null) {
		data.mddName = json['mddName'].toString();
	}
	if (json['displayorder'] != null) {
		data.displayorder = json['displayorder'].toString();
	}
	if (json['digest'] != null) {
		data.digest = json['digest'] is String
				? int.tryParse(json['digest'])
				: json['digest'].toInt();
	}
	if (json['createdAt'] != null) {
		data.createdAt = json['createdAt'].toString();
	}
	if (json['pic'] != null) {
		data.pic = json['pic'].toString();
	}
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['msg'] != null) {
		data.msg = json['msg'].toString();
	}
	if (json['talent'] != null) {
		data.talent = json['talent'] is String
				? int.tryParse(json['talent'])
				: json['talent'].toInt();
	}
	return data;
}

Map<String, dynamic> communityResultDataWeekTopToJson(CommunityResultDataWeekTop entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['type'] = entity.type;
	data['tid'] = entity.tid;
	data['authorid'] = entity.authorid;
	data['yxkid'] = entity.yxkid;
	data['authorName'] = entity.authorName;
	data['title'] = entity.title;
	data['summary'] = entity.summary;
	data['views'] = entity.views;
	data['replies'] = entity.replies;
	data['fid'] = entity.fid;
	data['mddName'] = entity.mddName;
	data['displayorder'] = entity.displayorder;
	data['digest'] = entity.digest;
	data['createdAt'] = entity.createdAt;
	data['pic'] = entity.pic;
	data['url'] = entity.url;
	data['msg'] = entity.msg;
	data['talent'] = entity.talent;
	return data;
}

communityResultDataCommonFromJson(CommunityResultDataCommon data, Map<String, dynamic> json) {
	if (json['type'] != null) {
		data.type = json['type'] is String
				? int.tryParse(json['type'])
				: json['type'].toInt();
	}
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['view'] != null) {
		data.view = json['view'].toString();
	}
	if (json['time'] != null) {
		data.time = json['time'] is String
				? int.tryParse(json['time'])
				: json['time'].toInt();
	}
	if (json['thumb'] != null) {
		data.thumb = json['thumb'].toString();
	}
	if (json['place'] != null) {
		data.place = (json['place'] as List).map((v) => v.toString()).toList().cast<String>();
	}
	if (json['comment'] != null) {
		data.comment = json['comment'].toString();
	}
	if (json['newsId'] != null) {
		data.newsId = json['newsId'] is String
				? int.tryParse(json['newsId'])
				: json['newsId'].toInt();
	}
	if (json['tid'] != null) {
		data.tid = json['tid'] is String
				? int.tryParse(json['tid'])
				: json['tid'].toInt();
	}
	if (json['authorid'] != null) {
		data.authorid = json['authorid'] is String
				? int.tryParse(json['authorid'])
				: json['authorid'].toInt();
	}
	if (json['yxkid'] != null) {
		data.yxkid = json['yxkid'].toString();
	}
	if (json['authorName'] != null) {
		data.authorName = json['authorName'].toString();
	}
	if (json['summary'] != null) {
		data.summary = json['summary'].toString();
	}
	if (json['views'] != null) {
		data.views = json['views'].toString();
	}
	if (json['replies'] != null) {
		data.replies = json['replies'].toString();
	}
	if (json['fid'] != null) {
		data.fid = json['fid'].toString();
	}
	if (json['mddName'] != null) {
		data.mddName = json['mddName'].toString();
	}
	if (json['displayorder'] != null) {
		data.displayorder = json['displayorder'].toString();
	}
	if (json['digest'] != null) {
		data.digest = json['digest'] is String
				? int.tryParse(json['digest'])
				: json['digest'].toInt();
	}
	if (json['createdAt'] != null) {
		data.createdAt = json['createdAt'].toString();
	}
	if (json['pic'] != null) {
		data.pic = json['pic'].toString();
	}
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['msg'] != null) {
		data.msg = json['msg'].toString();
	}
	if (json['talent'] != null) {
		data.talent = json['talent'] is String
				? int.tryParse(json['talent'])
				: json['talent'].toInt();
	}
	if (json['videoSrc'] != null) {
		data.videoSrc = json['videoSrc'].toString();
	}
	if (json['qiniuSrc'] != null) {
		data.qiniuSrc = json['qiniuSrc'].toString();
	}
	if (json['vid'] != null) {
		data.vid = json['vid'].toString();
	}
	if (json['viewCount'] != null) {
		data.viewCount = json['viewCount'].toString();
	}
	if (json['srcType'] != null) {
		data.srcType = json['srcType'].toString();
	}
	if (json['duration'] != null) {
		data.duration = json['duration'].toString();
	}
	if (json['commentCount'] != null) {
		data.commentCount = json['commentCount'].toString();
	}
	if (json['filmId'] != null) {
		data.filmId = json['filmId'] is String
				? int.tryParse(json['filmId'])
				: json['filmId'].toInt();
	}
	if (json['albumId'] != null) {
		data.albumId = json['albumId'] is String
				? int.tryParse(json['albumId'])
				: json['albumId'].toInt();
	}
	if (json['commentsCount'] != null) {
		data.commentsCount = json['commentsCount'].toString();
	}
	if (json['username'] != null) {
		data.username = json['username'].toString();
	}
	if (json['userPic'] != null) {
		data.userPic = json['userPic'].toString();
	}
	if (json['picCount'] != null) {
		data.picCount = json['picCount'] is String
				? int.tryParse(json['picCount'])
				: json['picCount'].toInt();
	}
	if (json['picUrl'] != null) {
		data.picUrl = (json['picUrl'] as List).map((v) => CommunityResultDataCommonPicUrl().fromJson(v)).toList();
	}
	if (json['recomendMdd'] != null) {
		data.recomendMdd = CommunityResultDataCommonRecomendMdd().fromJson(json['recomendMdd']);
	}
	return data;
}

Map<String, dynamic> communityResultDataCommonToJson(CommunityResultDataCommon entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['type'] = entity.type;
	data['title'] = entity.title;
	data['view'] = entity.view;
	data['time'] = entity.time;
	data['thumb'] = entity.thumb;
	data['place'] = entity.place;
	data['comment'] = entity.comment;
	data['newsId'] = entity.newsId;
	data['tid'] = entity.tid;
	data['authorid'] = entity.authorid;
	data['yxkid'] = entity.yxkid;
	data['authorName'] = entity.authorName;
	data['summary'] = entity.summary;
	data['views'] = entity.views;
	data['replies'] = entity.replies;
	data['fid'] = entity.fid;
	data['mddName'] = entity.mddName;
	data['displayorder'] = entity.displayorder;
	data['digest'] = entity.digest;
	data['createdAt'] = entity.createdAt;
	data['pic'] = entity.pic;
	data['url'] = entity.url;
	data['msg'] = entity.msg;
	data['talent'] = entity.talent;
	data['videoSrc'] = entity.videoSrc;
	data['qiniuSrc'] = entity.qiniuSrc;
	data['vid'] = entity.vid;
	data['viewCount'] = entity.viewCount;
	data['srcType'] = entity.srcType;
	data['duration'] = entity.duration;
	data['commentCount'] = entity.commentCount;
	data['filmId'] = entity.filmId;
	data['albumId'] = entity.albumId;
	data['commentsCount'] = entity.commentsCount;
	data['username'] = entity.username;
	data['userPic'] = entity.userPic;
	data['picCount'] = entity.picCount;
	data['picUrl'] =  entity.picUrl?.map((v) => v.toJson())?.toList();
	data['recomendMdd'] = entity.recomendMdd?.toJson();
	return data;
}

communityResultDataCommonPicUrlFromJson(CommunityResultDataCommonPicUrl data, Map<String, dynamic> json) {
	if (json['photoId'] != null) {
		data.photoId = json['photoId'] is String
				? int.tryParse(json['photoId'])
				: json['photoId'].toInt();
	}
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['picInfo'] != null) {
		data.picInfo = CommunityResultDataCommonPicUrlPicInfo().fromJson(json['picInfo']);
	}
	return data;
}

Map<String, dynamic> communityResultDataCommonPicUrlToJson(CommunityResultDataCommonPicUrl entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['photoId'] = entity.photoId;
	data['url'] = entity.url;
	data['picInfo'] = entity.picInfo?.toJson();
	return data;
}

communityResultDataCommonPicUrlPicInfoFromJson(CommunityResultDataCommonPicUrlPicInfo data, Map<String, dynamic> json) {
	if (json['width'] != null) {
		data.width = json['width'].toString();
	}
	if (json['height'] != null) {
		data.height = json['height'].toString();
	}
	return data;
}

Map<String, dynamic> communityResultDataCommonPicUrlPicInfoToJson(CommunityResultDataCommonPicUrlPicInfo entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['width'] = entity.width;
	data['height'] = entity.height;
	return data;
}

communityResultDataCommonRecomendMddFromJson(CommunityResultDataCommonRecomendMdd data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['themes'] != null) {
		data.themes = (json['themes'] as List).map((v) => CommunityResultDataCommonRecomandMddThemes().fromJson(v)).toList();
	}
	return data;
}

Map<String, dynamic> communityResultDataCommonRecomendMddToJson(CommunityResultDataCommonRecomendMdd entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['themes'] =  entity.themes?.map((v) => v.toJson())?.toList();
	return data;
}

communityResultDataCommonRecomandMddThemesFromJson(CommunityResultDataCommonRecomandMddThemes data, Map<String, dynamic> json) {
	if (json['mddId'] != null) {
		data.mddId = json['mddId'] is String
				? int.tryParse(json['mddId'])
				: json['mddId'].toInt();
	}
	if (json['mddName'] != null) {
		data.mddName = json['mddName'].toString();
	}
	if (json['type'] != null) {
		data.type = json['type'] is String
				? int.tryParse(json['type'])
				: json['type'].toInt();
	}
	if (json['mddPic'] != null) {
		data.mddPic = json['mddPic'].toString();
	}
	if (json['month'] != null) {
		data.month = json['month'].toString();
	}
	if (json['index'] != null) {
		data.index = json['index'] is String
				? int.tryParse(json['index'])
				: json['index'].toInt();
	}
	return data;
}

Map<String, dynamic> communityResultDataCommonRecomandMddThemesToJson(CommunityResultDataCommonRecomandMddThemes entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['mddId'] = entity.mddId;
	data['mddName'] = entity.mddName;
	data['type'] = entity.type;
	data['mddPic'] = entity.mddPic;
	data['month'] = entity.month;
	data['index'] = entity.index;
	return data;
}