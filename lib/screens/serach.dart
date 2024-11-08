import 'package:badge_ui/screens/pay.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SeracgFlights extends StatefulWidget {
  const SeracgFlights({super.key});

  @override
  State<SeracgFlights> createState() => _SeracgFlightsState();
}

class _SeracgFlightsState extends State<SeracgFlights> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Flights'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: 500,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(150),
                    bottomRight: Radius.circular(150)),
                color: Colors.deepPurpleAccent),
            child: Column(
              children: [
                const Text(
                  "Barcelona,BCN,-London,LHR",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                const Text(
                  'Mon,August 15 - Mon,August 22',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                const Gap(30),
                CircleAvatar(
                  child: Image.asset('assets/download.png'),
                )
              ],
            ),
          ),
          const Gap(10),
          Card(
            elevation: 5,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const Pay()));
              },
              child: const SizedBox(
                height: 150,
                width: 400,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Text(
                                'BCN',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text('08:00'),
                            ],
                          ),
                        ),
                        Gap(300),
                        Column(
                          children: [
                            Text(
                              'LHR',
                              style: TextStyle(fontSize: 20),
                            ),
                            Text('09:20'),
                          ],
                        ),
                      ],
                    ),
                    Divider(),
                    Gap(20),
                    Center(
                      child: Text(
                        '\$49,20',
                        style:
                            TextStyle(fontSize: 20, color: Colors.deepPurple),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const Card(
            elevation: 5,
            child: SizedBox(
              height: 150,
              width: 400,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text(
                              'BCN',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text('10:00'),
                          ],
                        ),
                      ),
                      Gap(300),
                      Column(
                        children: [
                          Text(
                            'LHR',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text('11:20'),
                        ],
                      ),
                    ],
                  ),
                  Divider(),
                  Gap(20),
                  Center(
                    child: Text(
                      '\$49,20',
                      style: TextStyle(fontSize: 20, color: Colors.deepPurple),
                    ),
                  )
                ],
              ),
            ),
          ),
          const Card(
            elevation: 5,
            child: SizedBox(
              height: 150,
              width: 400,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Text(
                              'BCN',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text('09:00'),
                          ],
                        ),
                      ),
                      Gap(300),
                      Column(
                        children: [
                          Text(
                            'LHR',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text('10:20'),
                        ],
                      ),
                    ],
                  ),
                  Divider(),
                  Gap(20),
                  Center(
                    child: Text(
                      '\$89,20',
                      style: TextStyle(fontSize: 20, color: Colors.deepPurple),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
