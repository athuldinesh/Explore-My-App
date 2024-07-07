import 'package:flutter/material.dart';
import 'package:mobile/src/core/asset_helper.dart';
import 'package:mobile/src/presentation/views/widgets/custom_button.dart';
import 'package:mobile/src/presentation/views/widgets/custom_text.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  late AnimationController _logoController;
  late AnimationController _textController;
  late AnimationController _buttonController;

  @override
  void initState() {
    super.initState();

    _logoController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _textController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _buttonController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _startAnimation();
  }

  void _startAnimation() async {
    await _logoController.forward();
    await _textController.forward();
    await _buttonController.forward();
  }

  @override
  void dispose() {
    _logoController.dispose();
    _textController.dispose();
    _buttonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          buildBackground(),
          buildLogo(),
          buildText(context),
          buildButton()
        ],
      ),
    );
  }

  Align buildButton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: FadeTransition(
        opacity: _buttonController,
        child: Container(
          margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
          child: const CustomButton(
            color: Colors.black,
            text: "Continue",
          ),
        ),
      ),
    );
  }

  Positioned buildText(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height * 0.15,
      child: FadeTransition(
        opacity: _textController,
        child: Container(
          margin: const EdgeInsets.only(left: 20),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: "List.",
                color: Colors.white,
                fontSize: 35,
                fontFamily: "tanagean",
              ),
              CustomText(
                text: "Seek.",
                color: Colors.white,
                fontSize: 40,
                fontFamily: "tanagean",
              ),
              CustomText(
                text: "Explore.",
                color: Colors.white,
                fontSize: 45,
                fontFamily: "tanagean",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildLogo() {
    return FadeTransition(
      opacity: _logoController,
      child: Container(
          margin: const EdgeInsets.only(top: 100),
          child: Image.asset(AssetHelper.logo)),
    );
  }

  Container buildBackground() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage(AssetHelper.splashImage),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.3),
            BlendMode.dstATop,
          ),
        ),
      ),
    );
  }
}
