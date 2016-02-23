describe("Score", function() {
  var score;

  beforeEach(function() {
    score = new Score("Bob", 300);
  });

  it("should have a player name", function() {
    expect(score.player).toEqual("Bob");
  });

  it("should have a score value", function() {
    expect(score.value).toEqual(300);
  });


});
