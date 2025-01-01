import 'package:muslim/Azkar/after_pray.dart';
import 'package:muslim/Azkar/alanbiaa_duas.dart';
import 'package:muslim/Azkar/azkar_almasaa.dart';
import 'package:muslim/Azkar/azkar_aspah.dart';
import 'package:muslim/Azkar/quran_duas.dart';
import 'package:muslim/Azkar/sleeping.dart';
import 'package:muslim/Azkar/tsabih.dart';
import 'package:muslim/Azkar/wake_up.dart';

List<String> zikr = [];
List<String> description = [];
List<int> countText = [];
void updateZikr(String value) {
  if (value == "أذكار الصباح") {
    zikr = AzkarAspah.zikr;
    description = AzkarAspah.description;
    countText = AzkarAspah.count;
  } else if (value == "أذكار المساء") {
    zikr = AzkarAlmasaa.zikr;
    description = AzkarAlmasaa.description;
    countText = AzkarAlmasaa.count;
  } else if (value == "أذكار بعد الصلاة") {
    zikr = AfterPray.zikr;
    description = AfterPray.description;
    countText = AfterPray.count;
  } else if (value == "تسابيح") {
    zikr = Tsabih.zikr;
    description = Tsabih.description;
    countText = Tsabih.count;
  } else if (value == "أذكار النوم") {
    zikr = Sleeping.zikr;
    description = Sleeping.description;
    countText = Sleeping.count;
  } else if (value == "أذكار الاستيقاظ") {
    zikr = WakeUp.zikr;
    description = WakeUp.description;
    countText = WakeUp.count;
  } else if (value == "أدعية قرآنية") {
    zikr = QuranDuas.zikr;
    description = QuranDuas.description;
    countText = QuranDuas.count;
  } else if (value == "أدعية الأنبياء") {
    zikr = AlanbiaaDuas.zikr;
    description = AlanbiaaDuas.description;
    countText = AlanbiaaDuas.count;
  }
}
