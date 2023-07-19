int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  num teamAPoints = teamA['Free throws']! + (teamA['2 pointer']! * 2) + (teamA['3 pointer']! * 3);
  num teamBPoints = teamB['Free throws']! + (teamB['2 pointer']! * 2) + (teamB['3 pointer']! * 3);

  return teamAPoints > teamBPoints ? 1 : teamAPoints < teamBPoints ? 2 : 0;
}
