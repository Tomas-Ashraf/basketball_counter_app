// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  double? myFontSizeA = 110.0;

  double? myFontSizeB = 110.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Points Counter',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 25,
                    bottom: 25,
                    left: 30,
                    right: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 40),
                        child: SizedBox(
                          height: 140,
                          child: Text(
                            '$teamA',
                            style: TextStyle(
                              fontSize: myFontSizeA,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(120, 40),
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          teamA++;

                          setState(() {});
                        },
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(120, 40),
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          teamA += 2;

                          setState(() {});
                        },
                        child: const Text(
                          'Add 2 Points',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(120, 40),
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          teamA += 3;

                          setState(() {});
                        },
                        child: const Text(
                          'Add 3 Points',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 380,
                  child: VerticalDivider(color: Colors.grey, thickness: 2),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 25,
                    bottom: 25,
                    left: 20,
                    right: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Team B',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 40),
                        child: SizedBox(
                          height: 140,
                          child: Text(
                            '$teamB',
                            style: TextStyle(
                              fontSize: myFontSizeB,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(120, 40),
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          teamB++;

                          setState(() {});
                        },
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(120, 40),
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          teamB += 2;

                          setState(() {});
                        },
                        child: const Text(
                          'Add 2 Points',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(120, 40),
                          backgroundColor: Colors.orange,
                        ),
                        onPressed: () {
                          teamB += 3;

                          setState(() {});
                        },
                        child: const Text(
                          'Add 3 Points',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(120, 40),
                backgroundColor: Colors.orange,
              ),
              onPressed: () {
                setState(() {
                  teamA = 0;
                  teamB = 0;

                  myFontSizeA = 130;

                  myFontSizeB = 130;
                });
              },
              child: const Text(
                'Reset',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
