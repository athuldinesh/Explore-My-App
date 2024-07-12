import 'package:flutter/material.dart';
import 'package:mobile/src/core/asset_helper.dart';
import 'package:mobile/src/core/constants.dart';
import 'package:mobile/src/presentation/views/widgets/custom_button.dart';
import 'package:mobile/src/presentation/views/widgets/custom_text.dart';
import 'package:mobile/src/presentation/views/widgets/full_screen_image.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:badges/badges.dart' as badges;

class OneProjectPage extends StatefulWidget {
  const OneProjectPage({super.key});

  @override
  State<OneProjectPage> createState() => _OneProjectPageState();
}

class _OneProjectPageState extends State<OneProjectPage> {
  final List<String> imgList = [
    'https://imgs.search.brave.com/9-bDRZ63Xzy2IZqVE-YLzEgFMS4caeF28k6cWkVyf0o/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuYWxsc29wcGFu/ZGFsbHNvcHAuY29t/L3B1YmxpYy90ZW1w/L2EwTzRTMDAwMDAw/VnF5NlVBQ19zX0lN/R184MTg1LmpwZw',
    'https://imgs.search.brave.com/n3KKv6TcsqXWC1HxQs4EFdFYUjcKHCybfmu7REpSOm4/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/a2V5b25lcmVhbHR5/Z3JvdXAuY29tL2Js/b2cvd3AtY29udGVu/dC91cGxvYWRzLzIw/MjMvMTIvZW1hYXIt/MTAyNHg2MzUtMS5q/cGc',
    'https://imgs.search.brave.com/2hE1Em1rFBCpMRgC_3qVDIU67G6ugNUWpXJeyCGShoA/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/a2V5b25lcmVhbHR5/Z3JvdXAuY29tL2Js/b2cvd3AtY29udGVu/dC91cGxvYWRzLzIw/MjMvMTIvRHViYWlf/SG9sZGluZ19Fbmds/aXNoX0xldHRlcnNf/TmV3LTEwMjR4NjMx/LmpwZw',
    'https://imgs.search.brave.com/Vw0M5waj5RrjF5lLxCO91BYXctqhRiLtWY6ovHLSItU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly93d3cu/YXJhYmlhbmJ1c2lu/ZXNzLmNvbS9jbG91/ZC8yMDIxLzA5LzE2/L3J3S21zRnkxLWR1/YmFpLXNreWxpbmUt/MjAzLTEyMDB4ODMw/LmpwZw',
    'https://imgs.search.brave.com/Ods5ao2D-pcXEfic7Zz8PjPUCMszCWn7Rt0oA0hbRhM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pLjEu/Y3JlYXRpdW0uaW8v/YjcvYzUvMjQvNzJm/M2Y5MGYwZWZlM2Nm/NDM4ZDQ4ODZmMGY5/YmUwMjUxZC9EdWJh/aVByb3BlcnRpZXMu/anBnI3slMjJzaXpl/JTIyOlsxMzk4LDEw/NzJdLCUyMnF1YWxp/dHklMjI6M30',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: SlidingUpPanel(
        backdropEnabled: true,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        panelBuilder: (sc) => buildPanel(sc),
        parallaxEnabled: false,
        defaultPanelState: PanelState.CLOSED,
        body: buildBackdrop(),
        minHeight: MediaQuery.of(context).size.height * 0.26,
        maxHeight: MediaQuery.of(context).size.height * 0.8,
      ),
      bottomSheet: buildBottomSheet(),
    );
  }

  Container buildBottomSheet() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: const CustomButton(
                  height: 40,
                  color: Color.fromARGB(255, 207, 204, 175),
                  borderColor: Colors.black,
                  customWidget: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.call,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomText(
                        text: "Call",
                        fontSize: 15,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: const CustomButton(
                  height: 40,
                  color: Color.fromARGB(255, 207, 204, 175),
                  borderColor: Colors.black,
                  customWidget: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CustomText(
                        text: "Email",
                        fontSize: 15,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: CustomButton(
                    height: 40,
                    color: const Color.fromARGB(255, 207, 204, 175),
                    borderColor: Colors.black,
                    customWidget: Image.asset(
                      AssetHelper.whatsApp,
                      scale: 20,
                      color: Colors.green,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPanel(ScrollController sc) {
    return SingleChildScrollView(
      controller: sc,
      child: Container(
        // height: MediaQuery.of(context).size.height,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Image.asset(
                    AssetHelper.horizontal,
                    color: Colors.grey.withOpacity(0.5),
                    scale: 15,
                  )),
            ),
            const SizedBox(height: 10),
            buildCost(),
            const SizedBox(height: 10),
            buildAmenities(),
            const SizedBox(height: 14),
            buildLocationText(),
            const SizedBox(height: 10),
            const Divider(),
            buildChips(),
            const SizedBox(height: 20),
            buildDescription(),
            const SizedBox(height: 30),
            buildPropertyFeatures(),
            const SizedBox(height: 30),
            buildAdditionalDetails(),
            const SizedBox(height: 150),
          ],
        ),
      ),
    );
  }

  Column buildAdditionalDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
          text: "Additional Details",
          fontSize: 17,
          fontWeight: FontWeight.w700,
        ),
        const SizedBox(height: 10),
        ListView.builder(
            shrinkWrap: true,
            itemCount: 6,
            itemBuilder: (context, index) {
              return const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                          flex: 1,
                          child: CustomText(
                            text: "Test",
                            fontSize: 15,
                          )),
                      Expanded(
                          flex: 1,
                          child: CustomText(
                            text: "Test",
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          )),
                    ],
                  ),
                  Divider()
                ],
              );
            })
      ],
    );
  }

  Column buildPropertyFeatures() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: "Property Features",
          fontSize: 17,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: 10),
        Wrap(
          runSpacing: 10,
          children: [
            IconInfoProjectPage(icon: Icons.air, text: 'Air Conditioning'),
            IconInfoProjectPage(icon: Icons.air, text: 'Dryer'),
            IconInfoProjectPage(icon: Icons.emoji_nature, text: 'Lawn'),
            IconInfoProjectPage(icon: Icons.heat_pump_outlined, text: 'Sauna'),
            IconInfoProjectPage(
                icon: Icons.emergency_rounded, text: 'Refrigerator'),
            SizedBox(
              width: 150,
            )
          ],
        )
      ],
    );
  }

  Column buildDescription() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: 'Spacious | Mid Floor | Partial Water View',
          fontSize: 17,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: 10),
        CustomText(
          text:
              "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.",
          fontSize: 12,
        )
      ],
    );
  }

  Container buildChips() {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            badges.Badge(
              badgeContent: const Padding(
                padding: EdgeInsets.only(top: 3.0),
                child: CustomText(
                  text: "NEW",
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              badgeStyle: badges.BadgeStyle(
                  badgeColor: Colors.green,
                  borderRadius: BorderRadius.circular(5),
                  shape: badges.BadgeShape.square),
              child: Chip(
                label: const Row(
                  children: [
                    Icon(
                      Icons.pie_chart,
                      color: ThemeColor.mainColor,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CustomText(
                      text: "Mortgage",
                      color: ThemeColor.mainColor,
                      fontSize: 14,
                    ),
                  ],
                ),
                color: WidgetStateProperty.all(
                    ThemeColor.mainColor.withOpacity(0.3)),
                surfaceTintColor: Colors.white,
                side: const BorderSide(color: Colors.transparent),
              ),
            ),
            const SizedBox(width: 20),
            badges.Badge(
              badgeContent: const Padding(
                padding: EdgeInsets.only(top: 3.0),
                child: CustomText(
                  text: "NEW",
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              badgeStyle: badges.BadgeStyle(
                  badgeColor: Colors.green,
                  borderRadius: BorderRadius.circular(5),
                  shape: badges.BadgeShape.square),
              child: Chip(
                label: const Row(
                  children: [
                    Icon(
                      Icons.home_work_rounded,
                      color: ThemeColor.mainColor,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CustomText(
                      text: "Property Details",
                      color: ThemeColor.mainColor,
                      fontSize: 14,
                    ),
                  ],
                ),
                color: WidgetStateProperty.all(
                    ThemeColor.mainColor.withOpacity(0.3)),
                surfaceTintColor: Colors.white,
                side: const BorderSide(color: Colors.transparent),
              ),
            ),
            const SizedBox(width: 15),
            Chip(
              label: const Row(
                children: [
                  Icon(
                    Icons.location_on_sharp,
                    color: ThemeColor.mainColor,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CustomText(
                    text: "Location",
                    color: ThemeColor.mainColor,
                    fontSize: 14,
                  ),
                ],
              ),
              color: WidgetStateProperty.all(
                  ThemeColor.mainColor.withOpacity(0.3)),
              surfaceTintColor: Colors.white,
              side: const BorderSide(color: Colors.transparent),
            ),
            const SizedBox(width: 8),
            Chip(
              label: const Row(
                children: [
                  Icon(
                    Icons.person,
                    color: ThemeColor.mainColor,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CustomText(
                    text: "Get in Touch",
                    color: ThemeColor.mainColor,
                    fontSize: 14,
                  ),
                ],
              ),
              color: WidgetStateProperty.all(
                  ThemeColor.mainColor.withOpacity(0.3)),
              surfaceTintColor: Colors.white,
              side: const BorderSide(color: Colors.transparent),
            ),
          ],
        ),
      ),
    );
  }

  CustomText buildLocationText() {
    return const CustomText(
      text:
          "Kuala Lumpur City Centre, Kuala Lumpur, Federal Territory of Kuala Lumpur, Malaysia",
      fontSize: 13,
    );
  }

  Row buildAmenities() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconInfoProjectPage(icon: Icons.bed, text: '2 bed'),
        IconInfoProjectPage(icon: Icons.bathtub, text: '1 bath'),
        IconInfoProjectPage(icon: Icons.square_foot, text: '2900 sqft'),
        SizedBox(
          width: 150,
        )
      ],
    );
  }

  Row buildCost() {
    return const Row(
      children: [
        CustomText(
          text: "MYR 120,000",
          fontSize: 20,
          fontFamily: 'tanagean',
          fontWeight: FontWeight.w700,
          color: ThemeColor.mainColor,
        ),
        SizedBox(width: 10),
        CustomText(
          text: "Yearly",
          fontSize: 13,
          fontFamily: 'tanagean',
          fontWeight: FontWeight.w700,
          color: ThemeColor.mainColor,
        ),
      ],
    );
  }

  Scaffold buildBackdrop() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...imgList.map((e) => Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FullScreenImageGallery(
                              initialIndex: imgList.indexOf(e),
                              imageUrls: imgList),
                        ),
                      );
                    },
                    child: Image.network(e)))),
            const SizedBox(
              height: 300,
            )
          ],
        ),
      ),
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      backgroundColor: Colors.black,
      leading: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: const Icon(
          Icons.keyboard_arrow_left,
          color: Colors.white,
        ),
      ),
    );
  }
}

class IconInfoProjectPage extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconInfoProjectPage(
      {super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 20,
            color: ThemeColor.lightColor,
          ),
          const SizedBox(width: 4),
          CustomText(
            text: text,
            fontSize: 13,
          ),
        ],
      ),
    );
  }
}
