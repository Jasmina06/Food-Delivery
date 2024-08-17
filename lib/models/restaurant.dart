import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_delivery/models/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  //list of food  menu
  final List<Food> _menu = [
    //burgers
    Food(
        name: 'Classic Cheeseburger',
        description: ' A juicy beef patty with melted cheddar ,lettuce,tomato, and hint of onion and pickle ',
        imagePath: 'lib/images/burgers/burger1.jpeg',

        price:0.99 ,
        category: FoodCategory.burgers,
        availableAddons:[
          Addon(name:"Extra cheese",price:0.99),
          Addon(name:"Bacon",price:1.99),
          Addon(name:"Avocado",price:3.99),

        ] ),
    Food(
      name: 'Grilled Chicken Sandwich',
      description: 'Tender grilled chicken breast with Swiss cheese, fresh lettuce, tomato, and a touch of mayo',
      imagePath: 'lib/images/burgers/burger2.jpeg',
      price: 5.99,
      category: FoodCategory.burgers ,
      availableAddons: [
        Addon(name: "Extra chicken", price: 2.49),
        Addon(name: "Guacamole", price: 1.49),
        Addon(name: "Jalapenos", price: 0.99),
      ],
    ),
    Food(
      name: 'Italian Spaghetti',
      description: 'Delicious spaghetti pasta topped with rich tomato sauce, ground beef, and fresh basil',
      imagePath: 'lib/images/burgers/burger3.jpeg',
      price: 7.99,
      category: FoodCategory.burgers ,
      availableAddons: [
        Addon(name: "Extra meatballs", price: 2.99),
        Addon(name: "Parmesan cheese", price: 0.99),
        Addon(name: "Garlic bread", price: 1.99),
      ],
    ),
    Food(
      name: 'Classic Italian Spaghetti',
      description: 'Savor the taste of traditional spaghetti pasta, perfectly paired with a savory tomato sauce, seasoned ground beef, and fresh basil leaves.',
      imagePath: 'lib/images/burgers/burger4.jpeg',
      price: 8.50,
      category: FoodCategory.burgers ,
      availableAddons: [
        Addon(name: "Extra meatballs", price: 3.00),
        Addon(name: "Shredded Parmesan", price: 1.00),
        Addon(name: "Garlic breadsticks", price: 2.00),
      ],
    ),
    Food(
      name: 'Ultimate Cheeseburger',
      description: 'A succulent beef patty topped with melted cheddar cheese, crisp lettuce, ripe tomato, a touch of onion, and a pickle slice.',
      imagePath: 'lib/images/burgers/burger5.jpeg',
      price: 1.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheddar", price: 2.99),
        Addon(name: "Crispy bacon", price: 3.99),
        Addon(name: "Fresh avocado", price: 4.99),
      ],
    ),
    //desserts
    Food(
        name: 'Chocolate Lava Cake',
        description: 'A warm, gooey chocolate cake with a molten center, served with a scoop of vanilla ice cream.',
        imagePath: 'lib/images/desserts/image1.jpeg',
        price: 4.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra Ice Cream", price: 1.50),
          Addon(name: "Whipped Cream", price: 0.75),
          Addon(name: "Chocolate Syrup", price: 0.50),
        ]
    ),
    Food(
        name: 'Tiramisu',
        description: 'A classic Italian dessert with layers of coffee-soaked ladyfingers, mascarpone cheese, and a dusting of cocoa powder.',
        imagePath: 'lib/images/desserts/image2.jpeg',
        price: 5.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra Cocoa Powder", price: 0.50),
          Addon(name: "Fresh Berries", price: 1.00),
          Addon(name: "Whipped Cream", price: 0.75),
        ]
    ),
    Food(
        name: 'Berry Cheesecake',
        description: 'A rich and creamy cheesecake topped with a medley of fresh berries.',
        imagePath: 'lib/images/desserts/image3.jpeg',
        price: 3.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra Berries", price: 1.50),
          Addon(name: "Whipped Cream", price: 0.75),
          Addon(name: "Chocolate Drizzle", price: 0.50),
        ]
    ),
    Food(
        name: 'Chocolate Cupcake',
        description: 'A rich chocolate cupcake with a soft center and a crispy edge.',
        imagePath: 'lib/images/desserts/image4.jpeg',
        price: 4.50,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Nut Cream", price: 1.00),
          Addon(name: "Chocolate Shavings", price: 0.80),
          Addon(name: "Caramel Sauce", price: 1.20),
        ]
    ),
    Food(
        name: 'Strawberry Pastry',
        description: 'A delicate pastry filled with fresh strawberries and cream, topped with a light glaze.',
        imagePath: 'lib/images/desserts/image5.jpeg',
        price: 3.75,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra Strawberries", price: 1.00),
          Addon(name: "Whipped Cream", price: 0.70),
          Addon(name: "Chocolate Drizzle", price: 0.50),
        ]
    ),

    //drinks
    Food(
        name: 'Lemonade',
        description: 'Refreshing Lemonade made with real lemons and touch of sweetness',
        imagePath: 'lib/images/drinks/drink2.jpeg',
        price: 2.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Strawberry Flower", price: 4.50),
          Addon(name: "Mint leaves ", price: 3.75),
          Addon(name: "Ginger Zest", price: 1.50),
        ]
    ),
    Food(
        name: 'Strawberry Smoothie',
        description: 'A refreshing smoothie made with ripe strawberries, yogurt, and a touch of honey.',
        imagePath: 'lib/images/drinks/drink3.jpeg',
        price: 3.29,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Granola Topping", price: 1.00),
          Addon(name: "Extra Strawberries", price: 0.75),
          Addon(name: "Protein Boost", price: 1.50),
        ]
    ),
    Food(
        name: 'Raspberry Pineapple Cocktail',
        description: 'A delightful cocktail made with fresh raspberry sauce, vanilla cake vodka, pineapple juice, and a touch of sweetness, garnished with fresh raspberries.',
        imagePath: 'lib/images/drinks/drink1.jpeg',
        price: 6.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Additional Raspberry Sauce", price: 1.00),
          Addon(name: "Extra Vodka Shot", price: 2.00),
          Addon(name: "Pineapple Garnish", price: 0.75),
        ]
    ),
    Food(
        name: 'Fig Dark and Stormy',
        description: 'Sweet fig preserves, a generous shot of dark rum, a squeeze of lemon, and a splash of spicy ginger beer. This Fig Dark and Stormy is the simplest cocktail to make, but incredibly delicious.',
        imagePath: 'lib/images/drinks/drink5.jpeg',
        price: 7.49,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra Fig Preserves", price: 1.00),
          Addon(name: "Additional Rum Shot", price: 2.00),
          Addon(name: "Ginger Beer Top-Up", price: 0.75),
        ]
    ),
    Food(
        name: 'Frozen Pink Lemonade',
        description: 'Cool off from the summer heat with this refreshing non-alcoholic frozen pink lemonade. Made with frozen fruit for an extra chill, it’s a perfect treat for the whole family to enjoy.',
        imagePath: 'lib/images/drinks/drink6.jpeg',
        price: 3.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra Lemon Zest", price: 0.50),
          Addon(name: "Fresh Mint Leaves", price: 0.75),
          Addon(name: "Berry Garnish", price: 1.00),
        ]
    ),

    //salads

    Food(
        name: 'White Balsamic Vinaigrette',
        description: 'Make your own delicious homemade white balsamic vinaigrette. This light and refreshing salad is made with honey, Italian seasoning, and Dijon mustard for a perfect balance of sweet and tangy.',
        imagePath: 'lib/images/salads/salad1.jpeg',
        price: 2.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra Honey", price: 0.50),
          Addon(name: "Additional Dijon Mustard", price: 0.40),
          Addon(name: "Italian Herb Blend", price: 0.60),
        ]
    ),
    Food(
        name: 'Corn Tomato Avocado Salad',
        description: 'This Corn Tomato Avocado Salad is a quintessential and easy vegan summer recipe. Made with fresh vegetables and tossed with lime juice, olive oil, and cilantro, it’s the perfect light and refreshing dish for hot days.',
        imagePath: 'lib/images/salads/salad2.jpeg',
        price: 5.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra Lime Juice", price: 0.50),
          Addon(name: "Additional Cilantro", price: 0.40),
          Addon(name: "Avocado Slices", price: 1.00),
        ]
    ),
    Food(
        name: 'Hawaiian Chicken Salad',
        description: 'Experience the tropical delight of our Hawaiian Chicken Salad, perfectly aligned with the Whole Health Flexi-Plan. This gluten-free version packs a flavorful punch with tender chicken, fresh pineapple, and a vibrant array of vegetables, all tossed in a homemade dressing that\'s both zesty and refreshing. It\'s a guilt-free indulgence that brings the flavors of Hawaii to your plate!',
        imagePath: 'lib/images/salads/salad3.jpeg',
        price: 7.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Grilled Chicken", price: 2.00),
          Addon(name: "Anchovies", price: 1.50),
          Addon(name: "Extra Parmesan", price: 1.00),
        ]
    ),
    Food(
        name: 'Goat Cheese and Roasted Beet Salad',
        description: 'This is the perfect salad: creamy goat cheese (sub feta if you prefer), roasted beets, and avocado. A delightful combination of flavors and textures for a refreshing and satisfying meal.',
        imagePath: 'lib/images/salads/salad4.jpeg',
        price: 6.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Toasted Walnuts", price: 1.50),
          Addon(name: "Balsamic Glaze", price: 0.75),
          Addon(name: "Crumbled Bacon", price: 1.25),
        ]
    ),
    Food(
        name: 'Festive Watermelon Blueberry Salad',
        description: 'This festive watermelon blueberry salad with raspberries, blackberries, basil, mozzarella, and a simple lemon vinaigrette is perfect for 4th of July celebrations or any hot summer day! It\'s refreshing, super easy to make, and a serious crowd-pleaser.',
        imagePath: 'lib/images/salads/salad5.jpeg',
        price: 5.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Toasted Almonds", price: 1.00),
          Addon(name: "Honey Drizzle", price: 0.75),
          Addon(name: "Fresh Mint Leaves", price: 0.50),
        ]
    ),

//sides

    Food(
        name: 'Baked Sweet Potato Fries',
        description: 'These baked sweet potato fries are sweet and salty, perfectly flavorful, healthy, and just totally satisfying. Plus, they are easy to make!',
        imagePath: 'lib/images/sides/side1.jpeg',
        price: 3.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Garlic Aioli", price: 0.75),
          Addon(name: "Crispy Parmesan", price: 1.00),
          Addon(name: "Spicy Ketchup", price: 0.50),
        ]
    ),
    Food(
        name: 'Homemade Dinner Rolls',
        description: 'Mix dry ingredients in one bowl. In another bowl, combine milk, oil, and eggs. Combine both mixtures and knead the dough. Shape into rolls and bake for delicious homemade dinner rolls.',
        imagePath: 'lib/images/sides/side2.jpeg',
        price: 4.49,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Garlic Butter", price: 2.75),
          Addon(name: "Extra Cheese", price: 4.00),
          Addon(name: "Herb Seasoning", price: 1.50),
        ]
    ),
    Food(
        name: 'Cheesy Tots',
        description: 'Burger King Cheesy Tots are crispy potato balls filled with melted cheese and coated with breadcrumbs. Made with russet potatoes, cheddar cheese, and a blend of spices, these bite-sized delights are a perfect snack. They can be served with any sauce of your choice.',
        imagePath: 'lib/images/sides/side3.jpeg',
        price: 3.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Garlic Dip", price: 0.50),
          Addon(name: "Ranch Dressing", price: 0.75),
          Addon(name: "Spicy Ketchup", price: 0.60),
        ]
    ),
    Food(
        name: 'Crispy Homemade French Fries',
        description: 'Indulge in the ultimate comfort food with our crispy homemade French fries recipe! Made with simple, wholesome ingredients, these classic fries are perfect for any occasion, whether it\'s a casual family dinner, a spring dinner party, or a Super Bowl gathering. Baked to perfection in the oven or air fryer, they\'re a healthier alternative to traditional fried fries. Plus, they\'re a clean food option that\'s easy to make and loved by kids and adults alike.',
        imagePath: 'lib/images/sides/side4.jpeg',
        price: 3.49,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Ketchup", price: 0.50),
          Addon(name: "Garlic Aioli", price: 0.75),
          Addon(name: "Cheese Sauce", price: 1.00),
        ]
    ),
    Food(
        name: 'Assorted Macarons',
        description: 'Delight in our exquisite assorted macarons, each one crafted with delicate meringue shells and a rich, flavorful filling. These macarons come in a variety of delicious flavors and are perfect for sharing or indulging on your own.',
        imagePath: 'lib/images/sides/side5.jpeg',
        price: 2.49,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra Macaron", price: 2.00),
          Addon(name: "Gift Box", price: 5.00),
          Addon(name: "Personalized Message", price: 1.00),
        ]
    ),


    //salads

    //sides

    //desserts


    //drinks
  ];

/*
GETTERS
 */
  List <Food> get menu => _menu;
List<CartItem > get cart => _cart;


/*
OPERATIONS
 */

  //user cart

  final List<CartItem >_cart = [];

// add to cart
void addToCart(Food food, List<Addon> selectedAddons){
  // see if there is a cart item already with the same food any selected addons
  CartItem? cartItem = _cart.firstWhereOrNull((item){
    //check if the food items are the same
    bool isSameFood = item.food ==food;

    //check if the list of selected addons are the same
    bool isSameAddons=
        ListEquality().equals( item.selectedAddons , selectedAddons );
    return isSameFood && isSameAddons ;
  });

  //if item already exist increase its quantity

  if(cartItem != null){
    cartItem.quantity++;
  }

  //otherwise , add a new cart item to the cart

  else{
    _cart.add(
      CartItem(
          food: food ,
          selectedAddons: selectedAddons)
    );
  }
  notifyListeners() ;
}



//remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
if(_cart[cartIndex ].quantity >1){
  _cart[cartIndex ].quantity--;
}else{
  _cart.removeAt( cartIndex );
}

}
notifyListeners();
}


// get total price of cart

  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }


// get total number of items in cart

int getTotalItemCount(){
  int totalItemCount = 0;

  for(CartItem  cartItem in _cart){
    totalItemCount += cartItem.quantity ;
  }
  return totalItemCount ;
}

// clear cart

void clearCart(){
  _cart.clear() ;
  notifyListeners() ;
}

/*
HELPERS
 */

// generate a receipt

  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    // Format the date to include up to seconds only
    String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("---------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}"
      );

      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln(
            "   Add-ons: ${_formatAddons(cartItem.selectedAddons)}"
        );
        receipt.writeln();
      }

      receipt.writeln("------------");
      receipt.writeln();
    }

    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }


//format double value into money
  String _formatPrice(double price){
    return "\$${price.toStringAsFixed( 2)}";
  }

// format list of addons into in string summary
  String _formatAddons(List<Addon>addons){
return addons
    .map((addon)=>"${addon.name} (${_formatPrice( addon.price)})")
    .join(", ");
  }


}

