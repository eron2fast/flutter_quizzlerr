import 'question.dart';
import 'package:flutter/material.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Icon> _scoreKeeper = [];

  final List<Question> _questionBank = [
    Question('The Great Wall of China is visible from space.', false),
    Question('Bananas are berries, but strawberries are not.', true),
    Question('Octopuses have three hearts.', true),
    Question('The Eiffel Tower can be 15 cm taller during the summer.', true),
    Question('Humans share approximately 50% of their DNA with bananas.', true),
    Question('An ostrich’s eye is bigger than its brain.', true),
    Question('It is impossible to hum while holding your nose.', true),
    Question('Venus is the hottest planet in our solar system.', true),
    Question('Goldfish have a memory span of only three seconds.', false),
    Question('The longest recorded flight of a chicken is 13 seconds.', true),
    Question('Water boils at 100 degrees Celsius regardless of altitude.', false),
    Question('The unicorn is the national animal of Philippines.', false),
    Question('A group of flamingos is called a "flamboyance."', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    return _questionNumber >= _questionBank.length - 1;
  }

  void reset() {
    _questionNumber = 0;
    _scoreKeeper = []; // Reset the score keeper
  }

  void updateScoreKeeper(bool isCorrect) {
    _scoreKeeper.add(
      Icon(
        isCorrect ? Icons.check : Icons.close,
        color: isCorrect ? Colors.green : Colors.red,
      ),
    );
  }

  List<Icon> getScoreKeeper() {
    return _scoreKeeper;
  }
}
