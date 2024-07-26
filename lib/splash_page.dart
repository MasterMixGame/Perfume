import 'package:flutter/material.dart';
import 'package:test_project/Components/Constants.dart';
import 'package:test_project/main_page.dart';
import 'package:test_project/pageview_widget.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 10)).then((value) =>
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (_) => MainPage()), (route) => false));
    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: 400,
            color: Color.fromARGB(255, 107, 0, 218),
         child: Center(
           child: Text(
               'Parfumeria',
             style: TextStyle(
               color: Color.fromARGB(255, 250, 250, 250),
               fontSize: 40,
               fontFamily: 'Dopestyle',
             ),
           ),
         )
        ),
      ),
    );
  }
}
