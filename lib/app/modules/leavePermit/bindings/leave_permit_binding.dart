import 'package:get/get.dart';
import 'package:raconn_app/app/modules/leavePermit/controllers/submit_leave_permit_controller.dart';

import '../controllers/leave_permit_controller.dart';

class LeavePermitBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LeavePermitController>(
      () => LeavePermitController(),
    );
    Get.lazyPut<SubmitLeavePermitController>(
      () => SubmitLeavePermitController(),
    );
  }
}
