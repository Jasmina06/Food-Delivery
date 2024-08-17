import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_food_tile.dart';
import 'package:food_delivery/pages/food_page.dart';
import 'package:provider/provider.dart';
import 'package:food_delivery/components/my_current_location.dart';
import 'package:food_delivery/components/my_description_box.dart';
import 'package:food_delivery/components/my_drawer.dart';
import 'package:food_delivery/components/my_sliver_app_bar.dart';
import 'package:food_delivery/models/food.dart';
import 'package:food_delivery/models/restaurant.dart'; // Ensure this import is correct

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // Sort out and return a list of food items that belong to a specific category
  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  // Return a list of ListView widgets for each category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

      return ListView.builder(
        itemCount: categoryMenu.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero ,
        itemBuilder: (context, index) {
          //get induvidual food
          final food = categoryMenu[index];
          //return food tile UI
          return MyFoodTile(food: food,
          onTap: () =>Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context ) =>FoodPage (food: food) )
          )
          );
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            pinned: true,
            expandedHeight: 300.0,
            title: const Text("Sunset Diner"),
            flexibleSpace: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Divider(
                //   indent: 25,
                //   endIndent: 25,
                //   color: Theme.of(context).colorScheme.primary,
                // ),
                const MyCurrentLocation(),
                const SizedBox(height: 10),
                const MyDescriptionBox(),
                const SizedBox(height: 30),
                // Use user-friendly names for TabBar
                TabBar(
                  controller: _tabController,
                  tabs: FoodCategory.values.map((category) => Tab(text: category.name)).toList(),
                ),
              ],
            ),
          ),
        ],
        body: Consumer<Restaurant>(
          builder: (context, restaurant, child) {
            return TabBarView(
              controller: _tabController,
              children: getFoodInThisCategory(restaurant.menu),
            );
          },
        ),
      ),
    );
  }
}
