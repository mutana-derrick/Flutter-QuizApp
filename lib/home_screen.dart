import 'package:flutter/material.dart';
import 'package:quizapp/category_screen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(color: Color(0Xff29285E)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "TEASER",
                style: TextStyle(
                    color: Color(0XffF3D1B0),
                    fontSize: 40,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 30,
              ),
              Image.asset("assets/landingpage-vector.png"),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Ready to tease your brain",
                style: TextStyle(
                    color: Color(0XffF3D1B0),
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0XffF3D1B0),
                      ),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.all(10),
                      )),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const CategoryScreen()));
                  },
                  child: const Text(
                      style: TextStyle(color: Colors.black), "Get started"))
            ],
          ),
        ),
      ),
    );
  }
}
