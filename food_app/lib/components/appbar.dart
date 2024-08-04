import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: SizedBox(
        width: 48,
        height: 48,
        child: Icon(
          Icons.chevron_left,
          size: 48,
        ),
      ),
      title: SizedBox(
        width: 86,
        height: 86,
        child: Row(
          children: [
            Flexible(
              child: Image.asset(
                'assets/icons/BINNY.png',
                fit: BoxFit.cover, // ให้รูปภาพปรับขนาดให้พอดีกับขนาดที่กำหนด
              ),
            ),
          ],
        ),
      ),
      actions: const <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 0),
          child: Icon(
            Icons.history,
            size: 32,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Icon(
            CupertinoIcons.gift,
            size: 32,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
