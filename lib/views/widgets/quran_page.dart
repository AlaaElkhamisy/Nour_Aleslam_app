import 'package:flutter/material.dart';
import 'package:muslim/views/widgets/custom_widgets/custom_app_image.dart';
import 'package:muslim/views/widgets/custom_widgets/home_page_app_bar.dart';
import 'package:muslim/views/widgets/quran_widgets/surah_list_view.dart';

class QuranPage extends StatelessWidget {
  const QuranPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: HomePageAppBar(),
        body: Column(
          spacing: 10,
          children: [CustomAppImage(), SurahListView()],
        ));
  }
}
