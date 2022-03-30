class Flashcard {
  String question;
  String answer;

  Flashcard(this.question, this.answer);
}

class FlashcardGame {
  List<Flashcard> cards = [];
  List<int> memoryCounts = [];
  int pos = 0;
  bool showAnswer = false;
  List<int> cardIndexes = [];

  void addCards(List<Flashcard> newCards) {
    cards += newCards;
  }

  void newGame() {
    // New game is to start a brand new game with the current cards.
    _updateMemoryCounts();
    _resetPos();
    _resetShowAnswer();
    _resetCardIndexes();
    _shuffleCardIndexes();
  }

  void nextGame() {
    // Next game is to eliminate the cards with 0 memory count and start a new
    // game.
    _resetPos();
    _updateCardIndexes();
    _shuffleCardIndexes();
    _resetShowAnswer();
  }

  void _updateMemoryCounts() {
    // This function will resize memoryCounts into the length of cards.
    // Fill all of them with 1.
    var len = cards.length;
    memoryCounts = List<int>.filled(len, 1, growable: false);
  }

  void _resetPos() {
    // Reset the position to zero.
    pos = 0;
  }

  void _resetShowAnswer() {
    // Reset showAnswer to false.
    showAnswer = false;
  }

  void _resetCardIndexes() {
    // Generate a brand new cardIndexes.
    cardIndexes = List<int>.generate(cards.length, (int index) => index, growable: false);
  }

  void _shuffleCardIndexes() {
    cardIndexes.shuffle();
  }

  void _updateCardIndexes() {
    List<int> newIndexes = [];
    for (var i = 0; i < memoryCounts.length; i++) {
      if (memoryCounts[i] > 0) {
        newIndexes.add(i);
      }
    }

    cardIndexes = newIndexes;
  }
}
