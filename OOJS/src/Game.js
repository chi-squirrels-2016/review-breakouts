function Game(name, scores) {
  this.name = name;
  this.scores = scores;
}

Game.prototype.topPlayers = function() {
  var sortedScores = this.scores.sort(function(score1, score2){
    if (score1.value < score2.value) {
      return 1;
    }
    if (score1.value > score2.value) {
      return -1;
    }
    // a must be equal to b
    return 0;
  });

  var top3 = sortedScores.slice(0, 3);

  return top3.map(function(score) { return score.player; });
}

