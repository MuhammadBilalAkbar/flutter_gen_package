import 'package:flutter/material.dart';
import 'package:flutter_gen_package/app_constants.dart';
import 'package:flutter_gen_package/gen/assets.gen.dart';
import 'package:flutter_gen_package/gen/fonts.gen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Gen Package',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Flutter Gen Package'),
      );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(
            widget.title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //   const Text(
              //     'Welcome Developers',
              //     style: TextStyle(
              //       fontFamily: 'TheNautigal',
              //       fontSize: 100,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              //   Image.asset('assets/images/nature-1.jpg', scale: 10),

              // const Text(
              //   'Welcome Developers',
              //   style: TextStyle(
              //     fontFamily: AppConstants.theNautigal,
              //     fontSize: 100,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              // Image.asset(AppConstants.nature1, scale: 10),

              const Text(
                'Welcome Developers',
                style: TextStyle(
                  fontFamily: FontFamily.theNautigal,
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset(Assets.images.nature1.keyName, scale: 10),
              Assets.images.nature1.image(scale: 500),
            ],
          ),
        ),
      );
}
