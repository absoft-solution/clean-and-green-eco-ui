import 'package:flutter/material.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key, required String title}) : super(key: key);

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.flash_on),
        title: Text('Camera'),
        actions: [Icon(Icons.close)],
      ),
      body: Stack(
        children: [
          Center(
            child: Image.asset("assets/images/splash.png")
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.black.withOpacity(0.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(Icons.rotate_left, color: Colors.white),
                    onPressed: () {
                      // Handle rotation left
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.camera_alt, color: Colors.white),
                    onPressed: () {
                      // Handle capturing an image
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.rotate_right, color: Colors.white),
                    onPressed: () {
                      // Handle rotation right
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
