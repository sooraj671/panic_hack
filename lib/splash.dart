import 'package:panic_hack/home_page.dart';
import 'package:panic_hack/splash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    moveTaskToBack(false);

    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushAndRemoveUntil(
          context,
          // ignore: prefer_const_constructors
          MaterialPageRoute(builder: (context) => HomePage()),
          (Route route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    //ScreenUtil.init(context, designSize: const Size(360, 690));
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 3),
                child: Container(
                  width: 104,
                  height: 113,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(
                      "assets/images/logo.png",
                    ),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
                child: Center(
                    child: Text(
              'PANIC',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'PlusJakartaSans-Bold',
                color: Colors.black,
              ),
            ))),
            Center(
                child: Center(
                    child: Text(
              'HACK',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'PlusJakartaSans-Bold',
                color: Colors.black,
              ),
            ))),
            Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 2.6),
                child: Center(
                    child: Text(
                  'MINDSPA',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'PlusV'),
                )))
          ],
        ),
      ),
    );
  }
}

void moveTaskToBack(bool bool) {}
