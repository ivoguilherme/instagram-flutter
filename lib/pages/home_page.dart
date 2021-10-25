import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:instagram_clone/models/users_model.dart';
import 'package:instagram_clone/widgets/app_bar/app_bar.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final String dataSource = 'assets/data/users.json';

  Future<List<UsersModel>> readUsersJsonData() async {
    final data = await rootBundle.loadString(dataSource);
    final list = json.decode(data) as List<dynamic>;

    return list.map((e) => UsersModel.fromJson(e)).toList();
  }

  _listWidget(listData) => ListView.builder(
      itemCount: listData.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(top: 10, left: 15, right: 15),
          padding: const EdgeInsets.all(20),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(listData[index].name),
        );
      });

  _body() {
    return FutureBuilder(
      future: readUsersJsonData(),
      builder: (context, data) {
        if (data.hasError) {
          return Text('${data.error}');
        }

        if (data.hasData) {
          var listItems = data.data as List<UsersModel>;
          return _listWidget(listItems);
        }

        return const CircularProgressIndicator();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: _body(),
    );
  }
}
