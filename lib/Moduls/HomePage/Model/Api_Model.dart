class ApiModel {
  List data;

  ApiModel({required this.data});

  factory ApiModel.fromMap({required Map data}) {
    return ApiModel(data: data['data']);
  }
}
