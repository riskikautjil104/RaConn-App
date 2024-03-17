import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:raconn_app/app/modules/leavePermit/controllers/submit_leave_permit_controller.dart';
import 'package:raconn_app/app/modules/leavePermit/views/screen/select_calender_leave_permit_view.dart';
import 'package:raconn_app/app/modules/leavePermit/views/screen/select_employee_view.dart';

// ignore: must_be_immutable
class SubmitLeavePermitView extends GetView<SubmitLeavePermitController> {
  // SubmitLeavePermitView({Key? key}) : super(key: key);
  SubmitLeavePermitController controller =
      Get.put(SubmitLeavePermitController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Submit Leave Permit',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        shadowColor: Colors.black,
        elevation: 3,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            Center(
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  // margin: EdgeInsets.only(top: 50),
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "Submission Type",
                  )),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    // color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    border: Border.all(
                      color: Colors.black,
                      width: 0.1,
                    )),
                width: MediaQuery.of(context).size.width * 0.8,
                // margin: EdgeInsets.only(top: 50),
                padding: EdgeInsets.all(10),
                height: 50,
                child: Obx(
                  () => DropdownButton<String>(
                    value: controller.selectedValue.value,
                    onChanged: (var newValue) {
                      print(controller.selectedValue.value);
                      controller.selectedValue.value = newValue!;
                    },
                    isExpanded: true,
                    elevation: 0,
                    // dropdownColor: Colors.amber,

                    icon: Icon(Icons.keyboard_arrow_down),
                    underline: Align(),
                    items: <String>['Izin', 'Cuti']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  // margin: EdgeInsets.only(top: 50),
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "Date",
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                  // color: Colors.amber,
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  border: Border.all(
                    color: Colors.black,
                    width: 0.1,
                  )),
              width: MediaQuery.of(context).size.width * 0.8,
              // margin: EdgeInsets.only(top: 50),
              padding: EdgeInsets.all(10),
              height: 50,
              // child: Row(
              //   children: [
              //     Obx(() => Text(
              //           controller.range.value,
              //           style: TextStyle(fontSize: 30),
              //         )),
              //     Icon(Icons.calendar_month_outlined),
              //   ],
              // ),
              child: TextFormField(
                readOnly: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  // labelText: 'Tanggal',

                  // hintText: 'Masukkan tanggal',
                  suffixIcon: IconButton(
                    onPressed: () {
                      Get.to(SelectCalenderLeavePermitView());
                    },
                    icon: Icon(Icons.calendar_month_outlined),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  // margin: EdgeInsets.only(top: 50),
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "Delegate To",
                  )),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    // color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    border: Border.all(
                      color: Colors.black,
                      width: 0.1,
                    )),
                width: MediaQuery.of(context).size.width * 0.8,
                // margin: EdgeInsets.only(top: 50),
                padding: EdgeInsets.all(10),
                height: 50,
                // child: Row(
                //   children: [
                //     Obx(() => Text(
                //           controller.range.value,
                //           style: TextStyle(fontSize: 30),
                //         )),
                //     Icon(Icons.calendar_month_outlined),
                //   ],
                // ),
                child: TextFormField(
                  readOnly: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    // labelText: 'Tanggal',

                    // hintText: 'Masukkan tanggal',
                    suffixIcon: IconButton(
                      onPressed: () {
                        Get.to(SelectEmployeeView());
                      },
                      icon: Icon(Icons.keyboard_arrow_down),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  // margin: EdgeInsets.only(top: 50),
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "You can add crew to provide notification about you",
                    softWrap: true,
                    style: TextStyle(color: Colors.grey, fontSize: 11),
                  )),
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  // margin: EdgeInsets.only(top: 50),
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "Reason",
                  )),
            ),
            Container(
              decoration: BoxDecoration(
                  // color: Colors.amber,

                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  border: Border.all(
                    color: Colors.black,
                    width: 0.1,
                  )),
              width: MediaQuery.of(context).size.width * 0.8,
              // margin: EdgeInsets.only(top: 50),
              padding: EdgeInsets.all(10),
              height: 250,

              child: TextFormField(
                maxLength: 250,
                maxLines: 250,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  // labelText: 'Tanggal',
                  fillColor: Colors.amber,
                  hintText: '',
                ),
              ),
            ),
            SizedBox(height: 100),
            Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    // color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(
                      color: Colors.black,
                      width: 0.1,
                    )),
                width: MediaQuery.of(context).size.width * 0.8,
                // margin: EdgeInsets.only(top: 50),
                padding: EdgeInsets.all(10),
                height: 70,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ))),
            SizedBox(height: 100),

            // Column(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   mainAxisSize: MainAxisSize.min,
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: <Widget>[
            //     Text('Selected date: ${controller.selectedDate}'),
            //     Text('Selected date count: ${controller.dateCount}'),
            //     Text('Selected range: ${controller.range}'),
            //     Text('Selected ranges count: ${controller.rangeCount}')
            //   ],
            // ),
            // Positioned(
            //   left: 0,
            //   top: 80,
            //   right: 0,
            //   bottom: 0,
            //   child: SfDateRangePicker(
            //     onSelectionChanged: controller.onSelectionChanged,
            //     selectionMode: DateRangePickerSelectionMode.range,
            //     initialSelectedRange: PickerDateRange(
            //         DateTime.now().subtract(const Duration(days: 4)),
            //         DateTime.now().add(const Duration(days: 3))),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
