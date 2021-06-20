feature "Attacking" do
  scenario "attack Player 2" do
    sign_in_and_play
    click_link "Attack"
    expect(page).to have_content "Anita attacked Juel."
  end
  scenario "attack Player 1" do
    sign_in_and_play
    attack_and_confirm
    click_link "Attack"
    expect(page).to have_content "Juel attacked Anita."
  end
  scenario "reduce Player 2 HP by 10" do
    sign_in_and_play
    attack_and_confirm
    expect(page).not_to have_content "Juel = 60HP"
    expect(page).to have_content "Juel = 50HP"
  end
  scenario "reduce Player 1 HP by 10" do
    sign_in_and_play
    attack_and_confirm
    attack_and_confirm
    expect(page).not_to have_content "Anita = 60HP"
    expect(page).to have_content "Anita = 50HP"
  end
end
