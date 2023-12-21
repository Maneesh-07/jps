import 'package:flutter/material.dart';
import 'package:jps/constant/constant.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Column(
          children: [
            Text(
              'NetWork Directory',
              style: TextStyle(fontSize: 16),
            ),
           
          ],
        ),
        actions: const [
          Row(
            children: [Icon(Icons.newspaper), Icon(Icons.pin_drop)],
          )
        ],
      ),
    );
  }
}
