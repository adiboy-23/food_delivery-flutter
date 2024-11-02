import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_del/models/cart_items.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  //list of foof items
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy veg patty with melted cheddar , lettuce, tomato and a hint on onion and pickle.",
      imagePath: "lib/images/burgers/cheese_burger.jpeg",
      price: 249,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 49),
        Addon(name: "Veg Patty", price: 69),
        Addon(name: "Onion and cheddar cheese", price: 99)
      ],
    ),
    Food(
      name: "Big Whopper Burger",
      description:
          "A juicy veg patty with melted cheese , fries and a hint on onion and pickle.",
      imagePath: "lib/images/burgers/big_mac_burger.jpeg",
      price: 299,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 49),
        Addon(name: "Veg Patty", price: 69),
        Addon(name: "Onion and cheddar cheese", price: 99)
      ],
    ),
    Food(
      name: "Indian Burger",
      description:
          "A juicy veg patty with tangy sauce and spicy green chutney.",
      imagePath: "lib/images/burgers/indian_burger.jpeg",
      price: 199,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 49),
        Addon(name: "Veg Patty", price: 69),
        Addon(name: "Onion and cheddar cheese", price: 99)
      ],
    ),
    Food(
      name: "Tikki Burger",
      description:
          "A veg tikki , lettuce, tomato and a hint on onion and pickle.",
      imagePath: "lib/images/burgers/tikki_burger.jpeg",
      price: 139,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 49),
        Addon(name: "Veg Patty", price: 69),
        Addon(name: "Onion and cheddar cheese", price: 99)
      ],
    ),
    Food(
      name: "Veggies Burger",
      description:
          "A fully veggies packed patty with lettuce, tomato and a hint on onion and pickle.",
      imagePath: "lib/images/burgers/cheese_burger.jpeg",
      price: 169,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 49),
        Addon(name: "Veg Patty", price: 69),
        Addon(name: "Onion and cheddar cheese", price: 99)
      ],
    ),
    //salads

    Food(
      name: "Asiansesame Salad",
      description:
          "Crunchy, vibrant Asian sesame salad with fresh veggies, tangy dressing, and toasted sesame.",
      imagePath: "lib/images/salads/asiansesame_salad.jpeg",
      price: 219,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Crispy Chickpeas", price: 39),
        Addon(name: "Toasted Nuts", price: 49),
        Addon(name: "Avocado Slices", price: 69)
      ],
    ),
    Food(
      name: "Greek Salad",
      description:
          "Fresh Greek salad with tomatoes, cucumbers, olives, feta, and tangy olive oil dressing.",
      imagePath: "lib/images/salads/greek_salad.jpeg",
      price: 269,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Crispy Chickpeas", price: 39),
        Addon(name: "Toasted Nuts", price: 49),
        Addon(name: "Avocado Slices", price: 69)
      ],
    ),
    Food(
      name: "Quino Salad",
      description:
          "Nutty quinoa salad with fresh veggies, herbs, lemon, and light olive oil dressing.",
      imagePath: "lib/images/salads/quino_salad.jpeg",
      price: 329,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Crispy Chickpeas", price: 39),
        Addon(name: "Toasted Nuts", price: 49),
        Addon(name: "Avocado Slices", price: 69)
      ],
    ),
    Food(
      name: "SouthWest Salad",
      description:
          "Zesty Southwest salad with black beans, corn, avocado, and chipotle lime dressing.",
      imagePath: "lib/images/salads/southwest_salad.jpeg",
      price: 349,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Crispy Chickpeas", price: 39),
        Addon(name: "Toasted Nuts", price: 49),
        Addon(name: "Avocado Slices", price: 69)
      ],
    ),
    Food(
      name: "Vegetable Salad",
      description:
          "Hearty vegetable burger with a crispy patty, fresh veggies, lettuce, and spicy mayo.",
      imagePath: "lib/images/salads/vega_salad.jpeg",
      price: 199,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Crispy Chickpeas", price: 39),
        Addon(name: "Toasted Nuts", price: 49),
        Addon(name: "Avocado Slices", price: 69)
      ],
    ),

    //sides
    Food(
      name: "Garlic Bread",
      description:
          "Crispy garlic bread topped with buttery garlic spread, herbs, and a golden crust.",
      imagePath: "lib/images/sides/garlic_bread.jpeg",
      price: 109,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese", price: 29),
        Addon(name: "Chili Flakes", price: 19),
        Addon(name: "Olives", price: 49)
      ],
    ),
    Food(
      name: "Loaded Fries",
      description:
          "Crispy loaded fries topped with melted cheese, bacon bits, jalapeños, and ranch dressing.",
      imagePath: "lib/images/sides/loaded_fries.jpeg",
      price: 169,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: " Cheddar Cheese", price: 59),
        Addon(name: "Chili Flakes and Mayo", price: 39),
        Addon(name: "Olives and veggies", price: 79)
      ],
    ),
    Food(
      name: "Onion Rings",
      description:
          "Crispy onion rings coated in a seasoned batter, served with tangy dipping sauce.",
      imagePath: "lib/images/sides/onion_rings.jpeg",
      price: 149,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Dip", price: 49),
        Addon(name: "Spicy Dipping Sauce", price: 29),
        Addon(name: "Garlic Aioli", price: 39)
      ],
    ),
    Food(
      name: "Pakode",
      description:
          "Crunchy pakode made with mixed vegetables, spiced chickpea batter, and served with chutney.",
      imagePath: "lib/images/sides/pakode.jpeg",
      price: 69,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese", price: 19),
        Addon(name: "Chili Flakes", price: 29),
        Addon(name: "Onion Salad", price: 39)
      ],
    ),
    Food(
      name: "Samosa",
      description:
          "Golden, crispy samosas filled with spiced potatoes and peas, served with chutney.",
      imagePath: "lib/images/sides/garlic_bread.jpeg",
      price: 49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Mint Chutney", price: 29),
        Addon(name: "Tamarind Chutney", price: 19),
        Addon(name: "Yogurt Sauce", price: 39)
      ],
    ),
    //desserts
    Food(
      name: "Gulab Jamun",
      description:
          "Soft and syrupy gulab jamun, deep-fried dough balls soaked in sweet rose syrup.",
      imagePath: "lib/images/desserts/gulab_jamun.jpeg",
      price: 99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Saffron Garnish", price: 19),
        Addon(name: "Chopped Nuts", price: 29),
        Addon(name: "Ice Cream", price: 49)
      ],
    ),
    Food(
      name: "Rasgulla",
      description:
          "Soft and spongy rasgulla balls soaked in sweet syrup, offering a delightful treat.",
      imagePath: "lib/images/desserts/rasgulla.jpeg",
      price: 99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Saffron Garnish", price: 19),
        Addon(name: "Chopped Nuts", price: 29),
        Addon(name: "Ice Cream", price: 49)
      ],
    ),
    Food(
      name: "Gajar ka Halwa",
      description:
          "Rich and sweet gajar ka halwa made with grated carrots, milk, and nuts.",
      imagePath: "lib/images/desserts/gajar_halwa.jpeg",
      price: 169,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Saffron Garnish", price: 19),
        Addon(name: "Chopped Nuts", price: 29),
        Addon(name: "Ice Cream", price: 49)
      ],
    ),
    Food(
      name: "Rasmalai",
      description:
          "Creamy rasmalai featuring soft cheese patties soaked in sweet, flavored milk syrup.",
      imagePath: "lib/images/desserts/ras_malai.jpeg",
      price: 149,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Saffron Garnish", price: 19),
        Addon(name: "Chopped Nuts", price: 29),
        Addon(name: "Ice Cream", price: 49)
      ],
    ),
    Food(
      name: "Lava Cake",
      description:
          "Decadent molten lava cake with a gooey chocolate center, served warm with ice cream.",
      imagePath: "lib/images/desserts/lava_cake.jpeg",
      price: 199,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 69),
        Addon(name: "Chocolate Sauce", price: 49),
        Addon(name: "Whipped Cream", price: 39)
      ],
    ),

    //drinks
    Food(
      name: "Falluda",
      description:
          "Refreshing falooda with rose syrup, vermicelli, basil seeds, and topped with ice cream.",
      imagePath: "lib/images/drinks/falluda.jpeg",
      price: 199,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Ice Cream", price: 69),
        Addon(name: "Chopped Nuts", price: 49),
        Addon(name: "Fruit Toppings", price: 39)
      ],
    ),
    Food(
      name: "Boba Tea",
      description:
          "Delightful boba tea with chewy tapioca pearls, creamy milk, and flavored tea.",
      imagePath: "lib/images/drinks/boba_tea.jpeg",
      price: 269,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Tapioca Pearls", price: 69),
        Addon(name: "Extra Tapioca Pearls", price: 49),
        Addon(name: "Pudding Toppings", price: 39)
      ],
    ),
    Food(
      name: "Cold Coffee",
      description:
          "Smooth and refreshing cold coffee blended with ice, milk, and a hint of chocolate.",
      imagePath: "lib/images/drinks/cold_coffee.jpeg",
      price: 169,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Ice Cream", price: 69),
        Addon(name: "Chopped Nuts", price: 49),
        Addon(name: "Chocolate Syrup", price: 39)
      ],
    ),
    Food(
      name: "Coca Cola",
      description:
          "Chilled, fizzy Coca-Cola with a refreshing, classic cola taste.",
      imagePath: "lib/images/drinks/coca_cola.jpeg",
      price: 79,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Lemon Wedge", price: 29),
        Addon(name: "Mint Leaves", price: 19),
        Addon(name: "Salty Rim", price: 19),
      ],
    ),
    Food(
      name: "Fanta",
      description:
          "Bright and bubbly Fanta with a tangy orange flavor, served ice-cold.",
      imagePath: "lib/images/drinks/fanta.jpeg",
      price: 79,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Lemon Wedge", price: 29),
        Addon(name: "Mint Leaves", price: 19),
        Addon(name: "Salty Rim", price: 19),
      ],
    ),
  ];

  //delivery address
  String _deliveryAddres = 'Pes Boys Hostel';
  /*  
  GETTERS 
  */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddres;

  /* 
   OPERATIONS 
   */

  //use cart
  final List<CartItem> _cart = [];

  //add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    //see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //check if the food items are the same
      bool isSameFood = item.food == food;

      //check if the list of selected addons are teh same
      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameAddons && isSameFood;
    });

    //if item already exists, increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    //otherwise, add a new cart item to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  //remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != 1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  //get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price as double;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  //get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  //clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  //update delivery address
  void updateDeliveryAddress(String newAddress) {
    _deliveryAddres = newAddress;
    notifyListeners();
  }
  /*  
  HELPERS 
  */

  //generate a receipt
  String diplayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    //format the date to include up to seconds only
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("------------------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price as double)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt
            .writeln("     Addons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("------------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivering to : $deliveryAddress");

    return receipt.toString();
  }

  //format double value into money
  String _formatPrice(double price) {
    return "\₹${price.toStringAsFixed(2)}";
  }

  //format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
