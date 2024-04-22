import 'package:flutter/material.dart';
import 'package:quizapp/category_screen.dart';

class FinishiningScreen extends StatefulWidget {
  final int score;
  const FinishiningScreen({super.key, required this.score});

  @override
  State<FinishiningScreen> createState() => _FinishiningScreenState();
}

class _FinishiningScreenState extends State<FinishiningScreen> {
  @override
  Widget build(context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color(0XFF29285E),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 200),
          decoration: BoxDecoration(
            color: const Color(0XFF8787B1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.close,
                          color: Colors.white,
                        ))
                  ],
                ),
                Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    children: [
                      const TextSpan(
                        text: "Congrats!!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.yellow,
                        ),
                      ),
                      const TextSpan(
                        text: "\nQuiz Completed",
                      ),
                      const TextSpan(
                        text: "\nYou have scored",
                      ),
                      TextSpan(
                        text: "${widget.score}/3",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 50),
                      ),
                    ],
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      height: 2.0,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CategoryScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Play Again",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
