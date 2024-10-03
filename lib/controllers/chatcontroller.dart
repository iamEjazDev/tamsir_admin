import 'package:get/get.dart';

class ChatController extends GetxController {
  var messages = <Map<String, String>>[
    {
      'name': 'Ahmed Ali',
      'image': 'assets/images/ahmed1.png',
      'message': "Oh it's okay, I like it too babe"
    },
    {
      'name': 'John Doe',
      'image': 'assets/images/saad2.png',
      'message': "Don't worry, I'll handle it!"
    },
    {
     'name': 'Ahmed Ali',
      'image': 'assets/images/ahmed1.png',
      'message': "Oh it's okay, I like it too babe"
    },
  ].obs; 
}
