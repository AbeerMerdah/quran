import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'providers/quran_provider.dart';

import 'screens/home_screen.dart';



void main() {

  runApp(

    MultiProvider(

      providers: [

        ChangeNotifierProvider(create: (_) => QuranProvider()),

      ],

      child: MyApp(),

    ),

  );

}



class MyApp extends StatelessWidget {
  const MyApp({super. key});



  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: 'ختم القرآن',

      theme: ThemeData(primarySwatch: Colors.green),

      home: HomeScreen(),

    );

  }

}