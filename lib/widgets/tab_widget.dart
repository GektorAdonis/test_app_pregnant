import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app_pregnant/bloc/choose_cubit.dart';

class TabWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  TabWidget(this.title, this.subtitle);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 131,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 239, 239, 1),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Stack(
        children: [
          Positioned(
            left: 12,
            top: 31,
            child: Text(
              title,
              style: const TextStyle(
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w900,
                fontSize: 30,
              ),
            ),
          ),
          Positioned(
            top: 69,
            left: 18,
            child: Text(
              subtitle,
              style: const TextStyle(
                fontFamily: 'Nunito',
                fontSize: 20,
              ),
            ),
          ),
          Positioned(
            left: 296,
            top: 49,
            child: GestureDetector(
              onTap: () {
                BlocProvider.of<ChooseCubit>(context).setTitle(title);
                Navigator.of(context).pushNamed('/date');
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(83, 83, 138, 1),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                width: 30,
                height: 28,
                child: const Icon(
                  Icons.arrow_forward_ios,
                  color: Color.fromRGBO(255, 239, 239, 1),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
