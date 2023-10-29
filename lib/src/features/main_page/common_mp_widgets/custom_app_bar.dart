import 'package:flutter/material.dart';
import '../../../constants/text_string.dart';
import 'custom_search_bar.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      centerTitle: true,
      automaticallyImplyLeading: false,
      toolbarHeight: 100,
      title: const Text(
        lcTitleCc,
        style: TextStyle(
            fontSize: 30,
            fontFamily: 'PublicPixel',
            color: Colors.white
        ),
      ),
      bottom: const PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: CustomSearchBar()
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(100);
}
