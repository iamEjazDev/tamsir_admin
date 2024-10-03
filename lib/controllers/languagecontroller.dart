import 'package:get/get.dart';

class LanguageController extends GetxController {
  var isEnglish = true.obs; 

  void toggleLanguage() {
    isEnglish.value = !isEnglish.value; 
  }

  void changeLanguage(String s) {}
}
