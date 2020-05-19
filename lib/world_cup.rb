class WorldCup
  attr_reader :year, :teams

  def initialize(year, teams)
    @year = year
    @teams = teams
  end

  def active_players_by_position(position)
    active_teams = @teams.find_all do |team|
      team.eliminated? == false
    end

    active_players = active_teams.map do |team|
      team.players
    end.flatten

    active_players.find_all do |player|
      player.position == position
    end
  end
end
