import 'package:flutter/material.dart';

import 'package:get/get.dart';
// import 'package:raconn_app/app/modules/leavePermit/views/leave_permit_view.dart';
import 'package:raconn_app/app/modules/leavePermit/views/submit_leave_permit.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Get.to(SubmitLeavePermitView());
          },
          child: Text("Leave Permit"),
        ),
      ),
    );
  }
}
