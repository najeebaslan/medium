import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(12),
            color: Colors.deepOrange,
            height: 100,
            width: 500,
            child: Center(
                child: Text(
              ' Third Page is $index',
              style: const TextStyle(color: Colors.white),
            )),
          );
        },
      ),
    );
  }
}
