// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:study_getx/core/constants.dart';

// class AuthMiddleWare extends GetMiddleware {
//   SharedPreferences? sharedPreferences;

//   @override
//   int? get priority => 1;
//   @override
//   redirect(String? route) async {
//     sharedPreferences = await SharedPreferences.getInstance();
//     if (sharedPreferences!.getString("user") != null) {
//       return RouteSettings(name: AppStrings.kLogOutPageRout);
//     }
//     if (sharedPreferences!.getString("admin") != null) {
//       return RouteSettings(name: AppStrings.kAdminPageRout);
//     }
//   }
// }
