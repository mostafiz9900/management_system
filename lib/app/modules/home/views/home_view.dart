import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:management_system/app/modules/home/views/local_widgets/hospital_info.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (value) {
            _currentIndex = value;
            // setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              //<--- item 1 text and icon declared
                icon: Icon(Icons.book),
                title: Text('Find a home')),
            BottomNavigationBarItem(
              //<--- item 2 text and icon declared
                icon: Icon(Icons.add_a_photo),
                title: Text('Enlist a home')),
            BottomNavigationBarItem(
              //<--- item 3 text and icon declared
                icon: Icon(Icons.message),
                title: Text('Messages')),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HospitalInfoView(),

          ],
        ),
      ),
    );
  }
}
