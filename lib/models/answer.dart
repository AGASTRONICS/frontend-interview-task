class StrollAnswerModel {
  final String username;
  final String answer;

  StrollAnswerModel({
    required this.username,
    required this.answer,
  });

  factory StrollAnswerModel.fromMap(Map<String, String> map) {
    return StrollAnswerModel(
      username: map['username'] ?? '',
      answer: map['answer'] ?? '',
    );
  }

  Map<String, String> toMap() {
    return {
      'username': username,
      'answer': answer,
    };
  }
}
