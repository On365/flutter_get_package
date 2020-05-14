import 'package:get/get.dart';

class AppController extends GetController {
  static AppController get to => Get.find();
  
  
  

  bool _darkTheame = false;

  bool get darkTheame {
    return _darkTheame;
  }

  set darkTheame(bool v) {
    _darkTheame = v;
    update(this);
  }
}
