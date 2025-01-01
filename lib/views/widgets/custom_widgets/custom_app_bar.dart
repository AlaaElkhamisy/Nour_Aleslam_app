import 'package:flutter/material.dart';
import 'package:muslim/core/app_text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.surahName});
  final String surahName;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        spacing: 20,
        children: [
          IconButton(
            icon: Icon(
              Icons.arrow_back_rounded,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          Text(
            surahName,
            style: AppTextStyles.mainText.copyWith(fontSize: 25),
          )
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(100);
}
