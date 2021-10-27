import 'package:flutter/material.dart';
import 'package:instagram_clone/models/users_model.dart';
import 'package:instagram_clone/widgets/avatar/avatar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class FeedListItem extends StatelessWidget {
  final UsersModel user;

  const FeedListItem({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _feedUser() {
      return Padding(
        padding:
            const EdgeInsets.only(top: 20, left: 15, bottom: 10, right: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Avatar(image: user.profilePictureURL),
                Text(
                  user.username,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ],
        ),
      );
    }

    _feedImage() {
      return Image.asset(
        user.photo,
        fit: BoxFit.cover,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .4,
      );
    }

    _feedActions() {
      _icon(IconData icon) {
        return Icon(
          icon,
          size: 28,
          color: Colors.white,
        );
      }

      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                _icon(MdiIcons.heartOutline),
                const SizedBox(width: 15),
                _icon(MdiIcons.messageOutline),
                const SizedBox(width: 15),
                _icon(MdiIcons.sendOutline)
              ],
            ),
            _icon(Icons.bookmark_outline),
          ],
        ),
      );
    }

    return Container(
      width: double.infinity,
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _feedUser(),
          _feedImage(),
          _feedActions(),
        ],
      ),
    );
  }
}
