import 'package:flutter/material.dart';
import 'package:mobile/src/core/asset_helper.dart';
import 'package:mobile/src/core/constants.dart';
import 'package:mobile/src/presentation/views/unauthenticated/login_page.dart';
import 'package:mobile/src/presentation/views/widgets/custom_button.dart';
import 'package:mobile/src/presentation/views/widgets/custom_text.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class SignUpChecker extends StatefulWidget {
  const SignUpChecker({super.key});

  @override
  State<SignUpChecker> createState() => _SignUpCheckerState();
}

class _SignUpCheckerState extends State<SignUpChecker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leadingWidth: 150,
        toolbarHeight: 100,
        title: SizedBox(
            height: 150, width: 150, child: Image.asset(AssetHelper.logo)),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomText(
                text: "Want to keep track of all your \nsearches?",
                textAlign: TextAlign.center,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
              const SizedBox(height: 10),
              const CustomText(
                text: "Save your searches at one place by signing up.",
                textAlign: TextAlign.center,
                fontSize: 11,
                fontWeight: FontWeight.w400,
              ),
              const SizedBox(height: 20),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  child: CustomButton(
                    onTap: () {},
                    text: "Sign Up",
                    fontSize: 14,
                    height: 40,
                  ))
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        color: Colors.white,
        padding: const EdgeInsets.only(bottom: 80),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomText(
              text: "Have an account?",
              fontSize: 12,
            ),
            const SizedBox(width: 5),
            InkWell(
              onTap: () => pushScreen(context,
                  screen: const LoginPage(), withNavBar: false),
              child: const CustomText(
                text: "Login",
                color: ThemeColor.mainColor,
                fontWeight: FontWeight.w700,
                fontSize: 12,
                textDecoration: TextDecoration.underline,
              ),
            )
          ],
        ),
      ),
    );
  }
}
