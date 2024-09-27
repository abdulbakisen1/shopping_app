import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider_shopping/src/data/utils/constants/color_constants.dart';

class HomeStatePage extends StatefulWidget {
  const HomeStatePage({super.key});

  @override
  State<HomeStatePage> createState() => _HomeStatePageState();
}

class _HomeStatePageState extends State<HomeStatePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;

  // Sekme değiştirici fonksiyon
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, 
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Constants.background,
          ),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        title: const Text(
          'Shopping',
          style: TextStyle(
            color: Constants.background,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Constants.navy,
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Constants.navy,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Constants.background,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Anasayfa'),
              onTap: () {
                Navigator.pop(context); // Drawer'ı kapatır
                setState(() {
                  _selectedIndex = 0; // Anasayfa'ya geç
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.search),
              title: const Text('Search'),
              onTap: () {
                Navigator.pop(context); // Drawer'ı kapatır
                setState(() {
                  _selectedIndex = 1; // Profil'e geç
                });
              },
            ),
             ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profil'),
              onTap: () {
                Navigator.pop(context); // Drawer'ı kapatır
                setState(() {
                  _selectedIndex = 1; // Profil'e geç
                });
              },
            ),
          ],
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        alignment: Alignment.center,
        children: [
          // Image.network(
          //   loadingBuilder: (BuildContext context, Widget child,
          //             ImageChunkEvent? loadingProgress) {
          //           if (loadingProgress == null) return child;
          //           return Center(
          //             child: CircularProgressIndicator(
          //               value: loadingProgress.expectedTotalBytes != null
          //                   ? loadingProgress.cumulativeBytesLoaded /
          //                       loadingProgress.expectedTotalBytes!
          //                   : null,
          //             ),
          //           );
          //         },
          //   'https://images.unsplash.com/photo-1726855500757-658894d298eb?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
          // ),
           StreamBuilder(
            stream: Stream.periodic(Duration(seconds: 1), (count) => count * 2),
            builder: (context, snapshot) {
              if (snapshot.data! == 0) {
                print("0 landı!");
              }
              return Text(snapshot.data.toString());
            },
           ),
          // Image.network(
          //   loadingBuilder: (BuildContext context, Widget child,
          //             ImageChunkEvent? loadingProgress) {
          //           if (loadingProgress == null) return child;
          //           return Center(
          //             child: CircularProgressIndicator(
          //               value: loadingProgress.expectedTotalBytes != null
          //                   ? loadingProgress.cumulativeBytesLoaded /
          //                       loadingProgress.expectedTotalBytes!
          //                   : null,
          //             ),
          //           );
          //         },
          //   'https://images.unsplash.com/photo-1726767305248-e3cfaf9c98b7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDE5fGJvOGpRS1RhRTBZfHxlbnwwfHx8fHw%3D'
          // )
        ],
      ),
      bottomNavigationBar:CurvedNavigationBar(
        backgroundColor: Constants.purple,
        color: Colors.deepPurple.shade400,
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
           Icon(
            Icons.home,
            color: Constants.background,
            ),
           Icon(
            Icons.shopping_cart_rounded,
            color: Constants.background,
            ),
           Icon(
            Icons.person,
            color: Constants.background,
            
            ),
        ],
      ) ,
    );
  }
}
