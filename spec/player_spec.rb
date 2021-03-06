require "player"

describe Player do
  player1 = Player.new("Bert")
    it "Checks for player name" do
      expect(player1.name).to eq("Bert")
    end

    it "Reduces the other player's health by 10 when attacking" do
      player1 = Player.new("Bert")
      player2 = Player.new("Ernie")
      expect{ player2.receive_attack }.to change {player2.health}.by -10
    end
end
