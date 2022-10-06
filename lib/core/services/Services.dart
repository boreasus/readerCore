import 'package:dio/dio.dart';
import 'package:new_project/core/model/News.dart';

class Services {
  final baseUrl = 'https://newsapi.org/v2/';
  final apiKey = 'b08c419e18724f6fb1add50638686a30';

  Future<List<Articles>?> newsApi() async {
    var request = '${baseUrl}top-headlines?country=us&apiKey=$apiKey';
    var response = await Dio().get(request);

    if (response.statusCode == 200) {
      return News.fromJson(response.data).articles;
    } else {
      throw (e) {
        e;
      };
    }
  }
}
