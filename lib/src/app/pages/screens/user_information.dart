import 'package:flutter/material.dart';
import 'package:provider_shopping/src/data/utils/constants/color_constants.dart';

class UserInformation extends StatefulWidget {
  const UserInformation({Key? key}) : super(key: key);

  @override
  State<UserInformation> createState() => _UserInformationState();
}

class _UserInformationState extends State<UserInformation> {
  final TextEditingController _boyController = TextEditingController(text: "165 cm");
  final TextEditingController _kiloController = TextEditingController(text: "55 kg");
  final TextEditingController _adController = TextEditingController();
  final TextEditingController _soyadController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _ulkeKoduController = TextEditingController(text: "+90");
  final TextEditingController _telefonController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kullanıcı Bilgilerim'),
        backgroundColor: ColorConstants.orange,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: ColorConstants.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: ColorConstants.orange,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Boy ve kilo bilgilerini girerek sana daha uygun ürünleri sunmamıza yardımcı olabilirsin!',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Flexible(
                        child: TextField(
                          controller: _boyController,
                          decoration: const InputDecoration(
                            labelText: 'Boy',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Flexible(
                        child: TextField(
                          controller: _kiloController,
                          decoration: const InputDecoration(
                            labelText: 'Kilo',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorConstants.orange,
                        ),
                        child: const Text('Ekle'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Adı (alt alta)
            TextField(
              controller: _adController,
              decoration: const InputDecoration(
                labelText: 'Adı',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            // Soyadı (alt alta)
            TextField(
              controller: _soyadController,
              decoration: const InputDecoration(
                labelText: 'Soyadı',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            // Email (alt alta)
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            // Ülke Kodu ve Cep Telefonu yanyana
            Row(
              children: [
                Flexible(
                  child: TextField(
                    controller: _ulkeKoduController,
                    decoration: const InputDecoration(
                      labelText: 'Ülke Kodu',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Flexible(
                  child: TextField(
                    controller: _telefonController,
                    decoration: const InputDecoration(
                      labelText: 'Cep Telefonu',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (bool? value) {},
                ),
                const Expanded(
                  child: Text(
                      'İş yeri alışverişlerim için fırsatlardan haberdar olmak istiyorum.'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorConstants.orange,
                minimumSize: const Size.fromHeight(48), // Butonun yüksekliği
              ),
              child: const Text('Kaydet', style: TextStyle(fontSize: 16)),
            ),
            const SizedBox(height: 16),
            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text('Hesabımı Kapat',
                    style: TextStyle(color: Colors.grey)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
