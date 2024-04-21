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
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0Xff7494fc),
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Text(
                    "Microsoft",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ))
            ])),
      ),
    );
  }
}
