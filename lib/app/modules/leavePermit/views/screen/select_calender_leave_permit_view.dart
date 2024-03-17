import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:raconn_app/app/modules/leavePermit/controllers/submit_leave_permit_controller.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

// import 'package:intl/intl.dart';

// ignore: must_be_immutable
class SelectCalenderLeavePermitView
    extends GetView<SubmitLeavePermitController> {
  SelectCalenderLeavePermitView({Key? key}) : super(key: key);

  SubmitLeavePermitController controller =
      Get.put(SubmitLeavePermitController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.cancel_outlined),
        ),
        title: const Text('LeavePermit'),
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 0.1,
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Save',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(() => Text(
                  controller.range.value,
                  style: TextStyle(fontSize: 30),
                )),
            Positioned(
              left: 0,
              top: 80,
              right: 0,
              bottom: 0,
              child: SfDateRangePicker(
                confirmText: 'Save',
                headerStyle: DateRangePickerHeaderStyle(
                  backgroundColor: Colors.white,
                ),
                cancelText: 'Cancel',
                startRangeSelectionColor: Colors.blue,
                endRangeSelectionColor: Colors.blue,
                selectionColor: Colors.blue,
                rangeSelectionColor: Colors.blue.shade100,
                backgroundColor: Colors.white,
                todayHighlightColor: Colors.blue,
                onSelectionChanged: controller.onSelectionChanged,
                selectionMode: DateRangePickerSelectionMode.range,
                initialSelectedRange: PickerDateRange(
                    DateTime.now().subtract(const Duration(days: 4)),
                    DateTime.now().add(const Duration(days: 3))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
