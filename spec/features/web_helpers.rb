def sign_in_and_play
  visit("/")
  fill_in("player1", with: "Anita")
  fill_in("player2", with: "Juel")
  click_button "submit"
end

def attack_and_confirm
  click_link "Attack"
  click_button "Go Back"
end
