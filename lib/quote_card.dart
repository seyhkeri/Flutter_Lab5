import 'package:flutter/material.dart';

class QuoteCard extends StatelessWidget {
  final String txt;
  final String auth;
  final String img;
  final VoidCallback btn;

  const QuoteCard({
    super.key,
    required this.txt,
    required this.auth,
    required this.img,
    required this.btn,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 300,
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(img, height: 150),
          const SizedBox(height: 10),
          Text(txt),
          const SizedBox(height: 5),
          Text(auth),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: btn,
            child: const Text('Далее'),
          ),
        ],
      ),
    );
  }
}
