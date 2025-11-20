import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/application/users/user_cubit.dart';
import 'package:flutter_boilerplate/firebase_options.dart';
import 'package:flutter_boilerplate/presentation/res/constants/constants.dart';
import 'package:flutter_boilerplate/presentation/res/routes/routes.dart';
import 'package:flutter_boilerplate/presentation/res/theme/theme.dart';
import 'package:flutter_boilerplate/presentation/utils/service_locator.dart';
import 'package:flutter_boilerplate/presentation/utils/utils.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    ServiceLocator.setContext(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
      ),
      child: MultiBlocProvider(
        providers: [BlocProvider(create: (context) => UserCubit())],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          scaffoldMessengerKey: Utils.scaffoldMessengerKey,
          title: Constants.appName,
          initialRoute: RouteNames.splashScreen,
          onGenerateRoute: Routes.generateRoute,
          themeMode: ThemeMode.light,
          theme: lightTheme,
          darkTheme: darkTheme,
        ),
      ),
    );
  }
}
