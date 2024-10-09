import 'package:flutter/material.dart';
import 'package:provider_shopping/src/app/pages/screens/user_information.dart';

import 'package:provider_shopping/src/data/utils/constants/color_constants.dart';


class ProfileAccountSettingsWidget extends StatelessWidget {
  const ProfileAccountSettingsWidget({
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
                  'Hesap Ayarlarım',
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
                Icons.person,
                color: ColorConstants.blue,
              ),
              title: const Text('Kullanıcı Bilgilerim'),
              trailing:const Icon(
                Icons.arrow_forward_ios_rounded,
                color: ColorConstants.grey,
                size: 22,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const UserInformation()), 
                );
              },
            ),
        ListTile(
        leading:const Icon(
          Icons.location_on,
          color: ColorConstants.blue,
        ),
        title: const Text('Adres Bilgilerim'),
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
                Icons.language,
                color: ColorConstants.blue,
              ),
              title: const Text('Ülke Değiştir'),
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
                Icons.email_outlined,
                color: ColorConstants.blue,
              ),
              title: const Text('E-Posta Değişikliği'),
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
                Icons.article_outlined,
                color: ColorConstants.blue,
              ),
              title: const Text('Kişisel verilerin korunması'),
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
                Icons.logout,
                color: ColorConstants.blue,
              ),
              title: const Text('Çıkış'),
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
