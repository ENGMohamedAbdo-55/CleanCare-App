
import 'package:cleancare_app/features/Auth/presentation/views/screens/log_in_view.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(
   
    
     const MyApp());
}

class MyApp extends StatelessWidget {  
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      
    debugShowCheckedModeBanner: false,
  theme: ThemeData(fontFamily: "Roboto"),
      home:const LogInView (),
    );
  }
}
//ResetPassView
//EmailVerificationView
//LogInView
//ForgetPassView


//https://www.figma.com/file/rZuWb269AqSIkgCcmmXoKW/CleanCare-App?type=design&node-id=0%3A1&mode=design&t=1T1cWuYs6loM1xyt-1