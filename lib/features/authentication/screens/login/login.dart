import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:cloth_cycle/common/style/spacing_styles.dart';
import 'package:cloth_cycle/utils/constants/sizes.dart';
import 'package:cloth_cycle/utils/constants/text_strings.dart';

import '../../../../common/widget/form_divider.dart';
import '../../../../common/widget/social_button.dart';
import 'widget/login_form.dart';
import 'widget/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, Title, & Sub-Title
              const LoginHeader(),

              // Form
              const LoginForm(),

              // Divider
              FormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Footer
              const SocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
