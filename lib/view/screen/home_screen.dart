import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required String title});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, String>> dataList = [
    {
      'imageUrl': 'assets/images/clean_pesh.jpg',
      'title': 'Clean and Green Peshawar'
    },
    {
      'imageUrl': 'assets/images/dirty_pesh.jpg',
      'title': 'Plastics! A main Reason'
    },
    {
      'imageUrl': 'assets/images/dirty_pesh2.jpg',
      'title': 'Filthy Environments: Breeding Grounds for Disease'
    },
    {
      'imageUrl': 'assets/images/clean_pesh2.jpg',
      'title': 'Peshawar Goes Green: Clean Initiative Launched'
    },
    {
      'imageUrl': 'assets/images/clean_pesh3.jpg',
      'title': 'Kids Count Too: Even Little Hands Make a Difference'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Home'),
        backgroundColor: Color.fromRGBO(52, 199, 89, 1),
        //
      ),
      // backgroundColor: Colors.,
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            children: [
              Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Home",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(52, 199, 89, 1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                width: 505.29,
                height: 220.38,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Column(
                  children: [
                    Card(
                      margin: EdgeInsets.all(8),
                      child: ListTile(
                        title: Text(
                          "Clean and Earn Rewards",
                          style: TextStyle(
                            fontSize: 13,
                            color: Color.fromRGBO(52, 199, 89, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Align(
                          alignment: Alignment.centerLeft,
                          child: MaterialButton(
                            onPressed: () {

                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 150,

                              height: 40,

                              decoration: BoxDecoration(
                                color: Color.fromRGBO(52, 199, 89, 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                'Radeem Points',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                              
                            ),

                          ),
                        ),

                        trailing: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/dp2.png'),
                          radius: 40,
                        ),
                      ),
                      color: Colors.white,
                      elevation: 4,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Your Post",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      height: 355,
                      width: 380,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: dataList.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.all(10.0),
                            width: 170.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset(
                                    dataList[index]['imageUrl']!,
                                    height: 250,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  dataList[index]['title']!,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],

                            ),
                          );
                        },
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Waste Nearby You",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  "assets/images/dirty_pesh3.jpg",
                                  alignment: Alignment.topCenter,
                                )
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Clean it",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(
                                        Icons.brush,
                                        color: Colors.white,
                                        size: 15,
                                      )
                                    ],
                                  )),
                              width: 320,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(52, 199, 89, 1),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ],
                        ),
                      ),
                      height: 300,
                      width: 380,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          child: Expanded(
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Color.fromRGBO(52, 199, 89, 1),
              borderRadius: BorderRadius.circular(40)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Icon(
                  Icons.qr_code,
                  size: 20,
                  color: Color.fromRGBO(52, 199, 89, 1),
                ),
              ),
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Icon(
                Icons.camera_alt_rounded,
                size: 20,
                color: Color.fromRGBO(52, 199, 89, 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: CircleAvatar(
                  backgroundImage: AssetImage(
                'assets/images/dp2.png',
              )),
            )
          ]),
        ),
      )),
    );
  }
}
