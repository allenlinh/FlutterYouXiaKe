import 'package:dio/dio.dart';
import 'package:yyxiake_flutter/models/meet_colums_entity.dart';
import 'package:yyxiake_flutter/models/meet_topic_entity.dart';

const TOPIC_URL = 'https://appapi.youxiake.com/app/v3/discover/find/up';
const SPECIAL_URL = 'https://appapi.youxiake.com/app/v3/discover/column';

class MeetDao {
  static Future<MeetTopicData> fetchTopic() async {
    Response response = await Dio().get(TOPIC_URL);
    if (response.statusCode == 200) {
      MeetTopicEntity entity = MeetTopicEntity().fromJson(response.data);
      if (entity.code == 200 && entity.msg == 'Succ') {
        return entity.data;
      }
    } else {
      throw Exception('Failed to load meet topic data');
    }
  }

  static Future<MeetColumsData> fetchSpecial() async {
    Response response = await Dio().get(SPECIAL_URL);
    if (response.statusCode == 200) {
      MeetColumsEntity entity = MeetColumsEntity().fromJson(response.data);
      if (entity.code == 200 && entity.msg == 'Succ') {
        return entity.data;
      }
    } else {
      throw Exception('Failed to load meet special data');
    }
  }
}
