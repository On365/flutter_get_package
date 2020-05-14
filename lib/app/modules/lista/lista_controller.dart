import 'package:get/get.dart';
import 'package:get_package/app/models/usermodel.dart';
import 'package:get_package/app/modules/lista/lista_service.dart';

class ListaController extends GetController {
  final ListaService listaSevice = Get.put<ListaService>(ListaService());  
  static ListaController get to => Get.find();
  
  List<UserModel> data = [];
  Future<List<UserModel>>  getData() async {
    data =  await listaSevice.getUsers();
    update(this);
    return data;
    // return data;
  }
}