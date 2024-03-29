feature "Viewing hit points" do
  scenario "can see player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content "Juel = 60HP"
  end
  scenario "can see player 1's hit points" do
    sign_in_and_play
    expect(page).to have_content "Anita = 60HP"
  end
end
