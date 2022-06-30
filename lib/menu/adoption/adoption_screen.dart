import 'package:flutter/material.dart';
import 'package:pet_adoption_app/menu/adoption/pet_card.dart';
import 'package:pet_adoption_app/menu/services/remote_service.dart';


import '../models/pet.dart';

class AdoptionScreen extends StatefulWidget {
  const AdoptionScreen({Key? key}) : super(key: key);

  @override
  State<AdoptionScreen> createState() => _AdoptionScreenState();
}

class _AdoptionScreenState extends State<AdoptionScreen> {
  Pet? pets;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();

    getData();
  }

  getData() async {
    pets = await ApiService().fetchPets();
    if (pets != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Center(
          child: Text(
            'Adoption page',
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
                    Icons.pets_outlined,
                    color: Colors.black,
                    size: 40,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: isLoaded
          ? ListView.builder(
              itemCount: pets?.data?.length,
              itemBuilder: (context, index) {
                return PetCard(
                    name: pets?.data?[index].attributes?.name,
                    thumbnailUrl: pets?.data?[index].attributes?.pictureThumbnailUrl,
                    breed: pets?.data?[index].attributes?.breedPrimary,
                    sex: pets?.data?[index].attributes?.sex,
                );
              },
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
