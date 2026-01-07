
import 'dart:convert';

import 'package:tailor_design_app/core/api_client.dart';
import 'package:tailor_design_app/data/models/home_model.dart';

class FashionRemoteDatesource {
  final ApiClient client;
  FashionRemoteDatesource(this.client);

   Future<HomeModel> fetchFashionDetails()async{
  try {
    final response = await client.post('fashion');
    print(response.statusCode);
    if (response.statusCode==200) {
      final data= jsonDecode(response.body);
      if (data['status']=="success") {
       return  HomeModel.fromJson(data['data']);
      }else{
       throw Exception('API returned failure status');
      }
    }
    else{
         throw Exception('Failed to fetch data: ${response.statusCode}');
    }
  } catch (e) {
    print(e);
    throw Exception('Error fetching fashion details: $e');
  }
  }
}