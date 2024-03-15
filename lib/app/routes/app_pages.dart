import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/leavePermit/bindings/leave_permit_binding.dart';
import '../modules/leavePermit/views/leave_permit_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LEAVE_PERMIT,
      page: () => const LeavePermitView(),
      binding: LeavePermitBinding(),
    ),
  ];
}
