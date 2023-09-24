import 'package:flutter/material.dart';

void main() {
  runApp(BasketBallCounterAPP());
}

class BasketBallCounterAPP extends StatefulWidget {
  @override
  State<BasketBallCounterAPP> createState() => _BasketBallCounterAPPState();
}

class _BasketBallCounterAPPState extends State<BasketBallCounterAPP> {
  int teamApoints = 0;

  int teamBpoints = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Center(
            child: Text(
              'Points Counter',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
        body: SizedBox(
          height: 1500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(fontSize: 40),
                      ),
                      Text(
                        '$teamApoints',
                        style: const TextStyle(
                            fontSize: 180, fontFamily: 'Tourney'),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          // minimumSize: const Size(130, 40),
                          fixedSize: const Size(155, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamApoints++;
                          });

                          // print(teamApoints);
                        },
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          // minimumSize: const Size(130, 40),
                          fixedSize: const Size(155, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamApoints = teamApoints + 2;
                          });
                        },
                        child: const Text(
                          'Add 2 Points',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          // minimumSize: const Size(130, 40),
                          fixedSize: const Size(155, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            teamApoints = teamApoints + 3;
                          });
                        },
                        child: const Text(
                          'Add 3 Points',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  //Vertical Column

                  const SizedBox(
                    height: 350,
                    child: VerticalDivider(
                      color: Color.fromARGB(130, 249, 196, 116),
                      thickness: 1,
                      // indent: 20,
                    ),
                  ),
                  Column(children: [
                    const Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      '$teamBpoints',
                      style:
                          const TextStyle(fontSize: 180, fontFamily: 'Tourney'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        // minimumSize: const Size(130, 40),
                        fixedSize: const Size(155, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBpoints++;
                        });
                      },
                      child: const Text(
                        'Add 1 Point',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        // minimumSize: const Size(130, 40),
                        fixedSize: const Size(155, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBpoints = teamBpoints + 2;
                        });
                      },
                      child: const Text(
                        'Add 2 Points',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        // minimumSize: const Size(130, 40),
                        fixedSize: const Size(155, 50),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBpoints = teamBpoints + 3;
                        });
                      },
                      child: const Text(
                        'Add 3 Points',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ]),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  // minimumSize: const Size(130, 40),
                  fixedSize: const Size(180, 50),
                ),
                onPressed: () {
                  setState(() {
                    teamApoints = 0;
                    teamBpoints = 0;
                  });
                },
                child: const Text(
                  'Reset',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
