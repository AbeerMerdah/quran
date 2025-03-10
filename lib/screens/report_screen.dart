import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../providers/quran_provider.dart';



class ReportScreen extends StatelessWidget {

  const ReportScreen({super.key});



  @override

  Widget build(BuildContext context) {

    var quranProvider = Provider.of<QuranProvider>(context);

    double completion = quranProvider.getCompletionPercentage();



    return Scaffold(

      appBar: AppBar(

        title: const Text(

          "تقرير التقدم",

          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),

        ),

        centerTitle: true, // ✅ جعل العنوان في المنتصف

      ),
      //backgroundColor: const Color(0xFFF3EACB), // ✅ لون الخلفية مثل المصحف

      body: Padding(

        padding: const EdgeInsets.all(16.0),

        child: Center( // ✅ جعل كل المحتوى في المنتصف

          child: Container(

            padding: const EdgeInsets.all(16),

            decoration: BoxDecoration(

              color: Colors.green.shade100, // ✅ بوكس مظلل جميل

              borderRadius: BorderRadius.circular(10),

            ),

            child: Column(

              mainAxisSize: MainAxisSize.min,

              children: [

                Text(

                  "نسبة الختم: ${completion.toStringAsFixed(1)}%",

                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),

                  textAlign: TextAlign.center,

                ),

                const SizedBox(height: 10),

                Text(

                  "آخر جزء مكتمل: ${quranProvider.getCompletedJuz()}",

                  style: const TextStyle(fontSize: 18),

                  textAlign: TextAlign.center,

                ),

                const SizedBox(height: 10),

                Text(

                  "الأجزاء المتبقية: ${quranProvider.getRemainingJuz()}",

                  style: const TextStyle(fontSize: 18),

                  textAlign: TextAlign.center,

                ),

              ],

            ),

          ),

        ),

      ),

    );

  }

}




