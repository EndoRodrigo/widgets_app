import 'package:flutter/material.dart';

class Progressscream extends StatelessWidget {

  static const String name = 'Progress';
  const Progressscream ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preogress Indicator'),
      ),
      body: _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('Circular progress indicator'),
          CircularProgressIndicator(strokeWidth: 2,),
          SizedBox(height: 50,),

          Text('Circular progress indicator controlado'),
          _ControllerProgresIndicator(),
          SizedBox(height: 50,),
        ],
      ),
    );
  }
}

class _ControllerProgresIndicator extends StatelessWidget {
  const _ControllerProgresIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          CircularProgressIndicator(strokeWidth: 2, backgroundColor: Colors.black45,),
          SizedBox(child: Expanded(child: LinearProgressIndicator()),),
        ],
      ),
    );
  }
}
