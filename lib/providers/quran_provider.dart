import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/surah_model.dart';

import 'dart:convert';



class QuranProvider with ChangeNotifier {

  List<Surah> _surahs = [];



  List<Surah> get surahs => _surahs;



  QuranProvider() {

    _loadSurahs();

  }



  Future<void> _loadSurahs() async {

    final prefs = await SharedPreferences.getInstance();

    String? savedData = prefs.getString('surah_data');



    if (savedData != null) {

      List<dynamic> jsonData = json.decode(savedData);

      _surahs = jsonData.map((item) => Surah.fromJson(item)).toList();

    } else {

      _surahs = _generateSurahList();

    }

    notifyListeners();

  }



  List<Surah> _generateSurahList() {

    return [

      Surah(id: 1, name: "الفاتحة", juz: 1),

      Surah(id: 2, name: "البقرة", juz: 1),

      Surah(id: 3, name: "آل عمران", juz: 3),

        Surah(id: 4, name: "النساء",  juz: 4),

    Surah(id: 5, name: "المائدة", juz: 6),

    Surah(id: 6, name: "الأنعام",  juz: 7),

    Surah(id: 7, name: "الأعراف",  juz: 8),

    Surah(id: 8, name: "الأنفال", juz: 9),

    Surah(id: 9, name: "التوبة",juz: 10),

    Surah(id: 10, name: "يونس", juz: 11),

    Surah(id: 11, name: "هود", juz: 12),

    Surah(id: 12, name: "يوسف", juz: 12),

    Surah(id: 13, name: "الرعد", juz: 13),

    Surah(id: 14, name: "إبراهيم", juz: 13),

    Surah(id: 15, name: "الحجر", juz: 14),

    Surah(id: 16, name: "النحل",  juz: 14),

    Surah(id: 17, name: "الإسراء", juz: 15),

    Surah(id: 18, name: "الكهف", juz: 15),

    Surah(id: 19, name: "مريم", juz: 16),

    Surah(id: 20, name: "طه", juz: 16),

    Surah(id: 21, name: "الأنبياء", juz: 17),

    Surah(id: 22, name: "الحج", juz: 17),

    Surah(id: 23, name: "المؤمنون", juz: 18),

    Surah(id: 24, name: "النور", juz: 18),

    Surah(id: 25, name: "الفرقان",  juz: 19),

    Surah(id: 26, name: "الشعراء", juz: 19),

    Surah(id: 27, name: "النمل", juz: 19),

    Surah(id: 28, name: "القصص",  juz: 20),

    Surah(id: 29, name: "العنكبوت", juz: 20),
 

    
      // أضف باقي السور هنا
Surah(id: 30, name: "الروم", juz: 21),

      Surah(id: 31, name: "لقمان", juz: 21),

      Surah(id: 32, name: "السجدة", juz: 21),

        Surah(id: 33, name: "الأحزاب",  juz: 21),

    Surah(id: 34, name: "سبإ", juz: 22),

    Surah(id: 35, name: "فاطر",  juz: 22),

    Surah(id: 36, name: " يس ",  juz: 23),

    Surah(id: 37, name: "الصافات", juz: 23),

    Surah(id: 38, name: " ص ",juz: 23),

    Surah(id: 39, name: "الزمر", juz: 24),

    Surah(id: 40, name: "غافر", juz: 24),

    Surah(id: 41, name: "فصلت", juz: 25),

    Surah(id: 42, name: "الشورى", juz: 25),

    Surah(id: 43, name: "الزخرف", juz: 25),

    Surah(id: 44, name: "الدخان", juz: 25),

    Surah(id: 45, name: "الجاثية",  juz: 26),

    Surah(id: 46, name: "الأحقاف", juz: 26),

    Surah(id: 47, name: "محمد", juz: 26),

    Surah(id: 48, name: "الفتح", juz: 26),

    Surah(id: 49, name: "الحجرات", juz: 26),

    Surah(id: 50, name: "ق", juz: 26),

    Surah(id: 51, name: "الذريات", juz: 27),

    Surah(id: 52, name: "الطور", juz: 27),

    Surah(id: 53, name: "النجم", juz: 27),

    Surah(id: 54, name: "القمر",  juz: 27),

    Surah(id: 55, name: "الرحمن", juz: 27),

    Surah(id: 56, name: "الواقعة", juz: 27),

    Surah(id: 57, name: "الحديد",  juz: 28),

    Surah(id: 58, name: "المجادلة", juz: 28),
    Surah(id: 59, name: "الحشر",  juz: 28),

    Surah(id: 60, name: "الممتحنة", juz: 28),
 


 Surah(id: 61, name: "الصف",  juz: 28),

    Surah(id: 62, name: "الجمعة", juz: 28),

Surah(id: 63, name: "المنافقون", juz: 28),

      Surah(id: 64, name: "التغابن", juz: 28),

      Surah(id: 65, name: "الطلاق", juz: 28),

        Surah(id: 66, name: "التحريم",  juz: 28),

    Surah(id: 67, name: "الملك", juz: 29),

    Surah(id: 68, name: "القلم",  juz: 29),

    Surah(id: 69, name: "الحاقة",  juz: 29),

    Surah(id: 70, name: "المعارج", juz: 29),

    Surah(id: 71, name: "نوح",juz: 29),


Surah(id: 72, name: "الجن", juz: 29),

      Surah(id: 73, name: "المزمل", juz: 29),

      Surah(id: 74, name: "المدثر", juz: 29),

        Surah(id: 75, name: "القيامة",  juz: 29),

    Surah(id: 76, name: "الانسان", juz: 29),

    Surah(id: 77, name: "المرسلات",  juz: 29),

    Surah(id: 78, name: "النبإ",  juz: 30),

    Surah(id: 79, name: "النازعات", juz: 30),

    Surah(id: 80, name: "عبس",juz: 30),

    Surah(id: 81, name: "التكوير", juz: 30),

    Surah(id: 82, name: "الإنفطار", juz: 30),

    Surah(id: 83, name: "المطففين", juz: 30),

    Surah(id: 84, name: "الإنشقاق", juz: 30),

    Surah(id: 85, name: "البروج", juz: 30),

    Surah(id: 86, name: "الطارق", juz: 30),

    Surah(id: 87, name: "الأعلى",  juz: 30),

    Surah(id: 88, name: "الغاشية", juz: 30),

    Surah(id: 89, name: "الفجر", juz: 30),

    Surah(id: 90, name: "البلد", juz: 30),

    Surah(id: 91, name: "الشمس", juz: 30),

    Surah(id: 92, name: "الليل", juz: 30),

    Surah(id: 93, name: "الضحى", juz: 30),

    Surah(id: 94, name: "الشرح", juz: 30),

    Surah(id: 95, name: "التين", juz: 30),

    Surah(id: 96, name: "العلق",  juz: 30),

    Surah(id: 97, name: "القدر", juz: 30),

    Surah(id: 98, name: "البينة", juz: 30),

    Surah(id: 99, name: "الزلزلة",  juz: 30),

    Surah(id: 100, name: "العاديات", juz: 30),
    Surah(id: 101, name: "القارعة",  juz: 30),

    Surah(id: 102, name: "التكاثر", juz: 30),

Surah(id: 103, name: "العصر", juz: 30),

      Surah(id: 104, name: "الهمزة", juz: 30),

      Surah(id: 105, name: "الفيل", juz: 30),

        Surah(id: 106, name: "قريش",  juz: 30),

    Surah(id: 107, name: "الماعون", juz: 30),

    Surah(id: 108, name: "الكوثر",  juz: 30),

    Surah(id: 109, name: "الكافرون",  juz: 30),

    Surah(id: 110, name: "النصر", juz: 30),

    Surah(id: 111, name: "المسد",juz: 30),


Surah(id: 112, name: "الإخلاص", juz: 30),

      Surah(id: 113, name: "الفلق ", juz: 30),

      Surah(id: 114, name: "الناس", juz: 30),

       






    ];

  }



  void toggleSurahCompletion(int id) async {

    int index = _surahs.indexWhere((s) => s.id == id);

    if (index != -1) {

      _surahs[index].isCompleted = !_surahs[index].isCompleted;

      notifyListeners();

      await _saveSurahs();

    }

  }



  Future<void> _saveSurahs() async {

    final prefs = await SharedPreferences.getInstance();

    String encodedData = json.encode(_surahs.map((s) => s.toJson()).toList());

    await prefs.setString('surah_data', encodedData);

  }



  double getCompletionPercentage() {

    int completed = _surahs.where((s) => s.isCompleted).length;

    return (completed / _surahs.length) * 100;

  }



  int getCompletedJuz() {

    return _surahs.where((s) => s.isCompleted).map((s) => s.juz).toSet().length;

  }



  int getRemainingJuz() {

    return 30 - getCompletedJuz();

  }

}