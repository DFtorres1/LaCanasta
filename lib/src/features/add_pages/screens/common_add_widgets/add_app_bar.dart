import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AddAppBar({
    super.key, required this.appBarTitle,
  });
  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      centerTitle: true,
      automaticallyImplyLeading: false,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () => Get.back(),
      ),
      toolbarHeight: 50,
      title: Text(
        appBarTitle,
        style: const TextStyle(
            fontSize: 30,
            color: Colors.white
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);
}
