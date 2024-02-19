import 'dart:convert';

import 'package:deep_dive_get_cli/app/data/model/story_api_model.dart';

import '../constant/constanta.dart';
import 'package:http/http.dart' as http;

class StoryService {
   Future<List<StoryModel>> fetchAllListOfStory() async {
    try {
      Uri uri = Uri.parse('$apiUrl/user/story/');
      http.Response response = await http.get(uri);
      if (response.statusCode == 200) {
        List? data =
            (json.decode(response.body) as Map<String, dynamic>)['data'];
        if (data == null || data.isEmpty) {
          return [];
        } else {
          return data.map((e) => StoryModel.fromJson(e)).toList();
        }
      }
      return [];
    } catch (e) {
      throw Exception(e);
    }
  }
}