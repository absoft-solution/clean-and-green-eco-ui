import 'package:flutter/material.dart';

class PostCreatedScreen extends StatefulWidget {
  const PostCreatedScreen({super.key, required String title});

  @override
  State<PostCreatedScreen> createState() => _PostCreatedScreenState();
}

class _PostCreatedScreenState extends State<PostCreatedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(52, 199, 89, 1),
        toolbarHeight: 150,
        centerTitle: true,
        title: Text(
          "Post Created",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
      backgroundColor: Color.fromRGBO(241, 241, 241, 1),
      body: SingleChildScrollView(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(214, 244, 222, 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                        title: Text(
                          "Post has been uploaded successfully",
                          style:
                              TextStyle(color: Color.fromRGBO(52, 199, 89, 1),
                              ),
                        ),
                        trailing: Icon(Icons.check_circle,color: Color.fromRGBO(52, 199, 89, 1),),
                      )),
                ),
                Container(
                  height: 538.23,
                  width: 364,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 15,
                          left: 15,
                          top: 15,
                        ),
                        child: Column(
                          children: [
                            Text("Cleanliness is everyone's duty. Let's take charge of our spaces, big or small. Keeping them tidy not only benefits us but also fosters a sense of pride in our surroundings. It's our place, and it's our responsibility. Let's keep it clean together."),
                            SizedBox(height: 10,),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset("assets/images/dirty_pesh.jpg"),
                            ),
                          ],
                        ),
                      ),
                      // ElevatedButton(
                      //   onPressed: () {
                      //     showModalBottomSheet(
                      //       context: context,
                      //       builder: (context) {
                      //         return Container(
                      //           height: 300,
                      //           width: double.infinity,
                      //           decoration: BoxDecoration(
                      //               color: Color.fromRGBO(214, 244, 222, 1),
                      //             borderRadius: BorderRadius.circular(20)
                      //           ),
                      //         );
                      //       },
                      //     );
                      //   },
                      //   child: Text("History"),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
