import 'package:flutter/material.dart';
import 'package:provider_shopping/src/data/utils/constants/color_constants.dart';
import 'package:provider_shopping/src/data/utils/constants/icon_constants.dart';

class Shopping extends StatefulWidget {
  const Shopping({super.key});

  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  bool isChecked = true; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              elevation: 5.0, // Arka gölgelik veriyor
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Checkbox(
                              value: isChecked,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = value ?? false;
                                });
                              },
                            ),
                            const SizedBox(width: 4.0), 
                            const Text(
                              'Satıcı: VİP LOKAL',
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 8.0), // Arasında ki boşluğu ayarlıyor
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 6, vertical: 2),
                              decoration: BoxDecoration(
                                color: Constants.green,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Text(
                                '8.9',
                                style: TextStyle(color: Constants.background),
                              ),
                            ),
                            const SizedBox(width: 2),
                            const Icon(
                              IconConstants.forwardButton,
                              size: 18,
                            )
                          ],
                        ),
                      ],
                    ),
                    ElevatedButton.icon(
                      icon: Icon(IconConstants.etiket),
                      onPressed: () {},
                      label: const Text(
                        'Bizim ürünlerimizde 2. indirim yok kardeş',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Color.fromARGB(255, 55, 55, 1),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Constants.lightOrange,
                      ),
                    ),
                    Padding(padding: 
                    EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                      'assets/triko.png',
                      width: 100,
                      height: 90, 
                      fit: BoxFit.scaleDown,
                        ),
                        Icon(
                          Icons.delivery_dining_sharp,
                          color: Constants.green,
                        )
                      ],
                     ),
                    ) 
                  ],
                ),
              ),
            ),
            // Card(
            //   elevation: 2,
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Row(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Checkbox(
            //           value: true,
            //           onChanged: (value) {},
            //         ),
            //         Image.asset(
            //           'assets/triko.png',
            //           width: 100,
            //           height: 90, 
            //           fit: BoxFit.scaleDown,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                // Sepeti onaylama işlemi buraya eklenebilir
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Constants.orange
              ),
              child: const Text(
                'Sepeti Onayla',
                style: TextStyle(color: Constants.background),
              ),
            )
          ],
        ),
      ),
    );
  }
}
