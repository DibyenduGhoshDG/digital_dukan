import 'package:get/get.dart';

class DashBordController extends GetxController {
  RxBool isChartShow = false.obs;

  toggleChart() {
    isChartShow.value = !isChartShow.value;
  }
}
