import 'package:yyxiake_flutter/models/home_result_entity.dart';

homeResultEntityFromJson(HomeResultEntity data, Map<String, dynamic> json) {
	if (json['code'] != null) {
		data.code = json['code'] is String
				? int.tryParse(json['code'])
				: json['code'].toInt();
	}
	if (json['msg'] != null) {
		data.msg = json['msg'].toString();
	}
	if (json['data'] != null) {
		data.data = HomeResultData().fromJson(json['data']);
	}
	return data;
}

Map<String, dynamic> homeResultEntityToJson(HomeResultEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	data['msg'] = entity.msg;
	data['data'] = entity.data?.toJson();
	return data;
}

homeResultDataFromJson(HomeResultData data, Map<String, dynamic> json) {
	if (json['pullRefresh'] != null) {
		data.pullRefresh = json['pullRefresh'];
	}
	if (json['background'] != null) {
		data.background = json['background'].toString();
	}
	if (json['topColour'] != null) {
		data.topColour = json['topColour'].toString();
	}
	if (json['defaultSearch'] != null) {
		data.defaultSearch = json['defaultSearch'];
	}
	if (json['hotSearchList'] != null) {
		data.hotSearchList = (json['hotSearchList'] as List).map((v) => HomeResultDataHotSearchList().fromJson(v)).toList();
	}
	if (json['flashImageList'] != null) {
		data.flashImageList = (json['flashImageList'] as List).map((v) => HomeResultDataFlashImageList().fromJson(v)).toList();
	}
	if (json['firstNav'] != null) {
		data.firstNav = (json['firstNav'] as List).map((v) => HomeResultDataFirstNav().fromJson(v)).toList();
	}
	if (json['secondNav'] != null) {
		data.secondNav = (json['secondNav'] as List).map((v) => HomeResultDataSecondNav().fromJson(v)).toList();
	}
	if (json['userCenterNav'] != null) {
		data.userCenterNav = (json['userCenterNav'] as List).map((v) => HomeResultDataUserCenterNav().fromJson(v)).toList();
	}
	if (json['banner'] != null) {
		data.banner = (json['banner'] as List).map((v) => HomeResultDataBanner().fromJson(v)).toList();
	}
	if (json['aroundLump'] != null) {
		data.aroundLump = HomeResultDataAroundLump().fromJson(json['aroundLump']);
	}
	if (json['saleProductList'] != null) {
		data.saleProductList = (json['saleProductList'] as List).map((v) => HomeResultDataSaleProductList().fromJson(v)).toList();
	}
	if (json['newProduct'] != null) {
		data.newProduct = HomeResultDataNewProduct().fromJson(json['newProduct']);
	}
	if (json['kingProduct'] != null) {
		data.kingProduct = HomeResultDataKingProduct().fromJson(json['kingProduct']);
	}
	if (json['activityBanner'] != null) {
		data.activityBanner = (json['activityBanner'] as List).map((v) => HomeResultDataActivityBanner().fromJson(v)).toList();
	}
	if (json['minority'] != null) {
		data.minority = HomeResultDataMinority().fromJson(json['minority']);
	}
	if (json['destination'] != null) {
		data.destination = HomeResultDataDestination().fromJson(json['destination']);
	}
	if (json['flowTabList'] != null) {
		data.flowTabList = (json['flowTabList'] as List).map((v) => HomeResultDataFlowTabList().fromJson(v)).toList();
	}
	if (json['qiyu'] != null) {
		data.qiyu = HomeResultDataQiyu().fromJson(json['qiyu']);
	}
	if (json['coupon'] != null) {
		data.coupon = HomeResultDataCoupon().fromJson(json['coupon']);
	}
	if (json['index_tip'] != null) {
		data.indexTip = json['index_tip'];
	}
	if (json['ipCity'] != null) {
		data.ipCity = HomeResultDataIpCity().fromJson(json['ipCity']);
	}
	if (json['cityTip'] != null) {
		data.cityTip = json['cityTip'].toString();
	}
	if (json['siteCity'] != null) {
		data.siteCity = HomeResultDataSiteCity().fromJson(json['siteCity']);
	}
	if (json['hotsearchs'] != null) {
		data.hotsearchs = (json['hotsearchs'] as List).map((v) => HomeResultDataHotsearch().fromJson(v)).toList();
	}
	return data;
}

Map<String, dynamic> homeResultDataToJson(HomeResultData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['pullRefresh'] = entity.pullRefresh;
	data['background'] = entity.background;
	data['topColour'] = entity.topColour;
	data['defaultSearch'] = entity.defaultSearch;
	data['hotSearchList'] =  entity.hotSearchList?.map((v) => v.toJson())?.toList();
	data['flashImageList'] =  entity.flashImageList?.map((v) => v.toJson())?.toList();
	data['firstNav'] =  entity.firstNav?.map((v) => v.toJson())?.toList();
	data['secondNav'] =  entity.secondNav?.map((v) => v.toJson())?.toList();
	data['userCenterNav'] =  entity.userCenterNav?.map((v) => v.toJson())?.toList();
	data['banner'] =  entity.banner?.map((v) => v.toJson())?.toList();
	data['aroundLump'] = entity.aroundLump?.toJson();
	data['saleProductList'] =  entity.saleProductList?.map((v) => v.toJson())?.toList();
	data['newProduct'] = entity.newProduct?.toJson();
	data['kingProduct'] = entity.kingProduct?.toJson();
	data['activityBanner'] =  entity.activityBanner?.map((v) => v.toJson())?.toList();
	data['minority'] = entity.minority?.toJson();
	data['destination'] = entity.destination?.toJson();
	data['flowTabList'] =  entity.flowTabList?.map((v) => v.toJson())?.toList();
	data['qiyu'] = entity.qiyu?.toJson();
	data['coupon'] = entity.coupon?.toJson();
	data['index_tip'] = entity.indexTip;
	data['ipCity'] = entity.ipCity?.toJson();
	data['cityTip'] = entity.cityTip;
	data['siteCity'] = entity.siteCity?.toJson();
	data['hotsearchs'] =  entity.hotsearchs?.map((v) => v.toJson())?.toList();
	return data;
}

homeResultDataHotSearchListFromJson(HomeResultDataHotSearchList data, Map<String, dynamic> json) {
	if (json['handler'] != null) {
		data.handler = json['handler'].toString();
	}
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['subTitle'] != null) {
		data.subTitle = json['subTitle'].toString();
	}
	if (json['image'] != null) {
		data.image = json['image'].toString();
	}
	if (json['mediaUrl'] != null) {
		data.mediaUrl = json['mediaUrl'].toString();
	}
	if (json['mediaImage'] != null) {
		data.mediaImage = json['mediaImage'].toString();
	}
	if (json['navType'] != null) {
		data.navType = json['navType'] is String
				? int.tryParse(json['navType'])
				: json['navType'].toInt();
	}
	if (json['statisticsCode'] != null) {
		data.statisticsCode = json['statisticsCode'].toString();
	}
	if (json['type'] != null) {
		data.type = json['type'] is String
				? int.tryParse(json['type'])
				: json['type'].toInt();
	}
	if (json['subType'] != null) {
		data.subType = json['subType'] is String
				? int.tryParse(json['subType'])
				: json['subType'].toInt();
	}
	if (json['exp'] != null) {
		data.exp = json['exp'] is String
				? int.tryParse(json['exp'])
				: json['exp'].toInt();
	}
	if (json['productType'] != null) {
		data.productType = json['productType'] is String
				? int.tryParse(json['productType'])
				: json['productType'].toInt();
	}
	if (json['badgeImage'] != null) {
		data.badgeImage = json['badgeImage'].toString();
	}
	return data;
}

Map<String, dynamic> homeResultDataHotSearchListToJson(HomeResultDataHotSearchList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['handler'] = entity.handler;
	data['url'] = entity.url;
	data['title'] = entity.title;
	data['subTitle'] = entity.subTitle;
	data['image'] = entity.image;
	data['mediaUrl'] = entity.mediaUrl;
	data['mediaImage'] = entity.mediaImage;
	data['navType'] = entity.navType;
	data['statisticsCode'] = entity.statisticsCode;
	data['type'] = entity.type;
	data['subType'] = entity.subType;
	data['exp'] = entity.exp;
	data['productType'] = entity.productType;
	data['badgeImage'] = entity.badgeImage;
	return data;
}

homeResultDataFlashImageListFromJson(HomeResultDataFlashImageList data, Map<String, dynamic> json) {
	if (json['handler'] != null) {
		data.handler = json['handler'].toString();
	}
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['subTitle'] != null) {
		data.subTitle = json['subTitle'].toString();
	}
	if (json['image'] != null) {
		data.image = json['image'].toString();
	}
	if (json['mediaUrl'] != null) {
		data.mediaUrl = json['mediaUrl'].toString();
	}
	if (json['mediaImage'] != null) {
		data.mediaImage = json['mediaImage'].toString();
	}
	if (json['navType'] != null) {
		data.navType = json['navType'] is String
				? int.tryParse(json['navType'])
				: json['navType'].toInt();
	}
	if (json['statisticsCode'] != null) {
		data.statisticsCode = json['statisticsCode'].toString();
	}
	if (json['type'] != null) {
		data.type = json['type'] is String
				? int.tryParse(json['type'])
				: json['type'].toInt();
	}
	if (json['subType'] != null) {
		data.subType = json['subType'] is String
				? int.tryParse(json['subType'])
				: json['subType'].toInt();
	}
	if (json['exp'] != null) {
		data.exp = json['exp'] is String
				? int.tryParse(json['exp'])
				: json['exp'].toInt();
	}
	if (json['productType'] != null) {
		data.productType = json['productType'] is String
				? int.tryParse(json['productType'])
				: json['productType'].toInt();
	}
	if (json['badgeImage'] != null) {
		data.badgeImage = json['badgeImage'].toString();
	}
	return data;
}

Map<String, dynamic> homeResultDataFlashImageListToJson(HomeResultDataFlashImageList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['handler'] = entity.handler;
	data['url'] = entity.url;
	data['title'] = entity.title;
	data['subTitle'] = entity.subTitle;
	data['image'] = entity.image;
	data['mediaUrl'] = entity.mediaUrl;
	data['mediaImage'] = entity.mediaImage;
	data['navType'] = entity.navType;
	data['statisticsCode'] = entity.statisticsCode;
	data['type'] = entity.type;
	data['subType'] = entity.subType;
	data['exp'] = entity.exp;
	data['productType'] = entity.productType;
	data['badgeImage'] = entity.badgeImage;
	return data;
}

homeResultDataFirstNavFromJson(HomeResultDataFirstNav data, Map<String, dynamic> json) {
	if (json['handler'] != null) {
		data.handler = json['handler'].toString();
	}
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['subTitle'] != null) {
		data.subTitle = json['subTitle'].toString();
	}
	if (json['image'] != null) {
		data.image = json['image'].toString();
	}
	if (json['mediaUrl'] != null) {
		data.mediaUrl = json['mediaUrl'].toString();
	}
	if (json['mediaImage'] != null) {
		data.mediaImage = json['mediaImage'].toString();
	}
	if (json['navType'] != null) {
		data.navType = json['navType'] is String
				? int.tryParse(json['navType'])
				: json['navType'].toInt();
	}
	if (json['statisticsCode'] != null) {
		data.statisticsCode = json['statisticsCode'].toString();
	}
	if (json['type'] != null) {
		data.type = json['type'] is String
				? int.tryParse(json['type'])
				: json['type'].toInt();
	}
	if (json['subType'] != null) {
		data.subType = json['subType'] is String
				? int.tryParse(json['subType'])
				: json['subType'].toInt();
	}
	if (json['exp'] != null) {
		data.exp = json['exp'] is String
				? int.tryParse(json['exp'])
				: json['exp'].toInt();
	}
	if (json['productType'] != null) {
		data.productType = json['productType'] is String
				? int.tryParse(json['productType'])
				: json['productType'].toInt();
	}
	if (json['badgeImage'] != null) {
		data.badgeImage = json['badgeImage'].toString();
	}
	return data;
}

Map<String, dynamic> homeResultDataFirstNavToJson(HomeResultDataFirstNav entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['handler'] = entity.handler;
	data['url'] = entity.url;
	data['title'] = entity.title;
	data['subTitle'] = entity.subTitle;
	data['image'] = entity.image;
	data['mediaUrl'] = entity.mediaUrl;
	data['mediaImage'] = entity.mediaImage;
	data['navType'] = entity.navType;
	data['statisticsCode'] = entity.statisticsCode;
	data['type'] = entity.type;
	data['subType'] = entity.subType;
	data['exp'] = entity.exp;
	data['productType'] = entity.productType;
	data['badgeImage'] = entity.badgeImage;
	return data;
}

homeResultDataSecondNavFromJson(HomeResultDataSecondNav data, Map<String, dynamic> json) {
	if (json['handler'] != null) {
		data.handler = json['handler'].toString();
	}
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['subTitle'] != null) {
		data.subTitle = json['subTitle'].toString();
	}
	if (json['image'] != null) {
		data.image = json['image'].toString();
	}
	if (json['mediaUrl'] != null) {
		data.mediaUrl = json['mediaUrl'].toString();
	}
	if (json['mediaImage'] != null) {
		data.mediaImage = json['mediaImage'].toString();
	}
	if (json['navType'] != null) {
		data.navType = json['navType'] is String
				? int.tryParse(json['navType'])
				: json['navType'].toInt();
	}
	if (json['statisticsCode'] != null) {
		data.statisticsCode = json['statisticsCode'].toString();
	}
	if (json['type'] != null) {
		data.type = json['type'] is String
				? int.tryParse(json['type'])
				: json['type'].toInt();
	}
	if (json['subType'] != null) {
		data.subType = json['subType'] is String
				? int.tryParse(json['subType'])
				: json['subType'].toInt();
	}
	if (json['exp'] != null) {
		data.exp = json['exp'] is String
				? int.tryParse(json['exp'])
				: json['exp'].toInt();
	}
	if (json['productType'] != null) {
		data.productType = json['productType'] is String
				? int.tryParse(json['productType'])
				: json['productType'].toInt();
	}
	if (json['badgeImage'] != null) {
		data.badgeImage = json['badgeImage'].toString();
	}
	return data;
}

Map<String, dynamic> homeResultDataSecondNavToJson(HomeResultDataSecondNav entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['handler'] = entity.handler;
	data['url'] = entity.url;
	data['title'] = entity.title;
	data['subTitle'] = entity.subTitle;
	data['image'] = entity.image;
	data['mediaUrl'] = entity.mediaUrl;
	data['mediaImage'] = entity.mediaImage;
	data['navType'] = entity.navType;
	data['statisticsCode'] = entity.statisticsCode;
	data['type'] = entity.type;
	data['subType'] = entity.subType;
	data['exp'] = entity.exp;
	data['productType'] = entity.productType;
	data['badgeImage'] = entity.badgeImage;
	return data;
}

homeResultDataUserCenterNavFromJson(HomeResultDataUserCenterNav data, Map<String, dynamic> json) {
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['thumb'] != null) {
		data.thumb = json['thumb'].toString();
	}
	if (json['handler'] != null) {
		data.handler = json['handler'].toString();
	}
	if (json['showSearch'] != null) {
		data.showSearch = json['showSearch'] is String
				? int.tryParse(json['showSearch'])
				: json['showSearch'].toInt();
	}
	if (json['price_label'] != null) {
		data.priceLabel = json['price_label'] is String
				? int.tryParse(json['price_label'])
				: json['price_label'].toInt();
	}
	if (json['content'] != null) {
		data.content = json['content'].toString();
	}
	if (json['place_label'] != null) {
		data.placeLabel = json['place_label'].toString();
	}
	if (json['link'] != null) {
		data.link = json['link'].toString();
	}
	if (json['media_url'] != null) {
		data.mediaUrl = json['media_url'].toString();
	}
	if (json['media_thumb'] != null) {
		data.mediaThumb = json['media_thumb'].toString();
	}
	if (json['price_alias'] != null) {
		data.priceAlias = json['price_alias'].toString();
	}
	if (json['subTitle'] != null) {
		data.subTitle = json['subTitle'].toString();
	}
	if (json['exp'] != null) {
		data.exp = json['exp'] is String
				? int.tryParse(json['exp'])
				: json['exp'].toInt();
	}
	if (json['type'] != null) {
		data.type = json['type'] is String
				? int.tryParse(json['type'])
				: json['type'].toInt();
	}
	return data;
}

Map<String, dynamic> homeResultDataUserCenterNavToJson(HomeResultDataUserCenterNav entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['url'] = entity.url;
	data['title'] = entity.title;
	data['thumb'] = entity.thumb;
	data['handler'] = entity.handler;
	data['showSearch'] = entity.showSearch;
	data['price_label'] = entity.priceLabel;
	data['content'] = entity.content;
	data['place_label'] = entity.placeLabel;
	data['link'] = entity.link;
	data['media_url'] = entity.mediaUrl;
	data['media_thumb'] = entity.mediaThumb;
	data['price_alias'] = entity.priceAlias;
	data['subTitle'] = entity.subTitle;
	data['exp'] = entity.exp;
	data['type'] = entity.type;
	return data;
}

homeResultDataBannerFromJson(HomeResultDataBanner data, Map<String, dynamic> json) {
	if (json['handler'] != null) {
		data.handler = json['handler'].toString();
	}
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['subTitle'] != null) {
		data.subTitle = json['subTitle'].toString();
	}
	if (json['image'] != null) {
		data.image = json['image'].toString();
	}
	if (json['mediaUrl'] != null) {
		data.mediaUrl = json['mediaUrl'].toString();
	}
	if (json['mediaImage'] != null) {
		data.mediaImage = json['mediaImage'].toString();
	}
	if (json['navType'] != null) {
		data.navType = json['navType'] is String
				? int.tryParse(json['navType'])
				: json['navType'].toInt();
	}
	if (json['statisticsCode'] != null) {
		data.statisticsCode = json['statisticsCode'].toString();
	}
	if (json['type'] != null) {
		data.type = json['type'] is String
				? int.tryParse(json['type'])
				: json['type'].toInt();
	}
	if (json['subType'] != null) {
		data.subType = json['subType'] is String
				? int.tryParse(json['subType'])
				: json['subType'].toInt();
	}
	if (json['exp'] != null) {
		data.exp = json['exp'] is String
				? int.tryParse(json['exp'])
				: json['exp'].toInt();
	}
	if (json['productType'] != null) {
		data.productType = json['productType'] is String
				? int.tryParse(json['productType'])
				: json['productType'].toInt();
	}
	if (json['badgeImage'] != null) {
		data.badgeImage = json['badgeImage'].toString();
	}
	return data;
}

Map<String, dynamic> homeResultDataBannerToJson(HomeResultDataBanner entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['handler'] = entity.handler;
	data['url'] = entity.url;
	data['title'] = entity.title;
	data['subTitle'] = entity.subTitle;
	data['image'] = entity.image;
	data['mediaUrl'] = entity.mediaUrl;
	data['mediaImage'] = entity.mediaImage;
	data['navType'] = entity.navType;
	data['statisticsCode'] = entity.statisticsCode;
	data['type'] = entity.type;
	data['subType'] = entity.subType;
	data['exp'] = entity.exp;
	data['productType'] = entity.productType;
	data['badgeImage'] = entity.badgeImage;
	return data;
}

homeResultDataAroundLumpFromJson(HomeResultDataAroundLump data, Map<String, dynamic> json) {
	if (json['tabList'] != null) {
		data.tabList = (json['tabList'] as List).map((v) => HomeResultDataAroundLumpTabList().fromJson(v)).toList();
	}
	if (json['weekList'] != null) {
		data.weekList = (json['weekList'] as List).map((v) => HomeResultDataAroundLumpWeekList().fromJson(v)).toList();
	}
	if (json['local'] != null) {
		data.local = HomeResultDataAroundLumpLocal().fromJson(json['local']);
	}
	return data;
}

Map<String, dynamic> homeResultDataAroundLumpToJson(HomeResultDataAroundLump entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['tabList'] =  entity.tabList?.map((v) => v.toJson())?.toList();
	data['weekList'] =  entity.weekList?.map((v) => v.toJson())?.toList();
	data['local'] = entity.local?.toJson();
	return data;
}

homeResultDataAroundLumpTabListFromJson(HomeResultDataAroundLumpTabList data, Map<String, dynamic> json) {
	if (json['type'] != null) {
		data.type = json['type'] is String
				? int.tryParse(json['type'])
				: json['type'].toInt();
	}
	if (json['typeName'] != null) {
		data.typeName = json['typeName'].toString();
	}
	if (json['selected'] != null) {
		data.selected = json['selected'] is String
				? int.tryParse(json['selected'])
				: json['selected'].toInt();
	}
	return data;
}

Map<String, dynamic> homeResultDataAroundLumpTabListToJson(HomeResultDataAroundLumpTabList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['type'] = entity.type;
	data['typeName'] = entity.typeName;
	data['selected'] = entity.selected;
	return data;
}

homeResultDataAroundLumpWeekListFromJson(HomeResultDataAroundLumpWeekList data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['moreJump'] != null) {
		data.moreJump = HomeResultDataAroundLumpWeekListMoreJump().fromJson(json['moreJump']);
	}
	if (json['productList'] != null) {
		data.productList = (json['productList'] as List).map((v) => HomeResultDataAroundLumpWeekListProductList().fromJson(v)).toList();
	}
	return data;
}

Map<String, dynamic> homeResultDataAroundLumpWeekListToJson(HomeResultDataAroundLumpWeekList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['moreJump'] = entity.moreJump?.toJson();
	data['productList'] =  entity.productList?.map((v) => v.toJson())?.toList();
	return data;
}

homeResultDataAroundLumpWeekListMoreJumpFromJson(HomeResultDataAroundLumpWeekListMoreJump data, Map<String, dynamic> json) {
	if (json['handler'] != null) {
		data.handler = json['handler'].toString();
	}
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['subTitle'] != null) {
		data.subTitle = json['subTitle'].toString();
	}
	if (json['image'] != null) {
		data.image = json['image'].toString();
	}
	if (json['mediaUrl'] != null) {
		data.mediaUrl = json['mediaUrl'].toString();
	}
	if (json['mediaImage'] != null) {
		data.mediaImage = json['mediaImage'].toString();
	}
	if (json['navType'] != null) {
		data.navType = json['navType'] is String
				? int.tryParse(json['navType'])
				: json['navType'].toInt();
	}
	if (json['statisticsCode'] != null) {
		data.statisticsCode = json['statisticsCode'].toString();
	}
	if (json['type'] != null) {
		data.type = json['type'] is String
				? int.tryParse(json['type'])
				: json['type'].toInt();
	}
	if (json['subType'] != null) {
		data.subType = json['subType'] is String
				? int.tryParse(json['subType'])
				: json['subType'].toInt();
	}
	if (json['exp'] != null) {
		data.exp = json['exp'] is String
				? int.tryParse(json['exp'])
				: json['exp'].toInt();
	}
	if (json['productType'] != null) {
		data.productType = json['productType'] is String
				? int.tryParse(json['productType'])
				: json['productType'].toInt();
	}
	if (json['badgeImage'] != null) {
		data.badgeImage = json['badgeImage'].toString();
	}
	return data;
}

Map<String, dynamic> homeResultDataAroundLumpWeekListMoreJumpToJson(HomeResultDataAroundLumpWeekListMoreJump entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['handler'] = entity.handler;
	data['url'] = entity.url;
	data['title'] = entity.title;
	data['subTitle'] = entity.subTitle;
	data['image'] = entity.image;
	data['mediaUrl'] = entity.mediaUrl;
	data['mediaImage'] = entity.mediaImage;
	data['navType'] = entity.navType;
	data['statisticsCode'] = entity.statisticsCode;
	data['type'] = entity.type;
	data['subType'] = entity.subType;
	data['exp'] = entity.exp;
	data['productType'] = entity.productType;
	data['badgeImage'] = entity.badgeImage;
	return data;
}

homeResultDataAroundLumpWeekListProductListFromJson(HomeResultDataAroundLumpWeekListProductList data, Map<String, dynamic> json) {
	if (json['pid'] != null) {
		data.pid = json['pid'] is String
				? int.tryParse(json['pid'])
				: json['pid'].toInt();
	}
	if (json['productName'] != null) {
		data.productName = json['productName'].toString();
	}
	if (json['liangdian'] != null) {
		data.liangdian = (json['liangdian'] as List).map((v) => v.toString()).toList().cast<String>();
	}
	if (json['simpleName'] != null) {
		data.simpleName = json['simpleName'].toString();
	}
	if (json['image'] != null) {
		data.image = json['image'].toString();
	}
	if (json['applyColour'] != null) {
		data.applyColour = json['applyColour'].toString();
	}
	if (json['applyName'] != null) {
		data.applyName = json['applyName'].toString();
	}
	if (json['priceLabel'] != null) {
		data.priceLabel = json['priceLabel'].toString();
	}
	if (json['salePriceLabel'] != null) {
		data.salePriceLabel = json['salePriceLabel'].toString();
	}
	if (json['statisticsCode'] != null) {
		data.statisticsCode = json['statisticsCode'].toString();
	}
	if (json['placeLabel'] != null) {
		data.placeLabel = json['placeLabel'].toString();
	}
	if (json['days'] != null) {
		data.days = json['days'].toString();
	}
	return data;
}

Map<String, dynamic> homeResultDataAroundLumpWeekListProductListToJson(HomeResultDataAroundLumpWeekListProductList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['pid'] = entity.pid;
	data['productName'] = entity.productName;
	data['liangdian'] = entity.liangdian;
	data['simpleName'] = entity.simpleName;
	data['image'] = entity.image;
	data['applyColour'] = entity.applyColour;
	data['applyName'] = entity.applyName;
	data['priceLabel'] = entity.priceLabel;
	data['salePriceLabel'] = entity.salePriceLabel;
	data['statisticsCode'] = entity.statisticsCode;
	data['placeLabel'] = entity.placeLabel;
	data['days'] = entity.days;
	return data;
}

homeResultDataAroundLumpLocalFromJson(HomeResultDataAroundLumpLocal data, Map<String, dynamic> json) {
	if (json['moreHandler'] != null) {
		data.moreHandler = json['moreHandler'].toString();
	}
	if (json['moreUrl'] != null) {
		data.moreUrl = json['moreUrl'].toString();
	}
	if (json['upList'] != null) {
		data.upList = (json['upList'] as List).map((v) => HomeResultDataAroundLumpLocalUpList().fromJson(v)).toList();
	}
	if (json['downList'] != null) {
		data.downList = (json['downList'] as List).map((v) => HomeResultDataAroundLumpLocalDownList().fromJson(v)).toList();
	}
	return data;
}

Map<String, dynamic> homeResultDataAroundLumpLocalToJson(HomeResultDataAroundLumpLocal entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['moreHandler'] = entity.moreHandler;
	data['moreUrl'] = entity.moreUrl;
	data['upList'] =  entity.upList?.map((v) => v.toJson())?.toList();
	data['downList'] =  entity.downList?.map((v) => v.toJson())?.toList();
	return data;
}

homeResultDataAroundLumpLocalUpListFromJson(HomeResultDataAroundLumpLocalUpList data, Map<String, dynamic> json) {
	if (json['handler'] != null) {
		data.handler = json['handler'].toString();
	}
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['subTitle'] != null) {
		data.subTitle = json['subTitle'].toString();
	}
	if (json['image'] != null) {
		data.image = json['image'].toString();
	}
	if (json['mediaUrl'] != null) {
		data.mediaUrl = json['mediaUrl'].toString();
	}
	if (json['mediaImage'] != null) {
		data.mediaImage = json['mediaImage'].toString();
	}
	if (json['navType'] != null) {
		data.navType = json['navType'] is String
				? int.tryParse(json['navType'])
				: json['navType'].toInt();
	}
	if (json['statisticsCode'] != null) {
		data.statisticsCode = json['statisticsCode'].toString();
	}
	if (json['type'] != null) {
		data.type = json['type'] is String
				? int.tryParse(json['type'])
				: json['type'].toInt();
	}
	if (json['subType'] != null) {
		data.subType = json['subType'] is String
				? int.tryParse(json['subType'])
				: json['subType'].toInt();
	}
	if (json['exp'] != null) {
		data.exp = json['exp'] is String
				? int.tryParse(json['exp'])
				: json['exp'].toInt();
	}
	if (json['productType'] != null) {
		data.productType = json['productType'] is String
				? int.tryParse(json['productType'])
				: json['productType'].toInt();
	}
	if (json['badgeImage'] != null) {
		data.badgeImage = json['badgeImage'].toString();
	}
	return data;
}

Map<String, dynamic> homeResultDataAroundLumpLocalUpListToJson(HomeResultDataAroundLumpLocalUpList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['handler'] = entity.handler;
	data['url'] = entity.url;
	data['title'] = entity.title;
	data['subTitle'] = entity.subTitle;
	data['image'] = entity.image;
	data['mediaUrl'] = entity.mediaUrl;
	data['mediaImage'] = entity.mediaImage;
	data['navType'] = entity.navType;
	data['statisticsCode'] = entity.statisticsCode;
	data['type'] = entity.type;
	data['subType'] = entity.subType;
	data['exp'] = entity.exp;
	data['productType'] = entity.productType;
	data['badgeImage'] = entity.badgeImage;
	return data;
}

homeResultDataAroundLumpLocalDownListFromJson(HomeResultDataAroundLumpLocalDownList data, Map<String, dynamic> json) {
	if (json['handler'] != null) {
		data.handler = json['handler'].toString();
	}
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['subTitle'] != null) {
		data.subTitle = json['subTitle'].toString();
	}
	if (json['image'] != null) {
		data.image = json['image'].toString();
	}
	if (json['mediaUrl'] != null) {
		data.mediaUrl = json['mediaUrl'].toString();
	}
	if (json['mediaImage'] != null) {
		data.mediaImage = json['mediaImage'].toString();
	}
	if (json['navType'] != null) {
		data.navType = json['navType'] is String
				? int.tryParse(json['navType'])
				: json['navType'].toInt();
	}
	if (json['statisticsCode'] != null) {
		data.statisticsCode = json['statisticsCode'].toString();
	}
	if (json['type'] != null) {
		data.type = json['type'] is String
				? int.tryParse(json['type'])
				: json['type'].toInt();
	}
	if (json['subType'] != null) {
		data.subType = json['subType'] is String
				? int.tryParse(json['subType'])
				: json['subType'].toInt();
	}
	if (json['exp'] != null) {
		data.exp = json['exp'] is String
				? int.tryParse(json['exp'])
				: json['exp'].toInt();
	}
	if (json['productType'] != null) {
		data.productType = json['productType'] is String
				? int.tryParse(json['productType'])
				: json['productType'].toInt();
	}
	if (json['badgeImage'] != null) {
		data.badgeImage = json['badgeImage'].toString();
	}
	return data;
}

Map<String, dynamic> homeResultDataAroundLumpLocalDownListToJson(HomeResultDataAroundLumpLocalDownList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['handler'] = entity.handler;
	data['url'] = entity.url;
	data['title'] = entity.title;
	data['subTitle'] = entity.subTitle;
	data['image'] = entity.image;
	data['mediaUrl'] = entity.mediaUrl;
	data['mediaImage'] = entity.mediaImage;
	data['navType'] = entity.navType;
	data['statisticsCode'] = entity.statisticsCode;
	data['type'] = entity.type;
	data['subType'] = entity.subType;
	data['exp'] = entity.exp;
	data['productType'] = entity.productType;
	data['badgeImage'] = entity.badgeImage;
	return data;
}

homeResultDataSaleProductListFromJson(HomeResultDataSaleProductList data, Map<String, dynamic> json) {
	if (json['pid'] != null) {
		data.pid = json['pid'] is String
				? int.tryParse(json['pid'])
				: json['pid'].toInt();
	}
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['productName'] != null) {
		data.productName = json['productName'].toString();
	}
	if (json['image'] != null) {
		data.image = json['image'].toString();
	}
	if (json['startTime'] != null) {
		data.startTime = json['startTime'] is String
				? int.tryParse(json['startTime'])
				: json['startTime'].toInt();
	}
	if (json['overTime'] != null) {
		data.overTime = json['overTime'] is String
				? int.tryParse(json['overTime'])
				: json['overTime'].toInt();
	}
	if (json['stockLabel'] != null) {
		data.stockLabel = json['stockLabel'].toString();
	}
	if (json['placeLabel'] != null) {
		data.placeLabel = json['placeLabel'].toString();
	}
	if (json['priceLabel'] != null) {
		data.priceLabel = json['priceLabel'].toString();
	}
	if (json['priceOtherLabel'] != null) {
		data.priceOtherLabel = json['priceOtherLabel'].toString();
	}
	if (json['statisticsCode'] != null) {
		data.statisticsCode = json['statisticsCode'].toString();
	}
	if (json['status'] != null) {
		data.status = json['status'] is String
				? int.tryParse(json['status'])
				: json['status'].toInt();
	}
	if (json['saleAmount'] != null) {
		data.saleAmount = json['saleAmount'].toString();
	}
	if (json['handler'] != null) {
		data.handler = json['handler'].toString();
	}
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	return data;
}

Map<String, dynamic> homeResultDataSaleProductListToJson(HomeResultDataSaleProductList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['pid'] = entity.pid;
	data['title'] = entity.title;
	data['productName'] = entity.productName;
	data['image'] = entity.image;
	data['startTime'] = entity.startTime;
	data['overTime'] = entity.overTime;
	data['stockLabel'] = entity.stockLabel;
	data['placeLabel'] = entity.placeLabel;
	data['priceLabel'] = entity.priceLabel;
	data['priceOtherLabel'] = entity.priceOtherLabel;
	data['statisticsCode'] = entity.statisticsCode;
	data['status'] = entity.status;
	data['saleAmount'] = entity.saleAmount;
	data['handler'] = entity.handler;
	data['url'] = entity.url;
	return data;
}

homeResultDataNewProductFromJson(HomeResultDataNewProduct data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['moreHandler'] != null) {
		data.moreHandler = json['moreHandler'].toString();
	}
	if (json['moreUrl'] != null) {
		data.moreUrl = json['moreUrl'].toString();
	}
	if (json['recommend'] != null) {
		data.recommend = HomeResultDataNewProductRecommend().fromJson(json['recommend']);
	}
	if (json['recommendList'] != null) {
		data.recommendList = (json['recommendList'] as List).map((v) => HomeResultDataNewProductRecommandList().fromJson(v)).toList();
	}
	return data;
}

Map<String, dynamic> homeResultDataNewProductToJson(HomeResultDataNewProduct entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['moreHandler'] = entity.moreHandler;
	data['moreUrl'] = entity.moreUrl;
	data['recommend'] = entity.recommend?.toJson();
	data['recommendList'] =  entity.recommendList?.map((v) => v.toJson())?.toList();
	return data;
}

homeResultDataNewProductRecommendFromJson(HomeResultDataNewProductRecommend data, Map<String, dynamic> json) {
	if (json['handler'] != null) {
		data.handler = json['handler'].toString();
	}
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['subTitle'] != null) {
		data.subTitle = json['subTitle'].toString();
	}
	if (json['image'] != null) {
		data.image = json['image'].toString();
	}
	if (json['mediaUrl'] != null) {
		data.mediaUrl = json['mediaUrl'].toString();
	}
	if (json['mediaImage'] != null) {
		data.mediaImage = json['mediaImage'].toString();
	}
	if (json['navType'] != null) {
		data.navType = json['navType'] is String
				? int.tryParse(json['navType'])
				: json['navType'].toInt();
	}
	if (json['statisticsCode'] != null) {
		data.statisticsCode = json['statisticsCode'].toString();
	}
	if (json['type'] != null) {
		data.type = json['type'] is String
				? int.tryParse(json['type'])
				: json['type'].toInt();
	}
	if (json['subType'] != null) {
		data.subType = json['subType'] is String
				? int.tryParse(json['subType'])
				: json['subType'].toInt();
	}
	if (json['exp'] != null) {
		data.exp = json['exp'] is String
				? int.tryParse(json['exp'])
				: json['exp'].toInt();
	}
	if (json['productType'] != null) {
		data.productType = json['productType'] is String
				? int.tryParse(json['productType'])
				: json['productType'].toInt();
	}
	if (json['badgeImage'] != null) {
		data.badgeImage = json['badgeImage'].toString();
	}
	return data;
}

Map<String, dynamic> homeResultDataNewProductRecommendToJson(HomeResultDataNewProductRecommend entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['handler'] = entity.handler;
	data['url'] = entity.url;
	data['title'] = entity.title;
	data['subTitle'] = entity.subTitle;
	data['image'] = entity.image;
	data['mediaUrl'] = entity.mediaUrl;
	data['mediaImage'] = entity.mediaImage;
	data['navType'] = entity.navType;
	data['statisticsCode'] = entity.statisticsCode;
	data['type'] = entity.type;
	data['subType'] = entity.subType;
	data['exp'] = entity.exp;
	data['productType'] = entity.productType;
	data['badgeImage'] = entity.badgeImage;
	return data;
}

homeResultDataNewProductRecommandListFromJson(HomeResultDataNewProductRecommandList data, Map<String, dynamic> json) {
	if (json['handler'] != null) {
		data.handler = json['handler'].toString();
	}
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['subTitle'] != null) {
		data.subTitle = json['subTitle'].toString();
	}
	if (json['image'] != null) {
		data.image = json['image'].toString();
	}
	if (json['mediaUrl'] != null) {
		data.mediaUrl = json['mediaUrl'].toString();
	}
	if (json['mediaImage'] != null) {
		data.mediaImage = json['mediaImage'].toString();
	}
	if (json['navType'] != null) {
		data.navType = json['navType'] is String
				? int.tryParse(json['navType'])
				: json['navType'].toInt();
	}
	if (json['statisticsCode'] != null) {
		data.statisticsCode = json['statisticsCode'].toString();
	}
	if (json['type'] != null) {
		data.type = json['type'] is String
				? int.tryParse(json['type'])
				: json['type'].toInt();
	}
	if (json['subType'] != null) {
		data.subType = json['subType'] is String
				? int.tryParse(json['subType'])
				: json['subType'].toInt();
	}
	if (json['exp'] != null) {
		data.exp = json['exp'] is String
				? int.tryParse(json['exp'])
				: json['exp'].toInt();
	}
	if (json['productType'] != null) {
		data.productType = json['productType'] is String
				? int.tryParse(json['productType'])
				: json['productType'].toInt();
	}
	if (json['badgeImage'] != null) {
		data.badgeImage = json['badgeImage'].toString();
	}
	return data;
}

Map<String, dynamic> homeResultDataNewProductRecommandListToJson(HomeResultDataNewProductRecommandList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['handler'] = entity.handler;
	data['url'] = entity.url;
	data['title'] = entity.title;
	data['subTitle'] = entity.subTitle;
	data['image'] = entity.image;
	data['mediaUrl'] = entity.mediaUrl;
	data['mediaImage'] = entity.mediaImage;
	data['navType'] = entity.navType;
	data['statisticsCode'] = entity.statisticsCode;
	data['type'] = entity.type;
	data['subType'] = entity.subType;
	data['exp'] = entity.exp;
	data['productType'] = entity.productType;
	data['badgeImage'] = entity.badgeImage;
	return data;
}

homeResultDataKingProductFromJson(HomeResultDataKingProduct data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['moreHandler'] != null) {
		data.moreHandler = json['moreHandler'].toString();
	}
	if (json['moreUrl'] != null) {
		data.moreUrl = json['moreUrl'].toString();
	}
	if (json['recommend'] != null) {
		data.recommend = HomeResultDataKingProductRecommend().fromJson(json['recommend']);
	}
	if (json['recommendList'] != null) {
		data.recommendList = (json['recommendList'] as List).map((v) => HomeResultDataKingProductRecommandList().fromJson(v)).toList();
	}
	return data;
}

Map<String, dynamic> homeResultDataKingProductToJson(HomeResultDataKingProduct entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['moreHandler'] = entity.moreHandler;
	data['moreUrl'] = entity.moreUrl;
	data['recommend'] = entity.recommend?.toJson();
	data['recommendList'] =  entity.recommendList?.map((v) => v.toJson())?.toList();
	return data;
}

homeResultDataKingProductRecommendFromJson(HomeResultDataKingProductRecommend data, Map<String, dynamic> json) {
	if (json['handler'] != null) {
		data.handler = json['handler'].toString();
	}
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['subTitle'] != null) {
		data.subTitle = json['subTitle'].toString();
	}
	if (json['image'] != null) {
		data.image = json['image'].toString();
	}
	if (json['mediaUrl'] != null) {
		data.mediaUrl = json['mediaUrl'].toString();
	}
	if (json['mediaImage'] != null) {
		data.mediaImage = json['mediaImage'].toString();
	}
	if (json['navType'] != null) {
		data.navType = json['navType'] is String
				? int.tryParse(json['navType'])
				: json['navType'].toInt();
	}
	if (json['statisticsCode'] != null) {
		data.statisticsCode = json['statisticsCode'].toString();
	}
	if (json['type'] != null) {
		data.type = json['type'] is String
				? int.tryParse(json['type'])
				: json['type'].toInt();
	}
	if (json['subType'] != null) {
		data.subType = json['subType'] is String
				? int.tryParse(json['subType'])
				: json['subType'].toInt();
	}
	if (json['exp'] != null) {
		data.exp = json['exp'] is String
				? int.tryParse(json['exp'])
				: json['exp'].toInt();
	}
	if (json['productType'] != null) {
		data.productType = json['productType'] is String
				? int.tryParse(json['productType'])
				: json['productType'].toInt();
	}
	if (json['badgeImage'] != null) {
		data.badgeImage = json['badgeImage'].toString();
	}
	return data;
}

Map<String, dynamic> homeResultDataKingProductRecommendToJson(HomeResultDataKingProductRecommend entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['handler'] = entity.handler;
	data['url'] = entity.url;
	data['title'] = entity.title;
	data['subTitle'] = entity.subTitle;
	data['image'] = entity.image;
	data['mediaUrl'] = entity.mediaUrl;
	data['mediaImage'] = entity.mediaImage;
	data['navType'] = entity.navType;
	data['statisticsCode'] = entity.statisticsCode;
	data['type'] = entity.type;
	data['subType'] = entity.subType;
	data['exp'] = entity.exp;
	data['productType'] = entity.productType;
	data['badgeImage'] = entity.badgeImage;
	return data;
}

homeResultDataKingProductRecommandListFromJson(HomeResultDataKingProductRecommandList data, Map<String, dynamic> json) {
	if (json['handler'] != null) {
		data.handler = json['handler'].toString();
	}
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['subTitle'] != null) {
		data.subTitle = json['subTitle'].toString();
	}
	if (json['image'] != null) {
		data.image = json['image'].toString();
	}
	if (json['mediaUrl'] != null) {
		data.mediaUrl = json['mediaUrl'].toString();
	}
	if (json['mediaImage'] != null) {
		data.mediaImage = json['mediaImage'].toString();
	}
	if (json['navType'] != null) {
		data.navType = json['navType'] is String
				? int.tryParse(json['navType'])
				: json['navType'].toInt();
	}
	if (json['statisticsCode'] != null) {
		data.statisticsCode = json['statisticsCode'].toString();
	}
	if (json['type'] != null) {
		data.type = json['type'] is String
				? int.tryParse(json['type'])
				: json['type'].toInt();
	}
	if (json['subType'] != null) {
		data.subType = json['subType'] is String
				? int.tryParse(json['subType'])
				: json['subType'].toInt();
	}
	if (json['exp'] != null) {
		data.exp = json['exp'] is String
				? int.tryParse(json['exp'])
				: json['exp'].toInt();
	}
	if (json['productType'] != null) {
		data.productType = json['productType'] is String
				? int.tryParse(json['productType'])
				: json['productType'].toInt();
	}
	if (json['badgeImage'] != null) {
		data.badgeImage = json['badgeImage'].toString();
	}
	return data;
}

Map<String, dynamic> homeResultDataKingProductRecommandListToJson(HomeResultDataKingProductRecommandList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['handler'] = entity.handler;
	data['url'] = entity.url;
	data['title'] = entity.title;
	data['subTitle'] = entity.subTitle;
	data['image'] = entity.image;
	data['mediaUrl'] = entity.mediaUrl;
	data['mediaImage'] = entity.mediaImage;
	data['navType'] = entity.navType;
	data['statisticsCode'] = entity.statisticsCode;
	data['type'] = entity.type;
	data['subType'] = entity.subType;
	data['exp'] = entity.exp;
	data['productType'] = entity.productType;
	data['badgeImage'] = entity.badgeImage;
	return data;
}

homeResultDataActivityBannerFromJson(HomeResultDataActivityBanner data, Map<String, dynamic> json) {
	if (json['handler'] != null) {
		data.handler = json['handler'].toString();
	}
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['subTitle'] != null) {
		data.subTitle = json['subTitle'].toString();
	}
	if (json['image'] != null) {
		data.image = json['image'].toString();
	}
	if (json['mediaUrl'] != null) {
		data.mediaUrl = json['mediaUrl'].toString();
	}
	if (json['mediaImage'] != null) {
		data.mediaImage = json['mediaImage'].toString();
	}
	if (json['navType'] != null) {
		data.navType = json['navType'] is String
				? int.tryParse(json['navType'])
				: json['navType'].toInt();
	}
	if (json['statisticsCode'] != null) {
		data.statisticsCode = json['statisticsCode'].toString();
	}
	if (json['type'] != null) {
		data.type = json['type'] is String
				? int.tryParse(json['type'])
				: json['type'].toInt();
	}
	if (json['subType'] != null) {
		data.subType = json['subType'] is String
				? int.tryParse(json['subType'])
				: json['subType'].toInt();
	}
	if (json['exp'] != null) {
		data.exp = json['exp'] is String
				? int.tryParse(json['exp'])
				: json['exp'].toInt();
	}
	if (json['productType'] != null) {
		data.productType = json['productType'] is String
				? int.tryParse(json['productType'])
				: json['productType'].toInt();
	}
	if (json['badgeImage'] != null) {
		data.badgeImage = json['badgeImage'].toString();
	}
	return data;
}

Map<String, dynamic> homeResultDataActivityBannerToJson(HomeResultDataActivityBanner entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['handler'] = entity.handler;
	data['url'] = entity.url;
	data['title'] = entity.title;
	data['subTitle'] = entity.subTitle;
	data['image'] = entity.image;
	data['mediaUrl'] = entity.mediaUrl;
	data['mediaImage'] = entity.mediaImage;
	data['navType'] = entity.navType;
	data['statisticsCode'] = entity.statisticsCode;
	data['type'] = entity.type;
	data['subType'] = entity.subType;
	data['exp'] = entity.exp;
	data['productType'] = entity.productType;
	data['badgeImage'] = entity.badgeImage;
	return data;
}

homeResultDataMinorityFromJson(HomeResultDataMinority data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['subTitle'] != null) {
		data.subTitle = json['subTitle'].toString();
	}
	if (json['moreHandler'] != null) {
		data.moreHandler = json['moreHandler'].toString();
	}
	if (json['moreUrl'] != null) {
		data.moreUrl = json['moreUrl'].toString();
	}
	if (json['data'] != null) {
		data.data = (json['data'] as List).map((v) => HomeResultDataMinorityData().fromJson(v)).toList();
	}
	return data;
}

Map<String, dynamic> homeResultDataMinorityToJson(HomeResultDataMinority entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['subTitle'] = entity.subTitle;
	data['moreHandler'] = entity.moreHandler;
	data['moreUrl'] = entity.moreUrl;
	data['data'] =  entity.data?.map((v) => v.toJson())?.toList();
	return data;
}

homeResultDataMinorityDataFromJson(HomeResultDataMinorityData data, Map<String, dynamic> json) {
	if (json['handler'] != null) {
		data.handler = json['handler'].toString();
	}
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['subTitle'] != null) {
		data.subTitle = json['subTitle'].toString();
	}
	if (json['image'] != null) {
		data.image = json['image'].toString();
	}
	if (json['mediaUrl'] != null) {
		data.mediaUrl = json['mediaUrl'].toString();
	}
	if (json['mediaImage'] != null) {
		data.mediaImage = json['mediaImage'].toString();
	}
	if (json['navType'] != null) {
		data.navType = json['navType'] is String
				? int.tryParse(json['navType'])
				: json['navType'].toInt();
	}
	if (json['statisticsCode'] != null) {
		data.statisticsCode = json['statisticsCode'].toString();
	}
	if (json['type'] != null) {
		data.type = json['type'] is String
				? int.tryParse(json['type'])
				: json['type'].toInt();
	}
	if (json['subType'] != null) {
		data.subType = json['subType'] is String
				? int.tryParse(json['subType'])
				: json['subType'].toInt();
	}
	if (json['exp'] != null) {
		data.exp = json['exp'] is String
				? int.tryParse(json['exp'])
				: json['exp'].toInt();
	}
	if (json['productType'] != null) {
		data.productType = json['productType'] is String
				? int.tryParse(json['productType'])
				: json['productType'].toInt();
	}
	if (json['badgeImage'] != null) {
		data.badgeImage = json['badgeImage'].toString();
	}
	return data;
}

Map<String, dynamic> homeResultDataMinorityDataToJson(HomeResultDataMinorityData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['handler'] = entity.handler;
	data['url'] = entity.url;
	data['title'] = entity.title;
	data['subTitle'] = entity.subTitle;
	data['image'] = entity.image;
	data['mediaUrl'] = entity.mediaUrl;
	data['mediaImage'] = entity.mediaImage;
	data['navType'] = entity.navType;
	data['statisticsCode'] = entity.statisticsCode;
	data['type'] = entity.type;
	data['subType'] = entity.subType;
	data['exp'] = entity.exp;
	data['productType'] = entity.productType;
	data['badgeImage'] = entity.badgeImage;
	return data;
}

homeResultDataDestinationFromJson(HomeResultDataDestination data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['subTitle'] != null) {
		data.subTitle = json['subTitle'].toString();
	}
	if (json['moreHandler'] != null) {
		data.moreHandler = json['moreHandler'].toString();
	}
	if (json['moreUrl'] != null) {
		data.moreUrl = json['moreUrl'].toString();
	}
	if (json['tabList'] != null) {
		data.tabList = (json['tabList'] as List).map((v) => HomeResultDataDestinationTabList().fromJson(v)).toList();
	}
	return data;
}

Map<String, dynamic> homeResultDataDestinationToJson(HomeResultDataDestination entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['subTitle'] = entity.subTitle;
	data['moreHandler'] = entity.moreHandler;
	data['moreUrl'] = entity.moreUrl;
	data['tabList'] =  entity.tabList?.map((v) => v.toJson())?.toList();
	return data;
}

homeResultDataDestinationTabListFromJson(HomeResultDataDestinationTabList data, Map<String, dynamic> json) {
	if (json['tabName'] != null) {
		data.tabName = json['tabName'].toString();
	}
	if (json['selected'] != null) {
		data.selected = json['selected'] is String
				? int.tryParse(json['selected'])
				: json['selected'].toInt();
	}
	if (json['data'] != null) {
		data.data = (json['data'] as List).map((v) => HomeResultDataDestinationTabListData().fromJson(v)).toList();
	}
	return data;
}

Map<String, dynamic> homeResultDataDestinationTabListToJson(HomeResultDataDestinationTabList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['tabName'] = entity.tabName;
	data['selected'] = entity.selected;
	data['data'] =  entity.data?.map((v) => v.toJson())?.toList();
	return data;
}

homeResultDataDestinationTabListDataFromJson(HomeResultDataDestinationTabListData data, Map<String, dynamic> json) {
	if (json['handler'] != null) {
		data.handler = json['handler'].toString();
	}
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['subTitle'] != null) {
		data.subTitle = json['subTitle'].toString();
	}
	if (json['image'] != null) {
		data.image = json['image'].toString();
	}
	if (json['mediaUrl'] != null) {
		data.mediaUrl = json['mediaUrl'].toString();
	}
	if (json['mediaImage'] != null) {
		data.mediaImage = json['mediaImage'].toString();
	}
	if (json['navType'] != null) {
		data.navType = json['navType'] is String
				? int.tryParse(json['navType'])
				: json['navType'].toInt();
	}
	if (json['statisticsCode'] != null) {
		data.statisticsCode = json['statisticsCode'].toString();
	}
	if (json['type'] != null) {
		data.type = json['type'] is String
				? int.tryParse(json['type'])
				: json['type'].toInt();
	}
	if (json['subType'] != null) {
		data.subType = json['subType'] is String
				? int.tryParse(json['subType'])
				: json['subType'].toInt();
	}
	if (json['exp'] != null) {
		data.exp = json['exp'] is String
				? int.tryParse(json['exp'])
				: json['exp'].toInt();
	}
	if (json['productType'] != null) {
		data.productType = json['productType'] is String
				? int.tryParse(json['productType'])
				: json['productType'].toInt();
	}
	if (json['badgeImage'] != null) {
		data.badgeImage = json['badgeImage'].toString();
	}
	return data;
}

Map<String, dynamic> homeResultDataDestinationTabListDataToJson(HomeResultDataDestinationTabListData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['handler'] = entity.handler;
	data['url'] = entity.url;
	data['title'] = entity.title;
	data['subTitle'] = entity.subTitle;
	data['image'] = entity.image;
	data['mediaUrl'] = entity.mediaUrl;
	data['mediaImage'] = entity.mediaImage;
	data['navType'] = entity.navType;
	data['statisticsCode'] = entity.statisticsCode;
	data['type'] = entity.type;
	data['subType'] = entity.subType;
	data['exp'] = entity.exp;
	data['productType'] = entity.productType;
	data['badgeImage'] = entity.badgeImage;
	return data;
}

homeResultDataFlowTabListFromJson(HomeResultDataFlowTabList data, Map<String, dynamic> json) {
	if (json['type'] != null) {
		data.type = json['type'] is String
				? int.tryParse(json['type'])
				: json['type'].toInt();
	}
	if (json['typeName'] != null) {
		data.typeName = json['typeName'].toString();
	}
	if (json['selected'] != null) {
		data.selected = json['selected'] is String
				? int.tryParse(json['selected'])
				: json['selected'].toInt();
	}
	if (json['image'] != null) {
		data.image = json['image'].toString();
	}
	if (json['channelList'] != null) {
		data.channelList = (json['channelList'] as List).map((v) => v).toList().cast<dynamic>();
	}
	return data;
}

Map<String, dynamic> homeResultDataFlowTabListToJson(HomeResultDataFlowTabList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['type'] = entity.type;
	data['typeName'] = entity.typeName;
	data['selected'] = entity.selected;
	data['image'] = entity.image;
	data['channelList'] = entity.channelList;
	return data;
}

homeResultDataQiyuFromJson(HomeResultDataQiyu data, Map<String, dynamic> json) {
	if (json['data'] != null) {
		data.data = json['data'].toString();
	}
	if (json['groupid'] != null) {
		data.groupid = (json['groupid'] as List).map((v) => HomeResultDataQiyuGroupid().fromJson(v)).toList();
	}
	if (json['mobile'] != null) {
		data.mobile = json['mobile'].toString();
	}
	return data;
}

Map<String, dynamic> homeResultDataQiyuToJson(HomeResultDataQiyu entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['data'] = entity.data;
	data['groupid'] =  entity.groupid?.map((v) => v.toJson())?.toList();
	data['mobile'] = entity.mobile;
	return data;
}

homeResultDataQiyuGroupidFromJson(HomeResultDataQiyuGroupid data, Map<String, dynamic> json) {
	if (json['sitecode'] != null) {
		data.sitecode = json['sitecode'] is String
				? int.tryParse(json['sitecode'])
				: json['sitecode'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['cid'] != null) {
		data.cid = json['cid'] is String
				? int.tryParse(json['cid'])
				: json['cid'].toInt();
	}
	return data;
}

Map<String, dynamic> homeResultDataQiyuGroupidToJson(HomeResultDataQiyuGroupid entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['sitecode'] = entity.sitecode;
	data['name'] = entity.name;
	data['cid'] = entity.cid;
	return data;
}

homeResultDataCouponFromJson(HomeResultDataCoupon data, Map<String, dynamic> json) {
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['thumb'] != null) {
		data.thumb = json['thumb'].toString();
	}
	if (json['handler'] != null) {
		data.handler = json['handler'].toString();
	}
	if (json['showSearch'] != null) {
		data.showSearch = json['showSearch'] is String
				? int.tryParse(json['showSearch'])
				: json['showSearch'].toInt();
	}
	if (json['price_label'] != null) {
		data.priceLabel = json['price_label'] is String
				? int.tryParse(json['price_label'])
				: json['price_label'].toInt();
	}
	if (json['content'] != null) {
		data.content = json['content'].toString();
	}
	if (json['place_label'] != null) {
		data.placeLabel = json['place_label'].toString();
	}
	if (json['link'] != null) {
		data.link = json['link'].toString();
	}
	if (json['media_url'] != null) {
		data.mediaUrl = json['media_url'].toString();
	}
	if (json['media_thumb'] != null) {
		data.mediaThumb = json['media_thumb'].toString();
	}
	if (json['price_alias'] != null) {
		data.priceAlias = json['price_alias'].toString();
	}
	if (json['subTitle'] != null) {
		data.subTitle = json['subTitle'].toString();
	}
	if (json['exp'] != null) {
		data.exp = json['exp'] is String
				? int.tryParse(json['exp'])
				: json['exp'].toInt();
	}
	if (json['type'] != null) {
		data.type = json['type'] is String
				? int.tryParse(json['type'])
				: json['type'].toInt();
	}
	return data;
}

Map<String, dynamic> homeResultDataCouponToJson(HomeResultDataCoupon entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['url'] = entity.url;
	data['title'] = entity.title;
	data['thumb'] = entity.thumb;
	data['handler'] = entity.handler;
	data['showSearch'] = entity.showSearch;
	data['price_label'] = entity.priceLabel;
	data['content'] = entity.content;
	data['place_label'] = entity.placeLabel;
	data['link'] = entity.link;
	data['media_url'] = entity.mediaUrl;
	data['media_thumb'] = entity.mediaThumb;
	data['price_alias'] = entity.priceAlias;
	data['subTitle'] = entity.subTitle;
	data['exp'] = entity.exp;
	data['type'] = entity.type;
	return data;
}

homeResultDataIpCityFromJson(HomeResultDataIpCity data, Map<String, dynamic> json) {
	if (json['country'] != null) {
		data.country = json['country'].toString();
	}
	if (json['province'] != null) {
		data.province = json['province'].toString();
	}
	if (json['city'] != null) {
		data.city = json['city'].toString();
	}
	return data;
}

Map<String, dynamic> homeResultDataIpCityToJson(HomeResultDataIpCity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['country'] = entity.country;
	data['province'] = entity.province;
	data['city'] = entity.city;
	return data;
}

homeResultDataSiteCityFromJson(HomeResultDataSiteCity data, Map<String, dynamic> json) {
	if (json['sitecode'] != null) {
		data.sitecode = json['sitecode'] is String
				? int.tryParse(json['sitecode'])
				: json['sitecode'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['mddId'] != null) {
		data.mddId = json['mddId'] is String
				? int.tryParse(json['mddId'])
				: json['mddId'].toInt();
	}
	return data;
}

Map<String, dynamic> homeResultDataSiteCityToJson(HomeResultDataSiteCity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['sitecode'] = entity.sitecode;
	data['name'] = entity.name;
	data['mddId'] = entity.mddId;
	return data;
}

homeResultDataHotsearchFromJson(HomeResultDataHotsearch data, Map<String, dynamic> json) {
	if (json['url'] != null) {
		data.url = json['url'].toString();
	}
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['thumb'] != null) {
		data.thumb = json['thumb'].toString();
	}
	if (json['handler'] != null) {
		data.handler = json['handler'].toString();
	}
	if (json['showSearch'] != null) {
		data.showSearch = json['showSearch'] is String
				? int.tryParse(json['showSearch'])
				: json['showSearch'].toInt();
	}
	if (json['price_label'] != null) {
		data.priceLabel = json['price_label'] is String
				? int.tryParse(json['price_label'])
				: json['price_label'].toInt();
	}
	if (json['content'] != null) {
		data.content = json['content'].toString();
	}
	if (json['place_label'] != null) {
		data.placeLabel = json['place_label'].toString();
	}
	if (json['link'] != null) {
		data.link = json['link'].toString();
	}
	if (json['media_url'] != null) {
		data.mediaUrl = json['media_url'].toString();
	}
	if (json['media_thumb'] != null) {
		data.mediaThumb = json['media_thumb'].toString();
	}
	if (json['price_alias'] != null) {
		data.priceAlias = json['price_alias'].toString();
	}
	if (json['subTitle'] != null) {
		data.subTitle = json['subTitle'].toString();
	}
	if (json['exp'] != null) {
		data.exp = json['exp'] is String
				? int.tryParse(json['exp'])
				: json['exp'].toInt();
	}
	if (json['type'] != null) {
		data.type = json['type'] is String
				? int.tryParse(json['type'])
				: json['type'].toInt();
	}
	return data;
}

Map<String, dynamic> homeResultDataHotsearchToJson(HomeResultDataHotsearch entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['url'] = entity.url;
	data['title'] = entity.title;
	data['thumb'] = entity.thumb;
	data['handler'] = entity.handler;
	data['showSearch'] = entity.showSearch;
	data['price_label'] = entity.priceLabel;
	data['content'] = entity.content;
	data['place_label'] = entity.placeLabel;
	data['link'] = entity.link;
	data['media_url'] = entity.mediaUrl;
	data['media_thumb'] = entity.mediaThumb;
	data['price_alias'] = entity.priceAlias;
	data['subTitle'] = entity.subTitle;
	data['exp'] = entity.exp;
	data['type'] = entity.type;
	return data;
}