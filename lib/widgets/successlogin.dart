import 'package:flutter/material.dart';

class Successlogin extends StatelessWidget {
  const Successlogin({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 400,
            width: double.infinity,
            child: Image.asset("image/img.jpg"),
          ),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("goback"))

        ],
      )
    );
      
     
      
  }
}