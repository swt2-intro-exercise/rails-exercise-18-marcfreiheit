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

  it 'should not create without title' do
    paper = Paper.new(venue: 'A venue', year: 1950)

    expect(paper).to_not be_valid
  end

  it 'should not create without venue' do
    paper = Paper.new(title: 'A title', year: 1950)

    expect(paper).to_not be_valid
  end
end

