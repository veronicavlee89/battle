feature "homepage" do
  scenario 'says Testing infrastructure working!' do
    expect(page).to have_content('Testing infrastructure working!')
  end
end