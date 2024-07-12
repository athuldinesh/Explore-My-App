import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mobile/src/core/asset_helper.dart';
import 'package:mobile/src/core/constants.dart';
import 'package:mobile/src/presentation/views/authenticated/project_listing/one_project_page.dart';
import 'package:mobile/src/presentation/views/widgets/custom_text.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:shimmer/shimmer.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
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
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTitleText(),
              buildSearchbar(),
              buildChips(),
              buildCarouselHouses(),
              buildText(),
              RealEstateCard(),
              // Container(
              //   margin: const EdgeInsets.only(top: 20),
              //   child: CarouselSlider(
              //     options: CarouselOptions(
              //       autoPlay: true,
              //       aspectRatio: 2.0,
              //       enlargeCenterPage: true,
              //     ),
              //     items: imgList.map((item) => RealEstateCard()).toList(),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }

  Container buildText() {
    return Container(
        margin: const EdgeInsets.only(top: 30, bottom: 10),
        child: const CustomText(
          text: "Featured Estates",
          fontSize: 20,
        ));
  }

  Container buildChips() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Chip(
              label: const CustomText(
                text: "All",
                color: Colors.white,
                fontSize: 14,
              ),
              color: WidgetStateProperty.all(
                  const Color.fromARGB(255, 179, 176, 92)),
              surfaceTintColor: Colors.white,
              side: const BorderSide(color: Colors.transparent),
            ),
            const SizedBox(width: 8),
            Chip(
              label: const CustomText(
                text: "For Rent",
                color: Colors.white,
                fontSize: 14,
              ),
              color: WidgetStateProperty.all(Colors.grey),
              surfaceTintColor: Colors.white,
              side: const BorderSide(color: Colors.transparent),
            ),
            const SizedBox(width: 8),
            Chip(
              label: const CustomText(
                text: "New Listing",
                color: Colors.white,
                fontSize: 14,
              ),
              color: WidgetStateProperty.all(Colors.grey),
              surfaceTintColor: Colors.white,
              side: const BorderSide(color: Colors.transparent),
            ),
            const SizedBox(width: 8),
            Chip(
              label: const CustomText(
                text: "Open House",
                color: Colors.white,
                fontSize: 14,
              ),
              color: WidgetStateProperty.all(Colors.grey),
              surfaceTintColor: Colors.white,
              side: const BorderSide(color: Colors.transparent),
            ),
            const SizedBox(width: 8),
            Chip(
              label: const CustomText(
                text: "Price Reduced",
                color: Colors.white,
                fontSize: 14,
              ),
              color: WidgetStateProperty.all(Colors.grey),
              surfaceTintColor: Colors.white,
              side: const BorderSide(color: Colors.transparent),
            ),
            const SizedBox(width: 8),
            Chip(
              label: const CustomText(
                text: "Sold",
                color: Colors.white,
                fontSize: 14,
              ),
              color: WidgetStateProperty.all(Colors.grey),
              surfaceTintColor: Colors.white,
              side: const BorderSide(color: Colors.transparent),
            ),
          ],
        ),
      ),
    );
  }

  Container buildCarouselHouses() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
        ),
        items: imgList.map((item) => ShimmerLoadingImage(item)).toList(),
      ),
    );
  }

  Container buildSearchbar() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Search',
          prefixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.all(16.0),
        ),
      ),
    );
  }

  Column buildTitleText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
            text: const TextSpan(children: [
          TextSpan(
              text: "Hey, ",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontFamily: 'sans',
                  fontWeight: FontWeight.w500)),
          TextSpan(
              text: "Rhico!",
              style: TextStyle(
                  fontSize: 18,
                  color: ThemeColor.mainColor,
                  fontFamily: 'tanagean',
                  fontWeight: FontWeight.w700)),
        ])),
        const CustomText(
            text: "Let\'s start exploring.",
            fontSize: 24,
            color: Colors.black,
            fontFamily: 'sans',
            fontWeight: FontWeight.w500),
      ],
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      backgroundColor: Colors.black,
      leadingWidth: 150,
      toolbarHeight: 100,
      leading: SizedBox(
          height: 150, width: 150, child: Image.asset(AssetHelper.logo)),
    );
  }
}

class ShimmerLoadingImage extends StatelessWidget {
  final String imageUrl;

  const ShimmerLoadingImage(this.imageUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomClipperPath(),
      child: Stack(
        children: [
          Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Container(
              color: Colors.grey[300],
            ),
          ),
          Image.network(
            imageUrl,
            fit: BoxFit.cover,
            width: 1000,
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) return child;
              return Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.grey[300],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class CustomClipperPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(5, size.height);
    path.quadraticBezierTo(0, size.height, 0, size.height - 5);
    path.lineTo(0, 5);
    path.quadraticBezierTo(0, 0, 5, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class RealEstateCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushScreen(context, screen: const OneProjectPage(), withNavBar: false);
      },
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.45,
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 200,
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(8)),
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://via.placeholder.com/400x200'), // Placeholder image
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 8,
                    left: 8,
                    child: Chip(
                      backgroundColor: Colors.amber,
                      label: Text('FEATURED'),
                    ),
                  ),
                  const Positioned(
                    top: 8,
                    right: 8,
                    child: Chip(
                      backgroundColor: Colors.blue,
                      label: Text('FOR SALE',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'APARTMENT / CONDO / SERVICE RESIDENCE',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'MYR 34,900,000',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Star Residence KLCC',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Kuala Lumpur, Malaysia',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconInfo(icon: Icons.bed, text: '2'),
                        IconInfo(icon: Icons.bathtub, text: '1'),
                        IconInfo(icon: Icons.directions_car, text: '2'),
                        IconInfo(icon: Icons.square_foot, text: '2900 sqft'),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(height: 1, thickness: 1),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.call),
                      label: const Text('Call'),
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(color: Colors.black),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.email),
                      label: Text('Email'),
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Colors.black),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.phone),
                      label: Text('WhatsApp'),
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconInfo extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconInfo({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 16,
        ),
        const SizedBox(width: 4),
        CustomText(text: text),
      ],
    );
  }
}
