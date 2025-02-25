import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/myown.dart';







void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, title: "Demo app", home: Login());
  }
  
  
}