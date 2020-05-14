import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_package/app/app_controller.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(title: Text("Get Package")),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                    onPressed: () {
                      AppController.to.darkTheame =
                          !AppController.to.darkTheame;
                    },
                    child: Text("Dark/Light")),
                RaisedButton(onPressed: () => Get.toNamed('/lista'), child: Text("Lista"))
              ],
            ),
          )),
    );
  }
}
