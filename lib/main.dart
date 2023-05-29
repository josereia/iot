import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iot/routes/app_pages.dart';
import 'package:iot/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'IOT',
      getPages: AppPages.pages,
      initialRoute: AppRoutes.initial,
      debugShowCheckedModeBanner: false,
      locale: const Locale('pt', 'BR'),
    );
  }
}
