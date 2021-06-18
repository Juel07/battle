feature "Attacking" do
  scenario "attack Player 2" do
    sign_in_and_play
    click_link "Attack"
    expect(page).to have_content "Attack successful!"
  end
  scenario "reduce Player 2 HP by 10" do
    sign_in_and_play
    click_link "Attack"
    click_link "Go Back"
    expect(page).not_to have_content "Juel = 60HP"
    expect(page).to have_content "Juel = 50HP"
  end
end
