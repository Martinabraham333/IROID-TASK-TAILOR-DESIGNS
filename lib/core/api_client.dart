import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class ApiClient {
  final String baseUrl = 'https://stage-ncomfort.b4production.com/api/';

  Future<http.Response> post(String endPoints) async {
    final url = Uri.parse(baseUrl + endPoints);
    debugPrint(url.toString());
    final response = await http.post(url);
    return response;
  }
}
