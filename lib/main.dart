import 'package:flutter/material.dart';
import 'package:hello_world/splash_screen.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Object>(
        future: Future.delayed(const Duration(seconds: 3), () => 100),
        builder: (context, snapshot) {
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 900), //페이드인아웃 효과
            child: _splashLodingWidget(snapshot), //스냅샷실행 위젯지정
          );
        });
  }

  StatelessWidget _splashLodingWidget(AsyncSnapshot<Object> snapshot) {
    if (snapshot.hasError) {
      return const Text('Error');
    } //에러발생
    else if (snapshot.hasData) {
      return const HomeScreen();
    } //정상
    else {
      return const SplashScreen();
    } //그외
  }
}
