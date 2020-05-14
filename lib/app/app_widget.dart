import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_package/app/app_controller.dart';
import 'package:get_package/app/shared/themeData.dart';

import 'modules/home/home_widget.dart';
import 'modules/lista/lista_widget.dart';

class AppWidget extends StatefulWidget {
  AppWidget({Key key}) : super(key: key);

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    
    return GetBuilder<AppController>(
        init: AppController(),
        builder: (controller) {
          print('AppWidget:${controller.darkTheame}');
          return GetMaterialApp(
            initialRoute: '/',
            namedRoutes: {
              '/': GetRoute(page: HomeWidget()),
              '/lista': GetRoute(page: ListaWidget()),
            },
            theme: controller.darkTheame ? customDarkTheme : customLightTheme,
            // home: HomeWidget(),
            debugShowCheckedModeBanner: false,
          );
        });
  }
}
