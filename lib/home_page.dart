import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:panic_hack/relex.dart';
import 'package:flutter/material.dart';
import 'package:panic_hack/stop.dart';
import 'package:panic_hack/learn.dart';
import 'package:panic_hack/recover.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ScreenUtilInit(
            designSize: const Size(375, 720),
            builder: (context, child) {
              return SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 35, bottom: 20, left: 30),
                        child: Container(
                          width: 60,
                          height: 51,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage(
                              "assets/images/logo.png",
                            ),
                          )),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40, right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 90, left: 0),
                              child: Container(
                                child: RichText(
                                  text: TextSpan(
                                    text: 'Rapidly calm your body and mind',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontFamily: 'PlusJakartaSans-Bold',
                                    ),
                                    /*defining default style is optional */
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              ' and stop panic  happening again',
                                          style: TextStyle(
                                              color: Color(0xff9C9C9C),
                                              fontSize: 30,
                                              fontFamily:
                                                  'PlusJakartaSans-Bold')),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(height: 30.0),

                            Padding(
                              padding: EdgeInsets.only(
                                right: 30,
                              ),
                              child: Container(
                                child: RichText(
                                  text: TextSpan(
                                    text: 'The',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontFamily: 'PlusJakartaSans-Regular'),
                                    /*defining default style is optional */
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: ' 4-Step',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontFamily:
                                                  'PlusJakartaSans-ExtraBold')),
                                      TextSpan(
                                          text:
                                              ' program for panic relief. Choose the track for where you’re at:',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontFamily:
                                                  'PlusJakartaSans-Regular')),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 25,
                            ),

                            Center(
                              child: Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Color(0xffF8F8F8),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => Stop()));
                                    },
                                    child: Row(children: [
                                      Expanded(
                                        flex: 5,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 0, right: 0),
                                                child: RichText(
                                                  text: TextSpan(
                                                    text: '  1',
                                                    style: TextStyle(
                                                      color: Color(0xffDEDEDE),
                                                      fontSize: 24,
                                                      fontFamily:
                                                          'PlusJakartaSans-ExtraBold',
                                                    ),
                                                    /*defining default style is optional */
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                          text: '   Stop',
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 24,
                                                            fontFamily:
                                                                'PlusJakartaSans-ExtraBold',
                                                          )),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 35,
                                                    right: 50,
                                                  ),
                                                  child: Text(
                                                    'Rapidly end panic attacks before or as they happen',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontFamily:
                                                            'PlusJakartaSans-Regular',
                                                        color:
                                                            Color(0xff9C9C9C)),
                                                  )),
                                            ]),
                                      ),
                                      Expanded(
                                          flex: 1,
                                          child: Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            size: 30,
                                            color: Color(0xff9C9C9C),
                                          )),
                                    ]),
                                  ),
                                ),
                              ),
                            ), //stop

                            SizedBox(
                              height: 10,
                            ),

                            Center(
                              child: Padding(
                                padding: EdgeInsets.only(
                                  right: 10,
                                ),
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Color(0xffF8F8F8),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => Relex()));
                                    },
                                    child: Row(children: [
                                      Expanded(
                                        flex: 5,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 0, right: 0),
                                                child: RichText(
                                                  text: TextSpan(
                                                    text: '  2',
                                                    style: TextStyle(
                                                      color: Color(0xffDEDEDE),
                                                      fontSize: 24,
                                                      fontFamily:
                                                          'PlusJakartaSans-ExtraBold',
                                                    ),
                                                    /*defining default style is optional */
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                          text: '   Relax',
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 24,
                                                            fontFamily:
                                                                'PlusJakartaSans-ExtraBold',
                                                          )),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 35,
                                                    right: 50,
                                                  ),
                                                  child: Text(
                                                    'Calm your mind and feel safe and in control again',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontFamily:
                                                            'PlusJakartaSans-Regular',
                                                        color:
                                                            Color(0xff9C9C9C)),
                                                  )),
                                            ]),
                                      ),
                                      Expanded(
                                          flex: 1,
                                          child: Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            size: 30,
                                            color: Color(0xff9C9C9C),
                                          )),
                                    ]),
                                  ),
                                ),
                              ),
                            ), //Relex
                            SizedBox(
                              height: 10,
                            ),

                            Center(
                              child: Padding(
                                padding: EdgeInsets.only(right: 10),
                                child:
                                    // Flexible(
                                    //   child:
                                    Container(
                                  alignment: Alignment.topLeft,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Color(0xffF8F8F8),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => Learn()));
                                    },
                                    child: Row(children: [
                                      Expanded(
                                        flex: 5,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 0, right: 0),
                                                child: RichText(
                                                  text: TextSpan(
                                                    text: '  3',
                                                    style: TextStyle(
                                                      color: Color(0xffDEDEDE),
                                                      fontSize: 24,
                                                      fontFamily:
                                                          'PlusJakartaSans-ExtraBold',
                                                    ),
                                                    /*defining default style is optional */
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                          text: '   Learn',
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 24,
                                                            fontFamily:
                                                                'PlusJakartaSans-ExtraBold',
                                                          )),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 35,
                                                    right: 50,
                                                  ),
                                                  child: Text(
                                                    'Must-know ways to outsmart panic attacks',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontFamily:
                                                            'PlusJakartaSans-Regular',
                                                        color:
                                                            Color(0xff9C9C9C)),
                                                  )),
                                            ]),
                                      ),
                                      Expanded(
                                          flex: 1,
                                          child: Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            size: 30,
                                            color: Color(0xff9C9C9C),
                                          )),
                                    ]),
                                  ),
                                ),
                              ),
                            ),
                            //),

                            SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: Padding(
                                padding: EdgeInsets.only(
                                  right: 10,
                                ),
                                child:
                                    // Flexible(
                                    //   child:
                                    Container(
                                  alignment: Alignment.topLeft,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Color(0xffF8F8F8),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => Recover()));
                                    },
                                    child: Row(children: [
                                      Expanded(
                                        flex: 5,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 0, right: 0),
                                                child: RichText(
                                                  text: TextSpan(
                                                    text: '  4',
                                                    style: TextStyle(
                                                      color: Color(0xffDEDEDE),
                                                      fontSize: 24,
                                                      fontFamily:
                                                          'PlusJakartaSans-ExtraBold',
                                                    ),
                                                    /*defining default style is optional */
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                          text: '   Recover',
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 24,
                                                            fontFamily:
                                                                'PlusJakartaSans-ExtraBold',
                                                          )),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 35,
                                                    right: 50,
                                                  ),
                                                  child: Text(
                                                    'Change the way you feel and react in future',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontFamily:
                                                            'PlusJakartaSans-Regular',
                                                        color:
                                                            Color(0xff9C9C9C)),
                                                  )),
                                            ]),
                                      ),
                                      Expanded(
                                          flex: 1,
                                          child: Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            size: 30,
                                            color: Color(0xff9C9C9C),
                                          )),
                                    ]),
                                  ),
                                ),
                              ),
                            ),
                            //),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ]),
              );
            })
        // )
        );
  }
}
