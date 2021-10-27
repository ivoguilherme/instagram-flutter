import 'package:flutter/material.dart';
import 'package:instagram_clone/models/users_model.dart';
import 'package:instagram_clone/widgets/feed/feed_list_item.dart';

class FeedList extends StatelessWidget {
  final List<UsersModel> list;

  const FeedList({
    Key? key,
    required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) => FeedListItem(user: list[index]),
    );
  }
}
