import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:cloth_cycle/common/widget/form_divider.dart';
import 'package:cloth_cycle/common/widget/social_button.dart';
import 'package:cloth_cycle/utils/constants/sizes.dart';
import 'package:cloth_cycle/utils/constants/text_strings.dart';

import 'widget/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Form
              const SignupForm(),

              // Divider
              FormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Social Button
              const SocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
