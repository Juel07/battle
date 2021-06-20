feature "Switching turns" do
  scenario "at the start of game" do
    sign_in_and_play
    expect(page).to have_content "Anita's turn"
  end

  scenario "after Player 1 attacks" do
    sign_in_and_play
    attack_and_confirm
    expect(page).not_to have_content "Anita's turn"
    expect(page).to have_content "Juel's turn"
  end
end
