import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const String flutterLogo = 'assets/flutter.svg';
final List<String> dashes = [
  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fmiro.medium.com%2Fmax%2F1400%2F1*oXbK6TZiqMeXsGW5cRvQoQ.png&imgrefurl=https%3A%2F%2Fa-flutter-dev.medium.com%2Fdash-oclock-drawing-dash-ea3f6885a719&tbnid=6yRtpDO81FBgbM&vet=12ahUKEwin88CIq8v2AhXI8IUKHU9SC20QMygMegUIARC6AQ..i&docid=I-UXVb_z8vR4tM&w=1400&h=700&q=flutter%20dash&hl=ru&ved=2ahUKEwin88CIq8v2AhXI8IUKHU9SC20QMygMegUIARC6AQ',
  'https://www.google.com/url?sa=i&url=https%3A%2F%2Ftwitter.com%2Ftimsneath%2Fstatus%2F1487144742634680320&psig=AOvVaw3eX-cvhqnJuhYvk5ziRy4t&ust=1647544336095000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCPC13rSry_YCFQAAAAAdAAAAABAD',
  'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.reddit.com%2Fr%2FFlutterDev%2Fcomments%2Fl3wcx8%2Fis_there_any_official_specification_color_size%2F&psig=AOvVaw3eX-cvhqnJuhYvk5ziRy4t&ust=1647544336095000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCPC13rSry_YCFQAAAAAdAAAAABAJ',
  'https://www.google.com/url?sa=i&url=https%3A%2F%2Ftwitter.com%2Fflutterdev%2Fstatus%2F1364265413186445312&psig=AOvVaw3eX-cvhqnJuhYvk5ziRy4t&ust=1647544336095000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCPC13rSry_YCFQAAAAAdAAAAABAP'
];

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
