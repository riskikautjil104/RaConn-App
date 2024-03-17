import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:raconn_app/app/modules/leavePermit/controllers/submit_leave_permit_controller.dart';

// import 'package:intl/intl.dart';

// ignore: must_be_immutable
class SelectEmployeeView extends GetView<SubmitLeavePermitController> {
  SelectEmployeeView({Key? key}) : super(key: key);

  SubmitLeavePermitController controller =
      Get.put(SubmitLeavePermitController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee'),
        centerTitle: true,
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 0.1,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
