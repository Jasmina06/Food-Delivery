import 'package:flutter/material.dart'; // Updated to use Material widgets
import 'package:provider/provider.dart'; // Added import for Provider
import 'package:food_delivery/components/my_quantity_selector.dart';
import 'package:food_delivery/models/cart_item.dart';
import 'package:food_delivery/models/restaurant.dart'; // Ensure Restaurant model is imported

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;

  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    final restaurant = Provider.of<Restaurant>(context, listen: false); // Access Restaurant instance

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start ,
                children: [
                  // Food image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      cartItem.food.imagePath,
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(width: 16),
                  // Name and price
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cartItem.food.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('\$${cartItem.food.price.toString()}',style:
                        TextStyle (color:Theme.of(context ).colorScheme.primary ),),
                    ],
                  ),

                  const Spacer(),

                  // Increment or decrement quantity
                  MyQuantitySelector(
                    quantity: cartItem.quantity,
                    food: cartItem.food,
                    onIncrement: () {
                      restaurant.addToCart(cartItem.food, cartItem.selectedAddons);
                    },
                    onDecrement: () {
                      restaurant.removeFromCart(cartItem);
                    },
                  ),
                ],
              ),
            ),

            // Addons
            SizedBox(
              height: cartItem.selectedAddons.isEmpty ? 0 : 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding:EdgeInsets.only(left:10,right:10,bottom:10) ,
                children: cartItem.selectedAddons
                    .map(
                      (addon) => Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: FilterChip(
                      label: Row(
                        children: [
                          //addon name
                          Text(addon.name),

                          //addon price
                          Text('(\$${addon.price})')
                        ],
                      ),

                      shape:StadiumBorder (
                        side:BorderSide (
    color:Theme.of(context ).colorScheme.primary ,
    )
                        ),
                      onSelected: (value) {},
                      backgroundColor: Theme.of(context ).colorScheme.secondary,
                      labelStyle: TextStyle(
                        color:Theme.of( context ).colorScheme.inversePrimary ,
                        fontSize: 12
                      )
                    ),
                  ),
                )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
