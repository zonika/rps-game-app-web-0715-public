class PlayTypeError < StandardError; end
class RPSGame
  attr_reader :type
  @@plays = [:scissors, :rock, :paper]
  def initialize(type)
    if @@plays.include? type
      @type = type
    else
      raise PlayTypeError
    end
  end

  def self.valid_play?(type)
    if @@plays.include? type
      true
    else
      false
    end
  end

  def computer_play
    @@plays[rand(2)]
  end

  def rock(opponent)
    if opponent == :paper
      false
    elsif opponent == :rock
      false
    else
      true
    end
  end

  def paper(opponent)
    if opponent == :paper
      false
    elsif opponent == :rock
      true
    else
      true
    end
  end

  def scissors(opponent)
    if opponent == :paper
      true
    elsif opponent == :rock
      false
    else
      false
    end
  end

  def won?
    self.send @type, computer_play
  end

  def tied?
    if @type == computer_play
      true
    else
      false
    end
  end

  def lost?
    if tied?
      false
    else
      !self.send @type,computer_play
    end
  end
end
