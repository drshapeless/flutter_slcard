class Flashcard {
  String question;
  String answer;

  Flashcard(this.question, this.answer);
}

class FlashcardGame {
  List<Flashcard> cards;

  List<int> memoryCounts;

  int goodScore;
  int badScore;

  int pos;
  bool showAnswer;
  List<int> cardIndexes;

  FlashcardGame(this.cards, this.memoryCounts, this.goodScore, this.badScore, this.pos, this.showAnswer, this.cardIndexes);


}
