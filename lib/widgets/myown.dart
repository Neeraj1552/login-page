import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/successlogin.dart';

// ignore: must_be_immutable
class Login extends StatelessWidget {
   Login({super.key});


String name="neeraj";
int password=123;
TextEditingController username=TextEditingController();
 TextEditingController passwordcontroller=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 81, 98, 153),
          centerTitle: true,
          title: Text('login page',
          style: TextStyle(color: const Color.fromARGB(255, 248, 249, 251),
          fontSize:20,
          
          fontWeight: FontWeight.w500,
          ),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [CircleAvatar(radius: 39,

              child: Icon (
              Icons.person,
              ),


            ),
            Text (
              'Hello welcome Back',
            style: TextStyle(
          
              
              fontSize: 18,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
            ),
            SizedBox(
              height: 22,
            ),
            TextField(
              controller:username ,
              decoration:InputDecoration(labelText: 'User name',
              hintText: 'enter your user name ' ,
              border: OutlineInputBorder()
              ),
            ),
            SizedBox(
              height: 22,
            ),

            TextField(
              keyboardType: TextInputType.number,
              controller:passwordcontroller ,
               obsucreText:true,
              decoration: InputDecoration(
                labelText: 'password',
                hintText: 'enter your password',
                border: OutlineInputBorder(),
    
              ),
            ),

            TextButton(onPressed: (){}, child: Text('forgot password'),
            ),
            SizedBox(height: 10,
            ),
            ElevatedButton(onPressed: (){
              check(context);

            }, child: Text('login')),
            SizedBox(height: 10,
            ),
            ],
            
          ),
            ),
          ),
        ),
      );
      
  }

  void check(BuildContext context ){



   if (username.text.isEmpty && passwordcontroller.text.isEmpty){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("no username and  password entered")),
    );
    return;
   }
   
   if(username.text.isEmpty){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:Text("user name is not entered")),
    );
    return;
   }
   if(passwordcontroller.text.isEmpty){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("password is not entered")),
    );
    return;
   }

   if(username.text==name && passwordcontroller.text==password.toString()){
    Navigator.push(
      context,
       MaterialPageRoute(
        builder:(context)=>Successlogin(),
       ),
       
    );

     } else{

                    ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content:Text("username or password incorrect")),
                    );}
}
  



}






  
