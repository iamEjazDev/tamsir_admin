import 'package:get/get.dart';

class NotificationController extends GetxController {
  var notifications = <NotificationModel>[].obs;

  @override
  void onInit() {
    fetchNotifications();
    super.onInit();
  }

  void fetchNotifications() {
    notifications.addAll([
      NotificationModel(
        image: 'assets/icons/shopping-sale.svg',
        title: 'Get your special dicount \nnow! Only for this month',
        text: 'The European languages are\nmembers of the same family their',
        time: '05:00',
      ),
      NotificationModel(
        image: 'assets/icons/shopping-sale.svg',
        title: 'Going to Bali? This hotel\nrecommendation might help',
        text: 'See the best hotel recommendation\nfor your trip',
        time: '07:00',
      ),
       NotificationModel(
        image: 'assets/icons/shopping-alert.svg',
        title: 'Your account was Login from\nLaptop at 5:00. Wasn’t you?',
        text: 'The European languages are\nmembers of the same family their',
        time: 'Feb 22',
      ),
       NotificationModel(
        image: 'assets/icons/shopping-dollar.svg',
        title: 'Your booking was succesfuly\nmade! Enjoy your vacation',
        text: 'The European languages are\nmembers of the same family their',
        time: 'Jan 22',
      ),
       NotificationModel(
        image: 'assets/icons/shopping-sale.svg',
        title: 'Special Price for honeymoon\noccasion in Bali Resort',
        text: 'The European languages are\nmembers of the same family their',
        time: 'Dec 31',
      ),
    ]);
  }

  void addNotification(NotificationModel notification) {
    notifications.add(notification);
  }

  void removeNotification(int index) {
    notifications.removeAt(index);
  }
}

class NotificationModel {
  final String image;
  final String title;
  final String text;
  final String time;

  NotificationModel({
    required this.image,
    required this.title,
    required this.text,
    required this.time,
  });
}
