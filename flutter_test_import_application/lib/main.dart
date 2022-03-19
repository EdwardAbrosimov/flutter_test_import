import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer/shimmer.dart';

const String flutterLogo = 'assets/flutter.svg';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Center(
            child: ListView(
          shrinkWrap: true,
          children: [
            SizedBox(
              width: 200,
              height: 200,
              child: Shimmer.fromColors(
                baseColor: Colors.lightBlue,
                highlightColor: const Color.fromARGB(255, 6, 60, 155),
                child: SvgPicture.asset(flutterLogo),
              ),
            ),
            const Text(
              'Carousel',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 70),
            ),
            CarouselSlider(
                items: Iterable<int>.generate(99).map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width / 3,
                          margin: const EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Center(
                              child: Text(
                            'Number $i',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 36.0, fontWeight: FontWeight.bold),
                          )));
                    },
                  );
                }).toList(),
                options: CarouselOptions(
                    height: 100,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    autoPlayCurve: Curves.easeInOutCubic,
                    autoPlayInterval: const Duration(seconds: 1),
                    autoPlayAnimationDuration: const Duration(seconds: 1))),
            SvgPicture.network(
                'https://raw.githubusercontent.com/dnfield/flutter_svg/7d374d7107561cbd906d7c0ca26fef02cc01e7c8/example/assets/flutter_logo.svg?sanitize=true')
          ],
        )),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              flutterLogo,
              semanticsLabel: ' Flutter Logo',
              width: 500,
              height: 500,
            )
          ],
        ),
      ),
    );
  }
}
