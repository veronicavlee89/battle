feature 'enter names' do
  scenario 'displays the entered names' do
    sign_in_and_play
    expect(page).to have_content 'Veronica vs Ollie'
  end
end