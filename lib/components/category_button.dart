import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String label;
  final String logopath;
  final void Function() onPressed;
  const CategoryButton(
      {super.key,
      required this.label,
      required this.logopath,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color(0Xff7494fc),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              logopath,
              width: 30,
              height: 30,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              label,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
