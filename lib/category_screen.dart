import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quizapp/components/category_button.dart';
import 'package:quizapp/java_questions/java_question_one_screen.dart';
import 'package:quizapp/js_questions/js_question_one_screen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(color: Color(0Xff29285E)),
          child: Container(
            margin: const EdgeInsets.all(25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: const Color(0XffF3D1B0),
                        size: 40,
                      ),
                    ),
                    const Text(
                      "Choose The Quiz",
                      style: TextStyle(
                          color: Color(0XffF3D1B0),
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Select The Category You Want To Play",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CategoryButton(
                    label: "Java",
                    logopath: "assets/java.png",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const JavaQuestionOneScreen(),
                        ),
                      );
                    }),
                const SizedBox(
                  height: 20,
                ),
                CategoryButton(
                    label: "JavaScript",
                    logopath: "assets/javascript.jpeg",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const JsQuestionOneScreen(),
                        ),
                      );
                    }),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
