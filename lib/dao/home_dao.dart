import 'package:dio/dio.dart';
import 'package:yyxiake_flutter/models/community_result_entity.dart';
import 'package:yyxiake_flutter/models/home_result_entity.dart';
import 'package:yyxiake_flutter/models/recommend_result_entity.dart';

const HOME_URL = 'https://appapi.youxiake.com/app/v2/index';
const HOME_RECOMMEND_URL = 'https://appapi.youxiake.com/app/flow/recommend';
const COMMUNITY_URL = 'https://appapi.youxiake.com/app/v2/homepage/data';

///首页接口
class HomeDao {
  static Future<HomeResultData> fetch() async {
    Response response = await Dio().get(HOME_URL);
    if (response.statusCode == 200) {
      HomeResultEntity entity = HomeResultEntity().fromJson(response.data);
      if (entity.code == 200 && entity.msg == 'Succ') {
        return entity.data;
      }
    } else {
      throw Exception('Failed to load home data');
    }
  }

  static Future<RecommendResultData> fetchRecommend(
      {int type = 1, int page = 1}) async {
    Response response = await Dio()
        .get(HOME_RECOMMEND_URL, queryParameters: {'page': page, 'type': type});
    if (response.statusCode == 200) {
      RecommendResultEntity entity =
          RecommendResultEntity().fromJson(response.data);
      if (entity.code == 200 && entity.msg == 'Succ') {
        return entity.data;
      }
    } else {
      throw Exception('Failed to load recommend data');
    }
  }

  static Future<CommunityResultData> fetchCommunity({int page = 1}) async {
    Response response =
        await Dio().get(COMMUNITY_URL, queryParameters: {'curPage': page});
    if (response.statusCode == 200) {
      CommunityResultEntity entity =
          CommunityResultEntity().fromJson(response.data);
      if (entity.code == 200 && entity.msg == 'Succ') {
        return entity.data;
      }
    } else {
      throw Exception('Failed to load community data');
    }
  }
}
