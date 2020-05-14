import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get_package/app/models/usermodel.dart';
class ListaService extends GetController {
  static ListaService get to => Get.find();
  final _client = Dio();

  Future<List<UserModel>> getUsers() async {
    final baseUrl =
        'https://randomuser.me/api/?results=15&nat=br&exc=location,login,registered,id';
    final response = await _client.get(baseUrl);
    return List<UserModel>.from(
      response.data['results'].map(
        (user) => UserModel.fromJson(user),
      ),
    );
  }
}
