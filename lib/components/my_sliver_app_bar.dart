import 'package:flutter/material.dart';
import 'package:food_del/pages/cart_page.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;

  const MySliverAppBar({
    super.key,
    required this.child,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        //cart button
        IconButton(
          onPressed: () {
            //go to cart apge
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CartPage(),
              ),
            );
          },
          icon: const Icon(Icons.shopping_cart),
        )
      ],
      backgroundColor: Theme.of(context).colorScheme.surface,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(
        "Anand Appétit",
        style: TextStyle(
          fontSize: 28, // Adjust the size for a larger appearance
          fontWeight: FontWeight.w900, // Extra bold for thickness
          color: Colors.black, // Rich black color
          letterSpacing: 1.5, // Slight spacing for emphasis
          shadows: [
            Shadow(
              offset: const Offset(2.0, 2.0), // Soft shadow for depth
              blurRadius: 4.0,
              color: Colors.grey.withOpacity(0.5),
            ),
          ],
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}
