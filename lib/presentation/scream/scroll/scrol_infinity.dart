import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScrolInfinity extends StatefulWidget {
  static const String name = 'scroll';

  const ScrolInfinity({super.key});

  @override
  State<ScrolInfinity> createState() => _ScrolInfinityState();
}

class _ScrolInfinityState extends State<ScrolInfinity> {
  final scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.pixels + 500 >=
          scrollController.position.maxScrollExtent) {
        loadNextPage();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    scrollController.dispose();
    super.dispose();
  }

  Future<void> loadNextPage() async {
    if (isLoading) return;
    isLoading = true;
    setState(() {});
    await Future.delayed(Duration(seconds: 2));
    addFiveImages();
    isLoading = false;
    setState(() {});
    moveScrollButton();
  }

  Future<void> OnRefresh() async {
    await Future.delayed(Duration(seconds: 3));
    final lastId = imagesIds.last;
    isLoading = true;
    imagesIds.clear();
    imagesIds.add(lastId + 1);
    addFiveImages();
    setState(() {});

  }

  void moveScrollButton() {
    if (scrollController.position.pixels + 150 >=
        scrollController.position.maxScrollExtent) return;

    scrollController.animateTo(
        scrollController.position.pixels + 120,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Infinity Scroll')),
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,

        child: RefreshIndicator(
          onRefresh: OnRefresh,
          child: ListView.builder(
            controller: scrollController,
            itemCount: imagesIds.length,
            itemBuilder: (context, index) {
              return FadeInImage(
                fit: BoxFit.cover,
                width: double.infinity,
                height: 300,
                placeholder: const AssetImage('assets/images/jar-loading.gif'),
                image: NetworkImage(
                  'https://picsum.photos/id/${imagesIds[index]}/500/300',
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pop(),
        child: isLoading
            ? SpinPerfect(infinite: true, child: Icon(Icons.refresh_outlined))
            : FadeIn(child: Icon(Icons.arrow_back_outlined)),
      ),
    );
  }
}

void addFiveImages() {
  final lastId = imagesIds.last;
  imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + 1));
}

List<int> imagesIds = [1, 2, 3, 4, 5];
bool isLoading = false;
