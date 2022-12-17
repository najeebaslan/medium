
import 'package:flutter/material.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(12),
            color: Colors.purple,
            height: 100,
            width: 500,
            child: Center(
                child: Text(
              'Fourth Page Index is $index',
              style: const TextStyle(color: Colors.white),
            )),
          );
        },
      ),
    );
  }
}
