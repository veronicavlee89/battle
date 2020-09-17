feature 'attacking' do
  scenario 'attacking p2 gives a confirmation message' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Veronica has attacked Ollie!"
  end

  scenario 'attacking Ollie reduces HP by 10' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Ollie's HP is 90"
  end

  scenario 'attacking p1 gives a confirmation message' do
    sign_in_and_play
    click_button "Attack"
    click_button "Attack"
    expect(page).to have_content "Ollie has attacked Veronica!"
  end
end