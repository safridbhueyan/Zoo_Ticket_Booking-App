import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zoo_app/core/services/location_services/location_services.dart';
import 'core/routes/part_of_import.dart';
import 'core/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ///set device orientation to portraitUp during app running for better user experience of the UI
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  ///ensuring screen size for screen util package to implement pixel perfect UI
  await ScreenUtil.ensureScreenSize();

  await LocationService.instance.getPermission();

  runApp(const ProviderScope(child: MyApp()));
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Transparent status bar
      systemNavigationBarColor: Colors.transparent, // Transparent nav bar
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const double deviceWidth = 375.0;
  static const double deviceHeight = 812.0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(deviceWidth, deviceHeight),
      minTextAdapt: true,
      ensureScreenSize: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Zoo App',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          themeMode: ThemeMode.light,
          routerConfig: RouteConfig().goRouter,
        );
      },
    );
  }
}
