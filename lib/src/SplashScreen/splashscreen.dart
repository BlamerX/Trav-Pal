import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mobin/src/Hompage/homepage.dart';
import 'package:mobin/src/Login%20Page/login_page.dart';
import 'package:video_player/video_player.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    // Timer(const Duration(seconds: 5), () {
    //   Navigator.of(context).pushReplacement(
    //     MaterialPageRoute(
    //       builder: (_) => const HomePage(),
    //     ),
    //   );
    // });

    _controller = VideoPlayerController.asset('assets/logo/Travpal.mp4')
      ..initialize().then((_) {
        setState(() {});
      })
      ..setVolume(0.0);
    _playVideo();
  }

  void _playVideo() async {
    _controller.play();
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const HomePage(),
        ),
      );
    });
  }

  void disposal() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(
                  _controller,
                ),
              )
            : Container(),
      ),
    );
  }
}
