import 'package:get/get.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';

class SubmitLeavePermitController extends GetxController {
  var selectedValue = 'Izin'.obs;
  // Nilai default
  var selectedDate = ''.obs;
  var dateCount = ''.obs;
  var range = ''.obs;
  var rangeCount = ''.obs;

  void onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    if (args.value is PickerDateRange) {
      range.value = '${DateFormat('MMM dd').format(args.value.startDate)} -'
          // ignore: lines_longer_than_80_chars
          ' ${DateFormat('MMM dd').format(args.value.endDate ?? args.value.startDate)}';
    } else if (args.value is DateTime) {
      selectedDate.value = args.value.toString();
    } else if (args.value is List<DateTime>) {
      dateCount.value = args.value.length.toString();
    } else {
      rangeCount.value = args.value.length.toString();
    }
  }
}
