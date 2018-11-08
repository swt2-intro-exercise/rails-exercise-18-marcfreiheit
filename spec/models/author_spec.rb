require 'rails_helper'

RSpec.describe Author, type: :model do

  before :each do
    @author = FactoryBot.create :author
  end

  it 'should create an author named Alan Turing and his wikipedia page' do
    expect(@author.first_name).to eq('Alan')
    expect(@author.last_name).to eq('Turing')
    expect(@author.homepage).to eq('http://wikipedia.de/Alan_Turing')
  end

  it 'should have a full name concatenated from first and list name' do
    expect(@author.name).to eq('Alan Turing')
    expect(@author.name).to eq("#{@author.first_name} #{@author.last_name}")
  end

end
