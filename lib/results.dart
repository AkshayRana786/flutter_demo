import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetApp;

  Results(this.resultScore, this.resetApp);

  String get resultPhase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome';
    } else if (resultScore <= 20) {
      resultText = 'You are stranger!';
    } else {
      resultText = 'You are bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetApp,
            child: Text('Restart Quize !'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
