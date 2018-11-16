require 'rails_helper'

describe "New paper page", type: :feature do
  
  it "should render withour error" do
    visit new_paper_path
  end

  it 'should have text inputs for year, title and venue' do
    #expect(page).to have_field 'paper[year]'
    #expect(page).to have_field 'paper[venue]'
    #expect(page).to have_field 'paper[title]'    
  end

  it 'should persist newly created papers' do
    #page.fill_in 'paper[title]', with: 'Another title'
    #page.fill_in 'paper[venue]', with: 'Another venue'
    #page.fill_in 'paper[year]', with: 1950
    #first('paper[author_id] option', minimum: 1).select_option

    #find('input[type="submit"]').click

    #expect(Paper.count).to eq(0)
  end

end

