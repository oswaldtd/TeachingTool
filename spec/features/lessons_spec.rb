require 'rails_helper'

describe "the create lesson process", :type => :feature do
  # before :each do
  #   User.make(:email => 'user@example.com', :password => 'password')
  # end

  it "creates a lesson" do
    visit '/lessons/new'
    within("#lesson") do
      fill_in 'lesson_lesson_name', :with => 'Hairy Pooter - 15'
      fill_in 'lesson_lesson_number', :with => '123'
    end
    click_button 'Create Lesson'
    expect(page).to have_content 'Hairy Pooter - 15'
  end
end
