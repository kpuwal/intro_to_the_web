#require "spec_helper"

feature 'Name input' do
  scenario "Players enter their names" do
    visit "/names"
    fill_in "Player1 name", :with => "Kasia"
    fill_in "Player2 name", :with => "Abdulla"
    click_button "Submitt"
    expect(page).to have_text("Pllayer1_name vs Player2_name")
  end
end