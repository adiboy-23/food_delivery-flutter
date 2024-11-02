import 'package:flutter/material.dart';
import 'package:food_del/components/my_drawer_tile.dart';
import 'package:food_del/pages/settings_page.dart';
import 'package:food_del/services/auth_service.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout() {
    final authService = AuthService();
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          //app logo
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 40,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),

          //home list tile
          MyDrawerTile(
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
            text: "H O M E",
          ),

          //setting list tile
          MyDrawerTile(
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ),
              );
            },
            text: "S E T T I N G S",
          ),

          const Spacer(),

          //logout list tile
          MyDrawerTile(
            icon: Icons.logout,
            onTap: () {
              logout();
              Navigator.pop(context);
            },
            text: "L O G O U T",
          ),

          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
