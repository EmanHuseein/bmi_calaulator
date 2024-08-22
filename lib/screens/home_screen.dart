import 'package:bmi/screens/result_screen.dart';
import 'package:bmi/widgets/counter_widget.dart';
import 'package:bmi/widgets/gender_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double height = 150;

  int weight = 60;

  int age = 20;

  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI Calculator",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff24263B),
      ),
      body: Container(
        color: const Color(0xff1C2135),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: GenderWidget(
                              image: "assets/images/male.png",
                              gentype: "Male",
                              isSelect: isMale,
                              onTap: () {
                                setState(() {
                                  isMale = true;
                                });
                              },
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: GenderWidget(
                              image: "assets/images/female.png",
                              gentype: "Female",
                              isSelect: !isMale,
                              onTap: () {
                                setState(() {
                                  isMale = false;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xff333244),
                        ),
                        child: Column(
                          children: [
                            const Text(
                              "Hight",
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(
                                  0xff8B8C9E,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${height.round()}",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                  ),
                                ),
                                const Text(
                                  "cm",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Slider(
                                min: 50,
                                max: 200,
                                value: height,
                                inactiveColor: Colors.white,
                                onChanged: (value) {
                                  setState(() {
                                    height = value;
                                  });
                                }),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: CounterWidget(
                              title: "Weight",
                              value: weight,
                              subtract: () {
                                if (weight == 5) {
                                } else {
                                  weight--;
                                  setState(() {});
                                }
                              },
                              plus: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: CounterWidget(
                              title: "Age",
                              value: age,
                              subtract: () {
                                setState(() {
                                  if (age == 1) {
                                  } else {
                                    age--;
                                  }
                                });
                              },
                              plus: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
                width: double.infinity,
                height: 100,
                color: const Color(0xffE83D67),
                child: TextButton(
                  onPressed: () {
                    double bmi = weight / ((height / 100) * (height / 100));
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultScreen(
                          res: bmi,
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    "Calculate",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
