import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider_shopping/src/app/widgets/profile_account_settings_widget.dart';
import 'package:provider_shopping/src/app/widgets/profile_services_widget.dart';
import 'package:provider_shopping/src/app/widgets/profile_slx_button_item.dart';
import 'package:provider_shopping/src/data/utils/constants/color_constants.dart';
import 'package:provider_shopping/src/data/utils/constants/icon_constants.dart';

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
        toolbarHeight: 70,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: ColorConstants.orange,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: ColorConstants.orange,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            CircleAvatar(
              radius: MediaQuery.of(context).size.width * 0.062,
              backgroundColor: ColorConstants.orange,
              child: const Text(
                'AŞ',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            const SizedBox(width: 12),
            Container(
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Abdülbaki Şen',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'user@gmail.com',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        automaticallyImplyLeading: false,
        backgroundColor: ColorConstants.background,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              icon: const Icon(
                IconConstants.zil,
                color: ColorConstants.black,
                size: 36,
              ),
              onPressed: () {
                  final double left = MediaQuery.of(context).size.width * 0.93;
                  final double top = MediaQuery.of(context).size.height * 0.0825;
                  showMenu(
                    context: context,
                    position: RelativeRect.fromLTRB(left, top*1.50, MediaQuery.of(context).size.width - left, MediaQuery.of(context).size.height - top*2),
                    items: List.generate(10, (index) {
                      return index != 4 && index != 7 ? const PopupMenuItem(
                        child: SizedBox(
                          width: 100,
                          child: Text('asdad')
                        ),
                      ) : const PopupMenuDivider();
                    },
                    )
                  );
              },
            ),
          )          
        ],
      ),
      backgroundColor: const Color.fromARGB(238, 230, 191, 191),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: List.generate(4, (index) => ProfileSlxButtonItem(
                      iconData: [IconConstants.watch, IconConstants.etiket, IconConstants.mesaj, IconConstants.mektup][index], 
                      header: ['Önceden\nGezdiklerim','İndirimli\nKuponlar','Shopping\nAsistan','Satıcı\nMesajlarım'][ index],
                      ),
                    ),                     
                  ),
                ),
              ),
              const ProfileServicesWidget(),
              const ProfileAccountSettingsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

