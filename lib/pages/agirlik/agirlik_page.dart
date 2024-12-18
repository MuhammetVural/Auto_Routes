import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:first_project/main.dart';
import 'package:flutter/material.dart';
@RoutePage()
class AgirlikPage extends StatelessWidget {
  const AgirlikPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('agirlik.title'.tr()),),
      body: Container(),
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: Text('data'),),);
    
  }
}