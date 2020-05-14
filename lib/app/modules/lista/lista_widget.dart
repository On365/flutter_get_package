import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_package/app/models/usermodel.dart';
import 'package:get_package/app/modules/lista/lista_controller.dart';

class ListaWidget extends StatelessWidget {
  const ListaWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista')),
      body: GetBuilder<ListaController>(
          init: ListaController(),
          initState: (_) {
            ListaController.to.getData();
          },
          builder: (controller) {
            if (controller.data.length == 0) {
              //controller.getData();
              return Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                  ),
                ),
              );
            } else {
              return RefreshIndicator(
                  onRefresh: controller.getData,
                  child: ListView.builder(
                      itemCount: controller.data.length,
                      itemBuilder: (BuildContext context, int index) {
                        List<UserModel> user = controller.data;
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                NetworkImage(user[index].picture.thumbnail),
                          ),
                          title: Text(
                              '${user[index].name.first} ${user[index].name.last}'),
                          subtitle: Text(user[index].email),
                        );
                      }));
            }
          }),
    );
  }
}
