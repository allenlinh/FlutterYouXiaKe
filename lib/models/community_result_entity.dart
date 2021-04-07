import 'package:yyxiake_flutter/generated/json/base/json_convert_content.dart';

class CommunityResultEntity with JsonConvert<CommunityResultEntity> {
	int code;
	String msg;
	CommunityResultData data;
}

class CommunityResultData with JsonConvert<CommunityResultData> {
	List<CommunityResultDataBanner> banner;
	List<CommunityResultDataWeekTop> weekTop;
	List<CommunityResultDataCommon> common;
	int totalPage;
}

class CommunityResultDataBanner with JsonConvert<CommunityResultDataBanner> {
	String title;
	String color;
	String thumb;
	String handler;
	String url;
}

class CommunityResultDataWeekTop with JsonConvert<CommunityResultDataWeekTop> {
	int type;
	int tid;
	int authorid;
	String yxkid;
	String authorName;
	String title;
	String summary;
	String views;
	String replies;
	String fid;
	String mddName;
	String displayorder;
	int digest;
	String createdAt;
	String pic;
	String url;
	String msg;
	int talent;
}

class CommunityResultDataCommon with JsonConvert<CommunityResultDataCommon> {
	int type;
	String title;
	String view;
	int time;
	String thumb;
	List<String> place;
	String comment;
	int newsId;
	int tid;
	int authorid;
	String yxkid;
	String authorName;
	String summary;
	String views;
	String replies;
	String fid;
	String mddName;
	String displayorder;
	int digest;
	String createdAt;
	String pic;
	String url;
	String msg;
	int talent;
	String videoSrc;
	String qiniuSrc;
	String vid;
	String viewCount;
	String srcType;
	String duration;
	String commentCount;
	int filmId;
	int albumId;
	String commentsCount;
	String username;
	String userPic;
	int picCount;
	List<CommunityResultDataCommonPicUrl> picUrl;
	CommunityResultDataCommonRecomendMdd recomendMdd;
}

class CommunityResultDataCommonPicUrl with JsonConvert<CommunityResultDataCommonPicUrl> {
	int photoId;
	String url;
	CommunityResultDataCommonPicUrlPicInfo picInfo;
}

class CommunityResultDataCommonPicUrlPicInfo with JsonConvert<CommunityResultDataCommonPicUrlPicInfo> {
	String width;
	String height;
}

class CommunityResultDataCommonRecomendMdd with JsonConvert<CommunityResultDataCommonRecomendMdd> {
	String title;
	List<CommunityResultDataCommonRecomandMddThemes> themes;
}

class CommunityResultDataCommonRecomandMddThemes with JsonConvert<CommunityResultDataCommonRecomandMddThemes> {
	int mddId;
	String mddName;
	int type;
	String mddPic;
	String month;
	int index;
}
