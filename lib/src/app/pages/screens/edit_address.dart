import 'package:flutter/material.dart';
import 'package:provider_shopping/src/data/utils/constants/color_constants.dart';

class EditAddresspage extends StatefulWidget {
  const EditAddresspage({super.key});

  @override
  State<EditAddresspage> createState() => _EditAddresspageState();
}

class _EditAddresspageState extends State<EditAddresspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Adres Düzenle'),
        backgroundColor: ColorConstants.Orangetr,
        centerTitle: true,
      ),
  body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          // elevation: 12.0,
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(12),
          // ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'İletişim Bilgileri',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Adı',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Adınızı giriniz',
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Soyadı',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Soyadınızı giriniz',
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Cep Telefonu',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Cep telefonunuzu giriniz',
                  ),
                ),
                const SizedBox(height: 20),
                // Adres Bilgileri Başlığı
                const Text(
                  'Adres Bilgileri',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(height: 10),
                // İl Girişi
                const Text(
                  'İl',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'İl giriniz',
                  ),
                ),
                const SizedBox(height: 10),
                // İlçe Girişi
                const Text(
                  'İlçe',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'İlçe giriniz',
                  ),
                ),
                const SizedBox(height: 10),
                // Mahalle Girişi
                const Text(
                  'Mahalle',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Mahalle giriniz',
                  ),
                ),
                const SizedBox(height: 10),
                // Adres Girişi
                const Text(
                  'Adres',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Adresinizi giriniz',
                  ),
                ),
                const SizedBox(height: 10),
                // Adres Başlığı
                const Text(
                  'Adres Başlığı',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Adres başlığı giriniz',
                  ),
                ),
                const SizedBox(height: 5),
                const Row(
                  children: [

                  ],
                ),
                const SizedBox(height: 20),
                // Kaydet ve Adresi Sil Butonları
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // Kaydetme işlemi
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorConstants.Orangetr,
                        ),
                        child: const Text(
                          'Kaydet',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 21,
                            color: ColorConstants.black
                            ),
                          ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                        },
                        child: const Text(
                          'Adresi Sil',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: ColorConstants.black
                            ),
                          ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}