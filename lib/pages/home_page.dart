import 'package:flutter/material.dart';
import 'package:instagram_clone/models/users_model.dart';
import 'package:instagram_clone/widgets/app_bar/app_bar.dart';
import 'package:instagram_clone/widgets/feed/feed_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<UsersModel> listData = UsersModel.getUsers();

  @override
  initState() {
    super.initState();
  }

  _appBar() => const MyAppBar();

  _body() => SafeArea(
        child: FeedList(list: listData),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: _appBar(),
      body: _body(),
    );
  }
}
