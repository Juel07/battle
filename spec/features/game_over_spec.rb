feature "Losing" do
  context "when Player 2 reaches 0 HP first" do
    before do
      sign_in_and_play
      10.times { attack_and_confirm }
      click_button "Attack"
    end
    scenario "Player 2 loses" do
      expect(page).to have_content "Juel lost the battle."
    end
  end
  # context "when Player 1 reaches 0 HP first" do
  #   before do
  #     sign_in_and_play
  #     allow(Kernel).to receive(:rand).and_return(10)
  #     click_button "Attack"
  #   end
  #   scenario "Player 1 loses" do
  #     expect(page).to have_content "Anita lost the battle."
  #   end
  # end
end
