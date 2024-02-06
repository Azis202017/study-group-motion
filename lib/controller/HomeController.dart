import 'package:bermain_dengan_state/controller/TestController.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
 
  int counter = 0;
  void increment() {
    counter++;
    update();
  }
}