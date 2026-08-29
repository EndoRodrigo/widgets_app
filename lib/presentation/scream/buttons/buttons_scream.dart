import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScream extends StatelessWidget {
  static const String name = 'button';

  const ButtonsScream({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Buttons Screams')),
      body: const _ButtonView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pop(),
        child: Icon(Icons.arrow_back_ios),
      ),
    );
  }
}

class _ButtonView extends StatelessWidget {
  const _ButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Wrap(
          spacing: 10,
          children: [
            Divider(),
            ElevatedButton(onPressed: () {}, child: Text('Elevated')),
            ElevatedButton(onPressed: null, child: Text('Elevated sisable')),
            ElevatedButton.icon(
              onPressed: () {},
              label: Icon(Icons.access_alarm_rounded),
            ),

            FilledButton(onPressed: () {}, child: Text('FILLED')),
            FilledButton.icon(
              onPressed: () {},
              label: Text('Filled icom'),
              icon: Icon(Icons.accessible_sharp),
            ),

            OutlinedButton(onPressed: () {}, child: Text('Outline')),
            OutlinedButton.icon(
              onPressed: () {},
              label: Text('Text Icons'),
              icon: Icon(Icons.account_balance_rounded),
            ),
            TextButton(onPressed: () {}, child: Text('Text')),
            TextButton.icon(
              onPressed: () {},
              label: Text('Text icnon'),
              icon: Icon(Icons.ice_skating),
            ),

            IconButton(onPressed: () {}, icon: Icon(Icons.icecream_outlined)),
            IconButton.filled(
              onPressed: () {},
              icon: Icon(Icons.ten_mp_rounded),
            ),
            //Todo: customer bottons
            Divider(),

            CustomBotton(),
          ],
        ),
      ),
    );
  }
}

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hola mundoi', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
