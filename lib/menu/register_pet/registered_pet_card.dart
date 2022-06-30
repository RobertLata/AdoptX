import 'dart:io';

import 'package:flutter/material.dart';

class RegisteredPetCard extends StatefulWidget {
  String? name;
  String? breed;
  String? sex;
  File? thumbnailUrl;

  RegisteredPetCard({
    this.name,
    this.sex,
    this.breed,
    this.thumbnailUrl,
  });

  @override
  State<RegisteredPetCard> createState() => _RegisteredPetCardState();
}
class _RegisteredPetCardState extends State<RegisteredPetCard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 60),
                Text('Please check the information', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w200, color: Theme.of(context).primaryColor)),
                Text('before submitting', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w200, color: Theme.of(context).primaryColor)),
                const SizedBox(height: 80),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.6),
                        offset: Offset(
                          0.0,
                          10.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: -6.0,
                      ),
                    ],
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.50),
                        BlendMode.multiply,
                      ),
                      image: widget.thumbnailUrl != null
                          ? FileImage(widget.thumbnailUrl!) as ImageProvider
                          : NetworkImage(
                          'https://www.inyocounty.us/sites/default/files/styles/department_page_slider/public/2019-05/Dept-SubDept-AdoptableAnimals.jpg?h=d1ee6398&itok=1Bd8eNYo'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Text(
                            widget.name!,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.teal[50],
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        alignment: Alignment.center,
                      ),
                      Align(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.pets,
                                    color: Theme.of(context).primaryColor,
                                    size: 18,
                                  ),
                                  SizedBox(width: 7),
                                  Text(
                                    widget.breed != null ? widget.breed! : 'Unknown',
                                    style: TextStyle(color: Colors.teal[50]),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    widget.sex == 'Male' ? Icons.male : Icons.female,
                                    color: Theme.of(context).primaryColor,
                                    size: 18,
                                  ),
                                  SizedBox(width: 7),
                                  Text(
                                    widget.sex != null ? widget.sex! : 'Female',
                                    style: TextStyle(color: Colors.teal[50]),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        alignment: Alignment.bottomLeft,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      icon: Icon(Icons.arrow_back_outlined),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                        minimumSize: const Size(120, 40),
                        maximumSize: const Size(120, 40),
                      ),
                      label: Text(
                        'Back',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton.icon(
                      icon: Icon(Icons.arrow_forward_rounded),
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                        minimumSize: const Size(120, 40),
                        maximumSize: const Size(120, 40),
                      ),
                      label: Text(
                        'Submit',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}