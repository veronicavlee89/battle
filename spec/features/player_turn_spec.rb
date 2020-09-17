require './app'

feature 'it shows the player in control' do
  scenario 'it shows the player name' do
    sign_in_and_play
    expect(page).to have_content("Player turn: Veronica")
  end
end

feature 'it switches player' do
  scenario 'switchs player after attack' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to_not have_content("Player turn: Veronica")
    expect(page).to have_content("Player turn: Ollie")
  end
end