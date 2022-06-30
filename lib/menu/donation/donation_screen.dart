import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_adoption_app/menu/donation/card_number_formatting.dart';

import 'exp_date_formatting.dart';
import 'messages_screen.dart';

class DonationScreen extends StatefulWidget {
  const DonationScreen({Key? key}) : super(key: key);

  @override
  State<DonationScreen> createState() => _DonationScreenState();
}

class _DonationScreenState extends State<DonationScreen> {
  final donationController = TextEditingController();
  final cardNumberController = TextEditingController();
  final nameController = TextEditingController();
  final expController = TextEditingController();
  final cvvController = TextEditingController();

  int selectedAnimalIconIndex = 0;
  int selectedCardIndex = 0;

  List<String> animalType = [
    'Cats',
    'Dogs',
  ];

  List<IconData> animalIcon = [
    FontAwesomeIcons.cat,
    FontAwesomeIcons.dog,
  ];

  Widget buildAnimalIcon(int index) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                selectedAnimalIconIndex = index;
              });
            },
            child: Material(
              color: selectedAnimalIconIndex == index
                  ? Theme.of(context).primaryColor
                  : Colors.white,
              elevation: 9,
              borderRadius: BorderRadius.circular(20),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: Icon(
                    animalIcon[index],
                    size: 30,
                    color: selectedAnimalIconIndex == index
                        ? Colors.white
                        : Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            animalType[index],
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Center(
          child: Text(
            'Donation page',
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
                    Icons.monetization_on,
                    color: Colors.black,
                    size: 40,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(28),
          child: Column(
            children: [
              Text(
                'Make a donation for:',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w200),
              ),
              const SizedBox(height: 20),
              Container(
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: animalType.length,
                    itemBuilder: (context, index) {
                      return buildAnimalIcon(index);
                    }),
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  'Select your payment method:',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w200),
                ),
              ),
              Container(
                height: 160,
                child: Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedCardIndex = 1;
                          });
                        },
                        child: Image.asset(
                          'images/visaCard.png',
                          height: 200,
                          width: 200,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedCardIndex = 2;
                          });
                        },
                        child: Image.asset(
                          'images/masterCard.png',
                          height: 155,
                          width: 155,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Row(
                  children: [
                    Icon(FontAwesomeIcons.solidCreditCard , color: (selectedCardIndex == 1 || selectedCardIndex == 2) ? Colors.black : Colors.teal[50]),
                    const SizedBox(width: 10),
                    Text((() {
                      if (selectedCardIndex == 1) {
                        return "You have chosen Visa as your\n payment method";
                      } else if (selectedCardIndex == 2) {
                        return "You have chosen MasterCard as your\n payment method";
                      } else {
                        return "";
                      }
                    }()),
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  'Enter your card information:',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w200),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: cardNumberController,
                maxLength: 19,
                style: TextStyle(color: Colors.black),
                cursorColor: Colors.black,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  counterText: '',
                  labelText: 'Card number',
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
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  CardNumberInputFormatter(),
                ],
              ),
              const SizedBox(height: 20),
              TextField(
                controller: nameController,
                style: TextStyle(color: Colors.black),
                cursorColor: Colors.black,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: 'Name',
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
              TextField(
                controller: expController,
                maxLength: 5,
                style: TextStyle(color: Colors.black),
                cursorColor: Colors.black,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  counterText: '',
                  labelText: 'Exp',
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
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  ExpDateInputFormatter(),
                ],
              ),
              const SizedBox(height: 20),
              TextField(
                controller: cvvController,
                maxLength: 3,
                style: TextStyle(color: Colors.black),
                cursorColor: Colors.black,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelText: 'CVV',
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
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
              ),
              const SizedBox(height: 20),
              TextField(
                style: TextStyle(color: Colors.black),
                controller: donationController,
                cursorColor: Colors.black,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  labelText: 'Amount',
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
                  suffixIcon: Icon(
                    FontAwesomeIcons.dollarSign,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {});
                  selectedCardIndex != 0 ?
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => MessageScreen(
                        latestDonation: donationController.text,
                        cardNumber: cardNumberController.text,
                        name: nameController.text,
                        exp: expController.text,
                        cvv: cvvController.text,
                      ),
                    ),
                  ) :  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => MessageScreen(
                        latestDonation: '',
                        cardNumber: '',
                        name: '',
                        exp: '',
                        cvv: '',
                      ),
                    ),
                  );

                },
                icon: Icon(
                  FontAwesomeIcons.circleDollarToSlot,
                  size: 18,
                ),
                label: Text(
                  'Donate',
                  style: TextStyle(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}