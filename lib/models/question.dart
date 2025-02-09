class Question {
  final String questionText;
  final String aspect;
  final List<Map<String,dynamic>> options; // Add options field

  Question({required this.questionText, required this.aspect, required this.options});
}