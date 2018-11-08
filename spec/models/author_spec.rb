require 'rails_helper'

RSpec.describe Author, type: :model do

  it 'should create an author named Alan Turing and his wikipedia page' do
    author = Author.new('Alan','Turing','http://wikipedia.org/Alan_Turing')

    expect(author.first_name).to eq('Alan')
    expect(author.last_name).to eq('Turing')
    expect(author.hompage).to eq('http://wikipedia.org/Alan_Turing')
  end

  it 'should have a full name concatenated from first and list name' do
    author = Author.new('Alan','Turing','http://wikipedia.org/Alan_Turing')

    expect(author.full_name).to eq('Alan Turing')
    expect(author.full_name).to eq("#{author.first_name} #{author.last_name}")
  end

end
