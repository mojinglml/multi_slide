import 'package:flutter/material.dart';
import 'package:multi_slide/multi_slide.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'multi_slide',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Builder(
        builder: (context){
          return MultiSlide(MediaQuery.of(context).size);
        },
      ),
    );
  }
}
