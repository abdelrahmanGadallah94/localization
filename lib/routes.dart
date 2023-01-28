import 'package:get/get.dart';
import 'package:study_getx/view/home.dart';
import 'package:study_getx/view/next_page.dart';

String kNextPage = '/nextPage';

class AppRoutes {
  static List<GetPage<dynamic>> pages = [
    GetPage(
      name: '/',
      page: () => const HomePage(),
    ),
    GetPage(name: kNextPage, page: () => const NextPage()),
  ];
}
