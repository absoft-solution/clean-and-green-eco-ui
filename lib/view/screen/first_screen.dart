import 'package:clean_and_green/view/screen/camera_screen.dart';
import 'package:clean_and_green/view/screen/create_post_screen.dart';
import 'package:clean_and_green/view/screen/home_screen.dart';
import 'package:clean_and_green/view/screen/post_created_screen.dart';
import 'package:clean_and_green/view/screen/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key, required String title});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(52, 199, 89, 1),
      ),
      backgroundColor: Color.fromRGBO(241, 241, 241, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 30, right: 30, top: 10),
                      child: Text(
                        textAlign: TextAlign.center,
                        "Let's Purify Peshawar and Empower Communities",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
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
              height: 350.38,
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.home,
                      color: Color.fromRGBO(52, 199, 89, 1), size: 40),
                  title: Text(
                    "Home Screen",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                  trailing: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(52, 199, 89, 1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen(
                                      title: 'HomeScreen',
                                    )));
                      },
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "View",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: Icon(Icons.post_add_rounded,
                      color: Color.fromRGBO(52, 199, 89, 1), size: 40),
                  title: Text(
                    "Create Post",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                  trailing: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(52, 199, 89, 1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CreatePostScreen(
                                      title: 'CreatePostScreen',
                                    )));
                      },
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "View",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: Icon(Icons.camera_alt_rounded,
                      color: Color.fromRGBO(52, 199, 89, 1), size: 40),
                  title: Text(
                    "Camera View",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                  trailing: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(52, 199, 89, 1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CameraScreen(
                                      title: 'CameraScreen',
                                    )));
                      },
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "View",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: Icon(Icons.person_2_rounded,
                      color: Color.fromRGBO(52, 199, 89, 1), size: 40),
                  title: Text(
                    "Profile View",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                  trailing: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(52, 199, 89, 1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfileScreen(
                                      title: 'ProfileScreen',
                                    )));
                      },
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "View",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: Icon(Icons.local_post_office,
                      color: Color.fromRGBO(52, 199, 89, 1), size: 40),
                  title: Text(
                    "Post Created",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                  ),
                  trailing: Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(52, 199, 89, 1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PostCreatedScreen(
                                      title: 'CreatePostScreen',
                                    )));
                      },
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "View",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
