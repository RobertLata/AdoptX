import 'package:flutter/material.dart';

import 'donation_screen.dart';

class MessageScreen extends StatelessWidget {
  String latestDonation;
  String cardNumber;
  String name;
  String exp;
  String cvv;

  MessageScreen(
      {required this.latestDonation,
      required this.cardNumber,
      required this.name,
      required this.exp,
      required this.cvv});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Center(
          child: Text(
            'Notification',
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
                    Icons.notifications_active,
                    color: Colors.black,
                    size: 40,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: latestDonation != '0' &&
              latestDonation != '' &&
              cardNumber != '' &&
              cardNumber.length == 19 &&
              name != '' &&
              exp != '' &&
              exp.length == 5 &&
              int.parse(exp.substring(0, 2)) <= 12 &&
              int.parse(exp.substring(3, 5)) <= 25 &&
              cvv != '' &&
              cvv.length == 3
          ? Container(
              color: Colors.teal[50],
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'You have just donated: ${latestDonation} \$',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 40),
                    Text(
                      'Card information:',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w200),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Card number: ${cardNumber}',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Name: ${name}',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Card Expiration Date: ${exp}',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Card Verification Value: ${cvv}',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            )
          : Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          'Invalid data!',
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w400,
                            color: Colors.red,
                          ),
                        ),
                      ),
                      const SizedBox(height: 80,),
                      Center(
                        child: Text(
                          'Please try again',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DonationScreen()));
                        },
                        icon: Icon(Icons.arrow_back),
                        label: Text('Donation page'),
                        style: ElevatedButton.styleFrom(
                            primary: Theme.of(context).primaryColor),
                      ),
                    ],
                  ),
                ),

              color: Colors.teal[50],
            ),
    );
  }
}
