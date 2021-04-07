import 'package:yyxiake_flutter/generated/json/base/json_convert_content.dart';
import 'package:yyxiake_flutter/generated/json/base/json_field.dart';

class HomeResultEntity with JsonConvert<HomeResultEntity> {
	int code;
	String msg;
	HomeResultData data;
}

class HomeResultData with JsonConvert<HomeResultData> {
	dynamic pullRefresh;
	String background;
	String topColour;
	dynamic defaultSearch;
	List<HomeResultDataHotSearchList> hotSearchList = [];
	List<HomeResultDataFlashImageList> flashImageList = [];
	List<HomeResultDataFirstNav> firstNav = [];
	List<HomeResultDataSecondNav> secondNav= [];
	List<HomeResultDataUserCenterNav> userCenterNav;
	List<HomeResultDataBanner> banner;
	HomeResultDataAroundLump aroundLump;
	List<HomeResultDataSaleProductList> saleProductList;
	HomeResultDataNewProduct newProduct;
	HomeResultDataKingProduct kingProduct;
	List<HomeResultDataActivityBanner> activityBanner;
	HomeResultDataMinority minority;
	HomeResultDataDestination destination;
	List<HomeResultDataFlowTabList> flowTabList = [];
	HomeResultDataQiyu qiyu;
	HomeResultDataCoupon coupon;
	@JSONField(name: "index_tip")
	dynamic indexTip;
	HomeResultDataIpCity ipCity;
	String cityTip;
	HomeResultDataSiteCity siteCity;
	List<HomeResultDataHotsearch> hotsearchs = [];
}

class HomeResultDataHotSearchList with JsonConvert<HomeResultDataHotSearchList> {
	String handler;
	String url;
	String title;
	String subTitle;
	String image;
	String mediaUrl;
	String mediaImage;
	int navType;
	String statisticsCode;
	int type;
	int subType;
	int exp;
	int productType;
	String badgeImage;
}

class HomeResultDataFlashImageList with JsonConvert<HomeResultDataFlashImageList> {
	String handler;
	String url;
	String title;
	String subTitle;
	String image;
	String mediaUrl;
	String mediaImage;
	int navType;
	String statisticsCode;
	int type;
	int subType;
	int exp;
	int productType;
	String badgeImage;
}

class HomeResultDataFirstNav with JsonConvert<HomeResultDataFirstNav> {
	String handler;
	String url;
	String title;
	String subTitle;
	String image;
	String mediaUrl;
	String mediaImage;
	int navType;
	String statisticsCode;
	int type;
	int subType;
	int exp;
	int productType;
	String badgeImage;
}

class HomeResultDataSecondNav with JsonConvert<HomeResultDataSecondNav> {
	String handler;
	String url;
	String title;
	String subTitle;
	String image;
	String mediaUrl;
	String mediaImage;
	int navType;
	String statisticsCode;
	int type;
	int subType;
	int exp;
	int productType;
	String badgeImage;
}

class HomeResultDataUserCenterNav with JsonConvert<HomeResultDataUserCenterNav> {
	String url;
	String title;
	String thumb;
	String handler;
	int showSearch;
	@JSONField(name: "price_label")
	int priceLabel;
	String content;
	@JSONField(name: "place_label")
	String placeLabel;
	String link;
	@JSONField(name: "media_url")
	String mediaUrl;
	@JSONField(name: "media_thumb")
	String mediaThumb;
	@JSONField(name: "price_alias")
	String priceAlias;
	String subTitle;
	int exp;
	int type;
}

class HomeResultDataBanner with JsonConvert<HomeResultDataBanner> {
	String handler;
	String url;
	String title;
	String subTitle;
	String image;
	String mediaUrl;
	String mediaImage;
	int navType;
	String statisticsCode;
	int type;
	int subType;
	int exp;
	int productType;
	String badgeImage;
}

class HomeResultDataAroundLump with JsonConvert<HomeResultDataAroundLump> {
	List<HomeResultDataAroundLumpTabList> tabList;
	List<HomeResultDataAroundLumpWeekList> weekList;
	HomeResultDataAroundLumpLocal local;
}

class HomeResultDataAroundLumpTabList with JsonConvert<HomeResultDataAroundLumpTabList> {
	int type;
	String typeName;
	int selected;
}

class HomeResultDataAroundLumpWeekList with JsonConvert<HomeResultDataAroundLumpWeekList> {
	String title;
	HomeResultDataAroundLumpWeekListMoreJump moreJump;
	List<HomeResultDataAroundLumpWeekListProductList> productList;
}

class HomeResultDataAroundLumpWeekListMoreJump with JsonConvert<HomeResultDataAroundLumpWeekListMoreJump> {
	String handler;
	String url;
	String title;
	String subTitle;
	String image;
	String mediaUrl;
	String mediaImage;
	int navType;
	String statisticsCode;
	int type;
	int subType;
	int exp;
	int productType;
	String badgeImage;
}

class HomeResultDataAroundLumpWeekListProductList with JsonConvert<HomeResultDataAroundLumpWeekListProductList> {
	int pid;
	String productName;
	List<String> liangdian;
	String simpleName;
	String image;
	String applyColour;
	String applyName;
	String priceLabel;
	String salePriceLabel;
	String statisticsCode;
	String placeLabel;
	String days;
}

class HomeResultDataAroundLumpLocal with JsonConvert<HomeResultDataAroundLumpLocal> {
	String moreHandler;
	String moreUrl;
	List<HomeResultDataAroundLumpLocalUpList> upList;
	List<HomeResultDataAroundLumpLocalDownList> downList;
}

class HomeResultDataAroundLumpLocalUpList with JsonConvert<HomeResultDataAroundLumpLocalUpList> {
	String handler;
	String url;
	String title;
	String subTitle;
	String image;
	String mediaUrl;
	String mediaImage;
	int navType;
	String statisticsCode;
	int type;
	int subType;
	int exp;
	int productType;
	String badgeImage;
}

class HomeResultDataAroundLumpLocalDownList with JsonConvert<HomeResultDataAroundLumpLocalDownList> {
	String handler;
	String url;
	String title;
	String subTitle;
	String image;
	String mediaUrl;
	String mediaImage;
	int navType;
	String statisticsCode;
	int type;
	int subType;
	int exp;
	int productType;
	String badgeImage;
}

class HomeResultDataSaleProductList with JsonConvert<HomeResultDataSaleProductList> {
	int pid;
	String title;
	String productName;
	String image;
	int startTime;
	int overTime;
	String stockLabel;
	String placeLabel;
	String priceLabel;
	String priceOtherLabel;
	String statisticsCode;
	int status;
	String saleAmount;
	String handler;
	String url;
}

class HomeResultDataNewProduct with JsonConvert<HomeResultDataNewProduct> {
	String title;
	String moreHandler;
	String moreUrl;
	HomeResultDataNewProductRecommend recommend;
	List<HomeResultDataNewProductRecommandList> recommendList;
}

class HomeResultDataNewProductRecommend with JsonConvert<HomeResultDataNewProductRecommend> {
	String handler;
	String url;
	String title;
	String subTitle;
	String image;
	String mediaUrl;
	String mediaImage;
	int navType;
	String statisticsCode;
	int type;
	int subType;
	int exp;
	int productType;
	String badgeImage;
}

class HomeResultDataNewProductRecommandList with JsonConvert<HomeResultDataNewProductRecommandList> {
	String handler;
	String url;
	String title;
	String subTitle;
	String image;
	String mediaUrl;
	String mediaImage;
	int navType;
	String statisticsCode;
	int type;
	int subType;
	int exp;
	int productType;
	String badgeImage;
}

class HomeResultDataKingProduct with JsonConvert<HomeResultDataKingProduct> {
	String title;
	String moreHandler;
	String moreUrl;
	HomeResultDataKingProductRecommend recommend;
	List<HomeResultDataKingProductRecommandList> recommendList;
}

class HomeResultDataKingProductRecommend with JsonConvert<HomeResultDataKingProductRecommend> {
	String handler;
	String url;
	String title;
	String subTitle;
	String image;
	String mediaUrl;
	String mediaImage;
	int navType;
	String statisticsCode;
	int type;
	int subType;
	int exp;
	int productType;
	String badgeImage;
}

class HomeResultDataKingProductRecommandList with JsonConvert<HomeResultDataKingProductRecommandList> {
	String handler;
	String url;
	String title;
	String subTitle;
	String image;
	String mediaUrl;
	String mediaImage;
	int navType;
	String statisticsCode;
	int type;
	int subType;
	int exp;
	int productType;
	String badgeImage;
}

class HomeResultDataActivityBanner with JsonConvert<HomeResultDataActivityBanner> {
	String handler;
	String url;
	String title;
	String subTitle;
	String image;
	String mediaUrl;
	String mediaImage;
	int navType;
	String statisticsCode;
	int type;
	int subType;
	int exp;
	int productType;
	String badgeImage;
}

class HomeResultDataMinority with JsonConvert<HomeResultDataMinority> {
	String title;
	String subTitle;
	String moreHandler;
	String moreUrl;
	List<HomeResultDataMinorityData> data;
}

class HomeResultDataMinorityData with JsonConvert<HomeResultDataMinorityData> {
	String handler;
	String url;
	String title;
	String subTitle;
	String image;
	String mediaUrl;
	String mediaImage;
	int navType;
	String statisticsCode;
	int type;
	int subType;
	int exp;
	int productType;
	String badgeImage;
}

class HomeResultDataDestination with JsonConvert<HomeResultDataDestination> {
	String title;
	String subTitle;
	String moreHandler;
	String moreUrl;
	List<HomeResultDataDestinationTabList> tabList;
}

class HomeResultDataDestinationTabList with JsonConvert<HomeResultDataDestinationTabList> {
	String tabName;
	int selected;
	List<HomeResultDataDestinationTabListData> data;
}

class HomeResultDataDestinationTabListData with JsonConvert<HomeResultDataDestinationTabListData> {
	String handler;
	String url;
	String title;
	String subTitle;
	String image;
	String mediaUrl;
	String mediaImage;
	int navType;
	String statisticsCode;
	int type;
	int subType;
	int exp;
	int productType;
	String badgeImage;
}

class HomeResultDataFlowTabList with JsonConvert<HomeResultDataFlowTabList> {
	int type;
	String typeName;
	int selected;
	String image;
	List<dynamic> channelList;
}

class HomeResultDataQiyu with JsonConvert<HomeResultDataQiyu> {
	String data;
	List<HomeResultDataQiyuGroupid> groupid;
	String mobile;
}

class HomeResultDataQiyuGroupid with JsonConvert<HomeResultDataQiyuGroupid> {
	int sitecode;
	String name;
	int cid;
}

class HomeResultDataCoupon with JsonConvert<HomeResultDataCoupon> {
	String url;
	String title;
	String thumb;
	String handler;
	int showSearch;
	@JSONField(name: "price_label")
	int priceLabel;
	String content;
	@JSONField(name: "place_label")
	String placeLabel;
	String link;
	@JSONField(name: "media_url")
	String mediaUrl;
	@JSONField(name: "media_thumb")
	String mediaThumb;
	@JSONField(name: "price_alias")
	String priceAlias;
	String subTitle;
	int exp;
	int type;
}

class HomeResultDataIpCity with JsonConvert<HomeResultDataIpCity> {
	String country;
	String province;
	String city;
}

class HomeResultDataSiteCity with JsonConvert<HomeResultDataSiteCity> {
	int sitecode;
	String name;
	int mddId;
}

class HomeResultDataHotsearch with JsonConvert<HomeResultDataHotsearch> {
	String url;
	String title;
	String thumb;
	String handler;
	int showSearch;
	@JSONField(name: "price_label")
	int priceLabel;
	String content;
	@JSONField(name: "place_label")
	String placeLabel;
	String link;
	@JSONField(name: "media_url")
	String mediaUrl;
	@JSONField(name: "media_thumb")
	String mediaThumb;
	@JSONField(name: "price_alias")
	String priceAlias;
	String subTitle;
	int exp;
	int type;
}
