import 'package:flutter/material.dart';

class JavaQuestionOneScreen extends StatelessWidget {
  const JavaQuestionOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0Xff7494fc),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.brightness_medium_outlined,
              size: 30,
            ),
          ),
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/javascript.jpeg",
              width: 30,
              height: 30,
            ),
            const SizedBox(
              width: 5,
            ),
            const Text(
              "Java",
              style: TextStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(color: Color(0Xff29285E)),
        child: const Center(
          child: Text("java questions here"),
        ),
      ),
    );
  }
}
