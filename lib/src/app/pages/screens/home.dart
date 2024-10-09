import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider_shopping/src/app/pages/screens/profile.dart';
import 'package:provider_shopping/src/app/pages/screens/shopping.dart';
import 'package:provider_shopping/src/data/utils/constants/color_constants.dart';
import 'package:provider_shopping/src/data/utils/constants/image_constants.dart';

// Ana Sayfa
class HomeStatePage extends StatefulWidget {
  const HomeStatePage({super.key});

  @override
  State<HomeStatePage> createState() => _HomeStatePageState();
}

class _HomeStatePageState extends State<HomeStatePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey(); // CurvedNavigationBar için key
  int _selectedIndex = 0;

  // Sayfa arası geçiş yeri
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: _buildDrawer(context), // Drawer Menü
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          _buildHomePage(), 
          Shopping(), 
          ProfilePage(),  
        ],
      ),
      backgroundColor: [
        ColorConstants.background, 
        ColorConstants.background, 
        ColorConstants.white
        ]
        [_selectedIndex],
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          backgroundColor: Colors.transparent,
          color: Colors.orange.shade400,//bottomnavi'nin arka plan renki
          animationDuration: const Duration(milliseconds: 300),
          onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          Icon(
            Icons.home,
            color: ColorConstants.background,
          ),
          Icon(
            Icons.shopping_cart_rounded,
            color: ColorConstants.background,
          ),
          Icon(
            Icons.person,
            color: ColorConstants.background,
          ),
        ],
      ),
    );
  }

  // Drawer Menüsü
  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: ColorConstants.orange,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: ColorConstants.background,
                fontSize: 24,

              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Anasayfa'),
            
            onTap: () {
              Navigator.pop(context); // Drawer'ı kapatır
              _onDrawerItemTapped(0);

            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart_rounded),
            title: const Text('Sepetim'),
            onTap: () {
              Navigator.pop(context); // Drawer'ı kapatır
              _onDrawerItemTapped(1);

            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Ayarlar'),
            onTap: () {
              Navigator.pop(context); // Drawer'ı kapatır
             _onDrawerItemTapped(2);
            },
          ),
        ],
      ),
    );
  }
  void _onDrawerItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Sayfayı değiştir
    });
    final CurvedNavigationBarState? navBarState =
        _bottomNavigationKey.currentState;
    navBarState?.setPage(index); // BottomNavigationBar'ı da güncelle
  }

  // Ana Sayfa Tasarımı
  Widget _buildHomePage() {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: ColorConstants.background,
          ),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        title: const Text(
          'Ana Sayfa',
          style: TextStyle(
            color: ColorConstants.background,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: ColorConstants.orange,
        centerTitle: true,
      ),
      body: 
         Column(
          children: [
            // Ürün Listesi (GridView)
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,// 2'ye bölüyor
                  childAspectRatio: 0.75,//uzunluk veiyor
                  mainAxisSpacing: 8.0,//Arasındaki boşluk
                  crossAxisSpacing: 8.0,//yanlardan boşluk
                ),
                itemCount: 10, // Ürün sayısı
                itemBuilder: (context, index) {
                  return _buildProductCard();
                },
              ),
            ),
          ],
        )
    );
  }
  // Ürün Kartı
  Widget _buildProductCard() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Ürün Resmi
          Expanded(
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                    child: Image.network(
                      ImageConstants.yakisikli_tiriko,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    color: ColorConstants.orange,
                    child: const Text(
                      'En Çok Satan',
                      style: TextStyle(color: ColorConstants.white, fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Ürün Bilgileri
         const Padding(
            padding:  EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                  'Bürke Erkek Siyah Renk İtalyan Kesim',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                 SizedBox(height: 4),
                 Text(
                  '469.99 TL',
                  style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
                 SizedBox(height: 4),
                Row(
                  children:  [
                    Icon(Icons.star, color: ColorConstants.orange, size: 16),
                    Icon(Icons.star, color: ColorConstants.orange, size: 16),
                    Icon(Icons.star, color: ColorConstants.orange, size: 16),
                    Icon(Icons.star_half, color: ColorConstants.orange, size: 16),
                    Icon(Icons.star_border, color: ColorConstants.orange, size: 16),
                    Text(' 4.3 (10639)', style: TextStyle(fontSize: 12)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
