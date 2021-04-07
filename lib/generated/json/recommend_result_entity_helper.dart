import 'package:yyxiake_flutter/models/recommend_result_entity.dart';

recommendResultEntityFromJson(RecommendResultEntity data, Map<String, dynamic> json) {
	if (json['code'] != null) {
		data.code = json['code'] is String
				? int.tryParse(json['code'])
				: json['code'].toInt();
	}
	if (json['msg'] != null) {
		data.msg = json['msg'].toString();
	}
	if (json['data'] != null) {
		data.data = RecommendResultData().fromJson(json['data']);
	}
	return data;
}

Map<String, dynamic> recommendResultEntityToJson(RecommendResultEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	data['msg'] = entity.msg;
	data['data'] = entity.data?.toJson();
	return data;
}

recommendResultDataFromJson(RecommendResultData data, Map<String, dynamic> json) {
	if (json['list'] != null) {
		data.xList = (json['list'] as List).map((v) => RecommandResultDataList().fromJson(v)).toList();
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

Map<String, dynamic> recommendResultDataToJson(RecommendResultData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['list'] =  entity.xList?.map((v) => v.toJson())?.toList();
	data['totalPage'] = entity.totalPage;
	data['recordCount'] = entity.recordCount;
	return data;
}

recommandResultDataListFromJson(RecommandResultDataList data, Map<String, dynamic> json) {
	if (json['type'] != null) {
		data.type = json['type'] is String
				? int.tryParse(json['type'])
				: json['type'].toInt();
	}
	if (json['identityCode'] != null) {
		data.identityCode = json['identityCode'].toString();
	}
	if (json['dataDetail'] != null) {
		data.dataDetail = RecommendResultDataListDataDetail().fromJson(json['dataDetail']);
	}
	if (json['indexFlowProductVo'] != null) {
		data.indexFlowProductVo = json['indexFlowProductVo'];
	}
	if (json['indexFlowZhuantiVo'] != null) {
		data.indexFlowZhuantiVo = json['indexFlowZhuantiVo'];
	}
	if (json['indexFlowBangdanVo'] != null) {
		data.indexFlowBangdanVo = json['indexFlowBangdanVo'];
	}
	if (json['indexFlowTravelarticleVo'] != null) {
		data.indexFlowTravelarticleVo = json['indexFlowTravelarticleVo'];
	}
	if (json['indexFlowNewsVo'] != null) {
		data.indexFlowNewsVo = json['indexFlowNewsVo'];
	}
	if (json['indexFlowMddVo'] != null) {
		data.indexFlowMddVo = json['indexFlowMddVo'];
	}
	if (json['indexFlowDiscoverVo'] != null) {
		data.indexFlowDiscoverVo = json['indexFlowDiscoverVo'];
	}
	if (json['indexFlowFilmVo'] != null) {
		data.indexFlowFilmVo = json['indexFlowFilmVo'];
	}
	if (json['indexFlowChannelVo'] != null) {
		data.indexFlowChannelVo = json['indexFlowChannelVo'];
	}
	return data;
}

Map<String, dynamic> recommandResultDataListToJson(RecommandResultDataList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['type'] = entity.type;
	data['identityCode'] = entity.identityCode;
	data['dataDetail'] = entity.dataDetail?.toJson();
	data['indexFlowProductVo'] = entity.indexFlowProductVo;
	data['indexFlowZhuantiVo'] = entity.indexFlowZhuantiVo;
	data['indexFlowBangdanVo'] = entity.indexFlowBangdanVo;
	data['indexFlowTravelarticleVo'] = entity.indexFlowTravelarticleVo;
	data['indexFlowNewsVo'] = entity.indexFlowNewsVo;
	data['indexFlowMddVo'] = entity.indexFlowMddVo;
	data['indexFlowDiscoverVo'] = entity.indexFlowDiscoverVo;
	data['indexFlowFilmVo'] = entity.indexFlowFilmVo;
	data['indexFlowChannelVo'] = entity.indexFlowChannelVo;
	return data;
}

recommendResultDataListDataDetailFromJson(RecommendResultDataListDataDetail data, Map<String, dynamic> json) {
	if (json['image'] != null) {
		data.image = json['image'].toString();
	}
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['subTitle'] != null) {
		data.subTitle = json['subTitle'].toString();
	}
	if (json['tagList'] != null) {
		data.tagList = (json['tagList'] as List).map((v) => v).toList().cast<dynamic>();
	}
	if (json['pid'] != null) {
		data.pid = json['pid'] is String
				? int.tryParse(json['pid'])
				: json['pid'].toInt();
	}
	if (json['marketingTag'] != null) {
		data.marketingTag = json['marketingTag'].toString();
	}
	if (json['productType'] != null) {
		data.productType = json['productType'].toString();
	}
	if (json['productCat'] != null) {
		data.productCat = json['productCat'].toString();
	}
	if (json['days'] != null) {
		data.days = json['days'].toString();
	}
	if (json['placeLabel'] != null) {
		data.placeLabel = json['placeLabel'].toString();
	}
	if (json['priceLabel'] != null) {
		data.priceLabel = json['priceLabel'].toString();
	}
	if (json['salePriceLabel'] != null) {
		data.salePriceLabel = json['salePriceLabel'].toString();
	}
	if (json['numLabel'] != null) {
		data.numLabel = json['numLabel'].toString();
	}
	if (json['typetwoOrCat'] != null) {
		data.typetwoOrCat = json['typetwoOrCat'].toString();
	}
	if (json['statisticsCode'] != null) {
		data.statisticsCode = json['statisticsCode'].toString();
	}
	if (json['liangdian'] != null) {
		data.liangdian = (json['liangdian'] as List).map((v) => v.toString()).toList().cast<String>();
	}
	if (json['saleOne'] != null) {
		data.saleOne = json['saleOne'];
	}
	if (json['saleOtherList'] != null) {
		data.saleOtherList = (json['saleOtherList'] as List).map((v) => RecommandResultDataListDataDetailSaleOtherList().fromJson(v)).toList();
	}
	if (json['type'] != null) {
		data.type = json['type'] is String
				? int.tryParse(json['type'])
				: json['type'].toInt();
	}
	if (json['outDoorLabel'] != null) {
		data.outDoorLabel = json['outDoorLabel'].toString();
	}
	if (json['ageLabel'] != null) {
		data.ageLabel = json['ageLabel'].toString();
	}
	if (json['listImgUrl'] != null) {
		data.listImgUrl = json['listImgUrl'].toString();
	}
	if (json['listColor'] != null) {
		data.listColor = json['listColor'].toString();
	}
	if (json['marketingIco'] != null) {
		data.marketingIco = json['marketingIco'].toString();
	}
	if (json['marketingList'] != null) {
		data.marketingList = (json['marketingList'] as List).map((v) => v).toList().cast<dynamic>();
	}
	if (json['listImgUrlV2'] != null) {
		data.listImgUrlV2 = json['listImgUrlV2'].toString();
	}
	if (json['listColorV2'] != null) {
		data.listColorV2 = json['listColorV2'].toString();
	}
	return data;
}

Map<String, dynamic> recommendResultDataListDataDetailToJson(RecommendResultDataListDataDetail entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['image'] = entity.image;
	data['title'] = entity.title;
	data['subTitle'] = entity.subTitle;
	data['tagList'] = entity.tagList;
	data['pid'] = entity.pid;
	data['marketingTag'] = entity.marketingTag;
	data['productType'] = entity.productType;
	data['productCat'] = entity.productCat;
	data['days'] = entity.days;
	data['placeLabel'] = entity.placeLabel;
	data['priceLabel'] = entity.priceLabel;
	data['salePriceLabel'] = entity.salePriceLabel;
	data['numLabel'] = entity.numLabel;
	data['typetwoOrCat'] = entity.typetwoOrCat;
	data['statisticsCode'] = entity.statisticsCode;
	data['liangdian'] = entity.liangdian;
	data['saleOne'] = entity.saleOne;
	data['saleOtherList'] =  entity.saleOtherList?.map((v) => v.toJson())?.toList();
	data['type'] = entity.type;
	data['outDoorLabel'] = entity.outDoorLabel;
	data['ageLabel'] = entity.ageLabel;
	data['listImgUrl'] = entity.listImgUrl;
	data['listColor'] = entity.listColor;
	data['marketingIco'] = entity.marketingIco;
	data['marketingList'] = entity.marketingList;
	data['listImgUrlV2'] = entity.listImgUrlV2;
	data['listColorV2'] = entity.listColorV2;
	return data;
}

recommandResultDataListDataDetailSaleOtherListFromJson(RecommandResultDataListDataDetailSaleOtherList data, Map<String, dynamic> json) {
	if (json['detailRemark'] != null) {
		data.detailRemark = json['detailRemark'].toString();
	}
	if (json['shortRemark'] != null) {
		data.shortRemark = json['shortRemark'].toString();
	}
	if (json['type'] != null) {
		data.type = json['type'] is String
				? int.tryParse(json['type'])
				: json['type'].toInt();
	}
	if (json['otId'] != null) {
		data.otId = json['otId'] is String
				? int.tryParse(json['otId'])
				: json['otId'].toInt();
	}
	return data;
}

Map<String, dynamic> recommandResultDataListDataDetailSaleOtherListToJson(RecommandResultDataListDataDetailSaleOtherList entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['detailRemark'] = entity.detailRemark;
	data['shortRemark'] = entity.shortRemark;
	data['type'] = entity.type;
	data['otId'] = entity.otId;
	return data;
}