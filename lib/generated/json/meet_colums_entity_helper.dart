import 'package:yyxiake_flutter/models/meet_colums_entity.dart';

meetColumsEntityFromJson(MeetColumsEntity data, Map<String, dynamic> json) {
	if (json['code'] != null) {
		data.code = json['code'] is String
				? int.tryParse(json['code'])
				: json['code'].toInt();
	}
	if (json['msg'] != null) {
		data.msg = json['msg'].toString();
	}
	if (json['data'] != null) {
		data.data = MeetColumsData().fromJson(json['data']);
	}
	return data;
}

Map<String, dynamic> meetColumsEntityToJson(MeetColumsEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['code'] = entity.code;
	data['msg'] = entity.msg;
	data['data'] = entity.data?.toJson();
	return data;
}

meetColumsDataFromJson(MeetColumsData data, Map<String, dynamic> json) {
	if (json['columns'] != null) {
		data.columns = (json['columns'] as List).map((v) => MeetColumsDataColumn().fromJson(v)).toList();
	}
	if (json['totalPage'] != null) {
		data.totalPage = json['totalPage'] is String
				? int.tryParse(json['totalPage'])
				: json['totalPage'].toInt();
	}
	return data;
}

Map<String, dynamic> meetColumsDataToJson(MeetColumsData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['columns'] =  entity.columns?.map((v) => v.toJson())?.toList();
	data['totalPage'] = entity.totalPage;
	return data;
}

meetColumsDataColumnFromJson(MeetColumsDataColumn data, Map<String, dynamic> json) {
	if (json['columnId'] != null) {
		data.columnId = json['columnId'] is String
				? int.tryParse(json['columnId'])
				: json['columnId'].toInt();
	}
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['discovers'] != null) {
		data.discovers = (json['discovers'] as List).map((v) => MeetColumsDataColumnsDiscover().fromJson(v)).toList();
	}
	return data;
}

Map<String, dynamic> meetColumsDataColumnToJson(MeetColumsDataColumn entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['columnId'] = entity.columnId;
	data['title'] = entity.title;
	data['discovers'] =  entity.discovers?.map((v) => v.toJson())?.toList();
	return data;
}

meetColumsDataColumnsDiscoverFromJson(MeetColumsDataColumnsDiscover data, Map<String, dynamic> json) {
	if (json['quoteId'] != null) {
		data.quoteId = json['quoteId'] is String
				? int.tryParse(json['quoteId'])
				: json['quoteId'].toInt();
	}
	if (json['cover'] != null) {
		data.cover = json['cover'].toString();
	}
	if (json['content'] != null) {
		data.content = json['content'].toString();
	}
	if (json['type'] != null) {
		data.type = json['type'] is String
				? int.tryParse(json['type'])
				: json['type'].toInt();
	}
	return data;
}

Map<String, dynamic> meetColumsDataColumnsDiscoverToJson(MeetColumsDataColumnsDiscover entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['quoteId'] = entity.quoteId;
	data['cover'] = entity.cover;
	data['content'] = entity.content;
	data['type'] = entity.type;
	return data;
}