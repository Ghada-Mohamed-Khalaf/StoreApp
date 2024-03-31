import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.cartPlus,
                  color: Colors.black,
                ))
          ],
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "New Tend",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount,itemBuilder: (context,index), )

    );

}
