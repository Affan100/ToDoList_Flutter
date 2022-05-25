import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_app/app/modules/home/controller.dart';

class DetailPage extends StatelessWidget {
  final homeCtrl = Get.find<HomeController>();
  DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Detail page'),
      ),
    );
  }
}
