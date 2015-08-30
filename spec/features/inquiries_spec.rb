require 'rails_helper'

RSpec.feature "Inquiries", type: :feature do
  feature "Contact page" do

    #### Leaving tests in to see progressions ###
    # scenario 'they see the form on the page' do
    #   visit contact_path
    #   expect(page).to have_selector('form')
    # end

    scenario 'user can complete and submit the form' do
        visit contact_path

        fill_in 'Message', with: "This is my message"

        click_button 'Send message'

        expect(page).to have_content('Thank you')
      end

  end
end
