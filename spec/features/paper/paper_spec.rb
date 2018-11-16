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

  it 'should not create without year' do
    paper = Paper.new(title: 'A title', venue: 'A venue')

    expect(paper).to_not be_valid
  end

  it 'should not accept non-integer values as year' do
    paper = Paper.new(title: 'A title', venue: 'A venue')

    paper.year = 'String year'
    expect(paper).to_not be_valid

    paper.year = 295.53
    expect(paper).to_not be_valid
  end

  it 'should accept integers as year' do
    paper = Paper.new(title: 'A title', venue: 'A venue', year: 1950)

    expect(paper).to be_valid
  end
end

