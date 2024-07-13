import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:image_picker/image_picker.dart';

class Camera extends StatefulWidget {
  static String routeName = "/Camera";

  const Camera({Key? key}) : super(key: key);

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  bool textScanning = false;
  XFile? imageFile;
  String scannedText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // title: const Text("Scanner"),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (textScanning) const CircularProgressIndicator(),
              if (!textScanning && imageFile == null)
                Container(
                  width: 300,
                  height: 300,
                  color: Colors.grey[300]!,
                ),
              if (imageFile != null) Image.file(File(imageFile!.path)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      // Add your functionality for this IconButton
                      getImage(ImageSource.camera);
                    },
                    icon: Icon(Icons.camera),
                    tooltip: 'Camera',
                  ),
                  IconButton(
                    onPressed: () {
                      // Add your functionality for this IconButtonio
                      getImage(ImageSource.gallery);
                    },
                    icon: Icon(Icons.image),
                    tooltip: 'Gallery',
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(height: 8),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      scannedText,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void getImage(ImageSource source) async {
    try {
      final pickedImage = await ImagePicker().pickImage(source: source);
      if (pickedImage != null) {
        setState(() {
          textScanning = true;
          imageFile = pickedImage;
        });
        getRecognisedText(pickedImage);
      }
    } catch (e) {
      setState(() {
        textScanning = false;
        imageFile = null;
        scannedText = "Error occurred while scanning";
      });
    }
  }

  Future<void> getRecognisedText(XFile image) async {
    try {
      final inputImage = InputImage.fromFilePath(image.path);
      final textDetector = GoogleMlKit.vision.textDetector();
      final RecognisedText recognisedText =
          await textDetector.processImage(inputImage);
      await textDetector.close();

      setState(() {
        scannedText = recognisedText.text;
        textScanning = false;
      });
    } catch (e) {
      setState(() {
        textScanning = false;
        imageFile = null;
        scannedText = "Error occurred while recognizing text";
      });
    }
  }
}
