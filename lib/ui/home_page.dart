import 'package:flutter/material.dart';
import 'package:real_estate_app/model/real_estate.dart';

import 'card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey,
        iconTheme: IconThemeData(color: Colors.grey),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.tune, color: Colors.grey,))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dubai, Palm Jumeirah',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '1,020 results',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    'Newest',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              ...List.generate(
                realEstateItem.length,
                (index) => CardWidget(
                  realEstate: realEstateItem[index],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
