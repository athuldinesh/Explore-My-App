import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/local_db/local_db_initializr.dart';
import 'package:mobile/network/injector.dart';
import 'package:mobile/src/config/app_routes.dart';
import 'package:mobile/src/presentation/bloc/auth_bloc/auth_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) async {
    await Injector().initializeDependencies();
    // await LocalDbInitializr().openIsar();
    runApp(const MainApp());
  });
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  Key key = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
            create: (_) => injector()..add(const GetStoredAuthEvent())),
      ],
      child: KeyedSubtree(
        key: key,
        child: MaterialApp(
          title: 'Explore',
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRoutes.onGenerateRoutes,
          navigatorKey: MainApp.navigatorKey,
        ),
      ),
    );
  }
}
