  import 'package:flutter/material.dart';
  import 'package:get/get.dart';

  // ignore: deprecated_member_use
  class StoreTabController extends GetxController with SingleGetTickerProviderMixin {
    late TabController tabController;

    @override
    void onInit() {
      tabController = TabController(length: 3, vsync: this);
      super.onInit();
    }

    @override
    void onClose() {
      tabController.dispose();
      super.onClose();
    }
  }
