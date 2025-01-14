import 'package:get/get.dart';

class MainViewModel extends GetxController {
  // Observable property for content
  var content = ''.obs;

    void updateLabel() {
    // This method does nothing, since the property is fully observable
  }
}