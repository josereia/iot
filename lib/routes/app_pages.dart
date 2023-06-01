import 'package:get/get.dart';
import 'package:iot/bindings/home_page_binding.dart';
import 'package:iot/routes/app_routes.dart';
import 'package:iot/ui/pages/home_page.dart';

abstract class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.home,
      page: HomePage.new,
      binding: HomePageBinding(),
    ),
  ];
}
