import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  _MyAppBarState createState() => _MyAppBarState();

  // you can replace 100 to whatever value you wish to use

  @override
  Size get preferredSize => const Size.fromHeight(100);
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    String logoSource = 'assets/images/instagram_named.png';
    bool newLike = true;
    bool newMessage = true;

    _addIcon() {
      return IconButton(
        icon: const Icon(
          MdiIcons.plusBoxOutline,
        ),
        onPressed: () {},
        color: Colors.white,
      );
    }

    _likeIcon() {
      Widget _newLike(icon) {
        return Stack(
          children: [
            icon,
            Positioned(
              top: 11,
              right: 11,
              child: Container(
                width: 9,
                height: 9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                ),
              ),
            )
          ],
        );
      }

      Widget widgetIcon = IconButton(
        icon: const Icon(
          MdiIcons.heartOutline,
        ),
        onPressed: () {},
        color: Colors.white,
      );

      return newLike == true ? _newLike(widgetIcon) : widgetIcon;
    }

    _messageIcon() {
      Widget _newMessage(icon) {
        return Stack(
          children: [
            icon,
            Positioned(
              top: 4,
              right: 4,
              width: 18,
              height: 18,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                ),
                child: const Center(
                  child: Text(
                    '2',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        );
      }

      Widget iconMessage = IconButton(
        icon: const Icon(MdiIcons.messageOutline),
        onPressed: () {},
        color: Colors.white,
      );

      return newMessage == true ? _newMessage(iconMessage) : iconMessage;
    }

    return PreferredSize(
      preferredSize: Size.fromHeight(
        MediaQuery.of(context).size.height,
      ),
      child: Container(
        decoration: const BoxDecoration(color: Colors.black),
        padding: const EdgeInsets.all(15),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(logoSource, width: 100),
              Row(children: [
                _addIcon(),
                _likeIcon(),
                _messageIcon(),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
