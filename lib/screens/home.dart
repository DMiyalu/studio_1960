import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CarouselSlider(
                  items: [1, 2]
                      .map(
                        (e) => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          width: MediaQuery.of(context).size.width * .99,
                          child: Image.asset(
                            "assets/images/slide2.jpg",
                            height: MediaQuery.of(context).size.height * .9,
                            width: MediaQuery.of(context).size.width * .99,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                      .toList(),
                  options: CarouselOptions(
                    autoPlay: true,
                    height: MediaQuery.of(context).size.height * .9,
                    // autoPlayCurve: Curves.bounceIn,
                    // autoPlayAnimationDuration:
                    //     const Duration(milliseconds: 300),
                    // autoPlayInterval: const Duration(seconds: 5),
                    enableInfiniteScroll: true,
                    initialPage: 0,
                  ),
                ),
              ),
              const Text(
                "Home",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
