require 'rails_helper'

RSpec.describe "Welcome Page", :vcr do

  it "has header content" do

    visit "/"

    expect(page).to have_content("The Throne Room")
    expect(page).to have_content("It's the next big movement")
    expect(page).to have_content("Existing Thrones")

  end

  it "lists all existing thrones" do

    visit "/"

    # within "#throne1" do
    #   expect(page).to have_content("Located at: MCDONALDS")
    #   expect(page).to have_content("Address: 123 TEST ST")
    #   expect(page).to have_content("Directions: back of the store")
    #   expect(page).to have_link("More Information")
    #
    #   expect(page).to_not have_content("Located at: WALMART BATHROOM")
    #   expect(page).to_not have_content("Address: 6675 BUSINESS CENTER DR, HIGHLANDS RANCH, CO 80130")
    #   expect(page).to_not have_content("Directions: that way")
    # end

    # within "#throne2" do
    #   expect(page).to have_content("Located at: WALMART BATHROOM")
    #   expect(page).to have_content("Address: 6675 BUSINESS CENTER DR, HIGHLANDS RANCH, CO 80130")
    #   expect(page).to have_content("Directions: that way")
    #   expect(page).to have_link("More Information")
    #
    #   expect(page).to_not have_content("Located at: MCDONALDS")
    #   expect(page).to_not have_content("Address: 123 TEST ST")
    #   expect(page).to_not have_content("Directions: back of the store")
    # end
    #
    # within "#throne3" do
    #   expect(page).to have_content("Located at: BEST BUY BATHROOM")
    #   expect(page).to have_content("Address: 6707 S VINE ST STE D, CENTENNIAL, CO 80122")
    #   expect(page).to have_content("Directions: this way")
    #   expect(page).to have_link("More Information")
    #
    #   expect(page).to_not have_content("Located at: MCDONALDS")
    #   expect(page).to_not have_content("Address: 123 TEST ST")
    #   expect(page).to_not have_content("Directions: back of the store")
    # end
  end

  it "has to a link 'More Information' that redirects to the throne's home page" do

    # visit "/"

    # within "#throne1" do
    #   expect(page).to have_content("Located at: MCDONALDS")
    #   expect(page).to have_content("Address: 123 TEST ST")
    #   expect(page).to have_content("Directions: back of the store")
    #   expect(page).to have_link("More Information")
    #
    #   click_on 'More Information'
    #
    #   expect(current_path).to eq('/thrones/1')
    #   expect(current_path).to_not eq('/thrones/2')
    # end

    # visit "/"
    #
    # within "#throne2" do
    #   expect(page).to have_content("Located at: WALMART BATHROOM")
    #   expect(page).to have_content("Address: 6675 BUSINESS CENTER DR, HIGHLANDS RANCH, CO 80130")
    #   expect(page).to have_content("Directions: that way")
    #   expect(page).to have_link("More Information")
    #
    #   click_on 'More Information'
    #
    #   expect(current_path).to eq('/thrones/2')
    #   expect(current_path).to_not eq('/thrones/1')
    # end
  end

  it "it has a link to create a new throne room" do
    OmniAuth.config.test_mode = true
    OmniAuth.config.mock_auth[:google_oauth2] = OmniAuth::AuthHash.new({
                                                                      :provider => 'google',
                                                                      :uid => '12345',
                                                                      :info => {
                                                                        :email => 'test@test.com',
                                                                        :name => 'Test',
                                                                      },
                                                                      :credentials => {
                                                                        :token => '123'
                                                                      }
                                                                    })
    visit '/auth/google_oauth2'

    expect(current_path).to eq('/')

    expect(page).to have_content("Create New Throne Room")
  end

  it "it has a button to logout" do
    OmniAuth.config.test_mode = true
    OmniAuth.config.mock_auth[:google_oauth2] = OmniAuth::AuthHash.new({
                                                                      :provider => 'google',
                                                                      :uid => '12345',
                                                                      :info => {
                                                                        :email => 'test@test.com',
                                                                        :name => 'Test',
                                                                      },
                                                                      :credentials => {
                                                                        :token => '123'
                                                                      }
                                                                    })
    visit '/auth/google_oauth2'

    expect(current_path).to eq('/')
    expect(page).to_not have_content("Login")

    click_on('Logout')

    expect(current_path).to eq('/')
    expect(page).to have_content('You have been logged out!')
    expect(page).to_not have_content('Logout')
  end

end
