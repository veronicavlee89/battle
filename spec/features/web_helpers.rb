def sign_in_and_play
  visit '/'
  fill_in 'player_1', with: 'Veronica'
  fill_in 'player_2',  with: 'Ollie'
  click_button 'Submit'
end