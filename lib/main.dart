import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_boilerplate/l10n/l10n.dart';
import 'package:flutter_boilerplate/presentation/viewmodel/auth_viewmodel.dart';
import 'package:flutter_boilerplate/res/constants/constants.dart';
import 'package:flutter_boilerplate/res/routes/routes.dart';
import 'package:flutter_boilerplate/res/theme/theme.dart';
import 'package:flutter_boilerplate/utils/service_locator.dart';
import 'package:flutter_boilerplate/utils/utils.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    ServiceLocator.setContext(context);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthViewModel()),
      ],
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
        ),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          scaffoldMessengerKey: Utils.scaffoldMessengerKey,
          title: Constants.appName,
          initialRoute: RouteNames.splashScreen,
          onGenerateRoute: Routes.generateRoute,
          themeMode: ThemeMode.light,
          theme: lightTheme,
          darkTheme: darkTheme,
          locale: const Locale('en'),
          supportedLocales: L10n.all,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
        ),
      ),
    );
  }
}
