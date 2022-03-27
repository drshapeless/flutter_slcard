import 'package:flutter/cupertino.dart';

void main() {
  runApp(const SLCard());
}

class SLCard extends StatelessWidget {
  const SLCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Shapeless Card',
      home: SLCardHomePage(title: "Shapeless Card Home Page"),
    );
  }
}

class SLCardHomePage extends StatefulWidget {
  const SLCardHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SLCardHomePage> createState() => _SLCardHomePageState();
}

class _SLCardHomePageState extends State<SLCardHomePage> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,

      navigationBar: CupertinoNavigationBar(
        middle: Text(
          widget.title,
        ),
      ),
      child: ListView(
        children: [
          Row(

            children: [
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  '$counter',
                  style: const TextStyle(
                    color: CupertinoColors.systemYellow,
                  ),
                  textScaleFactor: 3,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class SLCardGameView extends StatefulWidget {
  const SLCardGameView({
      Key? key,
      required subject
  }) : super(key: key)

  String subject = "Default subject";

  @override
  State<SLCardGameView> createState() => _SLCardGameViewState();
}

class _SLCardGameViewState extends State<SLCardGameView> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
    )
  }

}
