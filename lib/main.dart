import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tamsir_admin/controllers/languages_key.dart';
import 'package:tamsir_admin/views/pages/splash_screen.dart';

void main() => runApp(const TamsirAdmin());

class TamsirAdmin extends StatefulWidget {
  const TamsirAdmin({super.key});

  @override
  State<TamsirAdmin> createState() => _TamsirAdminState();
}

class _TamsirAdminState extends State<TamsirAdmin> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return GetMaterialApp(
          locale: Get.locale, 
          translations: Language(), 
          fallbackLocale: const Locale("en", "US",), 
          supportedLocales:const [Locale('en','US'),Locale('ar,AR'),],
          debugShowCheckedModeBanner: false,
          home: const SplashScreen(), 
          builder: (context, widget) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
              child: widget ?? Container(),
            );
          },
        );
      },
    );
  }
}
