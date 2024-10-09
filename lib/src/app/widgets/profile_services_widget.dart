import 'package:flutter/material.dart';

import 'package:provider_shopping/src/data/utils/constants/color_constants.dart';

class ProfileServicesWidget extends StatelessWidget {
  const ProfileServicesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             const Padding(
               padding:  EdgeInsets.all(8.0),
               child:  Text(
                  'Hizmetlerim',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: ColorConstants.black,
                    
                  ),
                ),
             ),
              TextButton(
                onPressed: () {
                  // Tümünü gör butonuna basılınca yapılacak işlem
                },
                child:const Text(
                  'Tümünü Gör',
                  style: TextStyle(color: ColorConstants.orange, fontSize: 16),
                ),
              ),
            ],
          ),
          const Divider(height: 1,color: ColorConstants.black,),
          ListTile(
              leading:const Icon(
                Icons.clean_hands_rounded,
                color: ColorConstants.blue,
              ),
              title: Row(
                children: [
                  const Text('Krediler'),
                  SizedBox(width: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                    decoration: BoxDecoration(
                      color: ColorConstants.orange.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Text(
                      '%0 Faiz Fırsatı',
                      style: TextStyle(
                        color: ColorConstants.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              trailing:const Icon(
                Icons.arrow_forward_ios_rounded,
                color: ColorConstants.grey,
                size: 22,
              ),
              onTap: () {
                // Krediler tıklanma olayı
              },
            ),
            ListTile(
            leading:const Icon(
              Icons.credit_card,
                color: ColorConstants.blue,
            ),
            title: const Text('CardFinans Trendyol Kredi Kartı'),
            trailing:const Icon(
              Icons.arrow_forward_ios_rounded,
              color: ColorConstants.grey,
              size: 22,
            ),
            onTap: () {
              // CardFinans tıklanma olayı
            },
          ),
        ListTile(
              leading:const Icon(
                Icons.shield_moon_sharp,
                color: ColorConstants.blue,
              ),
              title: const Text('Shopping Sigorta'),
              trailing:const Icon(
                Icons.arrow_forward_ios_rounded,
                color: ColorConstants.grey,
                size: 22,
              ),
              onTap: () {
                // Krediler tıklanma olayı
              },
            ),
              ListTile(
              leading:const Icon(
                Icons.clean_hands_rounded,
                color: ColorConstants.blue,
              ),
              title: const Text('Finansal Çözümler'),
              trailing:const Icon(
                Icons.arrow_forward_ios_rounded,
                color: ColorConstants.grey,
                size: 22,
              ),
              onTap: () {
                // Krediler tıklanma olayı
              },
            ),
              ListTile(
              leading:const Icon(
                Icons.car_rental_rounded,
                color: ColorConstants.blue,
              ),
              title: Text('Montaj ve Taşıma Hizmeti'),
              trailing:const Icon(
                Icons.arrow_forward_ios_rounded,
                color: ColorConstants.grey,
                size: 22,
              ),
              onTap: () {
                // Krediler tıklanma olayı
              },
            ),
              ListTile(
              leading:const Icon(
                Icons.attach_money,
                color: ColorConstants.blue,
              ),
              title: const Text('Cihazını Nakite Dönüştür'),
              trailing:const Icon(
                Icons.arrow_forward_ios_rounded,
                color: ColorConstants.grey,
                size: 22,
              ),
              onTap: () {
                // Krediler tıklanma olayı
              },
            ),
        ],
      ),
    );
  }
}
