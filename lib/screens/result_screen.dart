import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.res});

  final double res;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff24263B),
      ),
      body: Container(
        color: const Color(0xff1C2135),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Your Result",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Expanded(
              child: Container(
                height: 700,
                width: 400,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(
                    0xff333244,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Normal",
                        style: TextStyle(
                          color: Color(
                            0xff21BF73,
                          ),
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 50,),
                      Text(
                        '${res.round()}',
                        style: const TextStyle(
                            fontSize: 64,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 50,),

                      const Text(
                        "You Have a Normal Body Weight,",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff8B8C9E),
                            fontWeight: FontWeight.w500),
                      ),
                      const Text(
                        "Good Job.",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff8B8C9E),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 100,
              // margin: const EdgeInsets.only(top: 20),
              color: const Color(0xffE83D67),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Re - Calculate",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
