import 'package:badge_ui/screens/serach.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plan your trip'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        leading: const Icon(Icons.arrow_back),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.deepPurpleAccent,
        child: Column(
          children: [
            Column(
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      child: Image.asset(
                        'assets/download-removebg-preview.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    const Text(
                      'goTravel',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30),
                          child: Container(
                            height: 45,
                            width: 350,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 2),
                                  child: Container(
                                    height: double.infinity,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.deepPurple[400]),
                                    child: const Center(
                                      child: Text('Flight'),
                                    ),
                                  ),
                                ),
                                const Gap(50),
                                const Text('flight+Hotel'),
                                const Gap(50),
                                const Text('Cars')
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            Container(
              height: 70,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('To,'),
                            ],
                          ),
                        ),
                        Gap(10),
                        Row(
                          children: [
                            Text(
                              'Barcelona,BCN',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Gap(20),
            Container(
              height: 70,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        Text('From,'),
                        Gap(5),
                        Text(
                          'London,LHR',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    height: 66,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text('Gate'),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 6),
                              child: Row(
                                children: [
                                  Text('15 Aug,2020',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20))
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    )),
                const Gap(5),
                Container(
                  height: 66,
                  width: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text('PASSENGERS'),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 6),
                            child: Row(
                              children: [
                                Text('2',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20))
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            const Gap(10),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SeracgFlights()));
                },
                child: const Text('Search Flights'))
          ],
        ),
      ),
    );
  }
}
