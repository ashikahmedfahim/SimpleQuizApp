import 'question.dart';

class QuestionBank {
  int _index = 0;
  bool _over = false;
  List<Question> _question = [
    Question('Electrons are larger than molecules. ', false),
    Question('The Atlantic Ocean is the biggest ocean on Earth.', false),
    Question(
        'The chemical make up food often changes when you cook it. ', true),
    Question('Sharks are mammals.', false),
    Question('The human body has four lungs.', false),
    Question('Thanks for Answering', true),
  ];

  bool getOver() {
    return _over;
  }

  void getNextQuestion() {
    if (_index < _question.length - 1) {
      _index++;
    } else if (_index == _question.length - 1) {
      _over = true;
    }
  }

  String getQuestion() {
    return _question[_index].question;
  }

  bool getAns() {
    return _question[_index].ans;
  }
}
