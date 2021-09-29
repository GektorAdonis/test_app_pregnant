import 'package:flutter/material.dart';

class ElevatedGradientButton extends StatelessWidget {
  final Gradient gradient;
  final VoidCallback onPressed;

  ElevatedGradientButton(this.gradient, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 189,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
            gradient: gradient),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                left: 68,
              ),
              child: Text(
                'Next',
                style: TextStyle(
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Color.fromRGBO(255, 255, 255, 1)),
              ),
            ),
            Container(
              width: 27,
              height: 27,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(30)),
              margin: const EdgeInsets.only(right: 17),
              child: const Icon(
                Icons.arrow_forward_ios,
                color: Color.fromRGBO(69, 69, 129, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
