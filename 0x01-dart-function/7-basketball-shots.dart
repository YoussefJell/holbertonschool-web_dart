int whoWins(Map<String, int?> teamA, Map<String, int?> teamB) {
  num teamAPoints = (teamA['Free throws'] ?? 0) + ((teamA['2 pointer'] ?? 0) * 2) + ((teamA['3 pointer'] ?? 0) * 3);
  num teamBPoints = (teamB['Free throws'] ?? 0) + ((teamB['2 pointer'] ?? 0) * 2) + ((teamB['3 pointer'] ?? 0) * 3);

  return teamAPoints > teamBPoints ? 1 : teamAPoints < teamBPoints ? 2 : 0;
}
