import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:tamsir_admin/constanats/color_constants.dart';
import 'package:tamsir_admin/constanats/icons_constants.dart';
import 'package:tamsir_admin/controllers/bottomnavcontroller.dart';
import 'package:tamsir_admin/views/booking_screen.dart';
import 'package:tamsir_admin/views/chat_screen.dart';
import 'package:tamsir_admin/views/home_screen.dart';
import 'package:tamsir_admin/views/Tab_Indicator/store_screen.dart';
class Bottomnav extends StatelessWidget {
  
  final BottomNavController bottomNavController = Get.put(BottomNavController());
final List<Widget> _screens = [
          HomeScreen(),
    const StoreScreen(),
    const BookingScreen(),
     ChatScreen()
  ];

   Bottomnav({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => _screens[bottomNavController.selectedIndex.value]),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: ColorConstants.orangeColor,
            unselectedItemColor: ColorConstants.lightgrey,
            backgroundColor: Colors.white, 
            currentIndex: bottomNavController.selectedIndex.value,
            onTap: (index) {
              bottomNavController.selectedIndex(index);
            },
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  IconsConstants.home
                ),
                activeIcon: SvgPicture.asset(
                  IconsConstants.home2
                ),
                label: 'bnb_home'.tr, 
              ),
              BottomNavigationBarItem(
                 icon: SvgPicture.asset(
                  IconsConstants.shop
                ),
                activeIcon: SvgPicture.asset(
                  IconsConstants.shop2
                ),
                label: 'bnb_store'.tr,
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  IconsConstants.noteText2
                ),
                activeIcon: SvgPicture.asset(
                  IconsConstants.note
                ),
                label: 'bnb_mybooking'.tr,
              ),
              BottomNavigationBarItem(
               icon: SvgPicture.asset(
                IconsConstants.chat
                ),
                activeIcon: SvgPicture.asset(
                  IconsConstants.chat2
                ),
                label: 'bnb_chat'.tr,
              ),
            ],
          )),
    );
  }
}
