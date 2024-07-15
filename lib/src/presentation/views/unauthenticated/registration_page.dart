import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mobile/src/core/constants.dart';
import 'package:mobile/src/presentation/views/widgets/custom_button.dart';
import 'package:mobile/src/presentation/views/widgets/custom_text.dart';
import 'package:mobile/src/presentation/views/widgets/custom_text_field.dart';
import 'package:responsive_framework/responsive_framework.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool isHidden = true;
  bool isHiddenConfirmPass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.keyboard_arrow_left,
              color: Colors.white,
            )),
        title: const CustomText(
          text: "Create an Account",
          color: Colors.white,
          fontSize: 15,
        ),
      ),
      body: Column(
        children: [
          Container(
            margin:
                ResponsiveBreakpoints.of(context).isTablet && (!Platform.isIOS)
                    ? const EdgeInsets.symmetric(horizontal: 90, vertical: 40)
                    : const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: const CustomText(
                        text: "Name",
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      )),
                  CustomTextField(
                    controller: nameController,
                    label: "",
                    textColor: Colors.black,
                    fontSize: ResponsiveBreakpoints.of(context).isTablet &&
                            (!Platform.isIOS)
                        ? 17
                        : 12,
                    height: ResponsiveBreakpoints.of(context).isTablet &&
                            (!Platform.isIOS)
                        ? 0.1
                        : 0.5,
                    borderSide: const BorderSide(
                        color: ThemeColor.darkGrey, width: 1.2),
                  ),
                  const SizedBox(height: 15),
                  Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: const CustomText(
                        text: "Email Address",
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      )),
                  CustomTextField(
                    controller: emailController,
                    label: "",
                    textColor: Colors.black,
                    fontSize: ResponsiveBreakpoints.of(context).isTablet &&
                            (!Platform.isIOS)
                        ? 17
                        : 12,
                    height: ResponsiveBreakpoints.of(context).isTablet &&
                            (!Platform.isIOS)
                        ? 0.1
                        : 0.5,
                    borderSide: const BorderSide(
                        color: ThemeColor.darkGrey, width: 1.2),
                  ),
                  const SizedBox(height: 15),
                  Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: const CustomText(
                        text: "Password",
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      )),
                  StatefulBuilder(builder:
                      (BuildContext context, StateSetter setStatePassword) {
                    return CustomTextField(
                      controller: passwordController,
                      label: "",
                      textColor: Colors.black,
                      fontSize: ResponsiveBreakpoints.of(context).isTablet &&
                              (!Platform.isIOS)
                          ? 17
                          : 12,
                      height: ResponsiveBreakpoints.of(context).isTablet &&
                              (!Platform.isIOS)
                          ? 0.1
                          : 0.5,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 15),
                      borderSide: const BorderSide(
                          color: ThemeColor.darkGrey, width: 1.2),
                      prefix: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Icon(
                          Icons.lock,
                          color: Colors.grey,
                        ),
                      ),
                      suffixIcon: IconButton(
                        splashColor: Colors.transparent,
                        onPressed: () => setStatePassword(() {
                          isHidden = !isHidden;
                        }),
                        icon: isHidden
                            ? const Icon(
                                Icons.visibility_off,
                                color: Colors.grey,
                              )
                            : const Icon(
                                Icons.visibility,
                                color: Colors.grey,
                              ),
                      ),
                      obscureText: isHidden,
                      validator: (value) {
                        if (passwordController.text.isEmpty) {
                          return 'Password is required';
                        }

                        return null;
                      },
                    );
                  }),
                  const SizedBox(height: 15),
                  Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: const CustomText(
                        text: "Confirm Password",
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      )),
                  StatefulBuilder(builder:
                      (BuildContext context, StateSetter setStatePassword) {
                    return CustomTextField(
                      controller: confirmPasswordController,
                      label: "",
                      textColor: Colors.black,
                      fontSize: ResponsiveBreakpoints.of(context).isTablet &&
                              (!Platform.isIOS)
                          ? 17
                          : 12,
                      height: ResponsiveBreakpoints.of(context).isTablet &&
                              (!Platform.isIOS)
                          ? 0.1
                          : 0.5,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 15),
                      borderSide: const BorderSide(
                          color: ThemeColor.darkGrey, width: 1.2),
                      prefix: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Icon(
                          Icons.lock,
                          color: Colors.grey,
                        ),
                      ),
                      suffixIcon: IconButton(
                        splashColor: Colors.transparent,
                        onPressed: () => setStatePassword(() {
                          isHiddenConfirmPass = !isHiddenConfirmPass;
                        }),
                        icon: isHiddenConfirmPass
                            ? const Icon(
                                Icons.visibility_off,
                                color: Colors.grey,
                              )
                            : const Icon(
                                Icons.visibility,
                                color: Colors.grey,
                              ),
                      ),
                      obscureText: isHiddenConfirmPass,
                      validator: (value) {
                        if (passwordController.text.isEmpty) {
                          return 'Password is required';
                        }

                        return null;
                      },
                    );
                  }),
                  const SizedBox(height: 30),
                  const CustomText(
                      text:
                          "I have read and agree to Explore's Terms and Conditions."),
                  const SizedBox(height: 10),
                  CustomButton(
                    onTap: () async {},
                    color: ThemeColor.mainColor,
                    borderRadius: BorderRadius.circular(10),
                    text: "Create Account",
                    fontSize: 13,
                    height: 40,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
