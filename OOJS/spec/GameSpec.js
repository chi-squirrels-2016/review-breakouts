describe("Game", function() {
  var game;
  var scores;

  beforeEach(function() {
    scores = [];
    scores.push(new Score("Bob", 300));
    scores.push(new Score("Mike", 392));
    scores.push(new Score("Amy", 1000));
    scores.push(new Score("Julie", 30110));
    scores.push(new Score("Mike", 9999));
    scores.push(new Score("Joe", 3000));
    scores.push(new Score("Dave", 400));
    scores.push(new Score("Casey", 1023));
    scores.push(new Score("Mike", 50));
    scores.push(new Score("Courtney", 100000));

    game = new Game("Asteroids", scores);
  });

  it("should give me names of the players with the top 3 scores", function() {
    expect(game.topPlayers()).toEqual(["Courtney", "Julie", "Mike"]);
  });


});
