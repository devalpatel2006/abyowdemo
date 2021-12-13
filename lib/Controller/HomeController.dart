import 'package:get/get.dart';

class HomeController extends GetxController {
  var Chats = true;
  var status = false;
  var calls = false;
  void UpdateStatus(Update) {
    switch (Update) {
      case 1:
        Chats = true;
        status = false;
        calls = false;
        update();
        break;
      case 2:
        Chats = false;
        status = true;
        calls = false;
        update();
        break;
      case 3:
        Chats = false;
        status = false;
        calls = true;
        update();
        break;
    }
  }
}
