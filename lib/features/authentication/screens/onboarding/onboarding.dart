import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloth_cycle/features/authentication/controllers/onboarding_controller.dart';
import 'package:cloth_cycle/utils/constants/image_strings.dart';
import 'package:cloth_cycle/utils/constants/text_strings.dart';

import 'widget/onboarding_dot_navigation.dart';
import 'widget/onboarding_next.dart';
import 'widget/onboarding_page.dart';
import 'widget/onboarding_skip.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnboardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnboardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnboardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          //Skip Button
          const OnboardingSkip(),

          // Dot Navigation
          const OnboardingDotNavigation(),

          // Next Button
          const OnboardingNextButton(),
        ],
      ),
    );
  }
}
