import 'package:quizzler/question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        question: 'You can lead a cow down stairs but not up stairs.',
        answer: false),
    Question(
        question: 'Approximately one quarter of human bones are in the feet.',
        answer: true),
    Question(question: 'A slug\'s blood is green.', answer: true),
  ];

  QuizBrain() {}

  void nextQuestion() {
    if (!isFinished()) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    int nextQuestion = _questionNumber + 1;
    int questionSize = getSize();
    return nextQuestion == questionSize;
  }

  int getSize() {
    return _questionBank.length;
  }

  void restart() {
    if (isFinished()) {
      _questionNumber = 0;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].question;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].answer;
  }
}
