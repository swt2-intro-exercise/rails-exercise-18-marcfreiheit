require 'rails_helper'

RSpec.describe Paper, type: :model do

  before :each do
    @paper = FactoryBot.create :paper
  end

  it 'should create an author named Alan Turing and his wikipedia page' do
    expect(@paper.title).to eq('A paper title')
    expect(@paper.venue).to eq('A venue')
    expect(@paper.year).to eq(1)
  end

end

