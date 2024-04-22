import 'package:flutter/material.dart';
import 'package:quizapp/java_questions/java_question_two_screern.dart';

class JavaQuestionOneScreen extends StatefulWidget {
  const JavaQuestionOneScreen({super.key});

  @override
  State<JavaQuestionOneScreen> createState() => _JavaQuestionOneScreenState();
}

class _JavaQuestionOneScreenState extends State<JavaQuestionOneScreen> {
  bool? isQuestionOneCorrect;
  bool? isQuestionTwoCorrect;
  bool? isQuestionThreeCorrect;
  int score = 0;

  Color setColor(bool? isCorrect) {
    if (isCorrect == null) {
      return const Color(0Xff7494fc);
    } else if (isCorrect == true) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }

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
              "assets/java.png",
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
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color(0Xff29285E),
        ),
        child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "1 Of 3 Questions",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    ":60",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      "1.Java is a programmng language developed by __________.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isQuestionOneCorrect = false;
                      isQuestionTwoCorrect = null;
                      isQuestionThreeCorrect = null;
                      score = 0;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0Xff7494fc),
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      side: BorderSide(
                        color: setColor(isQuestionOneCorrect),
                        width: 5.0,
                      )),
                  child: const Text(
                    "Microsoft",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isQuestionOneCorrect = null;
                      isQuestionTwoCorrect = false;
                      isQuestionThreeCorrect = null;
                      score = 0;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0Xff7494fc),
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      side: BorderSide(
                        color: setColor(isQuestionTwoCorrect),
                        width: 5.0,
                      )),
                  child: const Text(
                    "Google",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isQuestionOneCorrect = null;
                      isQuestionTwoCorrect = null;
                      isQuestionThreeCorrect = true;
                      score = 1;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0Xff7494fc),
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      side: BorderSide(
                        color: setColor(isQuestionThreeCorrect),
                        width: 5.0,
                      )),
                  child: const Text(
                    "James Gosling",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  )),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 48, 113, 36),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => JavaQuestionTwoScreen(
                                    score: score,
                                  )));
                    },
                    child: const Row(
                      children: [
                        Text(
                          "Next",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 20,
                        ),
                      ],
                    ),
                  )
                ],
              )
            ])),
      ),
    );
  }
}
