import 'package:book_app/widget/rounded_button.dart';
import 'package:flutter/material.dart';

import '../consttants.dart';
import 'book_rating.dart';

class BookInfo extends StatelessWidget {
  const BookInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Crushing &',
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                'Influence',
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const Text(
                          'When the earth was flat and everyone wanted to win the game of the best and people and winning with an A game with all the things you have',
                          maxLines: 5,
                          style: TextStyle(
                            fontSize: 10,
                            color: kLightBlackColor,
                          ),
                        ),
                        const SizedBox(height: 5),
                        RoundedButton(text: 'Read', press: (){}, verticalPadding: 10,horizontalPadding: 10,)
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border)),
                      const BookRating(score: 4.9),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        Image.asset(
          'assets/book-1.png',
          height: 200,
        ),
      ],
    );
  }
}
