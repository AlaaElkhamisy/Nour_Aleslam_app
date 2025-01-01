import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:muslim/core/app_router.dart';
import 'package:muslim/core/app_text_styles.dart';

class SplachBody extends StatefulWidget {
  const SplachBody({super.key});

  @override
  State<SplachBody> createState() => _SplachBodyState();
}

class _SplachBodyState extends State<SplachBody> {
  @override
  void initState() {
    NavigateToMainScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: ResizeImage(AssetImage("assets/images/quran.png"),
                width: 300, height: 300),
          ),
          Text("نور الإسلام",
              style: AppTextStyles.appbarTitle.copyWith(fontSize: 30))
        ],
      ),
    ));
  }

  void NavigateToMainScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).pushReplacement(AppRouter.MainPage);
    });
  }
}
