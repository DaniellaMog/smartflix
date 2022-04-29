require 'rails_helper'
load "#{Rails.root}/db/seeds.rb"

RSpec.describe ShowsController, type: :feature do
  describe "GET shows#index" do
    it 'renders index and has the header' do
      visit '/'
      expect(page).to have_text 'Smartflix'
    end

    context "when data is seeded" do
      it 'includes the shows titles' do
        visit "/"
          expect(page).to have_text('My Little Pony: A New Generation')
      end
      it 'should limit to 20 shows' do
        visit "/"
        expect(page).not_to have_text('Monsters Inside')
      end
    end
  end
end
