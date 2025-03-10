
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../providers/quran_provider.dart';

import 'report_screen.dart';



class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});



  @override

  Widget build(BuildContext context) {

    var quranProvider = Provider.of<QuranProvider>(context);



    return Scaffold(

      appBar: AppBar(

        title: const Text(

          "ختم القرآن",

          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),

        ),

        centerTitle: true, // ✅ جعل العنوان في المنتصف

      ),

      //backgroundColor: const Color(0xFFF3EACB), // ✅ لون الخلفية مثل المصحف

      body: Padding(

        padding: const EdgeInsets.all(12.0),

        child: Column(

          children: [

            Expanded(

              child: ListView.builder(

                itemCount: quranProvider.surahs.length,

                itemBuilder: (context, index) {

                  var surah = quranProvider.surahs[index];

                  return Container(

                    margin: const EdgeInsets.symmetric(vertical: 5),

                    padding: const EdgeInsets.all(10),

                    decoration: BoxDecoration(

                      color: Colors.green.shade100, // ✅ بوكس مظلل للسور

                      borderRadius: BorderRadius.circular(10),

                    ),

                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [

                        Checkbox(

                          value: surah.isCompleted,

                          onChanged: (_) {

                            quranProvider.toggleSurahCompletion(surah.id);

                          },

                        ),

                        Expanded(

                          child: Text(

                            "${surah.name} (الجزء ${surah.juz})",

                            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),

                            textAlign: TextAlign.right, // ✅ جعل السور على اليمين

                          ),

                        ),

                      ],

                    ),

                  );

                },

              ),

            ),

            ElevatedButton(

              onPressed: () {

                Navigator.push(

                  context,

                  MaterialPageRoute(builder: (context) => const ReportScreen()),

                );

              },

              child: const Text("عرض التقدم"),

            ),

          ],

        ),

      ),

    );

  }

}

