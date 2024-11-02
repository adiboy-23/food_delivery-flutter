import 'package:flutter/material.dart';
import 'package:food_del/components/my_button.dart';
import 'package:food_del/components/my_cart_tile.dart';
import 'package:food_del/models/restaurant.dart';
import 'package:food_del/pages/payment_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        //cart
        final userCart = restaurant.cart;

        //scaffold UI
        return Scaffold(
          appBar: AppBar(
            title: const Text("Cart"),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              //clear cart button
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text(
                          "Are you sure you want to clear your cart?"),
                      actions: [
                        //cancel button
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("Cancel"),
                        ),

                        //Accept button
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            restaurant.clearCart();
                          },
                          child: const Text("Accept"),
                        ),
                      ],
                    ),
                  );
                },
                icon: const Icon(Icons.delete),
              ),
            ],
          ),
          body: Column(
            children: [
              //list of cart
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? const Expanded(
                            child: Center(
                              child: Text("Cart is empty..."),
                            ),
                          )
                        : Expanded(
                            child: ListView.builder(
                                itemCount: userCart.length,
                                itemBuilder: (context, index) {
                                  //get individual cart item
                                  final cartItem = userCart[index];

                                  //return cart tile UI
                                  return MyCartTile(cartItem: cartItem);
                                }))
                  ],
                ),
              ),

              //pay button
              MyButton(
                text: "Proceed to Payment",
                onTap: () {
                  if (userCart.isEmpty) {
                    // Show a message if the cart is empty
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                            "Your cart is empty! Please add items to proceed."),
                      ),
                    );
                  } else {
                    // Navigate to the payment page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PaymentPage(),
                      ),
                    );
                  }
                },
              ),

              const SizedBox(height: 25),
            ],
          ),
        );
      },
    );
  }
}
