require 'rails_helper'

RSpec.describe ShowsController, type: :feature do
  describe "GET shows#index" do
    it 'renders index and has the header and 20 shows', :aggregate_failures do
      visit '/'
      expect(page).to have_text 'Smartflix'
      expect(page).to have_text('Dick Johnson Is Dead')
      expect(page).to have_text('Jaguar')
      expect(page).not_to have_text('Monsters Inside: The 24 Faces of Billy Milligan')
    end
  end
end
