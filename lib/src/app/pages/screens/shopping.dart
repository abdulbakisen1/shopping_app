import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_shopping/src/app/states/provider.dart';
import 'package:provider_shopping/src/data/utils/constants/color_constants.dart';
import 'package:provider_shopping/src/data/utils/constants/icon_constants.dart';
import 'package:provider_shopping/src/data/utils/constants/image_constants.dart';

class Shopping extends StatefulWidget {
  const Shopping({super.key});

  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  void _showOrderConfirmationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Tik ikonu
              const Icon(
                Icons.check_circle_outline,
                size: 64,
                color: ColorConstants.orange,
              ),
              const SizedBox(height: 16),
              // Onay mesajı
              const Text(
                'Siparişiniz Onaylanmıştır!',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              // Tamam butonu
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Dialogu kapatır
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorConstants.lightOrange,
                ),
                child: const Text('Tamam'),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ShoppingProvider>(context);

    return Scaffold(
      appBar: AppBar(
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              elevation: 8.0, // Gölgelendirme
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
                              value: provider.checked,
                              onChanged: (value) {
                                provider.toggleCheckbox(value);
                              },
                            ),
                            const SizedBox(width: 4.0),
                            const Text(
                              'Satıcı: VİP LOKAL',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 8.0),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 6, vertical: 2),
                              decoration: BoxDecoration(
                                color: ColorConstants.green,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Text(
                                '8.9',
                                style: TextStyle(
                                  color: ColorConstants.background,
                                ),
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
                      icon: const Icon(IconConstants.etiket),
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
                        backgroundColor: ColorConstants.lightOrange,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 8,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 0.25 * MediaQuery.of(context).size.width,
                            width: 0.25 * MediaQuery.of(context).size.width,
                            child: Image.asset(
                              ImageConstants.tiriko,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          SizedBox(
                            width: 0.625 * MediaQuery.of(context).size.width,
                            child: Column(
                              children: [
                                Container(
                                  height: 0.0425 *
                                      MediaQuery.of(context).size.height,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 4,
                                        ),
                                        child: Icon(
                                          Icons.delivery_dining_sharp,
                                          color: ColorConstants.green,
                                        ),
                                      ),
                                      Expanded(
                                        child: RichText(
                                          textAlign: TextAlign.left,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          text: TextSpan(
                                            style: const TextStyle(
                                              color: ColorConstants.black,
                                              fontSize: 14,
                                            ),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: '14 saat 16 dakika ',
                                                style: const TextStyle(
                                                  color: ColorConstants.green,
                                                  fontSize: 16,
                                                ),
                                                recognizer:
                                                    TapGestureRecognizer()
                                                      ..onTap = () {
                                                        // İstenilen ekrana gidiyor
                                                      },
                                              ),
                                              const TextSpan(
                                                text:
                                                    'içinde kargoya verirsen en geç yarın kargoda!',
                                                style: TextStyle(
                                                  color:
                                                      ColorConstants.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                          softWrap: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      0.1 * MediaQuery.of(context).size.height,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      // Sayaç Widget'ı
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: ColorConstants.gray_100,
                                            width: 0.7,
                                          ),
                                          borderRadius: const BorderRadius
                                                  .horizontal(
                                              right: Radius.circular(16),
                                              left: Radius.circular(16)),
                                        ),
                                        child: Row(
                                          children: [
                                            // Azalt butonu
                                            InkWell(
                                              onTap: provider.decreaseQuantity,
                                              highlightColor: Colors.red,
                                              borderRadius:
                                                  const BorderRadius
                                                      .horizontal(
                                                left: Radius.circular(16),
                                              ),
                                              child: Container(
                                                width: 36, // Width verildi
                                                height: 36, // Height verildi
                                                child: const Icon(
                                                  Icons.remove,
                                                  size: 18,
                                                ),
                                              ),
                                            ),
                                           const SizedBox(
                                              height: 36,
                                              child: VerticalDivider(
                                                color:
                                                    ColorConstants.orange,
                                                width: 0,
                                              ),
                                            ),
                                            Container(
                                              width: 36,
                                              height: 36,
                                              alignment: Alignment.center,
                                              child: Text(
                                                provider.quantity.toString(),
                                                style: const TextStyle(
                                                    fontSize: 16),
                                              ),
                                            ),
                                           const SizedBox(
                                              height: 36,
                                              child: VerticalDivider(
                                                color:
                                                    ColorConstants.orange,
                                                width: 0,
                                              ),
                                            ),
                                            // Artır butonu
                                            InkWell(
                                              onTap: provider.increaseQuantity,
                                              highlightColor:
                                                  ColorConstants.orange,
                                              borderRadius:
                                                  const BorderRadius
                                                      .horizontal(
                                                right: Radius.circular(16),
                                              ),
                                              child: Container(
                                                width: 36, // Width verildi
                                                height: 36, // Height verildi
                                                child: const Icon(
                                                  Icons.add,
                                                  size: 18,
                                                  color: ColorConstants.orange,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      // Fiyat kısmı
                                      const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            '300 ₺',
                                            style: TextStyle(
                                              color:
                                                  ColorConstants.Orangetr,
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                              decoration: TextDecoration
                                                  .lineThrough,
                                            ),
                                          ),
                                          Text(
                                            '260 ₺',
                                            style: TextStyle(
                                              color:
                                                  ColorConstants.Orangetr,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
             Card(
              elevation: 8.0, // Gölgelendirme
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
                              value: provider.checked,
                              onChanged: (value) {
                                provider.toggleCheckbox(value);
                              },
                            ),
                            const SizedBox(width: 4.0),
                            const Text(
                              'Satıcı: VİP LOKAL',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 8.0),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 6, vertical: 2),
                              decoration: BoxDecoration(
                                color: ColorConstants.green,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Text(
                                '8.9',
                                style: TextStyle(
                                  color: ColorConstants.background,
                                ),
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
                      icon: const Icon(IconConstants.etiket),
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
                        backgroundColor: ColorConstants.lightOrange,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 8,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 0.25 * MediaQuery.of(context).size.width,
                            width: 0.25 * MediaQuery.of(context).size.width,
                            child: Image.asset(
                              ImageConstants.tiriko,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                          SizedBox(
                            width: 0.625 * MediaQuery.of(context).size.width,
                            child: Column(
                              children: [
                                Container(
                                  height: 0.0425 *
                                      MediaQuery.of(context).size.height,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 4,
                                        ),
                                        child: Icon(
                                          Icons.delivery_dining_sharp,
                                          color: ColorConstants.green,
                                        ),
                                      ),
                                      Expanded(
                                        child: RichText(
                                          textAlign: TextAlign.left,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          text: TextSpan(
                                            style: const TextStyle(
                                              color: ColorConstants.black,
                                              fontSize: 14,
                                            ),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: '14 saat 16 dakika ',
                                                style: const TextStyle(
                                                  color: ColorConstants.green,
                                                  fontSize: 16,
                                                ),
                                                recognizer:
                                                    TapGestureRecognizer()
                                                      ..onTap = () {
                                                        // İstenilen ekrana gidiyor
                                                      },
                                              ),
                                              const TextSpan(
                                                text:
                                                    'içinde kargoya verirsen en geç yarın kargoda!',
                                                style: TextStyle(
                                                  color:
                                                      ColorConstants.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                          softWrap: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      0.1 * MediaQuery.of(context).size.height,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      // Sayaç Widget'ı
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: ColorConstants.gray_100,
                                            width: 0.7,
                                          ),
                                          borderRadius: const BorderRadius
                                                  .horizontal(
                                              right: Radius.circular(16),
                                              left: Radius.circular(16)),
                                        ),
                                        child: Row(
                                          children: [
                                            // Azalt butonu
                                            InkWell(
                                              onTap: provider.decreaseQuantity,
                                              highlightColor: Colors.red,
                                              borderRadius:
                                                  const BorderRadius
                                                      .horizontal(
                                                left: Radius.circular(16),
                                              ),
                                              child: Container(
                                                width: 36, // Width verildi
                                                height: 36, // Height verildi
                                                child: const Icon(
                                                  Icons.remove,
                                                  size: 18,
                                                ),
                                              ),
                                            ),
                                           const SizedBox(
                                              height: 36,
                                              child: VerticalDivider(
                                                color:
                                                    ColorConstants.orange,
                                                width: 0,
                                              ),
                                            ),
                                            Container(
                                              width: 36,
                                              height: 36,
                                              alignment: Alignment.center,
                                              child: Text(
                                                provider.quantity.toString(),
                                                style: const TextStyle(
                                                    fontSize: 16),
                                              ),
                                            ),
                                           const SizedBox(
                                              height: 36,
                                              child: VerticalDivider(
                                                color:
                                                    ColorConstants.orange,
                                                width: 0,
                                              ),
                                            ),
                                            // Artır butonu
                                            InkWell(
                                              onTap: provider.increaseQuantity,
                                              highlightColor:
                                                  ColorConstants.orange,
                                              borderRadius:
                                                  const BorderRadius
                                                      .horizontal(
                                                right: Radius.circular(16),
                                              ),
                                              child: Container(
                                                width: 36, // Width verildi
                                                height: 36, // Height verildi
                                                child: const Icon(
                                                  Icons.add,
                                                  size: 18,
                                                  color: ColorConstants.orange,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      // Fiyat kısmı
                                      const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            '300 ₺',
                                            style: TextStyle(
                                              color:
                                                  ColorConstants.Orangetr,
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                              decoration: TextDecoration
                                                  .lineThrough,
                                            ),
                                          ),
                                          Text(
                                            '260 ₺',
                                            style: TextStyle(
                                              color:
                                                  ColorConstants.Orangetr,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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
                // Sepeti onaylama işlemi tetikleniyor
                _showOrderConfirmationDialog();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorConstants.orange,
              ),
              child: const Text(
                'Sepeti Onayla',
                style: TextStyle(color: ColorConstants.background),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
