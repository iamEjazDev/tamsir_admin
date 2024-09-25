import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tamsir_admin/constanats/color_constants.dart';
import 'package:tamsir_admin/views/create_account.dart';
import 'onboarding_screen.dart';
import 'onboarding_screen02.dart';

class OnboardingPageView extends StatefulWidget {
  const OnboardingPageView({super.key});

  @override
  State<OnboardingPageView> createState() => _OnboardingPageViewState();
}

class _OnboardingPageViewState extends State<OnboardingPageView> {
  final PageController _pageController = PageController();
  int _currentPage = 0; // Keep track of the current page

  void _goToNextPage() {
    if (_currentPage == 0) {
      _pageController.animateToPage(1,
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    } else if (_currentPage == 1) {
      Get.to(() => CreateAccount());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.whiteColor,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page; 
                });
              },
              children: [
                PageView1(onNext: _goToNextPage),
                PageView2(onNext: _goToNextPage),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: SmoothPageIndicator(
              controller: _pageController,
              count: 2, 
              effect: const WormEffect(
                activeDotColor: ColorConstants.orangeColor, 
                dotColor: Colors.grey,
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
          ),
          CommonUseButton(
            height: 48.h,
            width: 327.w,
            text: 'Next',
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            textColor: ColorConstants.whiteColor,
            backgroundColor: ColorConstants.orangeColor,
            borderradius: BorderRadius.circular(1000.sp),
            onPressed: _goToNextPage,
          ),
          SizedBox(height: 33.h),
        ],
      ),
    );
  }
}
