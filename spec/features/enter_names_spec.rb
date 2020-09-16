feature 'enter names' do
  scenario 'displays the entered names' do
    visit '/'
    fill_in 'player_1', with: 'Veronica'
    fill_in 'player_2',  with: 'Ollie'
    click_button 'Submit'
    expect(page).to have_content 'Veronica vs Ollie'
  end
end