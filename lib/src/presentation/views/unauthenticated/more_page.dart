import 'package:flutter/material.dart';
import 'package:mobile/src/core/asset_helper.dart';
import 'package:mobile/src/presentation/views/widgets/custom_button.dart';
import 'package:mobile/src/presentation/views/widgets/custom_text.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leadingWidth: 150,
        toolbarHeight: 100,
        title: SizedBox(
            height: 150, width: 150, child: Image.asset(AssetHelper.logo)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          buildTitle(),
          buildMyActivity(),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      text: "More on Explore",
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.settings,
                      ),
                      title: CustomText(
                        text: "Settings",
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.contact_page_outlined,
                      ),
                      title: CustomText(
                        text: "Contact Us",
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.info_outline,
                      ),
                      title: CustomText(
                        text: "About Us",
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.privacy_tip_outlined,
                      ),
                      title: CustomText(
                        text: "Privacy Policy",
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container buildMyActivity() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: const Card(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 15),
          child: ListTile(
            leading: Icon(
              Icons.newspaper,
              size: 50,
            ),
            title: CustomText(
              text: "My Activity",
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            subtitle: CustomText(
                text: "View your recent property\nsearches and activities"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
        ),
      ),
    );
  }

  SizedBox buildTitle() {
    return SizedBox(
      height: 150,
      child: Stack(
        children: [
          Container(
            height: 80,
            color: Colors.black,
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              height: 100,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Column(
                  children: [
                    const CustomText(
                      text: "Sign in to begin your home search journey",
                      fontSize: 12,
                    ),
                    const SizedBox(height: 10),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: CustomButton(
                          onTap: () {},
                          text: "SIGN IN / SIGN UP",
                          fontSize: 12,
                          height: 35,
                        ))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
