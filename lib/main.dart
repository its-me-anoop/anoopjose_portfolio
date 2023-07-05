import 'dart:html';

import 'package:anoopjose/constants/projects.dart';
import 'package:anoopjose/constants/skill_constants.dart';
import 'package:anoopjose/constants/text_constants.dart';
import 'package:flutter/material.dart';
import 'package:motion/motion.dart';

Future<void> main() async {
  await Motion.instance.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const HeroSection(),
          const SkillsSection(),
          Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Text(
                  "Projects",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              SizedBox(
                height: 300,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: projects.length,
                    itemBuilder: (_, index) {
                      return GestureDetector(
                        onTap: () => window.open(projects[index].url, 'tab'),
                        child: Padding(
                          padding:
                              EdgeInsets.only(left: (index == 0) ? 32.0 : 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Card(
                              child: SizedBox(
                                  width: 300,
                                  child: Column(children: [
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10)),
                                        child: SizedBox(
                                          width: double.infinity,
                                          child: Image.network(
                                            projects[index].imgUlr,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              projects[index].projectTitle,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleLarge,
                                            ),
                                            const SizedBox(
                                              height: 16,
                                            ),
                                            Text(projects[index].projectSummary)
                                          ],
                                        ),
                                      ),
                                    )
                                  ])),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          )),
          const SizedBox(
            height: 500,
          )
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class SkillsSection extends StatelessWidget {
  const SkillsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Skills",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Wrap(
                alignment: WrapAlignment.center,
                children: skills.map((skill) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Chip(
                      label: Text(
                        skill.skillName,
                      ),
                    ),
                  );
                }).toList()),
          ],
        ),
      ),
    ));
  }
}

class HeroSection extends StatelessWidget {
  const HeroSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      verticalDirection: VerticalDirection.up,
      children: [
        Column(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                  minWidth: 400,
                  maxWidth: (MediaQuery.of(context).size.width >= 1100)
                      ? MediaQuery.of(context).size.width - 600
                      : MediaQuery.of(context).size.width),
              child: SizedBox(
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        TextConstants.title,
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        TextConstants.subtitle,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Text(
                        TextConstants.summary,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const ProfilePhotoCard(),
      ],
    );
  }
}

class ProfilePhotoCard extends StatelessWidget {
  const ProfilePhotoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: (MediaQuery.of(context).size.width >= 1100)
          ? 400
          : MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              alignment: Alignment(0, -0.5),
              fit: BoxFit.cover,
              image: AssetImage("anoop.jpg"))),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.color, required this.child});

  final Color? color;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Motion(
        key: const Key("hello"),
        borderRadius: BorderRadius.circular(10),
        glare: const GlareConfiguration(color: Colors.white, maxOpacity: 0.5),
        shadow: const ShadowConfiguration(
            opacity: 0.2, color: Colors.grey, blurRadius: 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            decoration: BoxDecoration(color: color),
            child: child,
          ),
        ),
      ),
    );
  }
}
