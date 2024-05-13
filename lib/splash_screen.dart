import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

// 스플래쉬스크린 클래스 생성(인스턴스)
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ExtendedImage.asset('assets/images/spl.png'),
            const CircularProgressIndicator(
              color: Colors.red,
            ) //로딩바
          ],
        ),
      ),
    );
  }
}
