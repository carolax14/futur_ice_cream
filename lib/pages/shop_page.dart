import "package:flutter/material.dart";
import "package:futur_ice_cream/components/my_tab.dart";
import "package:futur_ice_cream/const.dart";
import "package:futur_ice_cream/pages/tabs/cornet_tab.dart";

/*

SHOP PAGE

User can browse the ice cream that are for sale

*/

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  List<Widget> myTabs = const [
    // donut tab
    MyTab(
      iconPath: 'lib/icons/cornet.png',
    ),

    // burger tab
    MyTab(
      iconPath: 'lib/icons/milkshake.png',
    ),

    // smoothie tab
    MyTab(
      iconPath: 'lib/icons/scoop.png',
    ),

    // pancake tab
    MyTab(
      iconPath: 'lib/icons/candy.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: backgroundColor,
          automaticallyImplyLeading: false,
          title: null,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(
                140.0), // Ajustez la hauteur si nécessaire
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Explore Our Flavors',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: button),
                  ),
                ),
                const SizedBox(
                    height:
                        10.0), // Espace entre le titre et la barre de recherche
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search flavors...',
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: carte,
                    ),
                  ),
                ),
                const SizedBox(
                    height:
                        10.0), // Espace entre la barre de recherche et le TabBar
                TabBar(
                  tabs: myTabs,
                  indicatorColor: Colors.brown[400],
                ),
              ],
            ),
          ),
        ),
        body: // tab bar view
            const Expanded(
          child: TabBarView(
            children: [
              // burger page
              CornetTab(),

              // smoothie page
              Center(child: Text("MILKSHAKE TAB")),

              // pancake page
              Center(child: Text("SCOOP TAB")),

              Center(child: Text("CORNET TAB")),
            ],
          ),
        ),
      ),
    );
  }
}
