import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_camera_demo/screens/captures_screen.dart';

class PreviewScreen extends StatelessWidget {
  final File imageFile;
  final List<File> fileList;
  final predictions;

  const PreviewScreen({
    required this.predictions,
    required this.imageFile,
    required this.fileList,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              predictions.toString(),
                style:
                TextStyle(
                  backgroundColor: Colors.white
                ),
            ),
            ),
          Expanded(
            child: Image.file(imageFile),
          ),
        ],
      ),
    );
  }
}