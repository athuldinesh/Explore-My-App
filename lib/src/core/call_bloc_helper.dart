import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile/main.dart';
import 'package:mobile/src/presentation/bloc/auth_bloc/auth_bloc.dart';

final authBloc =
    BlocProvider.of<AuthBloc>(MainApp.navigatorKey.currentContext!);
