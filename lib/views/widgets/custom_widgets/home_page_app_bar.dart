import 'package:flutter/material.dart';
import 'package:muslim/core/app_text_styles.dart';

class HomePageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomePageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Text("نور الإسلام", style: AppTextStyles.appbarTitle),
            Spacer(),
            Image(
                image: ResizeImage(AssetImage("assets/images/quran.png"),
                    width: 60, height: 60))
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(100);
}
