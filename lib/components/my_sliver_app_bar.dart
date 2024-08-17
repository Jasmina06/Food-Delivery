import 'package:flutter/material.dart';

import '../pages/cart_page.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget title;
  final Widget flexibleSpace;
  final bool pinned;
  final double expandedHeight;
  final TabBar? tabBar; // Made optional

  const MySliverAppBar({
    super.key,
    required this.title,
    required this.flexibleSpace,
    required this.pinned,
    required this.expandedHeight,
    this.tabBar, // Optional
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      foregroundColor: Theme.of(context).colorScheme.primary,
      expandedHeight: expandedHeight,
      floating: false,
      pinned: pinned,
      bottom: tabBar != null
          ? PreferredSize(
        preferredSize: tabBar!.preferredSize,
        child: tabBar!,
      )
          : null,
      actions: [
        IconButton(
          onPressed: () {
            // go to cart page
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CartPage(),
              ),
            );
          },
          icon: const Icon(Icons.shopping_cart, color: Colors.black),
        ),
      ],

      title: title,
      flexibleSpace: FlexibleSpaceBar(
        background: flexibleSpace,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}
