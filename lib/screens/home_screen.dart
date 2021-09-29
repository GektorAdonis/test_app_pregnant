import 'package:flutter/material.dart';
import 'package:test_app_pregnant/widgets/tab_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/backgrounds/Inkedapptest_LI1.jpg',
              ),
              fit: BoxFit.fill),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TabWidget('Track my period', 'contraception and wellbeing'),
              const SizedBox(
                height: 73,
              ),
              TabWidget('Get pregnant', 'learn about reproductive health'),
            ],
          ),
        ),
      ),
    );
  }
}
