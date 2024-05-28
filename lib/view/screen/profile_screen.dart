import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key, required String title});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(52, 199, 89, 1),
        toolbarHeight: 100,
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              "Edit Profile",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 350,
            decoration: BoxDecoration(
              color: Color.fromRGBO(52, 199, 89, 1),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
            ),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/dp.jpg"),
                  radius: 60,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "abSoft Solution",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    textAlign: TextAlign.justify,
                    "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available.",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 90,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Posts",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.justify,
                              "02",
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Cleaned",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.justify,
                              "02",
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Points",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.justify,
                              "2000",
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Align(alignment: Alignment.topLeft,

              child: Text(
                textAlign: TextAlign.justify,
                "Activities",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/clean_pesh.jpg"),
                      ),
                      title: Text("You have cleaned waste from location"),
                      subtitle: Text("15 Minutes ago"),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/img.png"),
                      ),
                      title: Text("Radeem your points and enjoy"),
                      subtitle: Text("10 Minutes ago"),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/test1.png"),
                      ),
                      title: Text("You have uploaded photo from location"),
                      subtitle: Text("21 Minutes ago"),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/test.png"),
                      ),
                      title: Text("You have cleaned waste from location"),
                      subtitle: Text("32 Minutes ago"),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/clean_pesh.jpg"),
                      ),
                      title: Text("You have cleaned waste from location"),
                      subtitle: Text("15 Minutes ago"),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/img.png"),
                      ),
                      title: Text("Radeem your points and enjoy"),
                      subtitle: Text("10 Minutes ago"),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/test1.png"),
                      ),
                      title: Text("You have uploaded photo from location"),
                      subtitle: Text("21 Minutes ago"),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/test.png"),
                      ),
                      title: Text("You have cleaned waste from location"),
                      subtitle: Text("32 Minutes ago"),
                    ),

                  ],
                ),

              ),
            ),
          )
        ],
      ),
    );
  }
}
