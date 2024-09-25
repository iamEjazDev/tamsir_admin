import 'package:get/get.dart';

class CarouselController extends GetxController {
  var currentIndex = 0.obs;

  List<String> imageList = [
    'assets/images/service.png', 
    'assets/images/service.png',
    'assets/images/service.png',
  ];

  void updateIndex(int index) {
    currentIndex.value = index;
  }

 void nextSlide() {
    if (currentIndex.value < imageList.length - 1) {
      currentIndex.value++;
    }
  }

  void prevSlide() {
    if (currentIndex.value > 0) {
      currentIndex.value--;
    }
  }
}
