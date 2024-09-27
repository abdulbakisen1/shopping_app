import 'package:flutter/material.dart';
import 'package:provider_shopping/src/app/pages/screens/home.dart';
import 'package:provider_shopping/src/data/utils/constants/color_constants.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Constants.background),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeStatePage(),
              ),
            );
          },
        ),
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Constants.background,
          ),
        ),
        centerTitle: true,
        backgroundColor: Constants.navy,
      ),
      backgroundColor: Constants.purple,
      body: const SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Sipariş Tarihi',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text('17 Eylül 2024 - 11:25'),
                            ],
                          ),
                           Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Alıcı',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('Abdülbaki Şen'),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              'Tutar',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '229,90 TL',
                              style: TextStyle(color:Constants.orange),
                            ),
                          ],
                        ),
                        ],
                      ),
                    ],
                  ),
                ),
              ), 
            ],
          ),
        ),
      ),
    );
  }
}
