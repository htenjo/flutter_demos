class Question {
  String text;
  List<ResponseOption> options = [];

  Question(this.text);

  addOption({String optionLabel, double optionValue}) {
    ResponseOption option = ResponseOption(label: optionLabel, value: optionValue);
    options.add(option);
  }

  removeOption(int index) {
    options.removeAt(index);
  }
}

class ResponseOption {
  String label;
  double value;

  ResponseOption({this.label, this.value});
}

buildQuestionOption(String questionTitle) {
  var question = Question(questionTitle);
  question.addOption(optionLabel: "Option 1", optionValue: 1);
  question.addOption(optionLabel: "Option 2", optionValue: 2);
  question.addOption(optionLabel: "Option 3", optionValue: 3);
  return question;
}

var QUESTIONNAIRE = <Question>[
  buildQuestionOption("Question 1"),
  buildQuestionOption("Question 2"),
  buildQuestionOption("Question 3"),
];
