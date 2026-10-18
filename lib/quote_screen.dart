import 'dart:math';

import 'package:flutter/material.dart';

import 'quote_card.dart';

class QuoteScreen extends StatefulWidget {
  const QuoteScreen({super.key});

  @override
  State<QuoteScreen> createState() =>
      _QuoteScreenState();
}

class _QuoteScreenState
    extends State<QuoteScreen> {
  var list = [
    {
      'txt': 'Логика может привести Вас от пункта А к пункту Б, а воображение - куда угодно.',
      'auth': 'Альберт Эйнштейн',
      'img': 'assets/images/quote3.png',
    },
    {
      'txt': 'Лучший способ предсказать будущее - это создать его.',
      'auth': 'Питер Друкер',
      'img': 'assets/images/quote1.png',
    },
    {
      'txt': 'Ваше время ограничено, не тратьте его, живя чужой жизнью.',
      'auth': 'Стив Джобс',
      'img': 'assets/images/quote2.png',
    },
  ];

  int num = 0;

  void next() {
    setState(() {
      num = Random().nextInt(list.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    var item = list[num];

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.teal],
          ),
        ),
        child: Center(
          child: QuoteCard(
            txt: item['txt']!,
            auth: item['auth']!,
            img: item['img']!,
            btn: next,
          ),
        ),
      ),
    );
  }
}
