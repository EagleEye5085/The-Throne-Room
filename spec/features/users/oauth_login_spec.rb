require 'rails_helper'

RSpec.describe "OAuth Login" do 
  before(:each) do 
    OmniAuth.config.test_mode = true 
  end

  it 'creates new user using Google OAuth Login and redirects user to homepage' do 
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
    expect(User.last.email).to eq('test@test.com')
  end
end