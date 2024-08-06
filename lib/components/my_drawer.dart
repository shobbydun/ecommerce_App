import 'package:ecommerce_app/components/my_list_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //drawer Header logo
              DrawerHeader(
                child: Icon(
                  Icons.shopping_cart,
                  size: 72,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              //shop tile
              MyListTile(
                icon: Icons.home,
                onTap: () => Navigator.pop(context),
                text: "Shop",
              ),

              //cart tile
              MyListTile(
                icon: Icons.shopping_cart_checkout,
                onTap: () {
                  //pop drawer first
                  Navigator.pop(context);

                  //got to cartpage
                  Navigator.pushNamed(context, 'cart_page');
                },
                text: "Cart",
              ),
            ],
          ),

          //exit shop tile
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: MyListTile(
              icon: Icons.exit_to_app,
              onTap: () => Navigator.pushNamedAndRemoveUntil(
                  context, 'intro_page', (route) => false),
              text: "Exit",
            ),
          ),
        ],
      ),
    );
  }
}
