import 'dart:io';

class Question {
  String questionText;
  String answer;

  Question(this.questionText, this.answer);
}

class Quiz {
  List<Question> questions;
  int score = 0;

  Quiz(this.questions);

  void start() {
    for (var q in questions) {
      stdout.write("${q.questionText} ");
      String userAnswer = stdin.readLineSync()!.trim().toLowerCase();
      if (userAnswer == q.answer.toLowerCase()) {
        print("Correct!\n");
        score++;
      } else {
        print("Wrong! Correct answer: ${q.answer}\n");
      }
    }
    print("Your total score: $score / ${questions.length}");
  }
}

void main() {
  List<Question> questionList = [
    Question("What is the capital of Bangladesh?\n", "Dhaka"),
    Question("What is 5 + 3?\n", "8"),
    Question("Which language is this program written in?\n", "Dart"),
  ];

  Quiz quiz = Quiz(questionList);
  quiz.start();
}
