import 'dart:developer';

import 'package:audioplayers/audioplayers.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:panic_hack/term.dart';
import 'home_page.dart';

class Learn extends StatefulWidget {
  const Learn({Key? key}) : super(key: key);
  @override
  State<Learn> createState() => _LearnState();
}

class _LearnState extends State<Learn> with WidgetsBindingObserver {
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  @override
  void initState() {
    log("INIT");
    super.initState();

    setAudio();
    audioPlayer.onPlayerStateChanged.listen((state) {
      if (!mounted) return;
      setState(() {
        isPlaying = state == PlayerState.PLAYING;
      });
    });

    audioPlayer.onDurationChanged.listen((newDuration) {
      if (!mounted) return;

      setState(() {
        duration = newDuration;
      });
    });

    audioPlayer.onAudioPositionChanged.listen((newPosition) {
      if (!mounted) return;

      setState(() {
        position = newPosition;
      });
    });

    // Add the observer to the widget's lifecycle
  }

  Future setAudio() async {
    audioPlayer.setReleaseMode(ReleaseMode.LOOP);
    final player = AudioCache(prefix: 'assets/');
    final url = await player.load('know.mp3');
    audioPlayer.setUrl(url.path, isLocal: true);
  }

  @override
  void dispose() {
    // Remove the observer from the widget's lifecycle
    // WidgetsBinding.instance?.removeObserver(this);
    log("DISPOSED");

    if (mounted) {
      audioPlayer.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 25, left: 20),
                child: IconButton(
                  iconSize: 40,
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(right: 90, left: 40),
                child: Container(
                  child: RichText(
                    text: TextSpan(
                      text: 'Understand panic attacks',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontFamily: 'PlusJakartaSans-Bold',
                      ),
                      /*defining default style is optional */
                      children: <TextSpan>[
                        TextSpan(
                            text: ' and learn how to stop them happening again',
                            style: TextStyle(
                                color: Color(0xff9C9C9C),
                                fontSize: 30,
                                fontFamily: 'PlusJakartaSans-Bold')),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(right: 80, left: 40, top: 10),
                child: Container(
                    child: Text(
                  'Listen to this within a day of using this app for the first time.',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'PlusJakartaSans-Regular',
                      color: Color(0xff455A64)),
                )),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 40,
                  left: 30,
                  right: 30,
                ),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  height: 380,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xffF8F8F8),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: RichText(
                              text: TextSpan(
                                text: '3',
                                style: TextStyle(
                                  color: Color(0xffCCCCCC),
                                  fontSize: 32,
                                  fontFamily: 'PlusJakartaSans-Bold',
                                ),
                                /*defining default style is optional */
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '   Learn',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 32,
                                        fontFamily: 'PlusJakartaSans-Bold',
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 80,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  goBack15Seconds();
                                },
                                child: Container(
                                  width: 37,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/img.png",
                                    ),
                                  )),
                                ),
                              ),

                              // IconButton(
                              //   icon: Icon(Icons.replay_10,size: 40,color: Color(0xff888888)),
                              //   onPressed: () {
                              //     goBack15Seconds();
                              //   },
                              // ),

                              SizedBox(
                                width: 40,
                              ),

                              CircleAvatar(
                                backgroundColor: Color(0xffE6E7F2),
                                radius: 35,
                                child: IconButton(
                                  icon: Icon(
                                    isPlaying ? Icons.pause : Icons.play_arrow,
                                    color: Color(0xff3F414E),
                                  ),
                                  iconSize: 50,
                                  onPressed: () async {
                                    if (isPlaying) {
                                      await audioPlayer.pause();
                                    } else {
                                      await audioPlayer.resume();
                                      // String url =
                                      //     'https://dl.dropbox.com/s/bd4un7urc1o95cs/HACK%20IT.mp3';
                                      // await audioPlayer.play(url);
                                    }
                                  },
                                ),
                              ),

                              SizedBox(
                                width: 40,
                              ),

                              InkWell(
                                onTap: () {
                                  skipForward();
                                },
                                child: Container(
                                  width: 37,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/img_1.png",
                                    ),
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 70,
                        ),
                        SliderTheme(
                          data: SliderThemeData(
                            activeTrackColor: Color(
                                0xffE6E7F2), // change the active track color
                            inactiveTrackColor: Color(
                                0xff47557E), // change the inactive track color
                            thumbColor:
                                Color(0xff989898), // change the thumb color
                            overlayColor: Color(0xff47557E)
                                .withOpacity(0.1), // change the overlay color
                            trackHeight: 3.0, // change the track height
                            thumbShape: RoundSliderThumbShape(
                                enabledThumbRadius:
                                    10.0), // change the thumb shape
                            overlayShape: RoundSliderOverlayShape(
                                overlayRadius:
                                    20.0), // change the overlay shape
                          ),
                          child: Slider(
                            min: 0,
                            max: duration.inSeconds.toDouble(),
                            value: position.inSeconds.toDouble(),
                            onChanged: (value) async {
                              final position = Duration(seconds: value.toInt());
                              await audioPlayer.seek(position);

                              await audioPlayer.resume();
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(formatTime(position)),
                              Text(formatTime(duration - position)),
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40),
                child: RichText(
                  text: TextSpan(
                    text: 'By using this app you agree to our ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'PlusJakartaSans',
                    ),
                    children: [
                      TextSpan(
                        text: 'Terms',
                        style: TextStyle(
                          fontFamily: 'PlusJakartaSans', fontSize: 14,
                          decoration: TextDecoration
                              .underline, // add underline decoration
                          decorationColor:
                              Color(0xff000000), // set underline color
                          decorationThickness: 2.0, // set underline thickness
                          color: Color(0xff000000), // set link color
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Term()));

                            // Handle link tap
                          },
                      ),
                    ],
                  ),
                ),
              )
            ]),
      ),
    );
  }

  void skipForward() async {
    if (isPlaying) {
      int currentPosition = await audioPlayer
          .getCurrentPosition(); // Get the current position of the audio playback
      int targetPosition = currentPosition +
          15000; // Add 15000 milliseconds (15 seconds) to the current position
      await audioPlayer.seek(Duration(
          milliseconds:
              targetPosition)); // Move the playback to the target position

    }
  }

  void goBack15Seconds() async {
    int currentPosition = await audioPlayer.getCurrentPosition();
    await audioPlayer.seek(Duration(milliseconds: currentPosition - 15000));
  }
}

String formatTime(Duration duration) {
  String twoDigits(int n) => n.toString().padLeft(2, '0');
  final hours = twoDigits(duration.inHours);
  final minutes = twoDigits(duration.inMinutes.remainder(60));
  final seconds = twoDigits(duration.inSeconds.remainder(60));

  return [
    if (duration.inHours > 0) hours,
    minutes,
    seconds,
  ].join(':');
}
