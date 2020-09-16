feature 'hitpoints' do
  scenario 'display hitpoints' do
    visit '/'
    fill_in 'player_1', with: 'Veronica'
    fill_in 'player_2',  with: 'Ollie'
    click_button 'Submit'
    expect(page).to have_content "Ollie's HP = 100"
  end
end