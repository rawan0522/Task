import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_holistic1/Providers/product_provider.dart';
import 'package:task_holistic1/Providers/registration_provider.dart';
import 'package:task_holistic1/Screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers:[
         ChangeNotifierProvider(create: (context) => RegistrationProvider(),),
         ChangeNotifierProvider(create: (context) => ProductProvider(),)
        ],
      child: MaterialApp(
        home: SignupScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
