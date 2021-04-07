import 'package:yyxiake_flutter/generated/json/base/json_convert_content.dart';
import 'package:yyxiake_flutter/generated/json/base/json_field.dart';

class RecommendResultEntity with JsonConvert<RecommendResultEntity> {
	int code;
	String msg;
	RecommendResultData data;
}

class RecommendResultData with JsonConvert<RecommendResultData> {
	@JSONField(name: "list")
	List<RecommandResultDataList> xList;
	int totalPage;
	int recordCount;
}

class RecommandResultDataList with JsonConvert<RecommandResultDataList> {
	int type;
	String identityCode;
	RecommendResultDataListDataDetail dataDetail;
	dynamic indexFlowProductVo;
	dynamic indexFlowZhuantiVo;
	dynamic indexFlowBangdanVo;
	dynamic indexFlowTravelarticleVo;
	dynamic indexFlowNewsVo;
	dynamic indexFlowMddVo;
	dynamic indexFlowDiscoverVo;
	dynamic indexFlowFilmVo;
	dynamic indexFlowChannelVo;
}

class RecommendResultDataListDataDetail with JsonConvert<RecommendResultDataListDataDetail> {
	String image;
	String title;
	String subTitle;
	List<dynamic> tagList;
	int pid;
	String marketingTag;
	String productType;
	String productCat;
	String days;
	String placeLabel;
	String priceLabel;
	String salePriceLabel;
	String numLabel;
	String typetwoOrCat;
	String statisticsCode;
	List<String> liangdian;
	dynamic saleOne;
	List<RecommandResultDataListDataDetailSaleOtherList> saleOtherList;
	int type;
	String outDoorLabel;
	String ageLabel;
	String listImgUrl;
	String listColor;
	String marketingIco;
	List<dynamic> marketingList;
	String listImgUrlV2;
	String listColorV2;
}

class RecommandResultDataListDataDetailSaleOtherList with JsonConvert<RecommandResultDataListDataDetailSaleOtherList> {
	String detailRemark;
	String shortRemark;
	int type;
	int otId;
}
