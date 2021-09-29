import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app_pregnant/bloc/choose_cubit.dart';
import 'package:test_app_pregnant/UI/elevated_gradient_button.dart';

class DatePickerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _years = List.generate(100, (i) {
      int year = DateTime.now().year - 100;

      return (year + i);
    });

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/backgrounds/Inkedapptest_LI2.jpg',
              ),
              fit: BoxFit.fill),
        ),
        padding: const EdgeInsets.only(top: 191, bottom: 83),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Log in your date of birth',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 307,
                child: ListWheelScrollView(
                  overAndUnderCenterOpacity: 0.2,
                  diameterRatio: 7,
                  physics: const FixedExtentScrollPhysics(),
                  magnification: 1.2,
                  useMagnifier: true,
                  itemExtent: 67,
                  children: _years
                      .map(
                        (e) => Container(
                          color: const Color.fromRGBO(246, 246, 246, 1),
                          width: 355,
                          alignment: Alignment.center,
                          child: Text(
                            '$e',
                            style: const TextStyle(
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w900,
                              fontSize: 40,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                  onSelectedItemChanged: (index) {
                    BlocProvider.of<ChooseCubit>(context)
                        .setYear(_years[index]);
                  },
                ),
              ),
              ElevatedGradientButton(
                  const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(69, 69, 129, 1),
                      Color.fromRGBO(252, 252, 255, 1)
                    ],
                    stops: [
                      0.05,
                      1,
                    ],
                  ), () {
                Navigator.of(context).pushNamed('/choose');
              }),
            ]),
      ),
    );
  }
}
