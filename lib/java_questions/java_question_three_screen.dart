import 'package:flutter/material.dart';
import 'package:quizapp/finishining_screen.dart';

class JavaQuestionThreeScreen extends StatefulWidget {
  final int score;
  const JavaQuestionThreeScreen({super.key, required this.score});

  @override
  State<JavaQuestionThreeScreen> createState() =>
      _JavaQuestionThreeScreenState();
}

class _JavaQuestionThreeScreenState extends State<JavaQuestionThreeScreen> {
  bool? isQuestionOneCorrect;
  bool? isQuestionTwoCorrect;
  bool? isQuestionThreeCorrect;
  int currentscore = 0;

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
                    "3 Of 3 Questions",
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
                      "3.Java is a programmng language developed by __________.",
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
                      currentscore = 0;
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
                      currentscore = 0;
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
                      currentscore = 1;
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 48, 113, 36),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Row(
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 20,
                        ),
                        Text(
                          "Previous",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 48, 113, 36),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FinishiningScreen(
                                  score: currentscore + widget.score)));
                    },
                    child: const Row(
                      children: [
                        Text(
                          "Finish",
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
                  ),
                ],
              )
            ])),
      ),
    );
  }
}
