feature 'hitpoints' do
  scenario 'display hitpoints' do
    sign_in_and_play
    expect(page).to have_content "Ollie's HP is 100"
  end
end