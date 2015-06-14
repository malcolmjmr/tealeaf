# initialize choices 
CHOICES = {'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissor'}


wins = 0;
losses = 0;
ties = 0;

exit = false;
begin
	# ask player to pick rock paper or scissors (r, p, s)
	# if player does not chose r, p, or s prompt them again
	begin 
		puts 'Choose r p or s'
		players_choice = gets.chomp.downcase
	end until CHOICES.keys.include?(players_choice)

	# get random choice for computer
	computers_choice = CHOICES.keys.sample
 
	# compare choices
	if players_choice == computers_choice
		puts "You both picked #{CHOICES[players_choice]}"
		ties += 1
	elsif (players_choice == 'p' && computers_choice == 'r') || (players_choice == 'r' && computers_choice == 's') || (players_choice == 's' && computers_choice == 'p')
		puts "You chose #{CHOICES[players_choice]}. The computer chose #{CHOICES[computers_choice]}. You win!"
		wins += 1
	else
		puts "You chose #{CHOICES[players_choice]}. The computer chose #{CHOICES[computers_choice]}. You lose!"
		losses += 1
	end 

	# show score 
	puts "Your record is #{wins} win(s), #{losses} loss(es) and #{ties} tie(s)"

	# prompt for exit
	puts 'Would you like to play again? (y/n)'
	play_again = gets.chomp.downcase
  if play_again == 'n' then exit = true end

end until exit
