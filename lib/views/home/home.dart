import 'package:flutter/material.dart';
import 'package:jps/constant/constant.dart';
import 'package:jps/views/widgets/appbar_widget.dart';
import 'package:jps/views/widgets/textform.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController providerController = TextEditingController();
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70), child: AppBarWidget()),
      body: Column(
        children: [
          const Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundColor: buttonColor,
                ),
                Text(
                  'Rohit',
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  '01-12-21 to 22-01-22',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormWidget(
              title: 'Provider Type',
              controller: providerController,
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 190,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormWidget(
                    title: 'country ',
                    controller: providerController,
                    suffixIcon: const Icon(Icons.arrow_drop_down),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormWidget(
                    title: 'City',
                    controller: providerController,
                    suffixIcon: const Icon(Icons.arrow_drop_down),
                  ),
                ),
              ),
            ],
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 34, 1, 144),
                foregroundColor: kwhiteColor),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.search),
                Text('Search'),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Find Nearest Provider'),
              Switch(
                value: value,
                onChanged: (value) {
                  setState(() {
                    value = false;
                  });
                },
              ),
            ],
          ),
          Container(
            height: 200,
            decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                      color: colorgrey,
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: Offset(0, 1),),

                ],
                ),
                child: Row(
                  children: [
                    Text('Care Hospital\nand Research'),
                    
                  ],
                ),
          )
        ],
      ),
    );
  }
}
