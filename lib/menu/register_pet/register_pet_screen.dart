import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pet_adoption_app/menu/register_pet/registered_pet_card.dart';

class RegisterPet extends StatefulWidget {
  const RegisterPet({Key? key}) : super(key: key);

  @override
  State<RegisterPet> createState() => _RegisterPetState();
}

class _RegisterPetState extends State<RegisterPet> {

  final petNameController = TextEditingController();
  final petBreedController = TextEditingController();
  final petSexController = TextEditingController();
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
            'Pet Information',
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
                  child: Icon(
                    FontAwesomeIcons.paw,
                    color: Colors.black,
                    size: 40,
                  )

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
                  'Enter the Pet\'s Information',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
                Text(
                  'Select the Pet\'s picture:',
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
                  'Enter the Pet\'s name:',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: petNameController,
                  style: TextStyle(color: Colors.black),
                  cursorColor: Colors.black,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: 'Pet Name',
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
                const SizedBox(height: 40),
                Text(
                  'Enter the Pet\'s breed:',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: petBreedController,
                  style: TextStyle(color: Colors.black),
                  cursorColor: Colors.black,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: 'Pet Breed',
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
                const SizedBox(height: 40),
                Text(
                  'Enter the Pet\'s sex:',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: petSexController,
                  style: TextStyle(color: Colors.black),
                  cursorColor: Colors.black,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    labelText: 'Pet Sex',
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisteredPetCard(
                              name: petNameController.text,
                              breed: petBreedController.text,
                              sex: petSexController.text,
                              thumbnailUrl: imageCounter,
                            )),
                            );
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
