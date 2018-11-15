require 'rails_helper'

describe "Index author page", type: :feature do
  
  before :each do
    @alan = FactoryBot.create :author
  end

  it 'should render withour error' do
    visit authors_path
  end

  it 'should have a table for all authors' do
    visit authors_path

    expect(page).to have_text 'Name'
    expect(page).to have_text 'Homepage'
  end

  it 'should display the first name, last name and homepage of Alan Turing' do
    visit authors_path 

    expect(page).to have_text 'Alan'
    expect(page).to have_text 'Turing'
    expect(page).to have_text 'http://wikipedia.de/Alan_Turing'
  end

  it 'should have navigation link to edit, show existing authors and new to create authors' do
    visit authors_path

    expect(page).to have_link 'new', href: new_author_path
  end

end

