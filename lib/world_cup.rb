class WorldCup
  attr_reader :year, :teams

  def initialize(year, teams)
    @year = year
    @teams = teams
  end

  def active_players_by_position(position)
    active_teams = @teams.reject { |team| team.eliminated? == true}
    active_teams.flat_map do |team|
      team.players_by_position(position)
    end
  end

  def all_players_by_position
    all_players = @teams.flat_map { |team| team.players }

    players_by_position = all_players.group_by { |player| player.position }

    # all_players_by_position = {}
    #
    # @teams.each do |team|
    #   team.players.each do |player|
    #     if !all_players_by_position.keys.include?(player.position)
    #       all_players_by_position[player.position] = [player]
    #     else
    #       all_players_by_position[player.position] << player
    #     end
    #   end
    # end
    #
    # all_players_by_position
  end
end
