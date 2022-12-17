
import 'package:flutter/material.dart';

class SecondePage extends StatelessWidget {
  const SecondePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(12),
            color: Colors.blue,
            height: 100,
            width: 500,
            child: Center(
                child: Text(
              'Seconde Page Index is $index',
              style: const TextStyle(color: Colors.white),
            )),
          );
        },
      ),
    );
  }
}
