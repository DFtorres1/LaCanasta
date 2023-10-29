import 'package:flutter/material.dart';

class ForgetPasswordBtnWidget extends StatelessWidget {
  const ForgetPasswordBtnWidget({
    super.key, required this.btnTitle, required this.btnSubtitle, required this.icon, required this.onTap,
  });

  final IconData icon;
  final String btnTitle, btnSubtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).hintColor
          ),
          child: Row(
            children: [
              Icon(icon, size: 60),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(btnTitle),
                  Text(btnSubtitle)
                ],
              )
            ],
          ),
        )
    );

  }
}
