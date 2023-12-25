import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:interview/Moduls/HomePage/Model/Api_Model.dart';

class APIHelper {
  APIHelper._();

  static final APIHelper apiHelper = APIHelper._();

  Future<ApiModel?> fetchApi() async {
    String uri = "https://api.jikan.moe/v4/anime";

    http.Response res = await http.get(Uri.parse(uri));

    if (res.statusCode == 200) {
      Map decodedData = jsonDecode(res.body);

      ApiModel apiModel = ApiModel.fromMap(data: decodedData);
      return apiModel;
    }
  }
}
