feature 'lose battle' do
  scenario "displays message saying player lost when HP is 0" do
    sign_in_and_play
    19.times { click_button "Attack" }
    expect(page).to have_content "Ollie lost!"
  end
end