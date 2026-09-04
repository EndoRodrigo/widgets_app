import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TutorialScream extends StatefulWidget {
  static const String name = 'tutoral';

  const TutorialScream({super.key});

  @override
  State<TutorialScream> createState() => _TutorialScreamState();
}

class _TutorialScreamState extends State<TutorialScream> {
  late final pageController = PageController();
  bool endRusched = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController.addListener(() {
      final page = pageController.page ?? 0;
      if(!endRusched && page >= (slides.length-1)){
        setState(() {
          endRusched = true;
        });
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            physics: BouncingScrollPhysics(),
            children: slides
                .map(
                  (slideData) => _Slide(
                    title: slideData.title,
                    caption: slideData.caption,
                    imageUrl: slideData.imageUrl,
                  ),
                )
                .toList(),
          ),

          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () => context.pop(),
              child: Text('Salir'),
            ),
          ),

          (endRusched) ?
          Positioned(
            bottom: 50,
            right: 20,
            child: FadeInRight(
              from: 15,
              duration: Duration(seconds: 1),
              child: FilledButton.tonal(
                onPressed: () {},
                child: Text('Comenzar'),
              ),
            ),
          ):SizedBox()
        ],
      ),
    );
  }
}

final slides = <SlideInfo>[
  SlideInfo(
    'Buscar la comida',
    'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. A',
    'assets/images/1.png',
  ),
  SlideInfo(
    'Entregas rapidas',
    'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod',
    'assets/images/2.png',
  ),
  SlideInfo(
    'Disfute su comida',
    'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accus',
    'assets/images/3.png',
  ),
];

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    super.key,
    required this.title,
    required this.caption,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final styleTitle = Theme.of(context).textTheme.titleLarge;
    final captionTitle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            const SizedBox(height: 20),
            Text(title, style: styleTitle),
            const SizedBox(height: 20),
            Text(caption, style: captionTitle),
          ],
        ),
      ),
    );
  }
}
