import 'package:flutter/material.dart';
import 'package:flutter_news/common/values/values.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: AppColors.primaryElement,
        appBar: AppBar(
           bottom: TabBar(
             tabs: <Widget>[
               Tab(text: '头条',),
               Tab(text: '头条',),
               Tab(text: '头条',),
             ],
           ),
        ),
      ),
    );
  }
}