// ignore_for_file: curly_braces_in_flow_control_structures

class QuestionForm {
  //This class will contain both question and answers
  late String
      questiontext; //null safety feature(red underline): saying thar you are not initialising its value and if any error occurs I won't be responsible
  late bool
      answertext; //null safety feature(red underline): saying thar you are not initialising its value and if any error occurs I won't be responsible
  //late tells null safety that dont worry about initialisation we will give it a value in coming time.

  QuestionForm({required String q, required bool a}) {
    //Here, again some error that q and a can be null therefore using 'required'.
    questiontext = q;
    answertext = a;
  }
}

class QuestionBank {
  int questionNo = 0;
  List<QuestionForm> question = [
    QuestionForm(q: '2+2 = 4', a: true),
    QuestionForm(q: '2+3 = 4', a: false),
    QuestionForm(q: '2+6 = 8', a: true),
  ];

  void nextQuestion() {
    //feature of class
    if (questionNo < question.length - 1) {
      questionNo++;
    }
  }

  String getQuestion() {
    return question[questionNo].questiontext;
  }

  bool getAnswer() {
    return question[questionNo].answertext;
  }

  bool isFinished() {
    if (questionNo == question.length - 1)
      return true;
    else
      return false;
  }

//  void reset- it can be defined to turn questionNo = 0 and call this function on score page in the form of Try again button
}
