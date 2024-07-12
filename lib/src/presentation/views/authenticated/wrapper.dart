import 'package:flutter/material.dart';
import 'package:mobile/src/presentation/views/authenticated/dashboard.dart';
import 'package:mobile/src/presentation/views/unauthenticated/login_page.dart';
import 'package:mobile/src/presentation/views/widgets/custom_navigation_bar.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      tabs: [
        PersistentTabConfig(
          screen: const DashboardPage(),
          item: ItemConfig(
            icon: const Icon(Icons.home),
            title: "Home",
          ),
        ),
        PersistentTabConfig(
          screen: const LoginPage(),
          item: ItemConfig(
            icon: const Icon(Icons.more_vert),
            title: "More",
          ),
        ),
      ],
      navBarBuilder: (navBarConfig) => CustomNavBar(
        navBarConfig: navBarConfig,
      ),
    );
  }
}
