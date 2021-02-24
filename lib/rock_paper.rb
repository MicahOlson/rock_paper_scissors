class RPS
  def p1_wins?(p1_choice, p2_choice)
    if p1_choice == "rock" && p2_choice == "scissors" || p1_choice == "paper" && p2_choice == "rock"
      true
    else
      false
    end
  end
end
