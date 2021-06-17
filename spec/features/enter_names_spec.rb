feature "Testing name form" do
  scenario "can fill in form and submit names" do
    sign_in_and_play
    expect(page).to have_content "Anita vs Juel"
  end
end
