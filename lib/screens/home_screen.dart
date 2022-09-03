import 'package:book_app/consttants.dart';
import 'package:book_app/screens/details_screen.dart';
import 'package:book_app/widget/book_rating.dart';
import 'package:book_app/widget/reading_list_card.dart';
import 'package:book_app/widget/two_side_rounded_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/main_page_bg.png'),
              alignment: Alignment.topCenter,
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.headline4,
                        children: const [
                      TextSpan(text: 'What are you \nreading'),
                      TextSpan(
                        text: ' today?',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ])),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ReadingListCard(
                      image: 'assets/book-1.png',
                      title: 'Crushing & Influence',
                      auth: 'Gary Venchuk',
                      rating: 4.9,
                      pressDetails: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailsScreen(),
                          ),
                        );
                      },
                      pressRead: () {},
                    ),
                    ReadingListCard(
                      image: 'assets/book-2.png',
                      title: 'Top Ten Business Hacks',
                      auth: 'Herman joel',
                      rating: 4.8,
                      pressDetails: () {},
                      pressRead: () {},
                    ),
                    ReadingListCard(
                      image: 'assets/book-3.png',
                      title: 'Crushing & Influence',
                      auth: 'Gary Venchuk',
                      rating: 4.9,
                      pressDetails: () {},
                      pressRead: () {},
                    ),
                    const SizedBox(
                      width: 24,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.headline4,
                          children: const [
                            TextSpan(text: 'Best of the '),
                            TextSpan(
                              text: 'day',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ]),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      width: double.infinity,
                      height: 205,
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              padding: EdgeInsets.only(
                                  left: 24, top: 24, right: size.width * 0.35),
                              height: 185,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0XFFEAEAEA),
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'New York Time Best For 11th March 2022',
                                    style: TextStyle(
                                      fontSize: 9,
                                      color: kLightBlackColor,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text('How To Win\nFriends & Influence',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    'Gary Venchuk',
                                    style: TextStyle(
                                      color: kLightBlackColor,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: const [
                                      BookRating(score: 4.9),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Text(
                                          'When the earth was flat and everyone wanted to win the game of the best and people....',
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: kLightBlackColor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            width: size.width * 0.37,
                            child: Image.asset('assets/book-3.png'),
                          ),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: SizedBox(
                                height: 40,
                                width: size.width * 0.3,
                                child: TwoSideRoundedButton(
                                  text: 'Read',
                                  pass: () {},
                                  bRadious: 24,
                                ),
                              ))
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.headline4,
                          children: const [
                            TextSpan(text: 'Continue'),
                            TextSpan(
                              text: ' reading...',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ]),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(38),
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(0, 10),
                                blurRadius: 33,
                                color:
                                    const Color(0xFFD3D3D3).withOpacity(0.84))
                          ]),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(38.5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 30,
                                  right: 20.0,
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'Crushing & Influence',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'Gary Venchuk',
                                            style: TextStyle(
                                              color: kLightBlackColor,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Text(
                                              'Chapter 7 to 10',
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: kLightBlackColor,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Image.asset(
                                      'assets/book-1.png',
                                      width: 55,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 7,
                              width: size.width * (6.5 / 10),
                              decoration: BoxDecoration(
                                  color: kProgressIndicator,
                                  borderRadius: BorderRadius.circular(7)),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
