import 'package:flutter/material.dart';

Color primary = const Color(0xFF0051FF);

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) =>
          Divider(color: Colors.black.withOpacity(0.4)),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(12),
          child: Column(children: [
            Row(
              textDirection: TextDirection.ltr,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.purple.shade400,
                  radius: 12,
                ),
                const SizedBox(
                  width: 12,
                ),
                const Text(
                  'kaie Jacquez in UX Collective',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 70,
                    width: 80,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                const Text(
                  'I,M a designer at LinkedIn. Here are \n '
                  '4 tipe to attract more recruitrs',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      height: 1.3,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              textDirection: TextDirection.ltr,
              children: [
                Expanded(
                  child: Row(
                    textDirection: TextDirection.ltr,
                    children: [
                      const Text('Des 9 . 7 min read'),
                      const SizedBox(
                        width: 7,
                      ),
                      Icon(
                        Icons.star,
                        size: 22,
                        color: Colors.deepOrange.withOpacity(0.8),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.remove_circle_outline,
                  color: Colors.black,
                  size: 22,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Icons.new_label_outlined,
                  color: Colors.black,
                  size: 22,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Icons.save_as_outlined,
                  color: Colors.black,
                  size: 22,
                ),
              ],
            ),
          ]),
        );
      },
    );
  }
}
