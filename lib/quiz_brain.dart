import 'question.dart';
class QuizBrain{
  int _questionNumber=0;
  List<Question> _questionBank=[
    Question( 'You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
  ];
  void nextQuestion(){
    if(_questionNumber<_questionBank.length-1){
      _questionNumber++;
    }
  }
  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {


      print('Now returning to beginning');
      return true;

    } else {
      return false;
    }
  }
  void reset(){
    _questionNumber=0;
  }
  String getQuestionText(){
    return _questionBank[_questionNumber].questionText;
  }
  bool getCorrectAnswer(){
    return _questionBank[_questionNumber].questionAnswer;
  }
}