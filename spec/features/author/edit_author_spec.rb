require 'rails_helper'

describe "Edit author page", type: :feature do
  
  before :each do
    @alan = FactoryBot.create :author
    visit edit_author_path(@alan)
  end

  it "should render withour error" do
  end

  it 'should have input fields to edit first name, last name and home page' do
    expect(page).to have_field 'author[first_name]'
    expect(page).to have_field 'author[last_name]'
    expect(page).to have_field 'author[homepage]'
  end

  it 'should persit updates on name on an author' do
    page.fill_in 'author[first_name]', with: 'Alan Mathison'

    find('input[type="submit"]').click
    
    @alan.reload

    expect(@alan.first_name).to eq 'Alan Mathison'
  end

end

