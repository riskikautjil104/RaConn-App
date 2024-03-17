import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';

import 'package:get/get.dart';

import '../controllers/leave_permit_controller.dart';

// import 'package:intl/intl.dart';

class LeavePermitView extends GetView<LeavePermitController> {
  const LeavePermitView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LeavePermit'),
        centerTitle: true,
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 0.1,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                width: 320,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: Offset(0, 3), // bayangan pada bagian bawah
                    ),
                    BoxShadow(
                      color: const Color.fromARGB(255, 255, 255, 255)
                          .withOpacity(0.5),
                      spreadRadius: -2,
                      blurRadius: 7,
                      offset: Offset(0, 0), // bayangan pada bagian kiri
                    ),
                    BoxShadow(
                      color: const Color.fromARGB(255, 255, 255, 255)
                          .withOpacity(0.5),
                      spreadRadius: -2,
                      blurRadius: 7,
                      offset: Offset(3, 0), // bayangan pada bagian kanan
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text("a"),
                        Text("B"),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text("|"),
                        Text("|"),
                        Text("|"),
                        Text("|"),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text("a"),
                        Text("B"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            CalendarCarousel(
              weekendTextStyle: TextStyle(color: Colors.red),
              headerTextStyle: TextStyle(color: Colors.black, fontSize: 20.0),
              weekFormat: false,
              // markedDatesMap: _markedDateMap,
              height: 420.0,
              // daysHaveCircularBorder: true,
              weekdayTextStyle: TextStyle(
                color: Colors.black,
              ), // Semua hari dalam seminggu berwarna hitam
              inactiveDaysTextStyle: TextStyle(
                color: Colors.black,
              ), // Warna teks hari yang tidak aktif
              todayTextStyle: TextStyle(
                color: Colors.black,
              ), // Warna teks hari ini
              showHeader: true, // Tampilkan header
              leftButtonIcon: Icon(Icons.arrow_back_ios),
              rightButtonIcon:
                  Icon(Icons.arrow_forward_ios), // Tombol panah kanan
              headerMargin:
                  EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
              // Atur margin untuk header
            ),
            Container(
              height: 400,
              color: Colors.amber,
            )
          ],
        ),
      ),
    );
  }
}
