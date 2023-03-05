import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:panic_hack/home_page.dart';
import 'package:panic_hack/splash.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 720),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Panic Hack',
          theme: ThemeData(
            textTheme: TextTheme(
              bodyText2: TextStyle(
                  fontFamily:
                      'PlusJakartaSans-Regular'), // Set fontFamily to null to remove it
            ),
            backgroundColor: Colors.white,
          ),
          home: Splash(),
        );
      },
    );
  }
}
