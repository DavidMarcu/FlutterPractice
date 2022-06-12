class QuestionModel {

  final String questionText; 
  final List<AnswerModel> answers;


  QuestionModel({required this.questionText, required this.answers});  
}

class AnswerModel {
  
  final String answerText;
  final double score;

  AnswerModel({required this.answerText, this.score = 0});

}