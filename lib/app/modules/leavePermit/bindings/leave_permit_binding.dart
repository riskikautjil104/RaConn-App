import 'package:get/get.dart';

import '../controllers/leave_permit_controller.dart';

class LeavePermitBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LeavePermitController>(
      () => LeavePermitController(),
    );
  }
}
