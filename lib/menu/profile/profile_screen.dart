
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import '../menu_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  static final user = FirebaseAuth.instance.currentUser!;
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  File? imageCounter;

  File? image;

  Future pickImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;
    final permImage = await saveImagePermanently(image.path);
    setState(() {
      this.image = permImage;
    });
  }

  Future<File> saveImagePermanently(String imagePath) async {
    final directory = await getApplicationDocumentsDirectory();
    final name = basename(imagePath);
    final image = File('${directory.path}/$name');

    return File(imagePath).copy(image.path);
  }

  @override
  Widget build(BuildContext context) {
    final fileName =
        image != null ? basename(image!.path) : 'No image Selected';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Center(
          child: Text(
            'Profile information',
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 24.0,
              child: SizedBox(
                width: 40,
                height: 40,
                child: ClipOval(
                  child: image == null
                      ? Icon(
                          Icons.account_circle,
                          color: Colors.black,
                          size: 40,
                        )
                      : Image.file(image!),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.teal[50],
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(28),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Signed in as:',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w200),
                ),
                const SizedBox(height: 8),
                Text(
                  user.email!,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 40),
                Text(
                  'Enter your Profile Information',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                Text(
                  'Select your profile picture:',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w200),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      icon: Icon(Icons.image_search_outlined),
                      onPressed: () {
                        pickImage(ImageSource.gallery);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                        minimumSize: const Size(120, 40),
                        maximumSize: const Size(120, 40),
                      ),
                      label: Text(
                        'Gallery',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    const SizedBox(width: 15),
                    ElevatedButton.icon(
                      icon: Icon(Icons.camera_alt_outlined),
                      onPressed: () {
                        pickImage(ImageSource.camera);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                        minimumSize: const Size(120, 40),
                        maximumSize: const Size(120, 40),
                      ),
                      label: Text(
                        'Camera',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  fileName,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 40),
                Text(
                  'Enter your First Name:',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: firstNameController,
                  style: TextStyle(color: Colors.black),
                  cursorColor: Colors.black,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: 'First Name',
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 2),
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(30),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                    ),
                  ),
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(height: 20),
                Text(
                  'Enter your Last Name:',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: lastNameController,
                  style: TextStyle(color: Colors.black),
                  cursorColor: Colors.black,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: 'Last Name',
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 2),
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(30),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                    ),
                  ),
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(height: 8),
                ElevatedButton.icon(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    imageCounter = image;
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MenuScreen(
                                  firstName: firstNameController.text,
                                  lastName: lastNameController.text,
                                  profileImg: imageCounter,
                                )),
                        (route) => false);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                  ),
                  label: Text(
                    'Submit',
                    style: TextStyle(fontSize: 16),
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
