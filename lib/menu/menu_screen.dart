import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_adoption_app/menu/profile/profile_screen.dart';
import 'package:pet_adoption_app/menu/register_pet/register_pet_screen.dart';
import '../main.dart';
import 'about_api/about_api_screen.dart';
import 'adoption/adoption_screen.dart';
import 'donation/donation_screen.dart';

class MenuScreen extends StatefulWidget {
  String firstName, lastName;
  File? profileImg;
  MenuScreen(
      {required this.firstName, required this.lastName, this.profileImg});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int selectedMenuIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 24.0,
                      child: SizedBox(
                        width: 40,
                        height: 40,
                        child: ClipOval(
                          child: widget.profileImg == null
                              ? Icon(
                                  Icons.account_circle,
                                  size: 40,
                                )
                              : Image.file(widget.profileImg!),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${widget.firstName} ${widget.lastName}',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 22.0),
                        ),
                        const SizedBox(width: 20),
                        Text(
                          'Active status',
                          style:
                              TextStyle(color: Colors.white.withOpacity(0.5)),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 180),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AdoptionScreen()));
                    setState(() {
                      selectedMenuIndex = 1;
                    });
                  },
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.paw,
                        color: selectedMenuIndex == 1
                            ? Colors.white
                            : Colors.white.withOpacity(0.5),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Adoption',
                        style: TextStyle(
                            color: selectedMenuIndex == 1
                                ? Colors.white
                                : Colors.white.withOpacity(0.5),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DonationScreen()));
                    setState(() {
                      selectedMenuIndex = 2;
                    });
                  },
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.circleDollarToSlot,
                        color: selectedMenuIndex == 2
                            ? Colors.white
                            : Colors.white.withOpacity(0.5),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Donation',
                        style: TextStyle(
                            color: selectedMenuIndex == 2
                                ? Colors.white
                                : Colors.white.withOpacity(0.5),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegisterPet()));
                    setState(() {
                      selectedMenuIndex = 3;
                    });
                  },
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.squarePlus,
                        color: selectedMenuIndex == 3
                            ? Colors.white
                            : Colors.white.withOpacity(0.5),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Register pet',
                        style: TextStyle(
                            color: selectedMenuIndex == 3
                                ? Colors.white
                                : Colors.white.withOpacity(0.5),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AboutApiPage()));
                    setState(() {
                      selectedMenuIndex = 4;
                    });
                  },
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.youtube,
                        color: selectedMenuIndex == 4
                            ? Colors.white
                            : Colors.white.withOpacity(0.5),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'About API',
                        style: TextStyle(
                            color: selectedMenuIndex == 4
                                ? Colors.white
                                : Colors.white.withOpacity(0.5),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfileScreen()));
                    setState(() {
                      selectedMenuIndex = 5;
                    });
                  },
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.userLarge,
                        color: selectedMenuIndex == 5
                            ? Colors.white
                            : Colors.white.withOpacity(0.5),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Profile',
                        style: TextStyle(
                            color: selectedMenuIndex == 5
                                ? Colors.white
                                : Colors.white.withOpacity(0.5),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 181.5),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedMenuIndex = 6;
                        });
                        FirebaseAuth.instance.signOut();
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    MainPage()));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_back,
                            color: selectedMenuIndex == 6
                                ? Colors.white
                                : Colors.white.withOpacity(0.5),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Sign out',
                            style: TextStyle(
                                color: selectedMenuIndex == 6
                                    ? Colors.white
                                    : Colors.white.withOpacity(0.5),
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10.5),
              ],
            ),
          ),
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [startingColor, mainColor])),
      ),
    );
  }
}
